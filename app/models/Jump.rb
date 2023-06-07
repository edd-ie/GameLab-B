class Jump < ActiveRecord::Base
    belongs_to :users

    def self.lead
        leads = Jump.order(score: :desc).limit(10)
        leads.map { |user| [User.find(user.user_id).name, user.score] }
    end

    def self.rank(id)
        Jump.order(score: :desc).find_index { |user| user.id == id } + 1
    end

    def self.games(id)
        Jump.where(user_id: id).count
    end
end