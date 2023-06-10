class ApplicationController < Sinatra::Base
    set default_content_type: "application/json"

    get '/' do	
        '<h1>You have no enemies. No one in the world is your enemy. There is no one you need to hurt./h1>'
    end

    get '/log' do
        Logic.all.to_json
    end

    post '/rename_user' do
        User.find_by(email: params[:email]).update(name: params[:name])
        User.find_by(email: params[:email]).to_json
    end

    get '/user/:id' do
        User.find(params[:id]).to_json
    end

    delete '/reset_flappy/:id' do
        Jump.reset_flappy_score(params[:id])
    end

    delete '/reset_num/:id' do
        Number.reset_num_score(params[:id])
    end


    get '/flappy_board' do
        Jump.lead.to_json
    end

    get '/num_board' do
        Number.lead.to_json
    end

    get '/rank_flappy/:id' do
        text=Jump.rank(params[:id]).split(" ")
        data = {name: text[0], rank: text[1], score: text[2]}
        data.to_json
    end

    get '/rank_num/:id' do
        text=Number.rank(params[:id]).split(" ")
        data = {name: text[0], rank: text[1], score: text[2], moves: text[3]}
        data.to_json
    end

    post '/user' do
        user = User.find_by(email: params[:email])
        if (user == nil)
            User.create(name: params[:name], email: params[:email],created_at:Time.now, active: true)
            return User.find_by(email: params[:email]).to_json
        else
            return User.find_by(email: params[:email]).to_json
        end
    end

    post '/num_board/:id' do
        x = Number.create(score: params[:score], user_id: params[:id], moves: params[:moves])
        x.to_json
    end
    post '/flappy_board/:id' do
        x = Jump.create(score: params[:score], user_id: params[:id])
        x.to_json
    end
end