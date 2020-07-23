Vagrant.configure("2") do |c|
  c.vm.provision :shell do |shell|
    shell.path = "https://raw.githubusercontent.com/ansible/ansible/devel/examples/scripts/ConfigureRemotingForAnsible.ps1"
  end
end
