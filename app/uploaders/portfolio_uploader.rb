class PortfolioUploader < CarrierWave::Uploader::Base

  include UploadImage

  version :thumb do
    process resize_to_fill: [200, 140]
  end

  version :medium do
    process resize_to_fit: [800, 600]
    process :watermark
  end

end
