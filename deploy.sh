#!/bin/bash
zola build && ssh giga 'cd /var/www/metavoid.xyz && rm -rf *' && scp -r public/* giga:/var/www/metavoid.xyz/
