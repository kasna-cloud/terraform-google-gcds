variable "project_id" {
  description = "The project to deploy to"
  type        = string
}
variable "region" {
  description = "The region to deploy to"
  type        = string
}
variable "zone" {
  description = "The zone to deploy to"
  type        = string
}
variable "network" {
  description = "The network to deploy to, if not specified 'default' will be used"
  type        = string
  default     = "default"
}
variable "instance_name" {
  description = "The name of the instance, 'gcds' will be used if not set"
  type        = string
  default     = "gcds"
}