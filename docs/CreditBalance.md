# Ducksms::CreditBalance

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**status** | **Integer** |  | [optional] 
**message** | **String** |  | [optional] 
**data** | **Hash&lt;String, Array&lt;Integer&gt;&gt;** |  | [optional] 

## Code Sample

```ruby
require 'Ducksms'

instance = Ducksms::CreditBalance.new(status: 200,
                                 message: Balance return successfully,
                                 data: {&quot;balance&quot;:986762})
```


