# herd
Herd mentality


/heardapp - the rails app that runs this


# Dev environment setup
To run the development server:

    $ docker compose up

To run a command in the docker container:

    $ ./workspace.sh run your command


To run database migrations (necessary if there are new ones)

    $ ./workspace.sh rails db:migrate
