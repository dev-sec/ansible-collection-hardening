Vagrant.configure(2) do |config|
  config.vm.provision "shell", inline: <<-SHELL
    rpm -i http://mirror.de.leaseweb.net/epel/6/x86_64/epel-release-6-8.noarch.rpm
    sed -i 's/\\(mirrorlist=http\\)s/\\1/' /etc/yum.repos.d/epel.repo
    yum install -y ansible libselinux-python
  SHELL
end