# RPS Challenge

Overview
-------

* A simple game of rock, paper, scissors, lizard, spock
* Player enters their name and then play against the computer or a second player
* If computer, a random choice is generated

Approach
--------

* I used an algorithm to calculate who wins - allowing new weapons to be added with ease (two at a time) and only styling changes will be required
* I focused mainly on styling for this challenge

* multiplayer feature was spiked and NOT test driven. 
* some tests have been added but full coverage not expected.
* tests still need to be added and some content changes to result pages.

checkout commit `6ce432b538d2c6892d39f94cee48cf439d28c6d5` to see the project before adding multiplayer.

Technologies
----------

Languages - Ruby, HTML & CSS  
Framework - Sinatra  
Testing - Rspec & Capybara  

Usage
-----

visit `https://vast-lake-38242.herokuapp.com/` in your browser

Test
----

```
bundle install
rspec
```

Screenshots
----------

Home Page:

![HomePage](/screenshots/Homepage.png)

Play Page:

![PlayPage](/screenshots/Play_page.png)
