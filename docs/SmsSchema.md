# Ducksms::SmsSchema

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**preview** | **String** | Preview the sms information | [optional] 
**mobile_numbers** | **Array&lt;String&gt;** |  | [optional] 
**message** | **String** |  | [optional] 
**sender_id** | **String** |  | [optional] 
**scheduled_at** | **String** |  | [optional] 
**callback_url** | **String** |  | [optional] 

## Code Sample

```ruby
require 'Ducksms'

instance = Ducksms::SmsSchema.new(preview: yes,
                                 mobile_numbers: [&quot;60121234567&quot;,&quot;60131234567&quot;,&quot;60141234567&quot;,&quot;60151234567&quot;,&quot;60161234567&quot;,&quot;60171234567&quot;,&quot;60181234567&quot;],
                                 message: Hello world,
                                 sender_id: DUCKSMS,
                                 scheduled_at: 2022-12-06T15:19,
                                 callback_url: https://webhook.site/2a88e4b4-56f7-46ee-b3a4-2f05d8b8456e)
```


