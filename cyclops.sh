git clone --bare https://github.com/sohansubhash/cyclops.git $HOME/.cyclops
alias config='/usr/bin/git --git-dir=$HOME/.cyclops/ --work-tree=$HOME'
echo "config='/usr/bin/git --git-dir=$HOME/.cyclops/ --work-tree=$HOME'"
function config {
   /usr/bin/git --git-dir=$HOME/.cyclops/ --work-tree=$HOME $@
}
mkdir -p .config-backup
config checkout
if [ $? = 0 ]; then
  echo "Checked out config.";
  else
    echo "Backing up pre-existing dot files.";
    config checkout 2>&1 | egrep "\s+\." | awk {'print $1'} | xargs -I{} mv {} .config-backup/{}
fi;
config checkout
config config status.showUntrackedFiles no
