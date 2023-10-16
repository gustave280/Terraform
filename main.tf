/*resource "aws_instance" "ec2" {
  count         = length(var.department)
  ami           = data.aws_ami.my-ami.id
  instance_type = var.instance_type
  tags = {
    name = var.department[count.index]

  }


}
*/

resource "aws_instance" "ec2" {
  for_each      = toset(var.department)
  ami           = data.aws_ami.my-ami.id
  instance_type = var.instance_type
  tags = {
    name = each.value

  }

lifecycle {
    create_before_destroy = true
}
}

