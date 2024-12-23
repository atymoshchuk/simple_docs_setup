# Simple Docs Setup
Code snippets on how to setup documentation for a Python code.

Requirements: Python 3.x

## Installation

Please create your Python virtual environment and install the requirements, for example with venv:

```bash
python3 -m venv venv
source venv/bin/activate
pip install -r requirements/app.txt
```

## Building a docker image 

One part of the examples is a FastAPI Hello world example, which is called an `app` project.
To run this project, you need to install requirements from `requirements/app.txt`.
To build this project, you need to have Docker installed and running on your machine.

To build image, use command:

```
docker build -t app .
```

Then check if your image was built:

```
docker images
```

You will see something like

```
REPOSITORY                  TAG                 IMAGE ID            CREATED             SIZE
app                         latest              24d8a25e33f5        2 seconds ago       975MB
```

To run `app` in docker:

```
docker run -d -p 8000:8000 app
```

And then you can open in any browser: `http://localhost:8000/docs` or `http://localhost:8000`

Check status:

```
docker ps -a
```

You will see something similar:

```
CONTAINER ID        IMAGE               COMMAND                  CREATED             STATUS              PORTS                    NAMES
ee82ffe241ae        app                 "fastapi run main.py"    4 minutes ago       Up 4 minutes        0.0.0.0:8000->8000/tcp   unruffled_johnson
```

To stop docker container:

```
docker stop ee82ffe241ae
```

And them you will see that container exited:

```
$ docker ps -a
CONTAINER ID        IMAGE               COMMAND                  CREATED             STATUS                     PORTS               NAMES
ee82ffe241ae        app                 "fastapi run main.py"    5 minutes ago       Exited (0) 2 seconds ago                       unruffled_johnson
```
