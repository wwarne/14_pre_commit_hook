# Quadratic Equations Solver

This git hook helps you not to forget to run tests!

# How to use

1. If you're using `virtualenv` - change path to python interpreter inside `pre-commit` file.
2. Copy `pre-commit` to `.git/hooks` in your repository
3. Make pre-commit executable by running `chmod +x .git/hooks/pre-commit`
4. From now on every time you'll try to run `git commit` there will be execution of `pre-commit` file and it runs tests from `tests.py`
If all tests have passed - commit will be created. Otherwise it won't.


## When you try to commit bad code

```bash
$ git commit -m "test pre"
.E..
======================================================================
ERROR: test_returns_none_for_complex_solution (__main__.QuadraticEquationTestCase)
----------------------------------------------------------------------
Traceback (most recent call last):
  File "tests.py", line 22, in test_returns_none_for_complex_solution
    root1, root2 = get_roots(1, 2, 3)
  File "/home/warner/warn_test/14_pre_commit_hook/quadratic_equation.py", line 6, in get_roots
    root1 = (-b - sqrt(discriminant)) / (2 * a)
ValueError: math domain error

----------------------------------------------------------------------
Ran 4 tests in 0.001s

FAILED (errors=1)
Test has failed. Don't commit broken code
Fix it please
```

## When all tests are OK
```bash
git commit -m "test pre"
....
----------------------------------------------------------------------
Ran 4 tests in 0.001s

OK
[master dcfb186] test pre
 1 file changed, 1 insertion(+), 1 deletion(-)
```

# Project Goals

The code is written for educational purposes. Training course for web-developers - [DEVMAN.org](https://devman.org)
