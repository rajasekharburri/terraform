variable "instances" {
  # default = [ "mongodb", "redis", "mysql", "rabbitmq", "catalogue", "user", "cart", "shipping", "payment", "frontend" ]
 default = {
        mongodb = "t3.micro"
        redis = "t3.micro"
        mysql = "t3.small"
        }
}
 variable "zone_id" {
    default = "Z01503182L0LHEKISZNNJ"
}

 variable "domain_name" {
    default = "rajasekhartech.site"
}

#
# variable "instances" {
#     default = [ "mongodb", "redis"]
#     default = {
#         mongodb = "t3.micro"
#         redis = "t3.micro"
#         mysql = "t3.small"
#     }

#  for ami id is different we use this variable
# variable "instances" {
#     default = {
#         mongodb = {
#             instance_type = "t3.micro"
#             ami = "ami-id"
#         }

#         redis = {
#             instance_type = "t3.micro"
#             ami = "ami-id"
#         }
#         mysql ={
#             instance_type = "t3.small"
#             ami = "ami-id"
#         } 
#     }
# }

# variable "zone_id" {
#     default = "Z0948150OFPSYTNVYZOY"
# }

# variable "domain_name" {
#     default = "daws86s.fun"
# }