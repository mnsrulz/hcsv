FROM datasetteproject/datasette

WORKDIR /app

RUN datasette install datasette-graphql

ADD /csv_dumps ./

ENTRYPOINT ["datasette", "/app/*/*.db", "-h", "0.0.0.0", "--setting","sql_time_limit_ms","30000"]