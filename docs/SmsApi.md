# Ducksms::SmsApi

All URIs are relative to *https://ducksms.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**sms_send**](SmsApi.md#sms_send) | **POST** /api/v1/sms/send | Send Sms



## sms_send

> PreviewSmsSend sms_send(opts)

Send Sms

Create a new sms

### Example

```ruby
# load the gem
require 'ducksms'
# setup authorization
Ducksms.configure do |config|
  # Configure Bearer authorization (JWT): BearerToken
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Ducksms::SmsApi.new
opts = {
  sms_schema: Ducksms::SmsSchema.new # SmsSchema | Create a new sms
}

begin
  #Send Sms
  result = api_instance.sms_send(opts)
  pp result
rescue Ducksms::ApiError => e
  puts "Exception when calling SmsApi->sms_send: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **sms_schema** | [**SmsSchema**](SmsSchema.md)| Create a new sms | [optional] 

### Return type

Response<([**PreviewSmsSend**](PreviewSmsSend.md))>

### Authorization

[BearerToken](../README.md#BearerToken)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

