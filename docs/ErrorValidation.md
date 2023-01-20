# Ducksms::ErrorValidation

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**status** | **Integer** |  | [optional] 
**message** | **String** |  | [optional] 
**errors** | **Hash&lt;String, Array&lt;String&gt;&gt;** |  | [optional] 

## Code Sample

```ruby
require 'Ducksms'

instance = Ducksms::ErrorValidation.new(status: 422,
                                 message: The given data was invalid.,
                                 errors: {&quot;field&quot;:[&quot;Something is wrong with the field&quot;]})
```


