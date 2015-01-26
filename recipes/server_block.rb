link "/etc/nginx/sites-enabled/default" do 
	action :delete
end

file "/etc/nginx/sites-available/default" do 
	action :delete
	only_if { File.file?('/etc/nginx/sites-available/default') }
end

directory "/var/www/default" do 
	action :delete
end

template "/etc/nginx/sites-available/mysite.conf" do 
	source "mysite.nginx.conf.erb"
	action :create
end

link "/etc/nginx/sites-enabled/mysite.conf" do 
	to "/etc/nginx/sites-available/mysite.conf"
end