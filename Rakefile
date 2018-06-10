
desc 'Rubocop of new code'
task :rubocop do
  puts 'Execution of Rubocop linting tests'
  sh 'rubocop .'
end

desc 'Run linting commands'
task lint: ['rubocop'] do
  # Your code goes here
end

desc 'Run setup'
task :setup do
  # Your code goes here
  puts 'bundle exec stuff'
  sh 'bundle install'
  sh 'bundle update'
end

# desc 'Foodcritic of new code'
# task :foodcritic do
#   puts 'Running Foodcritic linting tests...'
#   sh 'foodcritic . -f any'
# end

desc 'Build VM with cookbook'
task :converge do
  puts 'run kitchen tasks'
  sh 'KITCHEN_LOCAL_YAML=.kitchen.digitalocean.yml bundle exec '\
          'kitchen converge fedora-27'
end

desc 'Build VM with cookbook'
task :verify do
  puts 'run kitchen tasks'
  sh 'KITCHEN_LOCAL_YAML=.kitchen.digitalocean.yml bundle exec '\
          'kitchen verify fedora-27'
end

desc 'Destroy VM'
task :destroy do
  puts 'run kitchen tasks'
  sh 'KITCHEN_LOCAL_YAML=.kitchen.digitalocean.yml bundle exec '\
          'kitchen destroy fedora-27'
end

# desc 'Verify the cookbook with Inspec'
# task :verify do
#   puts 'Running Inspec tests'
#   sh 'kitchen verify'
# end

# desc 'Reset VM'
# task :destroy do
#   sh 'echo TODO'
# end
