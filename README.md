# cmoproject.org

[![Build Status](https://travis-ci.org/joshukraine/cmoproject.org.svg?branch=master)](https://travis-ci.org/joshukraine/cmoproject.org)

[cmoproject.org](http://cmoproject.org/) is the web site for Carpathian Mountain Outreach, a short-term missions project hosted annually by [Euro Team Outreach, Inc.](http://www.euroteamoutreach.org/) in Western Ukraine.

This site was built using [Middleman 4](https://middlemanapp.com/).

![cmoproject.org screenshot](https://s3.amazonaws.com/images.cmoproject.org/cmoproject-screenshot.jpg)

### Setup

To get started, clone the repo, cd into it, and run the setup script

```sh
$ bin/setup
```

### Development

Fire up the Middleman server to view the site in a browser.

```sh
$ bundle exec middleman server
```

Check out the [documentation](https://middlemanapp.com/basics/install/) for more info on developing static sites with Middleman.

### Deployment

cmoproject.org is currently deployed on Amazon S3. [Detailed instructions](http://docs.aws.amazon.com/gettingstarted/latest/swh/website-hosting-intro.html) are available from Amazon.

### Acknowledgements

I got started with Middleman thanks to Chris Toomey of thoughtbot. His [excellent introductory video](https://upcase.com/videos/building-static-sites-with-middleman) on building static sites with Middleman and the accompanying [sample application](https://github.com/thoughtbot/upcase-middleman-sample) provided much of the inspiration for building this site.

Upgrading this site to v4 of Middleman was made much easier thanks to [Craig Dennis](https://twitter.com/craigmdennis). His [YouTube video](https://youtu.be/-io8EeB3GHI) and accompanying [GitHub repo](https://github.com/craigmdennis/middleman-gulp-starter) clearly illustrate how to use Middleman with Gulp Starter as the asset pipeline.

### Logo

![Carpathian Mountain Outreach](https://s3.amazonaws.com/images.cmoproject.org/cmo-logo.png)

The Carpathian Mountain Outreach logo is a trademark of [Euro Team Outreach, Inc.](http://www.euroteamoutreach.org/)

