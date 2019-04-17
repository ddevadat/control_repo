class profile::ssh_server {
  package {'openssh-server':
    ensure => present,
  }
  service { 'sshd':
    ensure => 'running',
    enable => 'true',
  }
  ssh_authorized_key { 'root@localhost.localdomain':
    ensure => present,
    user   => 'root',
    type   => 'ssh-rsa',
    key    => 'AAAAB3NzaC1yc2EAAAADAQABAAABAQCmh6uHIyFFmG8rXiEXUbZLHEsDOLrQk7zwJ8mWHrkXEQ3bdPN1gRmOnSRo59G2twfzIRCwlp6Wi4oQrFnMyePu0vrFkeIuxwircWXY3WSQV4p1+S+xO4lrnbd/ts2GH5SXHD8dboNrorJjCveakWhCQ2ygx0ZDclr1+9jMGbFvXBGp/TU3Zm37WrrLgyL5bmuHew2dN8WOrujGAGVkW6pUjA6vQRdr9noN5u2njeyH2X5g+MLpLp7ZpaQ9fm9KcJskmSnaTikAu2VkmZ2SwrxWIV9/r430F7RWJmP8lRfm7l+MBIQoyHgFHyfWhWRLrR9sWuOK6QpZ9gb5Y2iwH3MH',
  }  
}
