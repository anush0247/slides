 frontend sunny
	bind 10.4.34.250:8080
	default_backend sunny-backend
   backend sunny-backend
	balance roundrobin
	mode tcp
	server sunny 10.4.34.250:80 check
	server ram 10.4.34.242:80 check
	server knc 10.4.34.245:80 check 
 /etc/init.d/haproxy {start|stop|restart|status}
