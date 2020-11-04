class PhotoUploader < CarrierWave::Uploader::Base
  include CarrierWave::MiniMagick

  if ENV["CLOUDINARY_API_KEY"].present?
    include Cloudinary::CarrierWave
  else
    storage :file
    def store_dir
      "uploads/#{model.class.to_s.underscore}/#{mounted_as}"
    end
  end

  process resize_to_limit: [1200, 1200]
  # process convert: "jpg"

  def size_range
    1..10.megabytes
  end

  def extension_whitelist
    %w(jpg jpeg png)
  end

  def filename
    "#{secure_token}.#{file.extension}" if original_filename.present?
  end

  protected
  def secure_token
    var = :"@#{mounted_as}_secure_token"
    model.instance_variable_get(var) or model.instance_variable_set(var, SecureRandom.uuid)
  end
end
