# socat-redirect
Docker image for redirecting a TCP port

Call the image with the following environment variables:

 * `SRC_PORT`: the port (in the container) to redirect. 
  
 * `DST_ADDR`: the destination address in `host:port`.

For every connection to `SRC_PORT` in the container,  a new connection will be made to `DST_ADDR` and all traffic will be forwarded between the two.

The host in `DST_ADDR` can be `host.docker.internal` to specify the docker host (it works even on Linux, because it doesn't rely on docker's support for this)
