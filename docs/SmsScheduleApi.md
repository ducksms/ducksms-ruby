# Ducksms::SmsScheduleApi

All URIs are relative to *https://ducksms.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**cancel_sms_schedule**](SmsScheduleApi.md#cancel_sms_schedule) | **DELETE** /api/v1/sms/scheduled/{id} | Cancel Sms Schedule
[**list_sms_schedule**](SmsScheduleApi.md#list_sms_schedule) | **GET** /api/v1/sms/scheduled | List Sms Schedule



## cancel_sms_schedule

> CancelSmsSchedule cancel_sms_schedule(id)

Cancel Sms Schedule

Cancel existing sms schedule

### Example

```ruby
# load the gem
require 'ducksms'
# setup authorization
Ducksms.configure do |config|
  # Configure Bearer authorization (JWT): BearerToken
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Ducksms::SmsScheduleApi.new
id = 'id_example' # String | 

begin
  #Cancel Sms Schedule
  result = api_instance.cancel_sms_schedule(id)
  pp result
rescue Ducksms::ApiError => e
  puts "Exception when calling SmsScheduleApi->cancel_sms_schedule: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**|  | 

### Return type

Response<([**CancelSmsSchedule**](CancelSmsSchedule.md))>

### Authorization

[BearerToken](../README.md#BearerToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## list_sms_schedule

> ListSmsSchedule list_sms_schedule(opts)

List Sms Schedule

List all the sms schedule

### Example

```ruby
# load the gem
require 'ducksms'
# setup authorization
Ducksms.configure do |config|
  # Configure Bearer authorization (JWT): BearerToken
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Ducksms::SmsScheduleApi.new
opts = {
  page: 1, # Integer | Page number
  filter_sender_name: 'DUCKSMS', # String | Filter by sender id name
  filter_type: 'quick', # String | Filter by sms type
  filter_message_type: 'ascii', # String | Filter by sms message type
  filter_status: 'pending' # String | Filter by sms status
}

begin
  #List Sms Schedule
  result = api_instance.list_sms_schedule(opts)
  pp result
rescue Ducksms::ApiError => e
  puts "Exception when calling SmsScheduleApi->list_sms_schedule: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **page** | **Integer**| Page number | [optional] 
 **filter_sender_name** | **String**| Filter by sender id name | [optional] 
 **filter_type** | **String**| Filter by sms type | [optional] 
 **filter_message_type** | **String**| Filter by sms message type | [optional] 
 **filter_status** | **String**| Filter by sms status | [optional] 

### Return type

Response<([**ListSmsSchedule**](ListSmsSchedule.md))>

### Authorization

[BearerToken](../README.md#BearerToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

