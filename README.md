# DNSPerf-Domain-Generator
A script to generate a list of domains for testing with dnsperf

Typical dnsperf usage is:
dnsperf -s <dnsserverip> -d <domainlist>
i.e:
dnsperf -s 192.168.1.1 -d domains.txt

The issue I encountered was getting hold of a domain list and in the correct format.
Hence, this script was created.

Clone the repo and simply run the script, to generate a list of random domains in the correct format for use with dnsperf.
