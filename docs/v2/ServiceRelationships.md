# DatadogAPIClient::V2::ServiceRelationships

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**created_by** | [**RelationshipToUser**](RelationshipToUser.md) |  | [optional] 
**last_modified_by** | [**RelationshipToUser**](RelationshipToUser.md) |  | [optional] 

## Code Sample

```ruby
require 'DatadogAPIClient::V2'

instance = DatadogAPIClient::V2::ServiceRelationships.new(created_by: null,
                                 last_modified_by: null)
```

