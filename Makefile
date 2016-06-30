
all:ssl_server ssl_client
.PHONY : clean

ssl_server:server.c
	gcc -o ssl_server server.c -Wall -g -lssl -lcrypto

ssl_client:client.c
	gcc -o ssl_client client.c -Wall -g -lssl -lcrypto


clean:
	rm ssl_server
	rm ssl_client