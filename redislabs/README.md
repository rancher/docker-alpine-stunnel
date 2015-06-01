## Alpine Linux STUNNEL container for RedisLabs


### Purpose:

Simple, purpose built Alpine Linux container for connecting to Redis Labs instances over SSL.

### Usage:

Required ENV vars:

* ACCEPT_STRING - local listenting ip and port. [Default 127.0.0.1:6379]
* CONNECT_STRING - Remote connection host and port  

Required Bind Mounts:

* [local]:/etc/stunnel/user.crt
* [local]:/etc/stunnel/user_private.key

