class User < ActiveRecord::Base
	has_attached_file :avatar, styles: { thumb: '50#x50#' }
  validates_attachment_content_type :avatar,
    content_type: ["image/jpg", "image/jpeg", "image/png", "image/gif"]

	 default_scope { order(id: :asc) }
end
