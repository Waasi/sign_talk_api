# SignTalkApi

SignTalk API allows users to translate list of words to Sign Language.
The api is live: https://sign-talk-api.herokuapp.com

### Getting Started:
This API can be executed in the local machine and with Docker.

##### Local Machine

  * Install dependencies with `mix deps.get`
  * Create and migrate your database with `mix ecto.create && mix ecto.migrate`
  * Install Node.js dependencies with `npm install`
  * Start Phoenix endpoint with `mix phoenix.server`

##### Docker

  * Install dependencies with `docker-compose run web mix deps.get`
  * Create and migrate your database with `docker-compose run web mix ecto.create && mix ecto.migrate`
  * Start Phoenix endpoint with `docker-compose up`

##### Usage

  To get the list of translations do a POST request to: `api/translation`

  Request
  ```json
  { "words" : ["Hello", "World"]}
  ```

  Response
  ```json
  { "videos" : [hello_world_url, world_world_url]}
  ```

  Note: ** All videos are in the MP4 format.

Now you can visit [`localhost:4000`](http://localhost:4000) from your browser.

## Contributing

1. Fork it ( https://github.com/[my-github-username]/sign_talk_api/fork )
2. Create your feature branch (`git checkout -b feature/my_new_feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create a new Pull Request
