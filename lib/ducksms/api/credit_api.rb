require 'cgi'

module Ducksms
  class CreditApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end
    # Credit Balance
    # Get available credit balance
    # @param [Hash] opts the optional parameters
    # @return [CreditBalance]
    def credit_balance(opts = {})
      data, _status_code, _headers = credit_balance_with_http_info(opts)
      data
    end

    # Credit Balance
    # Get available credit balance
    # @param [Hash] opts the optional parameters
    # @return [Array<(Response<(CreditBalance)>, Integer, Hash)>] Response<(CreditBalance)> data, response status code and response headers
    def credit_balance_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: CreditApi.credit_balance ...'
      end
      # resource path
      local_var_path = '/api/v1/credits/balance'

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
      return_type = opts[:return_type] || 'CreditBalance' 

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
        @api_client.config.logger.debug "API called: CreditApi#credit_balance\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      response = ::Ducksms::Response.new(data, headers)
      return response, status_code, headers
    end

    # Credit History
    # Get all credit history
    # @param [Hash] opts the optional parameters
    # @option opts [Integer] :page Page number
    # @option opts [String] :filter_type Filter by credit type
    # @option opts [Integer] :filter_sms_smsid Filter by sms id
    # @return [CreditHistory]
    def credit_history(opts = {})
      data, _status_code, _headers = credit_history_with_http_info(opts)
      data
    end

    # Credit History
    # Get all credit history
    # @param [Hash] opts the optional parameters
    # @option opts [Integer] :page Page number
    # @option opts [String] :filter_type Filter by credit type
    # @option opts [Integer] :filter_sms_smsid Filter by sms id
    # @return [Array<(Response<(CreditHistory)>, Integer, Hash)>] Response<(CreditHistory)> data, response status code and response headers
    def credit_history_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: CreditApi.credit_history ...'
      end
      allowable_values = ["credit", "charge", "pending", "freeze", "bonus"]
      if @api_client.config.client_side_validation && opts[:'filter_type'] && !allowable_values.include?(opts[:'filter_type'])
        fail ArgumentError, "invalid value for \"filter_type\", must be one of #{allowable_values}"
      end
      # resource path
      local_var_path = '/api/v1/credits/history'

      # query parameters
      query_params = opts[:query_params] || {}
      query_params[:'page'] = opts[:'page'] if !opts[:'page'].nil?
      query_params[:'filter[type]'] = opts[:'filter_type'] if !opts[:'filter_type'].nil?
      query_params[:'filter[sms.smsid]'] = opts[:'filter_sms_smsid'] if !opts[:'filter_sms_smsid'].nil?

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:body] 

      # return_type
      return_type = opts[:return_type] || 'CreditHistory' 

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
        @api_client.config.logger.debug "API called: CreditApi#credit_history\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      response = ::Ducksms::Response.new(data, headers)
      return response, status_code, headers
    end
  end
end
