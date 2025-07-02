test:
	docker compose -f docker-compose.yml up --abort-on-container-exit --exit-code-from app 

dev:
	docker compose up

build:
	docker compose build app

push: 
	docker compose push app
