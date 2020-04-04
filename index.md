I've been writing [notes](https://github.com/vjyq/vjyq.github.io) in Git and here's a screenshot of the commit page. Have you noticed any similarities between the commits? 

![vjyq-github-io-2020-04-04](./vjyq-github-io-2020-04-04.png)

Yes, the duplicated commit messages. I repeated myself in committing my notes: for every single change, I typed at least `git add`, `git commit`, `git push` - and they were almost the same!
So how could I handle or improve this low ROI situation when using Git that version control is required but not necessary for each update? 

My solution is [etontig](https://github.com/vjyq/etontig). With etontig, if I want to do a new post, I just need to:
```
$ cd vjyq.github.io # the name of my note folder
$ etontig cp
```