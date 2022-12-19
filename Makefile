build:
	docker build -t backdoored-vsftpd-2.3.4 .

container:
	docker run -it --rm -p 21:21 -p 6200:6200 --name vsftpd --hostname vsftpd_machine backdoored-vsftpd-2.3.4
