class Entry < ApplicationRecord
    # validates ${:calories, :proteins, :carbs, :fats, :meal_type}, presence :true
    validates :meal_type, presence: true
    validates :calories, presence: true
    validates :proteins, presence: true
    validates :carbs, presence: true
    validates :fats, presence: true

    def day
        self.created_at.strftime("%b %e, %Y")
    end

end
