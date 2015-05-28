default['user'] = 'saiteja'
default['group'] = 'saiteja'
default['perm'] = '0755'
default['file'] = '/tmp/attr.txt'

default[:lockfiles] = ['/tmp/1.lock', '/tmp/2.lock']

default[:zookeepers] = ['abc','bcd','def']
default[:abc][:ip] = '127.0.0.1'
default[:bcd][:ip] = '127.0.0.2'
default[:def][:ip] = '127.0.0.3'
default[:testfile] = '/tmp/testdir'
default[:testfile1] = "#{node[:testfile]}/file1"


