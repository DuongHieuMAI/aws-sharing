.DEFAULT_GOAL := install
.PHONY: venv
PY_VERSION = 3.6
LINTER = flake8


clean :
	rm -rf dist \
	rm -rf docs/build \
	rm -rf *.egg-info
	coverage erase

venv :
	virtualenv -p $(PY_VERSION) venv

install:
	pip install -r requirements.txt
