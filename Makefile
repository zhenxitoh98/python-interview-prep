.PHONY: install
install:
	pip install -r requirements.txt

.PHONY: lint
lint:
	flake8 . --count --max-complexity=10 --show-source --statistics

.PHONY: fix
fix:
	python -m black .

.PHONY: fix-check
fix-check:
	python -m black --check .

.PHONY: test
test:
	pytest

.PHONY: run
run:
	python src/main.py

