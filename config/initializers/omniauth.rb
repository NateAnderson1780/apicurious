Rails.application.config.middleware.use OmniAuth::Builder do
  provider :github, "ab4649b397bb410eed98", "a0c83ffa77947b12504226f878f6e61d219c60a8"
end