#!/usr/bin/env python
import json
from urllib import urlretrieve

with open("radicals.json") as f:
  radicals = json.loads(f.read())['requested_information']

for radical in radicals:
  if radical['image'] is not None:
    urlretrieve(radical['image'], "png/%s.png" % radical['meaning'])