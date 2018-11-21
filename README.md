# Rails URL Shortener

Using Ruby on Rails

### Objectives

* Put a URL into the home page and get back a URL of the shortest possible length.
* We must be redirected to the full URL when we enter the short URL (ex: http://myshortener.whatever/a => https://google.com).
* There must be an endpoint that returns the top 100 most frequently accessed URLs.
* There must be a background job (resque, sidekiq, activejob, etc) that crawls the URL being shortened, pulls the <title> from the website and stores it.
* Display the title with the URL on the top 100 board.

### Prerequisites

You will need the following things properly installed on your computer.

* [Git](https://git-scm.com/)
* [Google Chrome](https://google.com/chrome/)
* [Rails](http://railsinstaller.org/en)

### Installation / Running

Checkout this repo, go to RailsUrlShortener folder, install dependencies, then start the app with the following:

```
> git clone https://github.com/lauchaves/RailsUrlShortener
> cd RailsUrlShortener
> rake db:migrate
> rails server
> Go to http://localhost:3000/
> Enter an URL and then click the shortUrl to be redirected
> Get the top 100 -> http://localhost:3000/shortened_urls/top
```
