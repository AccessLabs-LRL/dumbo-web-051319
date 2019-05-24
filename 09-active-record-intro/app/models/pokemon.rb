class Pokemon < ActiveRecord::Base
  def fight
    "🥊 #{name} is now using #{attack}!!!"
  end
end
