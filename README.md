# DNSPerf-Domain-Generator
A script to generate a list of domains for testing with dnsperf

Typical dnsperf usage is:
dnsperf -s <dnsserverip> -d <domainlist>
i.e:
dnsperf -s 192.168.1.1 -d domains.txt

The issue I encountered was getting hold of a domain list and in the correct format.
Hence, this script was created.

Clone the repo and simply run the script, to generate a list of random domains in the correct format for use with dnsperf:
git clone https://github.com/GinjaChris/DNSPerf-Domain-Generator.git
cd DNSPerf-Domain-Generator/
chmod +x gendom.sh
./gendom.sh

This will generate a list of 10,000 domains to the file "domains" in a format usable by dnsperf:
dnsperf -s 192.168.1.1 domains

Most of the domains will give NXDOMAIN responses due to the random nature of their creation.
