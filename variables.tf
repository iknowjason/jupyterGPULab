# Variables

variable "aws_region" {
  description = "AWS region"
  type        = string
  default     = "us-east-1"
}

variable "gh_repo" {
  description = "GH repo to download notebooks from"
  type        = string
  default     = "https://github.com/cisco-foundation-ai/cookbook.git"
}

variable "notebook_instance_name" {
  description = "Name for the SageMaker notebook instance"
  type        = string
  default     = "foundation-sec-log-analysis"
}

variable "instance_type" {
  description = "Instance type for SageMaker Jupyter Notebook"
  type        = string
  default     = "ml.g4dn.xlarge"

  /*Other options include:
  ml.g4dn.2xlarge  # 32GB VRAM for larger models or batch processing
  ml.g5.xlarge     # Newer GPU generation
  ml.p3.2xlarge    # V100 GPU (more expensive but faster)
  */
}

variable "volume_size" {
  description = "EBS volume size in GB for the notebook instance"
  type        = number
  default     = 100 
}

variable "allowed_cidr_blocks" {
  description = "CIDR blocks allowed to access the notebook"
  type        = list(string)
  default     = ["0.0.0.0/0"] # Restrict this in production!
}

variable "tags" {
  description = "Tags to apply to resources"
  type        = map(string)
  default = {
    Project     = "Foundation-Sec-Analysis"
    Environment = "development"
    Purpose     = "Log-Prioritization"
  }
}
