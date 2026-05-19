#!/bin/bash

for file in index.html crypto-knowledge-base.html; do
  sed -i '' 's|<a href="#" class="resource-item">|<a href="REPLACE_ME" target="_blank" rel="noopener noreferrer" class="resource-item">|g' "$file"
  
  # Bitcoin.org
  sed -i '' '0,/REPLACE_ME/s/REPLACE_ME/https:\/\/bitcoin.org\//' "$file"
  # Ethereum.org
  sed -i '' '0,/REPLACE_ME/s/REPLACE_ME/https:\/\/ethereum.org\//' "$file"
  # CoinGecko
  sed -i '' '0,/REPLACE_ME/s/REPLACE_ME/https:\/\/www.coingecko.com\//' "$file"
  # Etherscan
  sed -i '' '0,/REPLACE_ME/s/REPLACE_ME/https:\/\/etherscan.io\//' "$file"
done
