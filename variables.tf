variable "region" {
  default = "ap-northeast-2"
}

variable "vpc_cidr" {
  type = string
  description = "허용된 CIDR 블록 사이즈는 /28 넷마스크와 /16 넷마스크 사이입니다."
  default = "10.0.0.0/16"
}

variable "subnet_cidr" {
  type = map(string)
  description = "vpc_cidr을 수정하지 않았다면 subnet_cidr도 수정하지 않아야 합니다."
  default = {
    be1 = "10.0.0.0/24"
    be2 = "10.0.1.0/24"
    fe1 = "10.0.2.0/24"
    fe2 = "10.0.3.0/24"
  }
}

variable "vpc_name" {
  type    = string
  description = "VPC 이름을 특수문자 없이 설정하세요."
  default = "name"
}
