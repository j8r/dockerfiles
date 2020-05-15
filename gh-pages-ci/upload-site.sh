#!/bin/sh -eu

: ${SITE_TEMP_DIR=/tmp/site}
: ${BRANCH=gh-pages}
: ${GIT_COMMIT_MESSAGE=Update site}
: ${GIT_MAIL=}
: ${GIT_USER=CI}
export GIT_AUTHOR_EMAIL=$GIT_MAIL
export GIT_COMMITTER_EMAIL=$GIT_MAIL
export GIT_AUTHOR_NAME=$GIT_USER
export GIT_COMMITTER_NAME=$GIT_USER

mkdir -p ~/.ssh
echo "$SSH_PRIVATE_KEY" >> ~/.ssh/id
chmod 400 ~/.ssh/id
git config core.sshCommand "ssh -i ~/.ssh/id"

git checkout -f --orphan $BRANCH
git rm --cached -rfq .
git clean -fxdq
mv $SITE_TEMP_DIR/* .
git add .
git commit -qm "$GIT_COMMIT_MESSAGE"

remote=$(git remote -v)
remote=${remote##*//}
remote=${remote%% *}
git_remote_host=${remote%%/*}
git_remote_path=${remote#$git_remote_host/*}

ssh-keyscan "$git_remote_host" >> ~/.ssh/known_hosts
git remote set-url origin "git@$git_remote_host:$git_remote_path"

git push -f --set-upstream origin $BRANCH
