# Ducksms::PreviewSmsSend

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**status** | **Integer** |  | [optional] 
**message** | **String** |  | [optional] 
**data** | **Hash&lt;String, Array&lt;String&gt;&gt;** |  | [optional] 

## Code Sample

```ruby
require 'Ducksms'

instance = Ducksms::PreviewSmsSend.new(status: 200,
                                 message: Preview data return successfully,
                                 data: {&quot;scheduled_at&quot;:false,&quot;sender_id&quot;:{&quot;name&quot;:&quot;DUCKSMS&quot;},&quot;mobile_number&quot;:[{&quot;number&quot;:60131234567},{&quot;number&quot;:60131234562}],&quot;credit&quot;:{&quot;charge_per_sms&quot;:1,&quot;charge_per_number&quot;:1,&quot;charge&quot;:1,&quot;balance&quot;:986762,&quot;after&quot;:986761},&quot;message&quot;:{&quot;type&quot;:&quot;ascii&quot;,&quot;total&quot;:1,&quot;length&quot;:31,&quot;message&quot;:&quot;RM0 DUCKSMS: Hello World, Good morning!&quot;},&quot;callback_url&quot;:&quot;https://webhook.site/2a88e4b4-56f7-46ee-b3a4-2f05d8b8456e&quot;,&quot;contains_special_characters&quot;:false})
```


