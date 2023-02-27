Meta repository for plausible-history. There are no forced pushes like
in the other. You can hack with it:

```
git clone Madhanla/gistory.git
mv fsm/{_,.}git
cd fsm

 .......
 (Changes inside fsm subrepository)
 .......

cd ..
./utils/commit.sh fsm <message>
```
