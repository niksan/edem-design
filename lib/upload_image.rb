module UploadImage
  
  class CarrierWave::Uploader::Base

    include CarrierWave::MiniMagick

    storage :file

    def store_dir
      "uploads/#{model.class.to_s.underscore}/#{mounted_as}/#{model.id}"
    end

    def extension_white_list
      %w(jpg jpeg png)
    end

    def filename
      @name ||= Digest::MD5.hexdigest(File.dirname(current_path)).to_s + ".#{file.extension}" if current_path && original_filename
    end

    def default_url
      ActionController::Base.helpers.asset_path "placeholders/#{mounted_as}/#{version_name}_default.png"
    end

  end

end
