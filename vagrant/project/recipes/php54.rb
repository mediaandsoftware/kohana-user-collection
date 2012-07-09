require_recipe "apt"

# Create database
execute "add-php54-dotdeb" do
  command "sudo echo \"" +
           "deb http://packages.dotdeb.org squeeze all \n" +
           "deb-src http://packages.dotdeb.org squeeze all \n" +
           "deb http://packages.dotdeb.org squeeze-php54 all \n" +
           "deb-src http://packages.dotdeb.org squeeze-php54 all \n" +
           "\" >> /etc/apt/sources.list.d/dotdeb.list"
  action :run
  creates "/etc/apt/sources.list.d/dotdeb.list"
end