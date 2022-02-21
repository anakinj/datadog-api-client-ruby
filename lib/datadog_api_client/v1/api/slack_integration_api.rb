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
  class SlackIntegrationAPI
    attr_accessor :api_client

    def initialize(api_client = APIClient.default)
      @api_client = api_client
    end

    # Create a Slack integration channel
    # Add a channel to your Datadog-Slack integration.
    # @param account_name [String] Your Slack account name.
    # @param body [SlackIntegrationChannel] Payload describing Slack channel to be created
    # @param opts [Hash] the optional parameters
    # @return [SlackIntegrationChannel]
    def create_slack_integration_channel(account_name, body, opts = {})
      data, _status_code, _headers = create_slack_integration_channel_with_http_info(account_name, body, opts)
      data
    end

    # Create a Slack integration channel
    # Add a channel to your Datadog-Slack integration.
    # @param account_name [String] Your Slack account name.
    # @param body [SlackIntegrationChannel] Payload describing Slack channel to be created
    # @param opts [Hash] the optional parameters
    # @return [Array<(SlackIntegrationChannel, Integer, Hash)>] SlackIntegrationChannel data, response status code and response headers
    def create_slack_integration_channel_with_http_info(account_name, body, opts = {})

      if @api_client.config.unstable_operations.has_key?(:create_slack_integration_channel)
        unstable_enabled = @api_client.config.unstable_operations[:create_slack_integration_channel]
        if unstable_enabled
          @api_client.config.logger.warn format("Using unstable operation '%s'", "create_slack_integration_channel")
        else
          raise APIError.new(message: format("Unstable operation '%s' is disabled", "create_slack_integration_channel"))
        end
      end

      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: SlackIntegrationAPI.create_slack_integration_channel ...'
      end
      # verify the required parameter 'account_name' is set
      if @api_client.config.client_side_validation && account_name.nil?
        fail ArgumentError, "Missing the required parameter 'account_name' when calling SlackIntegrationAPI.create_slack_integration_channel"
      end
      # verify the required parameter 'body' is set
      if @api_client.config.client_side_validation && body.nil?
        fail ArgumentError, "Missing the required parameter 'body' when calling SlackIntegrationAPI.create_slack_integration_channel"
      end
      # resource path
      local_var_path = '/api/v1/integration/slack/configuration/accounts/{account_name}/channels'.sub('{account_name}', CGI.escape(account_name.to_s).gsub('%2F', '/'))

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
      return_type = opts[:debug_return_type] || 'SlackIntegrationChannel'

      # auth_names
      auth_names = opts[:debug_auth_names] || [:apiKeyAuth, :appKeyAuth]

      new_options = opts.merge(
        :operation => :create_slack_integration_channel,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:POST, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: SlackIntegrationAPI#create_slack_integration_channel\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Get a Slack integration channel
    # Get a channel configured for your Datadog-Slack integration.
    # @param account_name [String] Your Slack account name.
    # @param channel_name [String] The name of the Slack channel being operated on.
    # @param opts [Hash] the optional parameters
    # @return [SlackIntegrationChannel]
    def get_slack_integration_channel(account_name, channel_name, opts = {})
      data, _status_code, _headers = get_slack_integration_channel_with_http_info(account_name, channel_name, opts)
      data
    end

    # Get a Slack integration channel
    # Get a channel configured for your Datadog-Slack integration.
    # @param account_name [String] Your Slack account name.
    # @param channel_name [String] The name of the Slack channel being operated on.
    # @param opts [Hash] the optional parameters
    # @return [Array<(SlackIntegrationChannel, Integer, Hash)>] SlackIntegrationChannel data, response status code and response headers
    def get_slack_integration_channel_with_http_info(account_name, channel_name, opts = {})

      if @api_client.config.unstable_operations.has_key?(:get_slack_integration_channel)
        unstable_enabled = @api_client.config.unstable_operations[:get_slack_integration_channel]
        if unstable_enabled
          @api_client.config.logger.warn format("Using unstable operation '%s'", "get_slack_integration_channel")
        else
          raise APIError.new(message: format("Unstable operation '%s' is disabled", "get_slack_integration_channel"))
        end
      end

      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: SlackIntegrationAPI.get_slack_integration_channel ...'
      end
      # verify the required parameter 'account_name' is set
      if @api_client.config.client_side_validation && account_name.nil?
        fail ArgumentError, "Missing the required parameter 'account_name' when calling SlackIntegrationAPI.get_slack_integration_channel"
      end
      # verify the required parameter 'channel_name' is set
      if @api_client.config.client_side_validation && channel_name.nil?
        fail ArgumentError, "Missing the required parameter 'channel_name' when calling SlackIntegrationAPI.get_slack_integration_channel"
      end
      # resource path
      local_var_path = '/api/v1/integration/slack/configuration/accounts/{account_name}/channels/{channel_name}'.sub('{account_name}', CGI.escape(account_name.to_s).gsub('%2F', '/')).sub('{channel_name}', CGI.escape(channel_name.to_s).gsub('%2F', '/'))

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
      return_type = opts[:debug_return_type] || 'SlackIntegrationChannel'

      # auth_names
      auth_names = opts[:debug_auth_names] || [:apiKeyAuth, :appKeyAuth]

      new_options = opts.merge(
        :operation => :get_slack_integration_channel,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: SlackIntegrationAPI#get_slack_integration_channel\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Get all channels in a Slack integration
    # Get a list of all channels configured for your Datadog-Slack integration.
    # @param account_name [String] Your Slack account name.
    # @param opts [Hash] the optional parameters
    # @return [Array<SlackIntegrationChannel>]
    def get_slack_integration_channels(account_name, opts = {})
      data, _status_code, _headers = get_slack_integration_channels_with_http_info(account_name, opts)
      data
    end

    # Get all channels in a Slack integration
    # Get a list of all channels configured for your Datadog-Slack integration.
    # @param account_name [String] Your Slack account name.
    # @param opts [Hash] the optional parameters
    # @return [Array<(Array<SlackIntegrationChannel>, Integer, Hash)>] Array<SlackIntegrationChannel> data, response status code and response headers
    def get_slack_integration_channels_with_http_info(account_name, opts = {})

      if @api_client.config.unstable_operations.has_key?(:get_slack_integration_channels)
        unstable_enabled = @api_client.config.unstable_operations[:get_slack_integration_channels]
        if unstable_enabled
          @api_client.config.logger.warn format("Using unstable operation '%s'", "get_slack_integration_channels")
        else
          raise APIError.new(message: format("Unstable operation '%s' is disabled", "get_slack_integration_channels"))
        end
      end

      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: SlackIntegrationAPI.get_slack_integration_channels ...'
      end
      # verify the required parameter 'account_name' is set
      if @api_client.config.client_side_validation && account_name.nil?
        fail ArgumentError, "Missing the required parameter 'account_name' when calling SlackIntegrationAPI.get_slack_integration_channels"
      end
      # resource path
      local_var_path = '/api/v1/integration/slack/configuration/accounts/{account_name}/channels'.sub('{account_name}', CGI.escape(account_name.to_s).gsub('%2F', '/'))

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
      return_type = opts[:debug_return_type] || 'Array<SlackIntegrationChannel>'

      # auth_names
      auth_names = opts[:debug_auth_names] || [:apiKeyAuth, :appKeyAuth]

      new_options = opts.merge(
        :operation => :get_slack_integration_channels,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: SlackIntegrationAPI#get_slack_integration_channels\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Remove a Slack integration channel
    # Remove a channel from your Datadog-Slack integration.
    # @param account_name [String] Your Slack account name.
    # @param channel_name [String] The name of the Slack channel being operated on.
    # @param opts [Hash] the optional parameters
    # @return [nil]
    def remove_slack_integration_channel(account_name, channel_name, opts = {})
      remove_slack_integration_channel_with_http_info(account_name, channel_name, opts)
      nil
    end

    # Remove a Slack integration channel
    # Remove a channel from your Datadog-Slack integration.
    # @param account_name [String] Your Slack account name.
    # @param channel_name [String] The name of the Slack channel being operated on.
    # @param opts [Hash] the optional parameters
    # @return [Array<(nil, Integer, Hash)>] nil, response status code and response headers
    def remove_slack_integration_channel_with_http_info(account_name, channel_name, opts = {})

      if @api_client.config.unstable_operations.has_key?(:remove_slack_integration_channel)
        unstable_enabled = @api_client.config.unstable_operations[:remove_slack_integration_channel]
        if unstable_enabled
          @api_client.config.logger.warn format("Using unstable operation '%s'", "remove_slack_integration_channel")
        else
          raise APIError.new(message: format("Unstable operation '%s' is disabled", "remove_slack_integration_channel"))
        end
      end

      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: SlackIntegrationAPI.remove_slack_integration_channel ...'
      end
      # verify the required parameter 'account_name' is set
      if @api_client.config.client_side_validation && account_name.nil?
        fail ArgumentError, "Missing the required parameter 'account_name' when calling SlackIntegrationAPI.remove_slack_integration_channel"
      end
      # verify the required parameter 'channel_name' is set
      if @api_client.config.client_side_validation && channel_name.nil?
        fail ArgumentError, "Missing the required parameter 'channel_name' when calling SlackIntegrationAPI.remove_slack_integration_channel"
      end
      # resource path
      local_var_path = '/api/v1/integration/slack/configuration/accounts/{account_name}/channels/{channel_name}'.sub('{account_name}', CGI.escape(account_name.to_s).gsub('%2F', '/')).sub('{channel_name}', CGI.escape(channel_name.to_s).gsub('%2F', '/'))

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
      auth_names = opts[:debug_auth_names] || [:apiKeyAuth, :appKeyAuth]

      new_options = opts.merge(
        :operation => :remove_slack_integration_channel,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:DELETE, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: SlackIntegrationAPI#remove_slack_integration_channel\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Update a Slack integration channel
    # Update a channel used in your Datadog-Slack integration.
    # @param account_name [String] Your Slack account name.
    # @param channel_name [String] The name of the Slack channel being operated on.
    # @param body [SlackIntegrationChannel] Payload describing fields and values to be updated.
    # @param opts [Hash] the optional parameters
    # @return [SlackIntegrationChannel]
    def update_slack_integration_channel(account_name, channel_name, body, opts = {})
      data, _status_code, _headers = update_slack_integration_channel_with_http_info(account_name, channel_name, body, opts)
      data
    end

    # Update a Slack integration channel
    # Update a channel used in your Datadog-Slack integration.
    # @param account_name [String] Your Slack account name.
    # @param channel_name [String] The name of the Slack channel being operated on.
    # @param body [SlackIntegrationChannel] Payload describing fields and values to be updated.
    # @param opts [Hash] the optional parameters
    # @return [Array<(SlackIntegrationChannel, Integer, Hash)>] SlackIntegrationChannel data, response status code and response headers
    def update_slack_integration_channel_with_http_info(account_name, channel_name, body, opts = {})

      if @api_client.config.unstable_operations.has_key?(:update_slack_integration_channel)
        unstable_enabled = @api_client.config.unstable_operations[:update_slack_integration_channel]
        if unstable_enabled
          @api_client.config.logger.warn format("Using unstable operation '%s'", "update_slack_integration_channel")
        else
          raise APIError.new(message: format("Unstable operation '%s' is disabled", "update_slack_integration_channel"))
        end
      end

      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: SlackIntegrationAPI.update_slack_integration_channel ...'
      end
      # verify the required parameter 'account_name' is set
      if @api_client.config.client_side_validation && account_name.nil?
        fail ArgumentError, "Missing the required parameter 'account_name' when calling SlackIntegrationAPI.update_slack_integration_channel"
      end
      # verify the required parameter 'channel_name' is set
      if @api_client.config.client_side_validation && channel_name.nil?
        fail ArgumentError, "Missing the required parameter 'channel_name' when calling SlackIntegrationAPI.update_slack_integration_channel"
      end
      # verify the required parameter 'body' is set
      if @api_client.config.client_side_validation && body.nil?
        fail ArgumentError, "Missing the required parameter 'body' when calling SlackIntegrationAPI.update_slack_integration_channel"
      end
      # resource path
      local_var_path = '/api/v1/integration/slack/configuration/accounts/{account_name}/channels/{channel_name}'.sub('{account_name}', CGI.escape(account_name.to_s).gsub('%2F', '/')).sub('{channel_name}', CGI.escape(channel_name.to_s).gsub('%2F', '/'))

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
      return_type = opts[:debug_return_type] || 'SlackIntegrationChannel'

      # auth_names
      auth_names = opts[:debug_auth_names] || [:apiKeyAuth, :appKeyAuth]

      new_options = opts.merge(
        :operation => :update_slack_integration_channel,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:PATCH, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: SlackIntegrationAPI#update_slack_integration_channel\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
end
