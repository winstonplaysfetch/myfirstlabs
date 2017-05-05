OmniAuth.config.logger = Rails.logger

Rails.application.config.middleware.use OmniAuth::Builder do
  provider :google_oauth2, '637533982349-cdqiqn6uu3t2gmh3bdgmnt4sr13reqne.apps.googleusercontent.com', 'GZmoBt-VSFREPxXCYMVQ7qo-', {client_options: {ssl: {ca_file: Rails.root.join("cacert.pem").to_s}}}
end