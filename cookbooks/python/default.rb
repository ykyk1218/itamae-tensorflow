package 'libxml2-dev' do
  action :install
end
package 'libxslt1-dev' do
  action :install
end
package 'zlib1g-dev' do
  action :install
end
package 'python3-pip' do
  action :install
end

execute "install numpy" do
  user "vagrant"
  command <<-"EOH"
    sudo pip3 install numpy
  EOH
end
execute "install lxml" do
  user "vagrant"
  command <<-"EOH"
    sudo pip3 install lxml
  EOH
end
