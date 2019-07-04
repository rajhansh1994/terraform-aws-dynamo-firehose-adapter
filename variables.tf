variable "batch_size" {
  default     = 100
  description = "The largest number of records that Lambda will retrieve from the DynamoDB stream at then time of invocation"
  type        = string
}

variable "dead_letter_arn" {
  description = "The arn for the SNS topic that handles dead letters"
  type        = string
}

variable "dynamodb_image_type" {
  description = "Can either be NewImage or OldImage. This corresponds to the records in the DynamoDB Stream"
  type        = string
}

variable "dynamodb_stream_arn" {
  description = "The ARN of the Table Stream to connect to the adapter"
  type        = string
}

variable "kinesis_firehose_arn" {
  description = "The ARN of the Kinesis Firehose to deliver the DynamoDB records to"
  type        = string
}

variable "kinesis_firehose_name" {
  description = "The name of the Kinesis Firehose to deliver the DynamoDB records to"
  type        = string
}

variable "kms_key_arn" {
  description = "The arn of the KMS key used to encrypt the environment variables"
  type        = string
}

variable "name_prefix" {
  default     = ""
  description = "The prefix to place on all created resources"
  type        = string
}

