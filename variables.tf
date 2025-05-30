variable "prefix" {
  type        = string
  description = "Prefix to add to all resources"
  default     = "n8n"
}

variable "certificate_arn" {
  type        = string
  description = "Certificate ARN for HTTPS support"
  default     = null
}

variable "url" {
  type        = string
  description = "URL for n8n (default is LB url), needs a trailing slash if you specify it"
  default     = null
}

variable "desired_count" {
  type        = number
  description = "Desired count of n8n tasks, be careful with this to make it more than 1 as it can cause issues with webhooks not registering properly"
  default     = 1
}

variable "container_image" {
  type        = string
  description = "Container image to use for n8n"
  default     = "n8nio/n8n:1.4.0"
}

variable "fargate_type" {
  type        = string
  description = "Fargate type to use for n8n (either FARGATE or FARGATE_SPOT))"
  default     = "FARGATE_SPOT"
}

variable "ssl_policy" {
  type        = string
  description = "The name of the SSL policy to use for the HTTPS Listener on the ALB"
  default     = "ELBSecurityPolicy-TLS13-1-2-2021-06"
}

variable "tags" {
  type        = map(string)
  description = "Tags to apply to all resources"
  default = null
}