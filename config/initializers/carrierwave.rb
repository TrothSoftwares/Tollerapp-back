# CarrierWave.configure do |config|

  # #  config.storage = :fog
  #  config.fog_provider = 'fog/aws'
  #
  #  config.fog_credentials = {
  #    :provider => 'AWS',
  #    :aws_access_key_id => 'AKIAI36VU6JETNDYI3HQ',
  #    :aws_secret_access_key => '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',
  #    :region => 'Mumbai'
  #  }
  #  config.fog_directory = 'tollerapp'
  #   # config.asset_host = "#{ENV['AWS_S3_ASSET_URL']}/#{ENV['AWS_S3_BUCKET_NAME']}"
 # end






 CarrierWave.configure do |config|
  config.storage    = :aws
  config.aws_bucket = 'tollerapp'
  config.aws_acl    = 'public-read'
  config.asset_host = 'http://tollerapp.s3.amazonaws.com/'


  config.aws_authenticated_url_expiration = 60 * 60 * 24 * 7

  config.aws_attributes = {
    cache_control: 'max-age=604800',
    expires: 1.week.from_now.httpdate,
  }

  config.aws_credentials = {
    access_key_id:     'AKIAJDVUHRLQMCTUS2DA',
    secret_access_key: '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',
    region:            'mumbai',


  }


  Aws.config[:s3] ={
      endpoint: 'http://tollerapp.s3.amazonaws.com/',
       force_path_style: true
     }
  # Optional: Signing of download urls, e.g. for serving private content through
  # CloudFront. Be sure you have the `cloudfront-signer` gem installed and
  # configured:
  # config.aws_signer = -> (unsigned_url, options) do
  #   Aws::CF::Signer.sign_url(unsigned_url, options)
  # end
end
