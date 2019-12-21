apt install -y gcc python3.7-dev libpq-dev postgresql
cd
yarn create react-app django-react-boilerplate --typescript
cd django-react-boilerplate
poetry init
poetry add django djangorestframework whitenoise gunicorn django-heroku