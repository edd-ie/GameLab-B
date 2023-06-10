class Jump < ActiveRecord::Base
    belongs_to :users

    def self.lead
        leads = Jump.order(score: :desc).limit(10)
        leads.map { |user| {user:User.find(user.user_id).name, score: user.score} }
    end

    def self.rank(id)
        user =  User.find(id)
        board = Jump.order(score: :desc)
        pos = board.find_index{ |user| user.id == id }
        rank = board.index(user)
        score = board[rank].score
        return {user: user[:name], rank: rank+1, score: score}
    end

    def self.rank(id)
        user = User.find(id)
        return {} unless user

        board = Jump.order(score: :desc)
        ids = board.map{ |user| user.id}
        # scores = board.map{ |user| {user.timestamp, user.score}}
        rank = ids.index{ |user| user == id }.to_i
        score = board.find_by(user_id:id).score

        #{user[:name]} #{rank+1} #{score} #{time}
        return "#{user[:name]} #{rank+1} #{score}"
    end

    def self.games(id)
        Jump.where(user_id: id).count
    end

    def self.reset_flappy_score(id)
        Jump.all.where(user_id: id).destroy_all
    end
end
# 
