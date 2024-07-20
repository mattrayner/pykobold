.PHONY: setup preflight

setup:
	pip install setuptools
	pip install -r requirements.txt

preflight:
	codespell
	black --check .
	isort --check --diff .
	pylint pykobold
	flake8 pykobold
	bandit -r pykobold
