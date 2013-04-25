class Blog < ActiveRecord::Base
  attr_accessible :author_id, :post, :title
end
