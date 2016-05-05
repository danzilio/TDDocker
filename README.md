# Test Driven Docker!
This is an example of how to use Test Driven Development with Docker containers. This example uses Serverspec and a Dockerfile.

This repo was used as an example in a blog post of mine: http://blog.danzil.io/2016/05/05/rspec-for-ops-test-driven-docker.html

# Requirements
A modern `ruby`, `bundler`, and `docker`

# Running

1. `git clone https://github.com/danzilio/TDDocker`
2. `cd TDDocker/`
3. `bundle install`
4. `bundle exec rake spec`
