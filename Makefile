install:
	curl -LsSf https://astral.sh/uv/install.sh | sh
	. $$HOME/.local/bin/env && uv pip install -r requirements.txt

build:
	./build.sh

render-start:
	gunicorn task_manager.wsgi



git:
	git add .
	git commit -m "step1"
	git push


