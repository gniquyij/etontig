I've been writing [notes](https://github.com/vjyq/vjyq.github.io) in Git and here's a screenshot of the commit page. Have you noticed any similarities between the commits? 

![vjyq-github-io-2020-04-04](./vjyq-github-io-2020-04-04.png)

Yes, the duplicated commit messages. I repeated myself in committing my notes: for every single change, I typed at least `git add`, `git commit`, `git push` - and they were almost the same!
So how could I handle or improve this low ROI situation when using Git that version control is required but not necessary for each update? 

I did 2 things:
1. create a [script](https://github.com/vjyq/etontig/blob/master/etontig.sh) to tie git commands up
2. alias the script. Here's my `.bash_profile`:
```
# etontig
func () { bash /Users/yuqing.ji/etontig/etontig.sh $1 $2; }
alias etontig=func
``` 

Now if I want to do a new post, I just need to:
```
$ cd vjyq.github.io # the name of my note folder
$ etontig cp
```

<br>
<div style="border-top:1px solid #e1e4e8;padding-top:0.3em">© 2018-2020 by YUQING JI</div>
<div><a href="https://vjyq.github.io/">Blog</a> - <a href="mailto:yuqing.ji@outlook.com">Email</a> - <a href="https://github.com/vjyq">Github</a></div>