install:
	uv sync

migrate:
	uv run python3 manage.py migrate

start:
	uv run manage.py runserver 0.0.0.0:8000

test:
	uv run python3 manage.py test

testcov:
	uv run coverage run --source='.' manage.py test
	uv run coverage xml

makemessages:
	uv run django-admin makemessages --ignore="static" --ignore=".env"  -l ru

compilemessages:
	uv run django-admin compilemessages

collectstatic:
	uv run python3 manage.py collectstatic --no-input

build:
	./build.sh

render-start:
	.venv/bin/gunicorn task_manager.wsgi --bind 0.0.0.0:${PORT}

lint:
	uv run ruff check task_manager

format-app:
	uv run ruff check --fix task_manager

check: test lint


git:
	git add .
	git commit -m "fix errors"
	git push