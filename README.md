# docker-bitcoind

quick-start w/ rpc
```
docker run \
    nthieling/bitcoind:latest \
    -p 8222:8332 -p 8333:8333 \
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
    -rpcthreads=4
```
