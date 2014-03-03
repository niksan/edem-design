# encoding: utf-8
class SpecialOfferUploader < CarrierWave::Uploader::Base

  include UploadImage

  version :thumb do
    process resize_to_fit: [258, 350]
  end

  version :medium do
    process resize_to_fit: [800, 600]
  end

end
