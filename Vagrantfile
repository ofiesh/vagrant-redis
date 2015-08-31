Vagrant.configure("2") do |config|
  config.vm.network "forwarded_port", guest: 6379, host: 6379
end

Vagrant::Config.run do |config|
  config.vm.box = "precise32"
  config.vm.box_url = "http://files.vagrantup.com/precise32.box"
  config.vm.host_name = "redis"
  config.vm.provision "shell", path: "redis.sh"
end