ENV=$(CURDIR)/env
MANAGE=$(ENV)/bin/python manage.py

start: deps
	$(MANAGE) runserver 0:8000

deps: $(ENV)
	$(ENV)/bin/pip install -r requirements.txt

$(ENV):
	$(shell which python) -m venv $(ENV)

.PHONY: start
