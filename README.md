# chef-basics

TODO: Enter the cookbook description here.

- Kitchen create
- Kitchen converge
- kitchen setup
- kitchen verify - unit test
- kitchen destroy

- kitchen test (does all of the above)

# to run spec test:
- chef exec rspec

# update chef
- chef update

# Can install programs on recipes but can also install recipes on metadata.rb or Policyfile.rb
- metadata.rb:
  depends 'nodejs', '~> 5.0.0'
  depends 'apt'
