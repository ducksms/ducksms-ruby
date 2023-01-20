require 'cgi'

module Ducksms
  class SenderIDApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end
    # Create a Sender ID
    # Create a new sender id
    # @param [Hash] opts the optional parameters
    # @option opts [Sender] :sender Create a new sender
    # @return [CreatedSender]
    def create_sender(opts = {})
      data, _status_code, _headers = create_sender_with_http_info(opts)
      data
    end

    # Create a Sender ID
    # Create a new sender id
    # @param [Hash] opts the optional parameters
    # @option opts [Sender] :sender Create a new sender
    # @return [Array<(Response<(CreatedSender)>, Integer, Hash)>] Response<(CreatedSender)> data, response status code and response headers
    def create_sender_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: SenderIDApi.create_sender ...'
      end
      # resource path
      local_var_path = '/api/v1/senders'

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
      post_body = opts[:body] || @api_client.object_to_http_body(opts[:'sender']) 

      # return_type
      return_type = opts[:return_type] || 'CreatedSender' 

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
        @api_client.config.logger.debug "API called: SenderIDApi#create_sender\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      response = ::Ducksms::Response.new(data, headers)
      return response, status_code, headers
    end

    # Delete a Sender ID
    # Delete an existing sender id
    # @param id [String] 
    # @param [Hash] opts the optional parameters
    # @return [DeletedSender]
    def delete_sender(id, opts = {})
      data, _status_code, _headers = delete_sender_with_http_info(id, opts)
      data
    end

    # Delete a Sender ID
    # Delete an existing sender id
    # @param id [String] 
    # @param [Hash] opts the optional parameters
    # @return [Array<(Response<(DeletedSender)>, Integer, Hash)>] Response<(DeletedSender)> data, response status code and response headers
    def delete_sender_with_http_info(id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: SenderIDApi.delete_sender ...'
      end
      # verify the required parameter 'id' is set
      if @api_client.config.client_side_validation && id.nil?
        fail ArgumentError, "Missing the required parameter 'id' when calling SenderIDApi.delete_sender"
      end
      # resource path
      local_var_path = '/api/v1/senders/{id}'.sub('{' + 'id' + '}', CGI.escape(id.to_s))

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
      return_type = opts[:return_type] || 'DeletedSender' 

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
        @api_client.config.logger.debug "API called: SenderIDApi#delete_sender\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      response = ::Ducksms::Response.new(data, headers)
      return response, status_code, headers
    end

    # Get a single Sender ID
    # Get details on a single sender id
    # @param id [String] 
    # @param [Hash] opts the optional parameters
    # @return [GetSender]
    def get_sender(id, opts = {})
      data, _status_code, _headers = get_sender_with_http_info(id, opts)
      data
    end

    # Get a single Sender ID
    # Get details on a single sender id
    # @param id [String] 
    # @param [Hash] opts the optional parameters
    # @return [Array<(Response<(GetSender)>, Integer, Hash)>] Response<(GetSender)> data, response status code and response headers
    def get_sender_with_http_info(id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: SenderIDApi.get_sender ...'
      end
      # verify the required parameter 'id' is set
      if @api_client.config.client_side_validation && id.nil?
        fail ArgumentError, "Missing the required parameter 'id' when calling SenderIDApi.get_sender"
      end
      # resource path
      local_var_path = '/api/v1/senders/{id}'.sub('{' + 'id' + '}', CGI.escape(id.to_s))

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
      return_type = opts[:return_type] || 'GetSender' 

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
        @api_client.config.logger.debug "API called: SenderIDApi#get_sender\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      response = ::Ducksms::Response.new(data, headers)
      return response, status_code, headers
    end

    # List Sender ID
    # List all the senders
    # @param [Hash] opts the optional parameters
    # @option opts [Integer] :page Page number
    # @option opts [String] :filter_name Filter by sender name
    # @option opts [String] :filter_status Filter by sender status
    # @return [ListSender]
    def list_sender(opts = {})
      data, _status_code, _headers = list_sender_with_http_info(opts)
      data
    end

    # List Sender ID
    # List all the senders
    # @param [Hash] opts the optional parameters
    # @option opts [Integer] :page Page number
    # @option opts [String] :filter_name Filter by sender name
    # @option opts [String] :filter_status Filter by sender status
    # @return [Array<(Response<(ListSender)>, Integer, Hash)>] Response<(ListSender)> data, response status code and response headers
    def list_sender_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: SenderIDApi.list_sender ...'
      end
      allowable_values = ["active", "inactive"]
      if @api_client.config.client_side_validation && opts[:'filter_status'] && !allowable_values.include?(opts[:'filter_status'])
        fail ArgumentError, "invalid value for \"filter_status\", must be one of #{allowable_values}"
      end
      # resource path
      local_var_path = '/api/v1/senders'

      # query parameters
      query_params = opts[:query_params] || {}
      query_params[:'page'] = opts[:'page'] if !opts[:'page'].nil?
      query_params[:'filter[name]'] = opts[:'filter_name'] if !opts[:'filter_name'].nil?
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
      return_type = opts[:return_type] || 'ListSender' 

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
        @api_client.config.logger.debug "API called: SenderIDApi#list_sender\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      response = ::Ducksms::Response.new(data, headers)
      return response, status_code, headers
    end

    # Update a Sender ID
    # Update an existing sender id
    # @param id [String] 
    # @param [Hash] opts the optional parameters
    # @option opts [Sender] :sender Update an existing sender id
    # @return [UpdatedSender]
    def update_sender(id, opts = {})
      data, _status_code, _headers = update_sender_with_http_info(id, opts)
      data
    end

    # Update a Sender ID
    # Update an existing sender id
    # @param id [String] 
    # @param [Hash] opts the optional parameters
    # @option opts [Sender] :sender Update an existing sender id
    # @return [Array<(Response<(UpdatedSender)>, Integer, Hash)>] Response<(UpdatedSender)> data, response status code and response headers
    def update_sender_with_http_info(id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: SenderIDApi.update_sender ...'
      end
      # verify the required parameter 'id' is set
      if @api_client.config.client_side_validation && id.nil?
        fail ArgumentError, "Missing the required parameter 'id' when calling SenderIDApi.update_sender"
      end
      # resource path
      local_var_path = '/api/v1/senders/{id}'.sub('{' + 'id' + '}', CGI.escape(id.to_s))

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
      post_body = opts[:body] || @api_client.object_to_http_body(opts[:'sender']) 

      # return_type
      return_type = opts[:return_type] || 'UpdatedSender' 

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
        @api_client.config.logger.debug "API called: SenderIDApi#update_sender\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      response = ::Ducksms::Response.new(data, headers)
      return response, status_code, headers
    end
  end
end
