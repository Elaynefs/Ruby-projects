# Instructions

Install Gem Dependencies
    
    bundle install

Install Omnibus Vagrant plugin:

    vagrant plugin install vagrant-omnibus


To run all tests from the folder spec/merchant:

    bundle exec rspec merchant_spec.rb  --format documentation

To verify coverage

    Execute: bundle exec rspec

    Access: .../Ruby-projects/coverage/index.html
