build:
	docker-compose build web

collectstatic:
	docker-compose run web python manage.py collectstatic --noinput

deploy: build migrate recreate-containers collectstatic

first-deploy:
	docker-compose up -d

migrate:
	docker-compose run web python manage.py migrate

recreate-containers:
	docker-compose up -d web nginx
