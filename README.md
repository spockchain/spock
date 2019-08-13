# Go-Spock
Decentralized Application Platform based on proof-of-capacity (PoC) consensus and Ethereum protocol written in Go.

## Download
#### Windows
Click [spock_win64_v2.0.0.exe](https://raw.githubusercontent.com/spockchain/spock/master/spock_win64_v2.0.0.exe "spock_win64_v2.0.0.exe") to download.

#### Linux
```shell
$ wget https://raw.githubusercontent.com/spockchain/spock/master/spock_linux_amd64_v2.0.0
$ chmod +x spock_linux_amd64_v2.0.0
$ ./spock_linux_amd64_v2.0.0 --version
```

## Run

Going through all the possible command line flags is out of scope here (please consult our
[CLI Wiki page](https://github.com/spockchain/spock/wiki/Command-Line-Options)),
but we've enumerated a few common parameter combos to get you up to speed quickly
on how you can run your own `spock` instance.

### Full node on the main Spock network
By far the most common scenario is people wanting to simply interact with the Spock
network: create accounts; transfer funds; deploy and interact with contracts. For this
particular use-case the user doesn't care about years-old historical data, so we need to sync to the current state of the network. To do so:

#### Windows
```shell
> spock_win64_v2.0.0.exe console
```

#### Linux
```shell
$ ./spock_linux_amd64_v2.0.0 console
```
This command will:
 * Start `spock`, it would start to download more data in exchange for avoiding processing the entire history
   of the Spock network, which is very CPU intensive.
 * Start up `spock`'s built-in interactive [JavaScript console](https://github.com/spockchain/spock/wiki/JavaScript-Console),
   (via the trailing `console` subcommand) through which you can invoke all official [`web3` methods](https://github.com/spockchain/spock/wiki/JavaScript-API)
   as well as `spock`'s own [management APIs](https://github.com/spockchain/spock/wiki/Management-APIs).
   This tool is optional and if you leave it out you can always attach to an already running
   `spock` instance with `spock attach`.

### A Full node on the Spock dev network

Transitioning towards developers, if you'd like to play around with creating Spock
contracts, you almost certainly would like to do that without any real money involved until
you get the hang of the entire system. In other words, instead of attaching to the main
network, you want to join the **dev** network with your node, which is fully equivalent to
the main network, but with play-SPOK only.

```shell
$ spock --dev console
```


#### Creating the communction center point with bootnode

With all nodes that you want to run initialized to the desired genesis state, you'll need to start a
bootstrap node that others can use to find each other in your network and/or over the internet. The
clean way is to configure and run a dedicated bootnode:

```
$ bootnode --genkey=boot.key
$ bootnode --nodekey=boot.key
```

With the bootnode online, it will display an [`snode` URL](https://github.com/sero-cash/go-sero/wiki/snode-url-format)
that other nodes can use to connect to it and exchange peer information. Make sure to replace the
displayed IP address information (most probably `[::]`) with your externally accessible IP to get the
actual `snode` URL.

*Note: You could also use a full fledged sero node as a bootnode, but it's the less recommended way.*

*Note: there is bootnodes already available in sero alpha network and sero main network, setup developer's own
bootnode is supposed to be used for dev network.*


## Community Resource

**Official Website:**<https://www.spockchain.org>

**Telegram:** <https://t.me/spockchain>
