file '/tmp/prod' do
	action :create
	user node[:user]
	group node[:group]
	mode node[:mode]
end
