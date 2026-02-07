# DNSPerf-Domain-Generator
A script to generate a list of domains for testing with dnsperf

Typical dnsperf usage is:
<code>dnsperf -s dnsserverip -d domainlist</code>

i.e:
<code>dnsperf -s 192.168.1.1 -d domains.txt</code>

The issue I encountered was getting hold of a domain list and in the correct format.
Hence, this script was created.

Clone the repo and simply run the script, to generate a list of random domains in the correct format for use with dnsperf:

<code>git clone https://github.com/GinjaChris/DNSPerf-Domain-Generator.git</code>

<code>cd DNSPerf-Domain-Generator/</code>

<code>chmod +x gendom.sh</code>

<code>./gendom.sh</code>


This will generate a list of 10,000 domains to the file "domains" in a format usable by dnsperf:

<code>dnsperf -s 192.168.1.1 -d domains</code>

Most of the domains will give NXDOMAIN responses due to the random nature of their creation.
