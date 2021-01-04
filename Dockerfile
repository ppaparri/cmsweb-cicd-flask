FROM tiangolo/uwsgi-nginx-flask:python3.6-alpine3.7
RUN apk --update add bash nano git
ENV STATIC_URL /static
ENV STATIC_PATH /var/www/app/static
ARG COMMIT=""
LABEL commit=${COMMIT}
ENV COMMIT_SHA=${COMMIT}
COPY ./requirements.txt /var/www/requirements.txt
RUN pip install -r /var/www/requirements.txt