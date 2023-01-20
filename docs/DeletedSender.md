# Ducksms::DeletedSender

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**status** | **Integer** |  | [optional] 
**message** | **String** |  | [optional] 
**data** | **Hash&lt;String, Object&gt;** |  | [optional] 

## Code Sample

```ruby
require 'Ducksms'

instance = Ducksms::DeletedSender.new(status: 200,
                                 message: Sender successfully deleted,
                                 data: [])
```


