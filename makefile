
dir = /mnt/share/work_demo/tcp_connect

service:
	@cp     $(dir)/service.c    ./  -f 
	rm     service*  -f
	@cp     $(dir)/service.c    ./ 
	@gcc    service.c -o   service  -pthread

client:
	@cp     $(dir)/client.c   ./   -f
	rm     client*
	@cp     $(dir)/client.c   ./
	@gcc    client.c  -o   client
clean:
	@rm     client     service 
