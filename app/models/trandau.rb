class Trandau < ActiveRecord::Base
  has_one :doinha, :class_name => "doibong"
  has_one :doikhach, :class_name => "doibong"
  belongs_to :vongdau
  belongs_to :sanvandong
end
