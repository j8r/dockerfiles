#!/bin/sh -eu

: ${DOCS_TEMP_DIR:=/tmp/docs}
: ${GIT_USER:=CI}
: ${GIT_MAIL:=}

mkdir -p ~/.ssh
echo "$SSH_PRIVATE_KEY" >> ~/.ssh/id
chmod 400 ~/.ssh/id
git config core.sshCommand "ssh -i ~/.ssh/id"
git config --global user.name "$GIT_USER"
git config --global user.email "$GIT_MAIL"

git checkout -f --orphan gh-pages
git rm --cached -rfq .
git clean -fxdq
mv $DOCS_TEMP_DIR/* .
git add .
git commit -qm "Update docs"

remote=$(git remote -v)
remote=${remote##*//}
remote=${remote%% *}
git_remote_host=${remote%%/*}
git_remote_path=${remote#$git_remote_host/*}

ssh-keyscan "$git_remote_host" >> ~/.ssh/known_hosts
git remote set-url origin "git@$git_remote_host:$git_remote_path"

git push -f --set-upstream origin gh-pages
