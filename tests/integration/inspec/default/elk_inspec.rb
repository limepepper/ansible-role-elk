# test_params = { 'services' => [{ 'name' => 'rsyslog' }],
#                 'package' => 'rsyslog',
#                 'Billy' => 58 }

# feature wth tests
features = %w{logstash kibana elasticsearch filebeat}

skiplist = attribute('skiplist',
                     description: 'list of controls to skip',
                     default: [],
                     required: true)

# val_user = attribute('user', default: 'alice', description:
# 'An identification for the user')
# array of sites/strings to test, passed in from .kitchen.yml
# url_endpoints = attribute('url_endpoints',
# description: 'Urls / strings to search')

# my_services = yaml(content: inspec.profile.file('services.yml')).params
vars_json = json('/var/cache/ansible/attributes/hostvars.json')

vars = vars_json.params

control 'check-attributes-1' do
  impact 0.6
  title "Check attribtues for node: #{vars['ansible_hostname']}"
  desc "
      Checking the hostvars cache is sensible
  "
  describe file('/var/cache/ansible/attributes/hostvars.json') do
    it { should exist }
    #  its('mode') { should cmp 0644 }
  end
end

control 'check-elasticsearch-1' do
  impact 0.6
  title "Check elasticsearch for node: #{vars['ansible_hostname']}"
  desc "
   Prevent unexpected settings.
  "

  describe service('elasticsearch') do
    it { should be_enabled }
    it { should be_installed }
    it { should be_running }
  end

  describe port(9200) do
    it { should be_listening }
  end

  describe port(9300) do
    it { should be_listening }
  end

  describe file('/var/lib/elasticsearch') do
    it { should be_directory }
  end
end

control 'check-filebeat-1' do
  impact 0.6
  title "Check elasticsearch for node: #{vars['ansible_hostname']}"
  desc '   Prevent unexpected settings.  '

  describe service('filebeat') do
    it { should be_enabled }
    it { should be_installed }
    it { should be_running }
  end

  describe port(5044) do
    it { should be_listening }
  end
end

control 'check-kibana-1' do
  impact 0.6
  title "Check elasticsearch for node: #{vars['ansible_hostname']}"
  desc '   Prevent unexpected settings.  '

  describe service('kibana') do
    it { should be_enabled }
    it { should be_installed }
    it { should be_running }
  end

  describe port(5601) do
    it { should be_listening }
  end
end

control 'check-logstash-1' do
  impact 0.6
  title "Check elasticsearch for node: #{vars['ansible_hostname']}"
  desc '   Prevent unexpected settings.  '

  describe service('logstash') do
    it { should be_enabled }
    it { should be_installed }
    it { should be_running }
  end

  describe port(5044) do
    it { should be_listening }
  end
end

skiplist.each do |skip|
  skip_control skip
end

features.each do |feature|
  next unless !vars.key?('elk_features') ||
              (!vars['elk_features'].include? feature)
  puts "skipping 'check-#{feature}-1'"
  skip_control "check-#{feature}-1"
end
