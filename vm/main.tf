
# ✅ Reliable Ubuntu AMI lookup (no gp3/gp2 confusion)
data "aws_ami" "ubuntu" {
  most_recent = true
  owners      = ["099720109477"] # Canonical

  filter {
    name   = "name"
    values = ["ubuntu/images/hvm-ssd*/ubuntu-jammy-22.04-amd64-server-*"]
  }

  filter {
    name   = "state"
    values = ["available"]
  }
}

# 🔐 Security Group
resource "aws_security_group" "ec2_sg" {
  name        = "github-actions-sg"
  description = "Allow SSH"

  ingress {
    description = "SSH"
    from_port   = 22
    to_port     = 22
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"] # ⚠️ restrict to your IP later
  }

  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }
}

# 🖥️ EC2 Instance
resource "aws_instance" "github_runner" {
  ami           = data.aws_ami.ubuntu.id
  instance_type = "t3.large"

  key_name = "vpc-peering-demo-east-1"

  vpc_security_group_ids      = [aws_security_group.ec2_sg.id]
  associate_public_ip_address = true

  # 💾 Avoid storage charges after destroy
  root_block_device {
    volume_size           = 8
    volume_type           = "gp3"
    delete_on_termination = true
  }

  tags = {
    Name = "github-actions-runner"
  }
}

output "public_ip" {
  value = aws_instance.github_runner.public_ip
}
