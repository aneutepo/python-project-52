install:
	curl -LsSf https://astral.sh/uv/install.sh | sh
	. $$HOME/.local/bin/env && uv pip install -r requirements.txt

build:
	./build.sh

render-start:
	render-start:
	gunicorn task_manager.wsgi:application --bind 0.0.0.0:$(PORT)



git:
	git add .
	git commit -m "step1"
	git push


