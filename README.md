# krazydns

a [gokrazy](https://gokrazy.org) appliance for the raspberry pi running [coredns](https://coredns.io/) - the ultimate home dns setup.

## why

the average techie's dns journey might look a little something like this (mine did):

1. use isp provided dns blissfully unaware
2. use google dns
3. use cloudflare dns
4. add a pihole
5. add a pihole with unbound as a resolver
6. add a pihole with unbound as a resolver and coredns for homelab zones
7. realize this could be all folded into coredns

and so i did! pihole - albeit an incredibly cool project - ended up being a bit too much hassle to maintain and was a bit annoying to deal with. after setting up coredns because i needed it for my homelab, i realized you could just have coredns do all of the things my frankenstein pihole appliance ended up doing. as a big bonus, this can be more lightweight, easily reproducible and defined by code using the awesome gokrazy project!

## features

- lightweight gokrazy appliance that just bundles the linux kernel, go runtime and application code for coredns and it's configuration
- recursive dns resolution via the [unbound plugin](https://coredns.io/explugins/unbound)
- mdns hosting over regular dns via the [mdns plugin](https://coredns.io/explugins/mnds)
- dns-sinkhole-level ad blocking via the [hosts plugin](https://coredns.io/plugins/hosts/), not too dissimilar from how it works with pihole
- centralized metrics to prometheus via the [prometheus plugin](https://coredns.io/plugins/metrics/)
- easy development, building and deployment via [nix](https://nixos.org)

## usage

TODO: this is still in development, lol