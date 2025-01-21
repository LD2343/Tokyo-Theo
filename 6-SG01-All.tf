resource "aws_security_group" "TG01-SG01-tokyo" {
  name        = "TG01-SG01-tokyo"
  description = "TG01-SG01-tokyo"
  vpc_id      = aws_vpc.tokyovpc.id

  ingress {
    description = "TG01-SG01-tokyo"
    from_port   = 80
    to_port     = 80
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  /*ingress {
    description = "SSH"
    from_port   = 22
    to_port     = 22
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }*/

  ingress {
    description = "icmp"
    from_port   = 8
    to_port     = 0
    protocol    = "icmp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  /*ingress {
    description = "MyEvilBox"
    from_port   = 3389
    to_port     = 3389
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }*/


  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }

  tags = {
    Name = "TG01-SG01-tokyo"
  }

}




/*
resource "aws_security_group" "LB01-SG01-tokyo" {
  name        = "LB01-SG01-tokyo"
  description = "LB01-SG01-tokyo"
  vpc_id      = aws_vpc.tokyovpc.id

  ingress {
    description = "TG01-SG01-tokyo"
    from_port   = 80
    to_port     = 80
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  /*ingress {
    description = "Secure"
    from_port   = 443
    to_port     = 443
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }

  tags = {
    Name    = "LB01-SG01-tokyo"
  }

}*/

resource "aws_security_group" "Syslog-SG-tokyo" {
  name        = "Syslog-SG-tokyo"
  description = "Syslog-SG-tokyo"
  vpc_id      = aws_vpc.tokyovpc.id

  /*ingress {
    description = "HTTP"
    from_port   = 80
    to_port     = 80
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }*/

  ingress {
    description = "Syslog"
    from_port   = 514
    to_port     = 514
    protocol    = "udp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  /*ingress {
    description = "SSH"
    from_port   = 22
    to_port     = 22
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }*/



  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }

  tags = {
    Name = "Syslog-SG-tokyo"
  }

}

resource "aws_security_group" "AuroraDB-SG" {
  name        = "AuroraDB-SG-tokyo"
  description = "AuroraDB-SG-tokyo"
  vpc_id      = aws_vpc.tokyovpc.id

  /*ingress {
    description = "HTTP"
    from_port   = 80
    to_port     = 80
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }*/

  ingress {
    description = "AuroraDB"
    from_port   = 3306
    to_port     = 3306
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  /*ingress {
    description = "SSH"
    from_port   = 22
    to_port     = 22
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }*/



  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }

  tags = {
    Name = "AuroraDB-SG-tokyo"
  }

}
