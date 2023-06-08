class Number < ActiveRecord::Base
    belongs_to :users

    def self.lead
        leads = Number.order(score: :desc, timestamp: :asc).limit(10)
        leads.map { |user| {name:User.find(user.user_id).name, score:user.score, time:user.timestamp} }
    end

    # def self.rank(id)
    #     user =  User.find(id)
    #     board = Number.order(score: :desc)
    #     rank = board.find_index{ |user| user.id == id } 
    #     score = board[rank].score
    #     time = board[rank].timestamp
    #     return {user: user[:name], rank: rank, score: score, time: time}
    # end

    # def self.rank(id)
    #     user = User.find(id)
    #     return {} unless user

    #     board = Number.order(score: :desc)
    #     ids = board.map{ |user| user.id}
    #     # scores = board.map{ |user| {user.timestamp, user.score}}
    #     rank = ids.index{ |user| user == id }.to_i
    #     score = board.find_by(user_id:id).score
    #     time = board.find_by(user_id:id).timestamp

    #     return [{user: user[:name], rank: (rank+1), score: score, time: time}]
    # end

    def self.rank(id)
        user = User.find(id)
        return {} unless user

        board = Number.order(score: :desc)
        ids = board.map{ |user| user.id}
        # scores = board.map{ |user| {user.timestamp, user.score}}
        rank = ids.index{ |user| user == id }.to_i
        score = board.find_by(user_id:id).score
        time = board.find_by(user_id:id).timestamp

        #{user[:name]} #{rank+1} #{score} #{time}
        return "#{user[:name]} #{rank+1} #{score} #{time}"
    end



    def self.games(id)
        user = User.find(id)
        games = Number.where(user_id: id).count
        return {name:user.name, games_played: games}
    end
end