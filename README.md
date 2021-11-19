# docker-traefik

It is part of a [set of repositories](https://github.com/search?q=user%3Admartingarcia+docker) that contain dockerised environments for small applications.

In this case, it contains a self-efficient *traefik* setup.

It can act as a reverse proxy that match each request and send it into the right container.

## How to use it

First of all, please, :warning: *Change .env file to match your machine settings, as well as the credentials* :warning:

First time, you'll need to execute the configure Makefile rule

```
make configure
make run
```

for the following times, you just need to execute the run rule

```
make run
```

You can also use `make stop` in order to stop the traefik container.

## .env setup

It contains a basic set of variables like:

- HTTP basic auth credentials
- HTTP host to match requests for internal traefik API
- Internal local machine IP
- user email to register letsencrypt certificates

Please take a look on that and :warning: create your own credentials :warning: in case you want to expose it to the public.

## Traefik dashboard`
