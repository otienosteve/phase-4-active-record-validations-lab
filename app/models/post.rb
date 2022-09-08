class Post < ApplicationRecord
    validates :title , presence: true
    validates :content, length: {minimum:250}
    validates :summary, length: {maximum:250}
    validates :category, inclusion: { in: %w(Fiction Non-Fiction ), message: "is not included in the list" }
    validate :invalid_title

    def invalid_title
        if !(title.to_s.include?("Won't Believe"))
            errors.add(:title,"not click_baitly")
        elsif title.to_s.include?("Secret") 
            errors.add(:title,"not click_baitly")
        elsif title.to_s.include?("Guess")
            errors.add(:title,"not click_baitly")
        elsif title.to_s.include?("Top ")
            errors.add(:title,"not click_baitly")
        end

    end
end
