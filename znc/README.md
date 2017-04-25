# Quick start
- Create a volume for configurations:

`docker volume create --name znc-data`

- Configure your znc bouncer:

`docker run -v znc-data:/home/znc/.znc --rm -ti boris/znc znc_config`

Take not of the port you configured on `Listen on port`, for example 31337.

- Start znc server. 

`docker run -v znc-data:/home/znc/.znc -d -p 31337:31337 boris/znc`

- Configure your irc client to use your bouncer.
