#! /usr/bin/env ruby

require 'aws-sdk-s3'

resource = Aws::S3::Resource.new
resource.buckets.each do |bucket|
  bucket.objects.each do |obj|
    obj.get.etag
  end
end
