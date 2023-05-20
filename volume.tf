resource "aws_ebs_volume" "ec2-volume" {
  availability_zone = var.availability_zone
  size              = var.volume_size
  type              = var.volume_type
  tags              = {
    key = "Mount"
    value = "/opt/iv2"
  }
}

resource "aws_volume_attachment" "vol-attach" {
  device_name = "/dev/sdh"
  volume_id   = aws_ebs_volume.ec2-volume.id
  instance_id = aws_instance.instance.id
 }
