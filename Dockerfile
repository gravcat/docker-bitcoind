FROM ubuntu:xenial
MAINTAINER Nick Thieling <nick@adrift.io>

# https://en.bitcoin.it/wiki/Running_Bitcoin#Bitcoin.conf_Configuration_File
ENV BITCOIND_PORT 8333
ENV DBCACHE_SIZE_MB 4096
ENV SCR_VER_THREADS -2
ENV RPC_USER bitcoinrpc
ENV RPC_PASS localrpc
ENV JSONRPC_THREADS 4
ENV JSONRPC_PORT 8332
ENV P2P_PORT 8333

# Json-RPC and P2P ports respectively. Open only 8333 externally.
EXPOSE ${JSONRPC_PORT}
EXPOSE ${P2P_PORT}
VOLUME /root/.bitcoin/

# https://bitcoin.org/en/full-node
RUN apt-get update -y && apt-get upgrade -y
RUN apt-get install software-properties-common -y
RUN add-apt-repository ppa:bitcoin/bitcoin -y
RUN apt-get update -y # update index after ppa add

# install bitcoind and configuration
RUN apt-get install bitcoind -y

CMD bitcoind \
      -dbcache=$DBCACHE_SIZE_MB \
      -par=$SCR_VER_THREADS \
      -txindex \
      -port=$BITCOIND_PORT \
      -disablewallet \
      -printtoconsole \
      -server \
      -rpcuser=$RPC_USER \
      -rpcpassword=$RPC_PASS \      
      -rpcport=$JSONRPC_PORT \
      -rpcthreads=$JSONRPC_THREADS
