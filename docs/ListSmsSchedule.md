# Ducksms::ListSmsSchedule

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**status** | **Integer** |  | [optional] 
**message** | **String** |  | [optional] 
**data** | **Hash&lt;String, Array&lt;Integer&gt;&gt;** |  | [optional] 

## Code Sample

```ruby
require 'Ducksms'

instance = Ducksms::ListSmsSchedule.new(status: 200,
                                 message: The sms scheduled return successfully,
                                 data: [{&quot;smsid&quot;:&quot;59961854&quot;,&quot;type&quot;:&quot;quick&quot;,&quot;scheduled_at&quot;:&quot;2022-12-04 13:41:00&quot;,&quot;sender_name&quot;:&quot;DUCKSMS&quot;,&quot;message&quot;:&quot;Hello World&quot;,&quot;recipients&quot;:1,&quot;status&quot;:&quot;completed&quot;,&quot;created_at&quot;:&quot;2022-12-03 13:40:30&quot;,&quot;updated_at&quot;:&quot;2022-12-03 13:46:20&quot;},{&quot;smsid&quot;:&quot;1636438975&quot;,&quot;type&quot;:&quot;quick&quot;,&quot;scheduled_at&quot;:&quot;2022-12-03 12:34:00&quot;,&quot;sender_name&quot;:&quot;MYCOMPANY&quot;,&quot;message&quot;:&quot;Hi john&quot;,&quot;recipients&quot;:1,&quot;status&quot;:&quot;cancelled&quot;,&quot;created_at&quot;:&quot;2022-12-03 12:32:42&quot;,&quot;updated_at&quot;:&quot;2022-12-03 12:32:46&quot;}])
```


