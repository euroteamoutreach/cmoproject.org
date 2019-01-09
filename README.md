cmoproject.org
==============

[![Build Status][travis-svg]][travis]

[cmoproject.org][cmo] is the official web site for Carpathian Mountain Outreach, a short-term missions project hosted annually by [Euro Team Outreach, Inc.][eto] in Western Ukraine.

This site was built using [Middleman][middleman].

![cmoproject.org screenshot][screenshot]

Requirements
------------

* [Middleman 4.x][middleman-docs]
* [Ruby 2.x][ruby]
* [Node 8.x][nodejs]
* [Yarn][yarn]
* [Gulp CLI][gulp-cli]


Setup
-----

To get started, clone the repo, cd into it, and run the setup script.

```sh
$ bin/setup
```

Development
-----------

This project uses [Gulp][gulp] with Middleman's new [`external_pipeline`][external-pipeline] feature introduced in v4.

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

cmoproject.org is currently deployed on Amazon S3. [Detailed instructions][aws-s3-deployment] are available from Amazon.

**BONUS: If you deploy with Amazon, you can get a [free ssl certificate][aws-cert-manager] for your site!**

Acknowledgements
----------------

I got started with Middleman thanks to Chris Toomey of thoughtbot. His [excellent introductory video][upcase-video] on building static sites with Middleman and the accompanying [sample application][mm-sample-app] provided much of the inspiration for building this site.

Upgrading this site to v4 of Middleman was made much easier thanks to [Craig Dennis][cdennis]. His [YouTube video][cdennis-video] and accompanying [GitHub repo][cdennis-github] clearly illustrate how to use Middleman with Gulp Starter as the asset pipeline.

Logo
----

![Carpathian Mountain Outreach][cmo-logo]

The Carpathian Mountain Outreach logo is a trademark of [Euro Team Outreach, Inc.][eto]

Legal
-----

Copyright &copy; 2018 Euro Team Outreach, Inc. Software is licensed under [MIT][license].

[aws-cert-manager]: https://aws.amazon.com/blogs/aws/new-aws-certificate-manager-deploy-ssltls-based-apps-on-aws/
[aws-s3-deployment]: https://aws.amazon.com/getting-started/projects/host-static-website/
[cdennis-github]: https://github.com/craigmdennis/middleman-gulp-starter
[cdennis-video]: https://youtu.be/-io8EeB3GHI
[cdennis]: https://twitter.com/craigmdennis
[cmo-logo]: https://s3.amazonaws.com/images.cmoproject.org/cmo-logo.png
[cmo]: https://cmoproject.org/
[eto]: https://euroteamoutreach.org/
[external-pipeline]: https://middlemanapp.com/advanced/external-pipeline/
[gulp-cli]: https://github.com/gulpjs/gulp/blob/master/docs/getting-started.md#getting-started
[gulp]: http://gulpjs.com/
[license]: https://github.com/euroteamoutreach/cmoproject.org/blob/master/LICENSE
[middleman-docs]: https://middlemanapp.com/basics/install/
[middleman]: https://middlemanapp.com/
[mm-sample-app]: https://github.com/thoughtbot/upcase-middleman-sample
[nodejs]: https://github.com/asdf-vm/asdf-nodejs
[ruby]: https://github.com/asdf-vm/asdf-ruby
[screenshot]: https://s3.amazonaws.com/images.cmoproject.org/cmoproject-screenshot.jpg
[travis-svg]: https://travis-ci.org/euroteamoutreach/cmoproject.org.svg?branch=master
[travis]: https://travis-ci.org/euroteamoutreach/cmoproject.org
[upcase-video]: https://upcase.com/videos/building-static-sites-with-middleman
[yarn]: https://yarnpkg.com/en/
