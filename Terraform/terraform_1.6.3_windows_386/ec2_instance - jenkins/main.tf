module "ec2_instance" {
  source  = "terraform-aws-modules/ec2-instance/aws"

  name = "Jenkins_Terraform"

  instance_type          = "t2.micro"
  ami                    = "ami-05caa5aa0186b660f"
  key_name               = "vinod_aug2023"
  vpc_security_group_ids = ["sg-076bbf8a4ce79b6aa"]
  user_data = file("jenkins.sh")
  count = 6

}