Vagrant.configure(2) do |config|
  config.vm.provision "shell", inline: <<-SHELL
      zypper -n install python2-setuptools
      mkdir -p /usr/local/lib/python2.7/site-packages/
      ln -s /usr/local/bin/pip /usr/bin/
  SHELL
end