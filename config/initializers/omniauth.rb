# Configure using env variables:
#
# local:
#   export TW_CONSUMER_KEY=mykey
#   export TW_CONSUMER_SECRET=mykey
#
# heroku:
#   heroku config:add TW_CONSUMER_KEY=mykey TW_CONSUMER_SECRET=mykey

Rails.application.config.middleware.use OmniAuth::Builder do
    provider :twitter, ENV['TW_CONSUMER_KEY'], ENV['TW_CONSUMER_SECRET']
end
