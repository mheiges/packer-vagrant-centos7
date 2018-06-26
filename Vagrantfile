$patch_sshd = <<EOF
conf=/etc/ssh/sshd_config
if grep -q /usr/lib/openssh/sftp-server ${conf}; then
  echo "patching sshd_config"
  sed -i 's;/usr/lib/openssh/sftp-server;/usr/libexec/openssh/sftp-server;' ${conf}
  /bin/systemctl restart sshd.service
fi
EOF

Vagrant.configure(2) do |config|

  config.vm.box = "ebrc/centos-7.2-64-nocm"
  #config.vm.box_url = 'http://software.apidb.org/vagrant/centos-7.2-64-nocm.json'
  config.vm.box = "file://builds/virtualbox/vagrant/centos-7-64/centos-7-64.box"

  if (%r{puppetlabs/centos-7}.match(config.vm.box))
    config.vm.provision :shell, :inline => $patch_sshd
  end

end
