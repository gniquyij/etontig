# etontig

With etontig, you could:
- `etontig c` to commit the code
- `etontig p` to push the code 
- `etontig cp` to do both commit and push

etontig is a script packing several Git commands for a more efficient commit & push. 
I use it when writing [notes](https://github.com/vjyq/vjyq.github.io) - I've been using Git to version-control my notes and hitting the same keys in most cases - that's why I wrote etontig.  

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