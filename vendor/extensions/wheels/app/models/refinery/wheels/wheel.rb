module Refinery
  module Wheels
    class Wheel < Refinery::Core::BaseModel
      extend FriendlyId
      friendly_id :name, :use => [:slugged]

      self.table_name = 'refinery_wheels'

      attr_accessible :name, :wheel_image_id, :rim_type, :diameter, :front_rear, :type_of_use, :width, :profile, :spoke_count, :spoke_type, :hub_model, :hub_style, :carbon_weave, :weight, :max_air_pressure, :model, :position

      validates :name, :presence => true, :uniqueness => true

      belongs_to :wheel_image, :class_name => '::Refinery::Image'
    end
  end
end
