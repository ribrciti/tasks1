# encoding: utf-8

class TaskFileUploader < CarrierWave::Uploader::Base

  include CarrierWave::MiniMagic

  include Sprockets::Rails::Helper

  storage :fog

  def store_dir
    "uploads/#{model.class.to_s.underscore}/#{mounted_as}/#{model.id}"
  end

  def extension_white_list
    %w(jpg jpeg gif png pdf mp4 wmv xls xlsx doc docx ppt pptx mov)
  end
end
