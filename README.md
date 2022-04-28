
# Python Linter
Fork from https://github.com/sunnysid3up/python-linter but adapted to my personal needs.


Ensure Python code quality. Supports mypy, autoflake, black and isort.

<details>
  <summary>Details</summary>

[mypy](https://github.com/python/mypy)
> Mypy is an optional static type checker for Python. You can add type hints (PEP 484) to your Python programs, and use mypy to type check them statically. Find bugs in your programs without even running them!

[pylint](https://github.com/PyCQA/pylint)
> Pylint is a Python static code analysis tool which looks for programming errors, helps enforcing a coding standard, sniffs for code smells and offers simple refactoring suggestions.

[black](https://github.com/psf/black)
> Black is the uncompromising Python code formatter. Black makes code review faster by producing the smallest diffs possible.

[isort](https://github.com/timothycrosley/isort)
> isort is a Python utility / library to sort imports alphabetically, and automatically separated into sections and by type.

</details>

## Example
```yaml
 steps:
 - uses: actions/checkout@v2
 - name: Python Linter
   uses: jiwidi/python-lint-action@release
   with:
     source: "src"
     mypy-options: "--ignore-missing-imports --show-error-codes"
     autoflake-options: "--remove-unused-variables"
     pylint-options: "--rcfile=setup.cfg"
     isort-options: "-w 100"
```
