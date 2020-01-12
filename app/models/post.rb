class Post < ActiveRecord::Base
  validates :title, presence: true 
  validates(:content, { :length => { :minimum => 250 } })
  validates(:summary, { :length => { :maximum => 250 } })
  validates :category, inclusion: { in: %w(Fiction Non-Fiction) }
  
  def clickbait
    if clickbait 
      errors.add(:discount, "can't be greater than total value")
    end
  end
end
