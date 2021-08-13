#### Remove files/dir from repo w/o deleting
```sh
# Single file
git rm --cached <fileName>
# Dir
git rm --cached -r <dirName>
```

#### Restore deleted files
### Deleted file but didn't commit
```sh
git checkout HEAD <fileName>
```
### Deleted file + committed deletion
```sh
git reset --hard HEAD~1
```
**Source (which has other useful commands for delete files):** https://www.git-tower.com/learn/git/faq/restoring-deleted-files/
