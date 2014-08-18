Paperclip::Attachment.default_options[:storage] = :s3
Paperclip::Attachment.default_options[:url] = ':s3_domain_url'
Paperclip::Attachment.default_options[:path] = '/:rails_env/:class/:attachment/:id_partition/:style/:filename'
Paperclip::Attachment.default_options[:s3_credentials] = {
  bucket: ENV['airbed-app'],
  access_key_id: ENV['AKIAJ4OCNRRFPCJBCIVQ'],
  secret_access_key: ENV['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']
}