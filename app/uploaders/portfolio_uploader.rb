# encoding: utf-8
class PortfolioUploader < CarrierWave::Uploader::Base

  include UploadImage

  version :thumb do
    process resize_to_fill: [177, 140]
  end

  version :medium do
    process resize_to_fit: [800, 600]
  end

end
