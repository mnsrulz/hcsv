FROM datasetteproject/datasette

WORKDIR /app

RUN datasette install datasette-graphql

COPY ./csv_dumps /csv_dumps

ENTRYPOINT ["datasette", "/app/csv_dumps/*/*.db", "-h", "0.0.0.0", "--setting","sql_time_limit_ms","30000"]