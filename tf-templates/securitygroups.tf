resource "aws_security_group" "FrontEnd" {
  name = "FrontEnd"
  tags = {
    Name = "FrontEnd"
  }
  description = "ONLY HTTP and HTTPS CONNECTION INBOUD"
  vpc_id      = aws_vpc.terraformmain.id

  ingress {
    from_port   = 80
    to_port     = 80
    protocol    = "TCP"
    cidr_blocks = ["0.0.0.0/0"]
  }
  ingress {
    from_port   = 443
    to_port     = 443
    protocol    = "TCP"
    cidr_blocks = ["0.0.0.0/0"]
  }
  ingress {
    from_port   = "22"
    to_port     = "22"
    protocol    = "TCP"
    cidr_blocks = ["0.0.0.0/0"]
  }
  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }
}

resource "aws_security_group" "Database" {
  name = "Database"
  tags = {
    Name = "Database"
  }
  description = "ONLY TCP Postgres CONNECTION INBOUND"
  vpc_id      = aws_vpc.terraformmain.id
  ingress {
    from_port       = 5432
    to_port         = 5432
    protocol        = "TCP"
    security_groups = [aws_security_group.FrontEnd.id]
  }
  ingress {
    from_port   = "22"
    to_port     = "22"
    protocol    = "TCP"
    cidr_blocks = ["0.0.0.0/0"]
  }
  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }
}

resource "aws_security_group" "Bastion" {
  name = "Bastion"
  tags = {
    Name = "Bastion"
  }
  description = "ONLY TCP SSH CONNECTION INBOUND from blessed subnet(s)"
  vpc_id      = aws_vpc.terraformmain.id
  ingress {
    from_port       = "22"
    to_port         = "22"
    protocol        = "TCP"
    security_groups = [aws_security_group.FrontEnd.id]
  }
  ingress {
    from_port   = "22"
    to_port     = "22"
    protocol    = "TCP"
    cidr_blocks = ["0.0.0.0/0"]
  }
  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }
}

resource "aws_security_group" "BuildMon" {
  name = "BuildMon"
  tags = {
    Name = "BuildMon"
  }
  description = "For Build and Monitoring"
  vpc_id      = aws_vpc.terraformmain.id
  ingress {
    from_port       = "22"
    to_port         = "22"
    protocol        = "TCP"
    security_groups = [aws_security_group.FrontEnd.id]
  }
  ingress {
    from_port   = "22"
    to_port     = "22"
    protocol    = "TCP"
    cidr_blocks = ["0.0.0.0/0"]
  }
  ingress {
    from_port   = "2376"
    to_port     = "2376"
    protocol    = "TCP"
    cidr_blocks = ["0.0.0.0/0"]
  }
  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }
}

