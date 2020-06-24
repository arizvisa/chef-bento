Vagrant.require_version ">= 1.7.3"

Vagrant.configure(2) do |config|
  config.ssh.username = "user"
  config.ssh.password = "user"
  config.vm.provider "virtualbox" do |_, override|
    override.vm.synced_folder ".", "/shared", type: "rsync"
  end
end
