variable "region" {
  description = "instance region"
  default = "us-east-1"
 }

variable "availability_zone" {
  description = "instance region"
  default = "us-east-1b"
 }

variable "image_id" {
  description = "AMI of the instance"
  default     = "ami-002070d43b0a4f171"
 }

variable "instance_type" {
  description = "type of the instance"
  default     = "t2.micro"
 }

variable "key_pair_name" {
  description = "key pair value to connect instance"
  default = "test"
 }

variable "volume_size" {
  description = "size of the volume"
  default = 10
 }

variable "volume_type" {
  description = "type of the volume"
  default = "gp2"
}
