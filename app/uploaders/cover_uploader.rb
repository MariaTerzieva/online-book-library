class CoverUploader < CarrierWave::Uploader::Base
  storage :file

  def store_dir
    "media/covers"
  end

  def extension_white_list
    %w(jpg jpeg gif png)
  end
end
