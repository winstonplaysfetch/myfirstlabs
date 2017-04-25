OmniAuth.config.logger = Rails.logger

Rails.application.config.middleware.use OmniAuth::Builder do
  provider :google_oauth2, '581425948407-ngp00hmcv116n9ce129g8tii5d8dlm0h.apps.googleusercontent.com', 'uEqJba7I-TVVtEKZE8oITVV0', {client_options: {ssl: {ca_file: Rails.root.join("cacert.pem").to_s}}}
end