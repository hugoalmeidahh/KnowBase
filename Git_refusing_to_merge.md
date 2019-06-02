# fatal: refusing to merge unrelated histories

### Add --allow-unrelated-histories to solve the `Git fatal error – “refusing to merge unrelated histories”`

Terminal

```bash
$ git pull origin master

From https://github.com/hhalmeida/git_tips
 * branch            master     -> FETCH_HEAD
fatal: refusing to merge unrelated histories
```

### To fix it :

Terminal

```bash
$ git pull origin master --allow-unrelated-histories

From https://github.com/hhalmeida/git_tips
 * branch            master     -> FETCH_HEAD
Merge made by the 'recursive' strategy.
 LICENSE | 674 ++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
 1 file changed, 674 insertions(+)
 create mode 100644 LICENSE
```

### References
[Git Documentation #git-merge --allow-unrelated-histories ](https://git-scm.com/docs/git-merge#git-merge---allow-unrelated-histories)
