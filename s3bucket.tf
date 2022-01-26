terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 3.0"
      
    }
  }
}
provider "aws" {
  access_key = "ASIAXWQUAD5HQQGRGPEE"
  secret_key = "P2YAAVLhxBrQnP9h6i63XXRpEXfwtMNnZRTZtme4"
  token      = "IQoJb3JpZ2luX2VjEHIaCXVzLWVhc3QtMSJHMEUCIFERm84+lHD5bMw3nF+wvHGhw1JmKsu5/pc5AINKK49gAiEA7WhI/NiYOZbipXf3stfvKBm5dsTIR7pkPSnp8vX+fEkqhAMIm///////////ARAAGgw1MjkzOTY2NzAyODciDOqpp+HqMJHmQaKxBSrYAjOT7s+T80aqXCnKICT0kx0Lfebp3L2YCu7FaPUi7uDDkc8s8GYs/uyS6mpZ0WLzhBIfyJEbT7IryEft551+8FWWvsDQ+PoSqo76l//xCuqY4nSrgRLtGUMC5Cl/Dc3P1bonDoscbpoxOAo5lG8HYsxaVY9cojSiA9BdIdoBgvtKmEImX/ogP08dg9LLW6Z3S5mDLY6VF4E0ARH2GkvwdAg/X7WhttBG2LFBWnpTngYUnTvR1PUnAOKv7HBp16UsiKGiF93W2M3XgUtF9Yc9PwOlLv3yu/vBhGrus85rPSFsEDHDRDPQzWyUsQWScFzliutD6fpLDQArlTVbtGAdTR59ulP8QF/61uXpx6XiHs5yLvBWfQc1983CSaFT/6KvpjHo3sWyR52YXEXeOK28GWBjflbBS/KFaXTUAFimCX+Qe7Av7I4kOqOs4t6FK5nBIZFjfbe13nxpML3Wwo8GOqYBnPwNAw3+N+vCxxg+9QZoSDApOnS+Aot/QwEoUjtyBnJABs3cxgooLF2n6zBYXXRo794UjoeXDe33niFfB9q/ed8ap5qRYImw6wOrNkNKKnVcRVnRO0+ND4qRiYmKMA6Pr62pNWFD4qhpZTiNFOReTsP2rj1qJhmjYQEEYcOT6YOFkNrFBQEBu15LYd9jBsdH3A5i/O/qkjOW+5P5uUJyNRFJKWZ2xg=="
  region = "us-west-2"
}
resource "aws_s3_bucket" "bucket" {
  bucket = "mv-lab123"
  policy = file("policy.json")
  acl = "public-read"
  
  tags = {
    Name = "mv-bucket"
  }
  website {
      index_document = "index.html"
      error_document = "/error/index.html"
  }
}

#resource "aws_cloudfront_distribution" "s3_distribution" {
 # origin {
 #  domain_name = "mv-lab1234.s3.us-west-2.amazonaws.com"
# origin_id   = "website"
#  }
#  viewer_certificate {
#    cloudfront_default_certificate = true
#  }
#  default_cache_behavior {
#    allowed_methods  = ["GET", "HEAD"]
#    cached_methods   = ["GET", "HEAD"]
#   target_origin_id = "website"
#
#   forwarded_values {
#      query_string = false

#      cookies {
#        forward = "none"
#      }
#    }

#    viewer_protocol_policy = "allow-all"
#    min_ttl                = 0
#   default_ttl            = 0
#    max_ttl                = 0
#    compress = true

#  }
#    enabled             = true
#    is_ipv6_enabled     = true
#    default_root_object = "index.html"
#    restrictions {
#    geo_restriction {
#      restriction_type = "none"
#      }
#  }
#}
