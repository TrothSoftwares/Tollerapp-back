class BackgroundimageUploader < CarrierWave::Uploader::Base



    storage :aws


    def store_dir
      "backgroundimages/#{model.class.to_s.underscore}/#{mounted_as}/#{model.id}"
    end


end
