PROJECT_NAME=springboot

start:
	@docker stop resurface || true
	@docker build -t test-springboot --no-cache .
	@docker-compose up --detach

stop:
	@docker-compose stop
	@docker-compose down --volumes
	@docker image rmi -f test-springboot

bash:
	@docker exec -it springboot bash

logs:
	@docker logs -f springboot

ping:
	@curl --request POST \
      --url http://localhost/graphql \
      --header 'Content-Type: application/json' \
      --cookie csrftoken=pjTh8yA41c4lRfFJgWceZ6agp4YcSLzZpXPL1q9evkiVhnpPUkUEEDDtYrqbmuhE \
      --data '{"query":"query {\n    post(id: \"1\") {\n        id\n        comments {\n            id\n            description\n        }\n    }\n}"}'

restart:
	@docker-compose stop
	@docker-compose up --detach
