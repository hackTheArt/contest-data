# First, sudo systemd start docker
then:)
docker build -t pwnchall1 .
docker run -d -p 1337:1337 pwnchall1
