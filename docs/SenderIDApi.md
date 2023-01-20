# Ducksms::SenderIDApi

All URIs are relative to *https://ducksms.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**create_sender**](SenderIDApi.md#create_sender) | **POST** /api/v1/senders | Create a Sender ID
[**delete_sender**](SenderIDApi.md#delete_sender) | **DELETE** /api/v1/senders/{id} | Delete a Sender ID
[**get_sender**](SenderIDApi.md#get_sender) | **GET** /api/v1/senders/{id} | Get a single Sender ID
[**list_sender**](SenderIDApi.md#list_sender) | **GET** /api/v1/senders | List Sender ID
[**update_sender**](SenderIDApi.md#update_sender) | **POST** /api/v1/senders/{id} | Update a Sender ID



## create_sender

> CreatedSender create_sender(opts)

Create a Sender ID

Create a new sender id

### Example

```ruby
# load the gem
require 'ducksms'
# setup authorization
Ducksms.configure do |config|
  # Configure Bearer authorization (JWT): BearerToken
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Ducksms::SenderIDApi.new
opts = {
  sender: Ducksms::Sender.new # Sender | Create a new sender
}

begin
  #Create a Sender ID
  result = api_instance.create_sender(opts)
  pp result
rescue Ducksms::ApiError => e
  puts "Exception when calling SenderIDApi->create_sender: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **sender** | [**Sender**](Sender.md)| Create a new sender | [optional] 

### Return type

Response<([**CreatedSender**](CreatedSender.md))>

### Authorization

[BearerToken](../README.md#BearerToken)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## delete_sender

> DeletedSender delete_sender(id)

Delete a Sender ID

Delete an existing sender id

### Example

```ruby
# load the gem
require 'ducksms'
# setup authorization
Ducksms.configure do |config|
  # Configure Bearer authorization (JWT): BearerToken
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Ducksms::SenderIDApi.new
id = 'id_example' # String | 

begin
  #Delete a Sender ID
  result = api_instance.delete_sender(id)
  pp result
rescue Ducksms::ApiError => e
  puts "Exception when calling SenderIDApi->delete_sender: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**|  | 

### Return type

Response<([**DeletedSender**](DeletedSender.md))>

### Authorization

[BearerToken](../README.md#BearerToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_sender

> GetSender get_sender(id)

Get a single Sender ID

Get details on a single sender id

### Example

```ruby
# load the gem
require 'ducksms'
# setup authorization
Ducksms.configure do |config|
  # Configure Bearer authorization (JWT): BearerToken
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Ducksms::SenderIDApi.new
id = 'id_example' # String | 

begin
  #Get a single Sender ID
  result = api_instance.get_sender(id)
  pp result
rescue Ducksms::ApiError => e
  puts "Exception when calling SenderIDApi->get_sender: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**|  | 

### Return type

Response<([**GetSender**](GetSender.md))>

### Authorization

[BearerToken](../README.md#BearerToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## list_sender

> ListSender list_sender(opts)

List Sender ID

List all the senders

### Example

```ruby
# load the gem
require 'ducksms'
# setup authorization
Ducksms.configure do |config|
  # Configure Bearer authorization (JWT): BearerToken
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Ducksms::SenderIDApi.new
opts = {
  page: 1, # Integer | Page number
  filter_name: 'DUCKSMS', # String | Filter by sender name
  filter_status: 'active' # String | Filter by sender status
}

begin
  #List Sender ID
  result = api_instance.list_sender(opts)
  pp result
rescue Ducksms::ApiError => e
  puts "Exception when calling SenderIDApi->list_sender: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **page** | **Integer**| Page number | [optional] 
 **filter_name** | **String**| Filter by sender name | [optional] 
 **filter_status** | **String**| Filter by sender status | [optional] 

### Return type

Response<([**ListSender**](ListSender.md))>

### Authorization

[BearerToken](../README.md#BearerToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## update_sender

> UpdatedSender update_sender(id, opts)

Update a Sender ID

Update an existing sender id

### Example

```ruby
# load the gem
require 'ducksms'
# setup authorization
Ducksms.configure do |config|
  # Configure Bearer authorization (JWT): BearerToken
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Ducksms::SenderIDApi.new
id = 'id_example' # String | 
opts = {
  sender: Ducksms::Sender.new # Sender | Update an existing sender id
}

begin
  #Update a Sender ID
  result = api_instance.update_sender(id, opts)
  pp result
rescue Ducksms::ApiError => e
  puts "Exception when calling SenderIDApi->update_sender: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**|  | 
 **sender** | [**Sender**](Sender.md)| Update an existing sender id | [optional] 

### Return type

Response<([**UpdatedSender**](UpdatedSender.md))>

### Authorization

[BearerToken](../README.md#BearerToken)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

