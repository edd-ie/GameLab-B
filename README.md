# [GameLab-B](https://game-lab-red.vercel.app/)

The api bakcend for an interactive web game app that provides engaging games to help you relax

# Table of Contents

1. [Getting started](#started)
2. [Explanation](#explanation)
3. [User](#users)
4. [Jump](#JumpyBird)
5. [2048](#2048)
6. [Logic](#profile)

## <a id="started">Getting started</a>

Website : [GameLab](https://game-lab-red.vercel.app/)

**Clone** the project files to your local repository:

- HTTPS => `https://github.com/edd-ie/GameLab-B.git`
- SSH => `git@github.com:edd-ie/GameLab-B.git`
- Git CLI => `gh repo clone edd-ie/GameLab-B`

Open terminal.

1. Install Dependencies
2. Run the development sever

```
$ bundle install
$ rake server
```

## <a id="explanation">Explanation</a>

- This is the api source for a frontend website used to provide responses to various HTTP requests

## <a id="users">User</a>

The User model use sinatra's active records to retrieve users data from the database and enables manipulation of the user data.

## <a id="JumpyBird">Jump</a>

The Jump model use sinatra's active records to retrieve the jumps game data from the database, from score to users_id and enables manipulation of the data.

## <a id="2048">Number</a>

The Jump model use sinatra's active records to retrieve the 2️⃣0️⃣4️⃣8️⃣ game data from the database, from score to users_id and enables manipulation of the data.

## <a id="profile">Logic</a>

This model is used to source application statistics for the leader board and active users count.
