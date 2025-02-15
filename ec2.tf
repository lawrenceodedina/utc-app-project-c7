resource "aws_instance" "server1" {
  ami                    = "ami-04681163a08179f28"
  instance_type          = "t2.micro"
  key_name               = aws_key_pair.ec2_key.key_name
  user_data              = file("server.sh")
  subnet_id              = aws_subnet.public1.id
  vpc_security_group_ids = [aws_security_group.sg-demo.id]
  tags = {
    Name = "utc-app-instance"
  }
}