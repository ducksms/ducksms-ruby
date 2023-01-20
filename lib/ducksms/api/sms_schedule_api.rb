require 'cgi'

module Ducksms
  class SmsScheduleApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end
    # Cancel Sms Schedule
    # Cancel existing sms schedule
    # @param id [String] 
    # @param [Hash] opts the optional parameters
    # @return [CancelSmsSchedule]
    def cancel_sms_schedule(id, opts = {})
      data, _status_code, _headers = cancel_sms_schedule_with_http_info(id, opts)
      data
    end

    # Cancel Sms Schedule
    # Cancel existing sms schedule
    # @param id [String] 
    # @param [Hash] opts the optional parameters
    # @return [Array<(Response<(CancelSmsSchedule)>, Integer, Hash)>] Response<(CancelSmsSchedule)> data, response status code and response headers
    def cancel_sms_schedule_with_http_info(id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: SmsScheduleApi.cancel_sms_schedule ...'
      end
      # verify the required parameter 'id' is set
      if @api_client.config.client_side_validation && id.nil?
        fail ArgumentError, "Missing the required parameter 'id' when calling SmsScheduleApi.cancel_sms_schedule"
      end
      # resource path
      local_var_path = '/api/v1/sms/scheduled/{id}'.sub('{' + 'id' + '}', CGI.escape(id.to_s))

      # query parameters
      query_params = opts[:query_params] || {}

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:body] 

      # return_type
      return_type = opts[:return_type] || 'CancelSmsSchedule' 

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

      data, status_code, headers = @api_client.call_api(:DELETE, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: SmsScheduleApi#cancel_sms_schedule\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      response = ::Ducksms::Response.new(data, headers)
      return response, status_code, headers
    end

    # List Sms Schedule
    # List all the sms schedule
    # @param [Hash] opts the optional parameters
    # @option opts [Integer] :page Page number
    # @option opts [String] :filter_sender_name Filter by sender id name
    # @option opts [String] :filter_type Filter by sms type
    # @option opts [String] :filter_message_type Filter by sms message type
    # @option opts [String] :filter_status Filter by sms status
    # @return [ListSmsSchedule]
    def list_sms_schedule(opts = {})
      data, _status_code, _headers = list_sms_schedule_with_http_info(opts)
      data
    end

    # List Sms Schedule
    # List all the sms schedule
    # @param [Hash] opts the optional parameters
    # @option opts [Integer] :page Page number
    # @option opts [String] :filter_sender_name Filter by sender id name
    # @option opts [String] :filter_type Filter by sms type
    # @option opts [String] :filter_message_type Filter by sms message type
    # @option opts [String] :filter_status Filter by sms status
    # @return [Array<(Response<(ListSmsSchedule)>, Integer, Hash)>] Response<(ListSmsSchedule)> data, response status code and response headers
    def list_sms_schedule_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: SmsScheduleApi.list_sms_schedule ...'
      end
      allowable_values = ["quick", "bulk"]
      if @api_client.config.client_side_validation && opts[:'filter_type'] && !allowable_values.include?(opts[:'filter_type'])
        fail ArgumentError, "invalid value for \"filter_type\", must be one of #{allowable_values}"
      end
      allowable_values = ["ascii", "unicode"]
      if @api_client.config.client_side_validation && opts[:'filter_message_type'] && !allowable_values.include?(opts[:'filter_message_type'])
        fail ArgumentError, "invalid value for \"filter_message_type\", must be one of #{allowable_values}"
      end
      allowable_values = ["pending", "processing", "completed", "failed", "cancelled"]
      if @api_client.config.client_side_validation && opts[:'filter_status'] && !allowable_values.include?(opts[:'filter_status'])
        fail ArgumentError, "invalid value for \"filter_status\", must be one of #{allowable_values}"
      end
      # resource path
      local_var_path = '/api/v1/sms/scheduled'

      # query parameters
      query_params = opts[:query_params] || {}
      query_params[:'page'] = opts[:'page'] if !opts[:'page'].nil?
      query_params[:'filter[sender_name]'] = opts[:'filter_sender_name'] if !opts[:'filter_sender_name'].nil?
      query_params[:'filter[type]'] = opts[:'filter_type'] if !opts[:'filter_type'].nil?
      query_params[:'filter[message_type]'] = opts[:'filter_message_type'] if !opts[:'filter_message_type'].nil?
      query_params[:'filter[status]'] = opts[:'filter_status'] if !opts[:'filter_status'].nil?

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:body] 

      # return_type
      return_type = opts[:return_type] || 'ListSmsSchedule' 

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

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: SmsScheduleApi#list_sms_schedule\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      response = ::Ducksms::Response.new(data, headers)
      return response, status_code, headers
    end
  end
end
