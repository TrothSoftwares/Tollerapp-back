class Audio < ApplicationRecord
  # mount_uploader :url, AudioUploader


  belongs_to :user

end
