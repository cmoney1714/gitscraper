# GitScraper
Small command-line application that scrapes trending GitHub repositories

## How to use
This has only been tested on MacOSX.
### You must have the following installed 
Ruby 2.6.3 - If you need to update: 
http://codingpad.maryspad.com/2017/04/29/update-mac-os-x-to-the-current-version-of-ruby/

You will need the following gems installed and up to date: 
- nokogiri
- launchy
- httparty
- bundler 

#### To update gems 
```
gem update --system
gem install bundler
```

If you need some help with installing/updating gems: 
https://guides.rubygems.org/rubygems-basics/


### To run 
```
bundle install
bin/gitscraper
```