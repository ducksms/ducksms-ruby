# Ducksms::ErrorUnauthenticated

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**status** | **Integer** |  | [optional] 
**message** | **String** |  | [optional] 

## Code Sample

```ruby
require 'Ducksms'

instance = Ducksms::ErrorUnauthenticated.new(status: 403,
                                 message: Unauthenticated)
```


