# Ducksms::Sender

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**name** | **String** | Sender name | [optional] 
**description** | **String** | Sender description | [optional] 
**default** | **Boolean** | Default sender id | [optional] 
**status** | **String** | Sender id status | [optional] 

## Code Sample

```ruby
require 'Ducksms'

instance = Ducksms::Sender.new(name: DUCKSMS,
                                 description: Ducksms sender id,
                                 default: false,
                                 status: active)
```


