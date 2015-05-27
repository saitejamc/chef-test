node[:zookeepers].each do |srv| 
	file "/tmp/#{srv}" do
		content "#{node[:"#{srv}"][:ip]}\n"
	end
end
	
