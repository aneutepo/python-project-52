install:
	uv sync

git:
	git add .
	git commit -m "step1"
	git push

build:
	./build.sh

render-start:
	gunicorn task_manager.wsgi