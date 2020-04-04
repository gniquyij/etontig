# etontig

With etontig, you could:
- `etontig c` to commit change(s) to the current branch. If a specific branch, `etontig c <branch-name>`
- `etontig p` to push the current branch to remote. If a specific branch, `etontig c <branch-name>`
- `etontig cp` to do both commit and push

etontig is a script packing several Git commands for a more efficient commit & push. See: https://vjyq.github.io/etontig/

## Setup
```
$ git clone https://github.com/vjyq/etontig.git 
```

Then add the following scripts to your `./bash_profile`:
```
# etontig
func () { bash /<PATH-TO-etontig>/etontig/etontig.sh $1 $2; }
alias etontig=func
```

## Author
yuqing.ji@outlook.com