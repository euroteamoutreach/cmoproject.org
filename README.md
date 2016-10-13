cmoproject.org
==============

[![Build Status](https://travis-ci.org/joshukraine/cmoproject.org.svg?branch=master)](https://travis-ci.org/joshukraine/cmoproject.org)

[cmoproject.org](http://cmoproject.org/) is the official web site for Carpathian Mountain Outreach, a short-term missions project hosted annually by [Euro Team Outreach, Inc.](http://www.euroteamoutreach.org/) in Western Ukraine.

This site was built using [Middleman 4](https://middlemanapp.com/).

![cmoproject.org screenshot](https://s3.amazonaws.com/images.cmoproject.org/cmoproject-screenshot.jpg)

Requirements
------------

* [Ruby 2.x](https://github.com/rbenv/rbenv#readme)
* [Node 5.x](https://github.com/creationix/nvm#readme)
* [Gulp CLI](https://github.com/gulpjs/gulp/blob/master/docs/getting-started.md#getting-started)


Setup
-----

To get started, clone the repo, cd into it, and run the setup script.

```sh
$ bin/setup
```

Development
-----------

This project uses [Gulp](http://gulpjs.com/) with Middleman's new [`external_pipeline`](https://middlemanapp.com/advanced/external-pipeline/) feature introduced in v4.

    # Run the development server with Gulp
    $ bundle exec middleman server
    
    # Build the site (also invokes Gulp)
    $ bundle exec middleman build

Environments
------------

Middleman has two default environments: `development` and `production`. This app is configured to run the external pipeline (Gulp in our case) in both. There are times, however, when the external pipeline should not run. Two good examples are tests and the console. We therefore define two additional environments: `test` and `console`.

Custom environments can be invoked on the command line with `-e` flag like so:

    # Start the console in the console enviroment
    $ bundle exec middleman console -e console

Code for custom environments is stored in `environments/<your-custom-env>.rb`. Note that custom environments can be invoked without the existence of a corresponding file in the `environments/` directory. If, for example, you merely wanted to start a server without the default `development` configs, you could run `middleman server -e <anything-here>`.

For completeness, all four environments used in this app have corresponding files:

```sh
environments/
├── console.rb
├── development.rb
├── production.rb
└── test.rb
```

Tests
-----

Testing is done with Rspec. Run the tests like so:

    $ bin/rspec spec/

Aliases
-------

Consider adding the following to your `.bashrc` or `.zshrc` file:

```sh
mm='bundle exec middleman'
mmb='bundle exec middleman build --clean'
mmc='bundle exec middleman console -e console'
mms='bundle exec middleman server'
```

Deployment
----------

cmoproject.org is currently deployed on Amazon S3. [Detailed instructions](http://docs.aws.amazon.com/gettingstarted/latest/swh/website-hosting-intro.html) are available from Amazon.

Acknowledgements
----------------

I got started with Middleman thanks to Chris Toomey of thoughtbot. His [excellent introductory video](https://upcase.com/videos/building-static-sites-with-middleman) on building static sites with Middleman and the accompanying [sample application](https://github.com/thoughtbot/upcase-middleman-sample) provided much of the inspiration for building this site.

Upgrading this site to v4 of Middleman was made much easier thanks to [Craig Dennis](https://twitter.com/craigmdennis). His [YouTube video](https://youtu.be/-io8EeB3GHI) and accompanying [GitHub repo](https://github.com/craigmdennis/middleman-gulp-starter) clearly illustrate how to use Middleman with Gulp Starter as the asset pipeline.

Logo
----

![Carpathian Mountain Outreach](https://s3.amazonaws.com/images.cmoproject.org/cmo-logo.png)

The Carpathian Mountain Outreach logo is a trademark of [Euro Team Outreach, Inc.](http://www.euroteamoutreach.org/)

Legal
-----

Site content is copyrighted (c) 2016 by Euro Team Outreach, Inc. Software is under the [MIT license](https://github.com/joshukraine/cmoproject.org/blob/master/LICENSE).
