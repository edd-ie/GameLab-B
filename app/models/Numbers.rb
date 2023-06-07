class Number < ActiveRecord::Base
    belongs_to :users

    def self.lead
        leads = Number.order(score: :desc, timestamp: :asc).limit(10)
        leads.map { |user| [User.find(user.user_id).name, user.score, user.timestamp] }
    end

    def self.rank(id)
        Number.order(score: :desc, timestamp: :asc).find_index { |user| user.id == id } + 1
    end

    def self.games(id)
        Number.where(user_id: id).count
    end
end