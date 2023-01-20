require 'cgi'

module Ducksms
  class SmsApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end
    # Send Sms
    # Create a new sms
    # @param [Hash] opts the optional parameters
    # @option opts [SmsSchema] :sms_schema Create a new sms
    # @return [PreviewSmsSend]
    def sms_send(opts = {})
      data, _status_code, _headers = sms_send_with_http_info(opts)
      data
    end

    # Send Sms
    # Create a new sms
    # @param [Hash] opts the optional parameters
    # @option opts [SmsSchema] :sms_schema Create a new sms
    # @return [Array<(Response<(PreviewSmsSend)>, Integer, Hash)>] Response<(PreviewSmsSend)> data, response status code and response headers
    def sms_send_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: SmsApi.sms_send ...'
      end
      # resource path
      local_var_path = '/api/v1/sms/send'

      # query parameters
      query_params = opts[:query_params] || {}

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/json'])

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:body] || @api_client.object_to_http_body(opts[:'sms_schema']) 

      # return_type
      return_type = opts[:return_type] || 'PreviewSmsSend' 

      # auth_names
      auth_names = opts[:auth_names] || ['BearerToken']

      new_options = opts.merge(
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:POST, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: SmsApi#sms_send\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      response = ::Ducksms::Response.new(data, headers)
      return response, status_code, headers
    end
  end
end
