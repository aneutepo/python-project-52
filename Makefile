install:
	curl -LsSf https://astral.sh/uv/install.sh | sh
	source $HOME/.local/bin/env && uv pip install -r requirements.txt

git:
	git add .
	git commit -m "step1"
	git push

build:
	./build.sh

render-start:
	gunicorn task_manager.wsgi