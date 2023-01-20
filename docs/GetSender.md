# Ducksms::GetSender

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**status** | **Integer** |  | [optional] 
**message** | **String** |  | [optional] 
**data** | **Hash&lt;String, Array&lt;Integer&gt;&gt;** |  | [optional] 

## Code Sample

```ruby
require 'Ducksms'

instance = Ducksms::GetSender.new(status: 200,
                                 message: Sender data return successfully,
                                 data: {&quot;id&quot;:1,&quot;name&quot;:&quot;DUCKSMS&quot;,&quot;description&quot;:&quot;Example sender id description&quot;,&quot;default&quot;:true,&quot;status&quot;:&quot;active&quot;,&quot;created_at&quot;:&quot;2022-11-29T03:28:39.000000Z&quot;,&quot;updated_at&quot;:&quot;2022-11-29T03:28:39.000000Z&quot;})
```


