# docker-bitcoind

:whale: https://hub.docker.com/r/nthieling/bitcoind/

**Versions**:

| Branch | Daemon Version | GitHub |
| ------------- | ------------- | ------------- |
| master  | 0.16.0-xenial1  | [link](https://github.com/gravcat/docker-bitcoind) |
| 0.16.0-xenial1 | 0.16.0-xenial1  | [link](https://github.com/gravcat/docker-bitcoind/tree/0.16.0-xenial1) |

**quick-start** w/ rpc
```
docker run -p 8222:8332 -p 8333:8333 -v /root/.bitcoin/ nthieling/bitcoind:latest \
  -dbcache 4096 \
  -par=-2 \
  -txindex \
  -port=8333 \
  -disablewallet \
  -printtoconsole \
  -server \
  -rpcuser=bitcoinrpc \
  -rpcpassword=localrpc \
  -rpcport=8332 \
  -rpcthreads=4 \
  -rpcallowip=172.0.0.0/8
```

The descriptions for these and many more arguments can be found on [this wiki page!](https://en.bitcoin.it/wiki/Running_Bitcoin).
