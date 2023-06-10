class Number < ActiveRecord::Base
    belongs_to :users

    def self.lead
        leads = Number.order(score: :desc, timestamp: :asc).limit(10)
        leads.map { |user| {name:User.find(user.user_id).name, score:user.score, moves:user.moves} }
    end

    def self.rank(id)
        user = User.find(id)
        return {} unless user

        board = Number.order(score: :desc)
        ids = board.map{ |user| user.id}
        # scores = board.map{ |user| {user.timestamp, user.score}}
        rank = ids.index{ |user| user == id }.to_i
        score = board.find_by(user_id:id).score
        moves = board.find_by(user_id:id).moves

        #{user[:name]} #{rank+1} #{score} #{time}
        return "#{user[:name]} #{rank+1} #{score} #{moves}"
    end



    def self.games(id)
        user = User.find(id)
        games = Number.where(user_id: id).count
        return {name:user.name, games_played: games}
    end

    def self.reset_num_score(id)
        Number.all.where(user_id: id).destroy_all
    end
end