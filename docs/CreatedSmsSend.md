# Ducksms::CreatedSmsSend

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**status** | **Integer** |  | [optional] 
**message** | **String** |  | [optional] 
**data** | **Hash&lt;String, Array&lt;String&gt;&gt;** |  | [optional] 

## Code Sample

```ruby
require 'Ducksms'

instance = Ducksms::CreatedSmsSend.new(status: 201,
                                 message: The sms message is successfully scheduled,
                                 data: {&quot;smsid&quot;:&quot;5006623151&quot;,&quot;scheduled_at&quot;:false,&quot;sender_id&quot;:{&quot;name&quot;:&quot;DUCKSMS&quot;},&quot;mobile_number&quot;:[{&quot;number&quot;:&quot;60131234567&quot;,&quot;msgid&quot;:2006553122},{&quot;number&quot;:&quot;60131234562&quot;,&quot;msgid&quot;:7006553121}],&quot;credit&quot;:{&quot;charge_per_sms&quot;:1,&quot;charge_per_number&quot;:1,&quot;charge&quot;:1,&quot;balance&quot;:986762,&quot;after&quot;:986761},&quot;message&quot;:{&quot;type&quot;:&quot;ascii&quot;,&quot;total&quot;:1,&quot;length&quot;:31,&quot;message&quot;:&quot;RM0 DUCKSMS: Hello World, Good morning!&quot;},&quot;callback_url&quot;:&quot;https://webhook.site/2a88e4b4-56f7-46ee-b3a4-2f05d8b8456e&quot;,&quot;contains_special_characters&quot;:false})
```


