package 'python3-pip' do
  action :install
end

execute "install numpy" do
  user "vagrant"
  command <<-"EOH"
    sudo pip3 install numpy
  EOH
end
