# Ducksms::CreditApi

All URIs are relative to *https://ducksms.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**credit_balance**](CreditApi.md#credit_balance) | **GET** /api/v1/credits/balance | Credit Balance
[**credit_history**](CreditApi.md#credit_history) | **GET** /api/v1/credits/history | Credit History



## credit_balance

> CreditBalance credit_balance

Credit Balance

Get available credit balance

### Example

```ruby
# load the gem
require 'ducksms'
# setup authorization
Ducksms.configure do |config|
  # Configure Bearer authorization (JWT): BearerToken
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Ducksms::CreditApi.new

begin
  #Credit Balance
  result = api_instance.credit_balance
  pp result
rescue Ducksms::ApiError => e
  puts "Exception when calling CreditApi->credit_balance: #{e}"
end
```

### Parameters

This endpoint does not need any parameter.

### Return type

Response<([**CreditBalance**](CreditBalance.md))>

### Authorization

[BearerToken](../README.md#BearerToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## credit_history

> CreditHistory credit_history(opts)

Credit History

Get all credit history

### Example

```ruby
# load the gem
require 'ducksms'
# setup authorization
Ducksms.configure do |config|
  # Configure Bearer authorization (JWT): BearerToken
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Ducksms::CreditApi.new
opts = {
  page: 1, # Integer | Page number
  filter_type: 'credit', # String | Filter by credit type
  filter_sms_smsid: 1009771270 # Integer | Filter by sms id
}

begin
  #Credit History
  result = api_instance.credit_history(opts)
  pp result
rescue Ducksms::ApiError => e
  puts "Exception when calling CreditApi->credit_history: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **page** | **Integer**| Page number | [optional] 
 **filter_type** | **String**| Filter by credit type | [optional] 
 **filter_sms_smsid** | **Integer**| Filter by sms id | [optional] 

### Return type

Response<([**CreditHistory**](CreditHistory.md))>

### Authorization

[BearerToken](../README.md#BearerToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

