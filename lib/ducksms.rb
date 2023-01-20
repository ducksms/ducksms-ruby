require 'link-header-parser'

# Common files
require 'ducksms/api_client'
require 'ducksms/api_error'
require 'ducksms/response'
require 'ducksms/version'
require 'ducksms/configuration'

# Models
require 'ducksms/models/cancel_sms_schedule'
require 'ducksms/models/created_sender'
require 'ducksms/models/created_sms_send'
require 'ducksms/models/credit_balance'
require 'ducksms/models/credit_history'
require 'ducksms/models/deleted_sender'
require 'ducksms/models/error_exception'
require 'ducksms/models/error_invalid_request'
require 'ducksms/models/error_not_found'
require 'ducksms/models/error_unauthenticated'
require 'ducksms/models/error_validation'
require 'ducksms/models/get_sender'
require 'ducksms/models/list_sender'
require 'ducksms/models/list_sms_schedule'
require 'ducksms/models/preview_sms_send'
require 'ducksms/models/sender'
require 'ducksms/models/sms_schema'
require 'ducksms/models/updated_sender'

# APIs
require 'ducksms/api/credit_api'
require 'ducksms/api/sender_id_api'
require 'ducksms/api/sms_api'
require 'ducksms/api/sms_schedule_api'

module Ducksms
  class << self
    # Customize default settings for the SDK using block.
    #   Ducksms.configure do |config|
    #     config.username = "xxx"
    #     config.password = "xxx"
    #   end
    # If no block given, return the default Configuration object.
    def configure
      if block_given?
        yield(Configuration.default)
      else
        Configuration.default
      end
    end
  end
end
