dev:
	docker compose up

test:
	docker compose -f docker-compose.yml up --abort-on-container-exit --exit-code-from app --build

build:
	docker compose build app

push: 
	docker compose push app
