node[:lockfiles].each do |lf|
	file lf do
		action :delete
	end
end
