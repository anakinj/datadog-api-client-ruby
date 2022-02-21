=begin
#Datadog API V1 Collection

#Collection of all Datadog Public endpoints.

The version of the OpenAPI document: 1.0
Contact: support@datadoghq.com
Generated by: https://openapi-generator.tech

 Unless explicitly stated otherwise all files in this repository are licensed under the Apache-2.0 License.
 This product includes software developed at Datadog (https://www.datadoghq.com/).
 Copyright 2020-Present Datadog, Inc.

=end

require 'cgi'

module DatadogAPIClient::V1
  class DowntimesAPI
    attr_accessor :api_client

    def initialize(api_client = APIClient.default)
      @api_client = api_client
    end

    # Cancel a downtime
    # Cancel a downtime.
    # @param downtime_id [Integer] ID of the downtime to cancel.
    # @param opts [Hash] the optional parameters
    # @return [nil]
    def cancel_downtime(downtime_id, opts = {})
      cancel_downtime_with_http_info(downtime_id, opts)
      nil
    end

    # Cancel a downtime
    # Cancel a downtime.
    # @param downtime_id [Integer] ID of the downtime to cancel.
    # @param opts [Hash] the optional parameters
    # @return [Array<(nil, Integer, Hash)>] nil, response status code and response headers
    def cancel_downtime_with_http_info(downtime_id, opts = {})

      if @api_client.config.unstable_operations.has_key?(:cancel_downtime)
        unstable_enabled = @api_client.config.unstable_operations[:cancel_downtime]
        if unstable_enabled
          @api_client.config.logger.warn format("Using unstable operation '%s'", "cancel_downtime")
        else
          raise APIError.new(message: format("Unstable operation '%s' is disabled", "cancel_downtime"))
        end
      end

      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: DowntimesAPI.cancel_downtime ...'
      end
      # verify the required parameter 'downtime_id' is set
      if @api_client.config.client_side_validation && downtime_id.nil?
        fail ArgumentError, "Missing the required parameter 'downtime_id' when calling DowntimesAPI.cancel_downtime"
      end
      # resource path
      local_var_path = '/api/v1/downtime/{downtime_id}'.sub('{downtime_id}', CGI.escape(downtime_id.to_s).gsub('%2F', '/'))

      # query parameters
      query_params = opts[:query_params] || {}

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['*/*'])

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:debug_body]

      # return_type
      return_type = opts[:debug_return_type]

      # auth_names
      auth_names = opts[:debug_auth_names] || [:apiKeyAuth, :appKeyAuth, :AuthZ]

      new_options = opts.merge(
        :operation => :cancel_downtime,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:DELETE, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: DowntimesAPI#cancel_downtime\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Cancel downtimes by scope
    # Delete all downtimes that match the scope of `X`.
    # @param body [CancelDowntimesByScopeRequest] Scope to cancel downtimes for.
    # @param opts [Hash] the optional parameters
    # @return [CanceledDowntimesIds]
    def cancel_downtimes_by_scope(body, opts = {})
      data, _status_code, _headers = cancel_downtimes_by_scope_with_http_info(body, opts)
      data
    end

    # Cancel downtimes by scope
    # Delete all downtimes that match the scope of `X`.
    # @param body [CancelDowntimesByScopeRequest] Scope to cancel downtimes for.
    # @param opts [Hash] the optional parameters
    # @return [Array<(CanceledDowntimesIds, Integer, Hash)>] CanceledDowntimesIds data, response status code and response headers
    def cancel_downtimes_by_scope_with_http_info(body, opts = {})

      if @api_client.config.unstable_operations.has_key?(:cancel_downtimes_by_scope)
        unstable_enabled = @api_client.config.unstable_operations[:cancel_downtimes_by_scope]
        if unstable_enabled
          @api_client.config.logger.warn format("Using unstable operation '%s'", "cancel_downtimes_by_scope")
        else
          raise APIError.new(message: format("Unstable operation '%s' is disabled", "cancel_downtimes_by_scope"))
        end
      end

      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: DowntimesAPI.cancel_downtimes_by_scope ...'
      end
      # verify the required parameter 'body' is set
      if @api_client.config.client_side_validation && body.nil?
        fail ArgumentError, "Missing the required parameter 'body' when calling DowntimesAPI.cancel_downtimes_by_scope"
      end
      # resource path
      local_var_path = '/api/v1/downtime/cancel/by_scope'

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
      post_body = opts[:debug_body] || @api_client.object_to_http_body(body)

      # return_type
      return_type = opts[:debug_return_type] || 'CanceledDowntimesIds'

      # auth_names
      auth_names = opts[:debug_auth_names] || [:apiKeyAuth, :appKeyAuth, :AuthZ]

      new_options = opts.merge(
        :operation => :cancel_downtimes_by_scope,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:POST, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: DowntimesAPI#cancel_downtimes_by_scope\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Schedule a downtime
    # Schedule a downtime.
    # @param body [Downtime] Schedule a downtime request body.
    # @param opts [Hash] the optional parameters
    # @return [Downtime]
    def create_downtime(body, opts = {})
      data, _status_code, _headers = create_downtime_with_http_info(body, opts)
      data
    end

    # Schedule a downtime
    # Schedule a downtime.
    # @param body [Downtime] Schedule a downtime request body.
    # @param opts [Hash] the optional parameters
    # @return [Array<(Downtime, Integer, Hash)>] Downtime data, response status code and response headers
    def create_downtime_with_http_info(body, opts = {})

      if @api_client.config.unstable_operations.has_key?(:create_downtime)
        unstable_enabled = @api_client.config.unstable_operations[:create_downtime]
        if unstable_enabled
          @api_client.config.logger.warn format("Using unstable operation '%s'", "create_downtime")
        else
          raise APIError.new(message: format("Unstable operation '%s' is disabled", "create_downtime"))
        end
      end

      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: DowntimesAPI.create_downtime ...'
      end
      # verify the required parameter 'body' is set
      if @api_client.config.client_side_validation && body.nil?
        fail ArgumentError, "Missing the required parameter 'body' when calling DowntimesAPI.create_downtime"
      end
      # resource path
      local_var_path = '/api/v1/downtime'

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
      post_body = opts[:debug_body] || @api_client.object_to_http_body(body)

      # return_type
      return_type = opts[:debug_return_type] || 'Downtime'

      # auth_names
      auth_names = opts[:debug_auth_names] || [:apiKeyAuth, :appKeyAuth, :AuthZ]

      new_options = opts.merge(
        :operation => :create_downtime,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:POST, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: DowntimesAPI#create_downtime\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Get a downtime
    # Get downtime detail by `downtime_id`.
    # @param downtime_id [Integer] ID of the downtime to fetch.
    # @param opts [Hash] the optional parameters
    # @return [Downtime]
    def get_downtime(downtime_id, opts = {})
      data, _status_code, _headers = get_downtime_with_http_info(downtime_id, opts)
      data
    end

    # Get a downtime
    # Get downtime detail by `downtime_id`.
    # @param downtime_id [Integer] ID of the downtime to fetch.
    # @param opts [Hash] the optional parameters
    # @return [Array<(Downtime, Integer, Hash)>] Downtime data, response status code and response headers
    def get_downtime_with_http_info(downtime_id, opts = {})

      if @api_client.config.unstable_operations.has_key?(:get_downtime)
        unstable_enabled = @api_client.config.unstable_operations[:get_downtime]
        if unstable_enabled
          @api_client.config.logger.warn format("Using unstable operation '%s'", "get_downtime")
        else
          raise APIError.new(message: format("Unstable operation '%s' is disabled", "get_downtime"))
        end
      end

      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: DowntimesAPI.get_downtime ...'
      end
      # verify the required parameter 'downtime_id' is set
      if @api_client.config.client_side_validation && downtime_id.nil?
        fail ArgumentError, "Missing the required parameter 'downtime_id' when calling DowntimesAPI.get_downtime"
      end
      # resource path
      local_var_path = '/api/v1/downtime/{downtime_id}'.sub('{downtime_id}', CGI.escape(downtime_id.to_s).gsub('%2F', '/'))

      # query parameters
      query_params = opts[:query_params] || {}

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:debug_body]

      # return_type
      return_type = opts[:debug_return_type] || 'Downtime'

      # auth_names
      auth_names = opts[:debug_auth_names] || [:apiKeyAuth, :appKeyAuth, :AuthZ]

      new_options = opts.merge(
        :operation => :get_downtime,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: DowntimesAPI#get_downtime\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Get all downtimes
    # Get all scheduled downtimes.
    # @param opts [Hash] the optional parameters
    # @option opts [Boolean] :current_only Only return downtimes that are active when the request is made.
    # @return [Array<Downtime>]
    def list_downtimes(opts = {})
      data, _status_code, _headers = list_downtimes_with_http_info(opts)
      data
    end

    # Get all downtimes
    # Get all scheduled downtimes.
    # @param opts [Hash] the optional parameters
    # @option opts [Boolean] :current_only Only return downtimes that are active when the request is made.
    # @return [Array<(Array<Downtime>, Integer, Hash)>] Array<Downtime> data, response status code and response headers
    def list_downtimes_with_http_info(opts = {})

      if @api_client.config.unstable_operations.has_key?(:list_downtimes)
        unstable_enabled = @api_client.config.unstable_operations[:list_downtimes]
        if unstable_enabled
          @api_client.config.logger.warn format("Using unstable operation '%s'", "list_downtimes")
        else
          raise APIError.new(message: format("Unstable operation '%s' is disabled", "list_downtimes"))
        end
      end

      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: DowntimesAPI.list_downtimes ...'
      end
      # resource path
      local_var_path = '/api/v1/downtime'

      # query parameters
      query_params = opts[:query_params] || {}
      query_params[:'current_only'] = opts[:'current_only'] if !opts[:'current_only'].nil?

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:debug_body]

      # return_type
      return_type = opts[:debug_return_type] || 'Array<Downtime>'

      # auth_names
      auth_names = opts[:debug_auth_names] || [:apiKeyAuth, :appKeyAuth, :AuthZ]

      new_options = opts.merge(
        :operation => :list_downtimes,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: DowntimesAPI#list_downtimes\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Get all downtimes for a monitor
    # Get all active downtimes for the specified monitor.
    # @param monitor_id [Integer] The id of the monitor
    # @param opts [Hash] the optional parameters
    # @return [Array<Downtime>]
    def list_monitor_downtimes(monitor_id, opts = {})
      data, _status_code, _headers = list_monitor_downtimes_with_http_info(monitor_id, opts)
      data
    end

    # Get all downtimes for a monitor
    # Get all active downtimes for the specified monitor.
    # @param monitor_id [Integer] The id of the monitor
    # @param opts [Hash] the optional parameters
    # @return [Array<(Array<Downtime>, Integer, Hash)>] Array<Downtime> data, response status code and response headers
    def list_monitor_downtimes_with_http_info(monitor_id, opts = {})

      if @api_client.config.unstable_operations.has_key?(:list_monitor_downtimes)
        unstable_enabled = @api_client.config.unstable_operations[:list_monitor_downtimes]
        if unstable_enabled
          @api_client.config.logger.warn format("Using unstable operation '%s'", "list_monitor_downtimes")
        else
          raise APIError.new(message: format("Unstable operation '%s' is disabled", "list_monitor_downtimes"))
        end
      end

      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: DowntimesAPI.list_monitor_downtimes ...'
      end
      # verify the required parameter 'monitor_id' is set
      if @api_client.config.client_side_validation && monitor_id.nil?
        fail ArgumentError, "Missing the required parameter 'monitor_id' when calling DowntimesAPI.list_monitor_downtimes"
      end
      # resource path
      local_var_path = '/api/v1/monitor/{monitor_id}/downtimes'.sub('{monitor_id}', CGI.escape(monitor_id.to_s).gsub('%2F', '/'))

      # query parameters
      query_params = opts[:query_params] || {}

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:debug_body]

      # return_type
      return_type = opts[:debug_return_type] || 'Array<Downtime>'

      # auth_names
      auth_names = opts[:debug_auth_names] || [:apiKeyAuth, :appKeyAuth, :AuthZ]

      new_options = opts.merge(
        :operation => :list_monitor_downtimes,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: DowntimesAPI#list_monitor_downtimes\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Update a downtime
    # Update a single downtime by `downtime_id`.
    # @param downtime_id [Integer] ID of the downtime to update.
    # @param body [Downtime] Update a downtime request body.
    # @param opts [Hash] the optional parameters
    # @return [Downtime]
    def update_downtime(downtime_id, body, opts = {})
      data, _status_code, _headers = update_downtime_with_http_info(downtime_id, body, opts)
      data
    end

    # Update a downtime
    # Update a single downtime by `downtime_id`.
    # @param downtime_id [Integer] ID of the downtime to update.
    # @param body [Downtime] Update a downtime request body.
    # @param opts [Hash] the optional parameters
    # @return [Array<(Downtime, Integer, Hash)>] Downtime data, response status code and response headers
    def update_downtime_with_http_info(downtime_id, body, opts = {})

      if @api_client.config.unstable_operations.has_key?(:update_downtime)
        unstable_enabled = @api_client.config.unstable_operations[:update_downtime]
        if unstable_enabled
          @api_client.config.logger.warn format("Using unstable operation '%s'", "update_downtime")
        else
          raise APIError.new(message: format("Unstable operation '%s' is disabled", "update_downtime"))
        end
      end

      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: DowntimesAPI.update_downtime ...'
      end
      # verify the required parameter 'downtime_id' is set
      if @api_client.config.client_side_validation && downtime_id.nil?
        fail ArgumentError, "Missing the required parameter 'downtime_id' when calling DowntimesAPI.update_downtime"
      end
      # verify the required parameter 'body' is set
      if @api_client.config.client_side_validation && body.nil?
        fail ArgumentError, "Missing the required parameter 'body' when calling DowntimesAPI.update_downtime"
      end
      # resource path
      local_var_path = '/api/v1/downtime/{downtime_id}'.sub('{downtime_id}', CGI.escape(downtime_id.to_s).gsub('%2F', '/'))

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
      post_body = opts[:debug_body] || @api_client.object_to_http_body(body)

      # return_type
      return_type = opts[:debug_return_type] || 'Downtime'

      # auth_names
      auth_names = opts[:debug_auth_names] || [:apiKeyAuth, :appKeyAuth, :AuthZ]

      new_options = opts.merge(
        :operation => :update_downtime,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:PUT, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: DowntimesAPI#update_downtime\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
end
