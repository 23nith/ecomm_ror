require "active_support/core_ext/integer/time"

Rails.application.configure do
  # Settings specified here will take precedence over those in config/application.rb.

  # Disable code reloading between requests for performance reasons.
  config.enable_reloading = false

  # Eager load code on boot for better performance.
  config.eager_load = true

  # Show detailed error pages in production.
  config.consider_all_requests_local = false
  config.action_controller.perform_caching = true

  # Ensure that a master key has been made available.
  # Uncomment the following line if you're using encrypted credentials.
  # config.require_master_key = true

  # Do not compile assets at runtime.
  config.assets.compile = false

  # Use Amazon S3 service for Active Storage.
  config.active_storage.service = :amazon

  # Force SSL connections for improved security.
  config.force_ssl = true

  # Log to STDOUT for better compatibility with containerized environments.
  config.logger = ActiveSupport::Logger.new(STDOUT).tap do |logger|
    logger.formatter = ::Logger::Formatter.new
  end

  # Prepend request IDs to log lines for easier debugging.
  config.log_tags = [ :request_id ]

  # Set log level to "info" to balance information and privacy.
  config.log_level = ENV.fetch("RAILS_LOG_LEVEL", "info")

  # Update references to use the new encryption keys from credentials.
  config.secret_key_base = Rails.application.credentials.secret_key_base

  # Enable locale fallbacks for Internationalization (I18n).
  config.i18n.fallbacks = true

  # Disable reporting of deprecation warnings.
  config.active_support.report_deprecations = false

  # Do not dump schema after migrations.
  config.active_record.dump_schema_after_migration = false

  # Whitelist allowed hosts to prevent DNS rebinding attacks.
  # Uncomment and modify the following lines to specify allowed hosts.
  # config.hosts = [
  #   "example.com",     # Allow requests from example.com
  #   /.*\.example\.com/ # Allow requests from subdomains like `www.example.com`
  # ]

  # Skip DNS rebinding protection for the default health check endpoint.
  # Uncomment the following line if you're using a custom health check endpoint.
  # config.host_authorization = { exclude: ->(request) { request.path == "/up" } }
end
