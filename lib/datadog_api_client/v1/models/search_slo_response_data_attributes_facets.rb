=begin
#Datadog API V1 Collection

#Collection of all Datadog Public endpoints.

The version of the OpenAPI document: 1.0
Contact: support@datadoghq.com
Generated by: https://github.com/DataDog/datadog-api-client-ruby/tree/master/.generator

 Unless explicitly stated otherwise all files in this repository are licensed under the Apache-2.0 License.
 This product includes software developed at Datadog (https://www.datadoghq.com/).
 Copyright 2020-Present Datadog, Inc.

=end

require 'date'
require 'time'

module DatadogAPIClient::V1
  # Facets
  class SearchSLOResponseDataAttributesFacets
    include BaseGenericModel

    # Whether the object has unparsed attributes
    # @!visibility private
    attr_accessor :_unparsed

    # All tags associated with an SLO.
    attr_accessor :all_tags

    # Creator of an SLO.
    attr_accessor :creator_name

    # Tags with the `env` tag key.
    attr_accessor :env_tags

    # Tags with the `service` tag key.
    attr_accessor :service_tags

    # Type of SLO.
    attr_accessor :slo_type

    # SLO Target
    attr_accessor :target

    # Tags with the `team` tag key.
    attr_accessor :team_tags

    # Timeframes of SLOs.
    attr_accessor :timeframe

    # Attribute mapping from ruby-style variable name to JSON key.
    # @!visibility private
    def self.attribute_map
      {
        :'all_tags' => :'all_tags',
        :'creator_name' => :'creator_name',
        :'env_tags' => :'env_tags',
        :'service_tags' => :'service_tags',
        :'slo_type' => :'slo_type',
        :'target' => :'target',
        :'team_tags' => :'team_tags',
        :'timeframe' => :'timeframe'
      }
    end

    # Returns all the JSON keys this model knows about
    # @!visibility private
    def self.acceptable_attributes
      attribute_map.values
    end

    # Attribute type mapping.
    # @!visibility private
    def self.openapi_types
      {
        :'all_tags' => :'Array<SearchSLOResponseDataAttributesFacetsObjectString>',
        :'creator_name' => :'Array<SearchSLOResponseDataAttributesFacetsObjectString>',
        :'env_tags' => :'Array<SearchSLOResponseDataAttributesFacetsObjectString>',
        :'service_tags' => :'Array<SearchSLOResponseDataAttributesFacetsObjectString>',
        :'slo_type' => :'Array<SearchSLOResponseDataAttributesFacetsObjectInt>',
        :'target' => :'Array<SearchSLOResponseDataAttributesFacetsObjectInt>',
        :'team_tags' => :'Array<SearchSLOResponseDataAttributesFacetsObjectString>',
        :'timeframe' => :'Array<SearchSLOResponseDataAttributesFacetsObjectString>'
      }
    end

    # List of attributes with nullable: true
    # @!visibility private
    def self.openapi_nullable
      Set.new([
      ])
    end

    # Initializes the object
    # @param attributes [Hash] Model attributes in the form of hash
    # @!visibility private
    def initialize(attributes = {})
      if (!attributes.is_a?(Hash))
        fail ArgumentError, "The input argument (attributes) must be a hash in `DatadogAPIClient::V1::SearchSLOResponseDataAttributesFacets` initialize method"
      end

      # check to see if the attribute exists and convert string to symbol for hash key
      attributes = attributes.each_with_object({}) { |(k, v), h|
        if (!self.class.attribute_map.key?(k.to_sym))
          fail ArgumentError, "`#{k}` is not a valid attribute in `DatadogAPIClient::V1::SearchSLOResponseDataAttributesFacets`. Please check the name to make sure it's valid. List of attributes: " + self.class.attribute_map.keys.inspect
        end
        h[k.to_sym] = v
      }

      if attributes.key?(:'all_tags')
        if (value = attributes[:'all_tags']).is_a?(Array)
          self.all_tags = value
        end
      end

      if attributes.key?(:'creator_name')
        if (value = attributes[:'creator_name']).is_a?(Array)
          self.creator_name = value
        end
      end

      if attributes.key?(:'env_tags')
        if (value = attributes[:'env_tags']).is_a?(Array)
          self.env_tags = value
        end
      end

      if attributes.key?(:'service_tags')
        if (value = attributes[:'service_tags']).is_a?(Array)
          self.service_tags = value
        end
      end

      if attributes.key?(:'slo_type')
        if (value = attributes[:'slo_type']).is_a?(Array)
          self.slo_type = value
        end
      end

      if attributes.key?(:'target')
        if (value = attributes[:'target']).is_a?(Array)
          self.target = value
        end
      end

      if attributes.key?(:'team_tags')
        if (value = attributes[:'team_tags']).is_a?(Array)
          self.team_tags = value
        end
      end

      if attributes.key?(:'timeframe')
        if (value = attributes[:'timeframe']).is_a?(Array)
          self.timeframe = value
        end
      end
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    # @!visibility private
    def valid?
      true
    end

    # Checks equality by comparing each attribute.
    # @param o [Object] Object to be compared
    # @!visibility private
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          all_tags == o.all_tags &&
          creator_name == o.creator_name &&
          env_tags == o.env_tags &&
          service_tags == o.service_tags &&
          slo_type == o.slo_type &&
          target == o.target &&
          team_tags == o.team_tags &&
          timeframe == o.timeframe
    end

    # @see the `==` method
    # @param o [Object] Object to be compared
    # @!visibility private
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Integer] Hash code
    # @!visibility private
    def hash
      [all_tags, creator_name, env_tags, service_tags, slo_type, target, team_tags, timeframe].hash
    end
  end
end
