# Ducksms::ErrorException

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**status** | **Integer** |  | [optional] 
**message** | **String** |  | [optional] 

## Code Sample

```ruby
require 'Ducksms'

instance = Ducksms::ErrorException.new(status: 500,
                                 message: An error occurred while saving the data)
```


