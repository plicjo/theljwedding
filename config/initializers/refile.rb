require "refile/s3"

aws = {
  access_key_id: "AKIAJEOEOOFHLFNJJTUA",
  secret_access_key: "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",
  region: "us-east-1",
  bucket: "theljwedding-all",
}

Refile.cache = Refile::S3.new(prefix: "cache", **aws)
Refile.store = Refile::S3.new(prefix: "store", **aws)
