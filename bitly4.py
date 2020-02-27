#!/usr/bin/env python

import sys
try:
	query = sys.argv[1]
except:
	print( "Empty query" )
	exit(1)

from bitlyshortener import Shortener
tokens_pool = ['authTokenFromBitLy']
shortener = Shortener(tokens=tokens_pool, max_cache_size=8192)
urls = sys.argv[1:]
shortUrl = shortener.shorten_urls(urls)
print (shortUrl)

