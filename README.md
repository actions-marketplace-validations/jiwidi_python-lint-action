# Python linting: Autoflake, isort and black

Use this action to run linting test against your code.

Example usage:

```yaml
name: Pylint autoflake, isort, black

on: [push]

jobs:
  build:
    runs-on: ubuntu-latest
    steps:
       - name: Python Linter
         uses: jiwidi/python-lint-action@main
```
