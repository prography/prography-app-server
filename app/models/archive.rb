class Archive < ActiveRecord::Base
  mount_uploader :attachment, AttachmentUploader
end
