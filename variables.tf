variable "instance_size" {
  type        = string
  default     = "t3.micro"
  description = "The EC2 instance size to deploy"
  
  validation {
    condition     = contains(["t3.micro", "t3.small", "t3.medium"], var.instance_size)
    error_message = "The instance size must be one of t3.micro, t3.small, or t3.medium."
  }
}
