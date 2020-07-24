# This is a Vagrant block to allow proxy settings to be carried into Kitchen
# You need this for all of yum/apt etc. to work!
unless ENV['http_proxy'].empty? || Vagrant.has_plugin?("vagrant-proxyconf")
  raise "Missing required plugin 'vagrant-proxyconf' to support HTTP(S) proxies, run `vagrant plugin install vagrant-proxyconf`"
end

Vagrant.configure(2) do |config|
  config.proxy.http     = "#{ENV['http_proxy']}"
  config.proxy.https    = "#{ENV['https_proxy']}"
  config.proxy.no_proxy = "localhost,127.0.0.1"

  # You may have vagrant-vbguest plugin installed to keep your images up to date
  # - but will probably have VBoxAddition build issues with the foreign boxes listed in .kitchen.vagrant.yml
  config.vbguest.auto_update = false
end
