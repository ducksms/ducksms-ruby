# Ducksms::CancelSmsSchedule

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**status** | **Integer** |  | [optional] 
**message** | **String** |  | [optional] 
**data** | **Hash&lt;String, Object&gt;** |  | [optional] 

## Code Sample

```ruby
require 'Ducksms'

instance = Ducksms::CancelSmsSchedule.new(status: 200,
                                 message: Schedule successfully cancelled,
                                 data: [])
```


