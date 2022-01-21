=begin
#CyberSource Merged Spec

#All CyberSource API specs merged together. These are available at https://developer.cybersource.com/api/reference/api-reference.html

OpenAPI spec version: 0.0.1

Generated by: https://github.com/swagger-api/swagger-codegen.git
Swagger Codegen version: 2.2.3

=end

require 'uri'

module CyberSource
  class VoidApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default, config)
      @api_client = api_client
      @api_client.set_configuration(config)
    end
    # Timeout Void
    # This is to void a previous payment, capture, refund, or credit that merchant does not receive a reply(Mostly due to timeout). This is to void a previous payment, capture, refund, or credit that merchant does not receive a reply(Mostly due to Timeout). To use this feature/API, make sure to pass unique value to field - clientReferenceInformation -> transactionId in your payment, capture, refund, or credit API call and use same transactionId in this API request payload to reverse the payment.
    # @param mit_void_request 
    # @param [Hash] opts the optional parameters
    # @return [PtsV2PaymentsVoidsPost201Response]
    def mit_void(mit_void_request, opts = {})
      data, status_code, headers = mit_void_with_http_info(mit_void_request, opts)
      return data, status_code, headers
    end

    # Timeout Void
    # This is to void a previous payment, capture, refund, or credit that merchant does not receive a reply(Mostly due to timeout). This is to void a previous payment, capture, refund, or credit that merchant does not receive a reply(Mostly due to Timeout). To use this feature/API, make sure to pass unique value to field - clientReferenceInformation -&gt; transactionId in your payment, capture, refund, or credit API call and use same transactionId in this API request payload to reverse the payment.
    # @param mit_void_request 
    # @param [Hash] opts the optional parameters
    # @return [Array<(PtsV2PaymentsVoidsPost201Response, Fixnum, Hash)>] PtsV2PaymentsVoidsPost201Response data, response status code and response headers
    def mit_void_with_http_info(mit_void_request, opts = {})

      if @api_client.config.debugging
          begin
            raise
                @api_client.config.logger.debug 'Calling API: VoidApi.mit_void ...'
            rescue
                puts 'Cannot write to log'
            end
      end
      # verify the required parameter 'mit_void_request' is set
      if @api_client.config.client_side_validation && mit_void_request.nil?
        fail ArgumentError, "Missing the required parameter 'mit_void_request' when calling VoidApi.mit_void"
      end
      # resource path
      local_var_path = 'pts/v2/voids/'

      # query parameters
      query_params = {}

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/hal+json;charset=utf-8'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/json;charset=utf-8'])

      # form parameters
      form_params = {}

      # http body (model)
      post_body = @api_client.object_to_http_body(mit_void_request)
      auth_names = []
      data, status_code, headers = @api_client.call_api(:POST, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'PtsV2PaymentsVoidsPost201Response')
      if @api_client.config.debugging
        begin
        raise
            @api_client.config.logger.debug "API called: VoidApi#mit_void\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
        rescue
            puts 'Cannot write to log'
        end
      end
      return data, status_code, headers
    end
    # Void a Capture
    # Refund a capture API is only used, if you have requested Capture independenlty using [/pts/v2/payments/{id}/captures](https://developer.cybersource.com/api-reference-assets/index.html#payments_capture) API call. Include the capture ID in the POST request to cancel the capture. 
    # @param void_capture_request 
    # @param id The capture ID returned from a previous capture request.
    # @param [Hash] opts the optional parameters
    # @return [PtsV2PaymentsVoidsPost201Response]
    def void_capture(void_capture_request, id, opts = {})
      data, status_code, headers = void_capture_with_http_info(void_capture_request, id, opts)
      return data, status_code, headers
    end

    # Void a Capture
    # Refund a capture API is only used, if you have requested Capture independenlty using [/pts/v2/payments/{id}/captures](https://developer.cybersource.com/api-reference-assets/index.html#payments_capture) API call. Include the capture ID in the POST request to cancel the capture. 
    # @param void_capture_request 
    # @param id The capture ID returned from a previous capture request.
    # @param [Hash] opts the optional parameters
    # @return [Array<(PtsV2PaymentsVoidsPost201Response, Fixnum, Hash)>] PtsV2PaymentsVoidsPost201Response data, response status code and response headers
    def void_capture_with_http_info(void_capture_request, id, opts = {})

      if @api_client.config.debugging
          begin
            raise
                @api_client.config.logger.debug 'Calling API: VoidApi.void_capture ...'
            rescue
                puts 'Cannot write to log'
            end
      end
      # verify the required parameter 'void_capture_request' is set
      if @api_client.config.client_side_validation && void_capture_request.nil?
        fail ArgumentError, "Missing the required parameter 'void_capture_request' when calling VoidApi.void_capture"
      end
      # verify the required parameter 'id' is set
      if @api_client.config.client_side_validation && id.nil?
        fail ArgumentError, "Missing the required parameter 'id' when calling VoidApi.void_capture"
      end
      # resource path
      local_var_path = 'pts/v2/captures/{id}/voids'.sub('{' + 'id' + '}', id.to_s)

      # query parameters
      query_params = {}

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/hal+json;charset=utf-8'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/json;charset=utf-8'])

      # form parameters
      form_params = {}

      # http body (model)
      post_body = @api_client.object_to_http_body(void_capture_request)
      auth_names = []
      data, status_code, headers = @api_client.call_api(:POST, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'PtsV2PaymentsVoidsPost201Response')
      if @api_client.config.debugging
        begin
        raise
            @api_client.config.logger.debug "API called: VoidApi#void_capture\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
        rescue
            puts 'Cannot write to log'
        end
      end
      return data, status_code, headers
    end
    # Void a Credit
    # Include the credit ID in the POST request to cancel the credit.
    # @param void_credit_request 
    # @param id The credit ID returned from a previous credit request.
    # @param [Hash] opts the optional parameters
    # @return [PtsV2PaymentsVoidsPost201Response]
    def void_credit(void_credit_request, id, opts = {})
      data, status_code, headers = void_credit_with_http_info(void_credit_request, id, opts)
      return data, status_code, headers
    end

    # Void a Credit
    # Include the credit ID in the POST request to cancel the credit.
    # @param void_credit_request 
    # @param id The credit ID returned from a previous credit request.
    # @param [Hash] opts the optional parameters
    # @return [Array<(PtsV2PaymentsVoidsPost201Response, Fixnum, Hash)>] PtsV2PaymentsVoidsPost201Response data, response status code and response headers
    def void_credit_with_http_info(void_credit_request, id, opts = {})

      if @api_client.config.debugging
          begin
            raise
                @api_client.config.logger.debug 'Calling API: VoidApi.void_credit ...'
            rescue
                puts 'Cannot write to log'
            end
      end
      # verify the required parameter 'void_credit_request' is set
      if @api_client.config.client_side_validation && void_credit_request.nil?
        fail ArgumentError, "Missing the required parameter 'void_credit_request' when calling VoidApi.void_credit"
      end
      # verify the required parameter 'id' is set
      if @api_client.config.client_side_validation && id.nil?
        fail ArgumentError, "Missing the required parameter 'id' when calling VoidApi.void_credit"
      end
      # resource path
      local_var_path = 'pts/v2/credits/{id}/voids'.sub('{' + 'id' + '}', id.to_s)

      # query parameters
      query_params = {}

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/hal+json;charset=utf-8'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/json;charset=utf-8'])

      # form parameters
      form_params = {}

      # http body (model)
      post_body = @api_client.object_to_http_body(void_credit_request)
      auth_names = []
      data, status_code, headers = @api_client.call_api(:POST, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'PtsV2PaymentsVoidsPost201Response')
      if @api_client.config.debugging
        begin
        raise
            @api_client.config.logger.debug "API called: VoidApi#void_credit\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
        rescue
            puts 'Cannot write to log'
        end
      end
      return data, status_code, headers
    end
    # Void a Payment
    # Void a Payment API is only used, if you have requested Authorization and Capture together in [/pts/v2/payments](https://developer.cybersource.com/api-reference-assets/index.html#payments_payments) API call. Include the payment ID in the POST request to cancel the payment. 
    # @param void_payment_request 
    # @param id The payment ID returned from a previous payment request.
    # @param [Hash] opts the optional parameters
    # @return [PtsV2PaymentsVoidsPost201Response]
    def void_payment(void_payment_request, id, opts = {})
      data, status_code, headers = void_payment_with_http_info(void_payment_request, id, opts)
      return data, status_code, headers
    end

    # Void a Payment
    # Void a Payment API is only used, if you have requested Authorization and Capture together in [/pts/v2/payments](https://developer.cybersource.com/api-reference-assets/index.html#payments_payments) API call. Include the payment ID in the POST request to cancel the payment. 
    # @param void_payment_request 
    # @param id The payment ID returned from a previous payment request.
    # @param [Hash] opts the optional parameters
    # @return [Array<(PtsV2PaymentsVoidsPost201Response, Fixnum, Hash)>] PtsV2PaymentsVoidsPost201Response data, response status code and response headers
    def void_payment_with_http_info(void_payment_request, id, opts = {})

      if @api_client.config.debugging
          begin
            raise
                @api_client.config.logger.debug 'Calling API: VoidApi.void_payment ...'
            rescue
                puts 'Cannot write to log'
            end
      end
      # verify the required parameter 'void_payment_request' is set
      if @api_client.config.client_side_validation && void_payment_request.nil?
        fail ArgumentError, "Missing the required parameter 'void_payment_request' when calling VoidApi.void_payment"
      end
      # verify the required parameter 'id' is set
      if @api_client.config.client_side_validation && id.nil?
        fail ArgumentError, "Missing the required parameter 'id' when calling VoidApi.void_payment"
      end
      # resource path
      local_var_path = 'pts/v2/payments/{id}/voids'.sub('{' + 'id' + '}', id.to_s)

      # query parameters
      query_params = {}

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/hal+json;charset=utf-8'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/json;charset=utf-8'])

      # form parameters
      form_params = {}

      # http body (model)
      post_body = @api_client.object_to_http_body(void_payment_request)
      auth_names = []
      data, status_code, headers = @api_client.call_api(:POST, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'PtsV2PaymentsVoidsPost201Response')
      if @api_client.config.debugging
        begin
        raise
            @api_client.config.logger.debug "API called: VoidApi#void_payment\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
        rescue
            puts 'Cannot write to log'
        end
      end
      return data, status_code, headers
    end
    # Void a Refund
    # Include the refund ID in the POST request to cancel the refund.
    # @param void_refund_request 
    # @param id The refund ID returned from a previous refund request.
    # @param [Hash] opts the optional parameters
    # @return [PtsV2PaymentsVoidsPost201Response]
    def void_refund(void_refund_request, id, opts = {})
      data, status_code, headers = void_refund_with_http_info(void_refund_request, id, opts)
      return data, status_code, headers
    end

    # Void a Refund
    # Include the refund ID in the POST request to cancel the refund.
    # @param void_refund_request 
    # @param id The refund ID returned from a previous refund request.
    # @param [Hash] opts the optional parameters
    # @return [Array<(PtsV2PaymentsVoidsPost201Response, Fixnum, Hash)>] PtsV2PaymentsVoidsPost201Response data, response status code and response headers
    def void_refund_with_http_info(void_refund_request, id, opts = {})

      if @api_client.config.debugging
          begin
            raise
                @api_client.config.logger.debug 'Calling API: VoidApi.void_refund ...'
            rescue
                puts 'Cannot write to log'
            end
      end
      # verify the required parameter 'void_refund_request' is set
      if @api_client.config.client_side_validation && void_refund_request.nil?
        fail ArgumentError, "Missing the required parameter 'void_refund_request' when calling VoidApi.void_refund"
      end
      # verify the required parameter 'id' is set
      if @api_client.config.client_side_validation && id.nil?
        fail ArgumentError, "Missing the required parameter 'id' when calling VoidApi.void_refund"
      end
      # resource path
      local_var_path = 'pts/v2/refunds/{id}/voids'.sub('{' + 'id' + '}', id.to_s)

      # query parameters
      query_params = {}

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/hal+json;charset=utf-8'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/json;charset=utf-8'])

      # form parameters
      form_params = {}

      # http body (model)
      post_body = @api_client.object_to_http_body(void_refund_request)
      auth_names = []
      data, status_code, headers = @api_client.call_api(:POST, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'PtsV2PaymentsVoidsPost201Response')
      if @api_client.config.debugging
        begin
        raise
            @api_client.config.logger.debug "API called: VoidApi#void_refund\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
        rescue
            puts 'Cannot write to log'
        end
      end
      return data, status_code, headers
    end
  end
end
