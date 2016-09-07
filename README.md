# Money regexp
`/(NOK\s?\d+)|(\d+\s?kr)|(kr\s?\d+[,|\.]?\d+)|(\d+[,|\.]?\d+)/`
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

# Date regexp
`/(\d{8})|(\d{2,4}[\.\/-]\d{2}[\.\/-]\d{2,4})|(\d+\.?\s[a-zA-Z]{3,4}\.?\s\d{4})/`
## Examples of parsed date formats:
* 20030613
* 13.06.2003
* 11/06/2016
* 11-06-2016
* 2016-09-02
* 13. juni 2003
* 11 jun 2003
* 13. sep. 2003
* 1 mai 2016

## Other currency symbols
```
  CURRENCY_SYMBOLS = {
    '$'    => 'USD',
    '€'    => 'EUR',
    '£'    => 'GBP',
    '₤'    => 'GBP',
    'R$'   => 'BRL',
    'R'    => 'ZAR',
    '¥'    => 'JPY',
    'C$'   => 'CAD',
    '₼'    => 'AZN',
    '元'   => 'CNY',
    'Kč'   => 'CZK',
    'Ft'   => 'HUF',
    '₹'    => 'INR',
    '₽'    => 'RUB',
    '₺'    => 'TRY',
    '₴'    => 'UAH',
    'Fr'   => 'CHF',
    'zł'   => 'PLN',
    '₸'    => 'KZT'
  }
```

# Organization number regexp
`/(\b\d{9}\b)|(\b\d{3}\b\s\b\d{3}\b\s\b\d{3}\b)/`
## Examples of organization numbers:
* 996678601
* 996 678 601

## Setup
* git clone git@github.com:skrypalyk/norwegian-money-regexp.git
* bundle
* ruby price.rb
* ruby date.rb
* ruby organization_number.rb