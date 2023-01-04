FROM postgres:14

RUN mkdir -p /usr/local/docs/pgdata; \
    mkdir -p /usr/local/docs/pgindex; \

    mkdir -p /usr/local/auth/pgdata; \
    mkdir -p /usr/local/auth/pgindex; \

    chown -R postgres:postgres /usr/local; \
    chmod -R u+rwx /usr/local

ENV POSTGRES_USER=postgres
ENV POSTGRES_PASSWORD=postgres

RUN mkdir -p /var/lib/postgresql-static/data
ENV PGDATA /var/lib/postgresql-static/data