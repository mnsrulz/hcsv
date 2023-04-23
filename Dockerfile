FROM datasetteproject/datasette

WORKDIR /app

RUN datasette install datasette-graphql

ADD /csv_dumps/**/*.db ./data/
ADD /run.sh ./

RUN chmod +x ./run.sh

CMD "/app/run.sh"