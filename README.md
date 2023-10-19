# herd
Herd mentality


/heardapp - the rails app that runs this


# Dev environment setup

## 1. Build the docker image

    # From the herd folder:
    $ docker build -t herdapp:devel .

## 2. Run the rails app in devel mode

    docker run -it -p3000:3000 --volume=.:/work --env RAILS_ENV=development herd:devel rails serve
