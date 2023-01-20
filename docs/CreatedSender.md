# Ducksms::CreatedSender

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**status** | **Integer** |  | [optional] 
**message** | **String** |  | [optional] 
**data** | **Hash&lt;String, Array&lt;Integer&gt;&gt;** |  | [optional] 

## Code Sample

```ruby
require 'Ducksms'

instance = Ducksms::CreatedSender.new(status: 201,
                                 message: Sender successfully created,
                                 data: {&quot;id&quot;:1})
```


