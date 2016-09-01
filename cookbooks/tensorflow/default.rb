execute "tensorflowをpipでインストール" do
  user "#{node[:user]}"
  command <<-"EOH"
    sudo pip3 install --upgrade #{node[:tensorflow][:url]}
  EOH
end
