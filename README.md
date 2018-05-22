# docker-bitcoind

quick-start w/ rpc
```
docker run -p 8222:8332 -p 8333:8333 nthieling/bitcoind:latest \
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
