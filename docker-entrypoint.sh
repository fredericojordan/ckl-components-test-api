#!/usr/bin/env sh

# Just check the database port on development environment
if [ "$ENV" = "development" ] ; then
    python docker/web/check_db.py --service-name Postgres --ip db --port 5432
fi

python src/manage.py migrate
python src/manage.py runserver 0.0.0.0:8000
