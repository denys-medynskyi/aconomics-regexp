# Regex - /(NOK\s?\d+)|(\d+\s?kr)|(kr\s?\d+[,|\.]?\d+)|(\d+[,|\.]?\d+)/
## Examples of parsed money formats:
* NOK 52
* 52kr
* kr52
* kr 52
* kr 52,5
* kr 52.0
* 52,99
* 52.99
* 52

## Setup
* git clone git@github.com:skrypalyk/norwegian-money-regexp.git
* bundle
* ruby price.rb