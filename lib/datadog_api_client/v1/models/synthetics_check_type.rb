=begin
#Datadog API V1 Collection

#Collection of all Datadog Public endpoints.

The version of the OpenAPI document: 1.0
Contact: support@datadoghq.com
Generated by: https://openapi-generator.tech

 Unless explicitly stated otherwise all files in this repository are licensed under the Apache-2.0 License.
 This product includes software developed at Datadog (https://www.datadoghq.com/).
 Copyright 2020-Present Datadog, Inc.

=end

require 'date'
require 'time'

module DatadogAPIClient::V1
  # Type of assertion to apply in an API test.
  class SyntheticsCheckType
    EQUALS = "equals".freeze
    NOT_EQUALS = "notEquals".freeze
    CONTAINS = "contains".freeze
    NOT_CONTAINS = "notContains".freeze
    STARTS_WITH = "startsWith".freeze
    NOT_STARTS_WITH = "notStartsWith".freeze
    GREATER = "greater".freeze
    LOWER = "lower".freeze
    GREATER_EQUALS = "greaterEquals".freeze
    LOWER_EQUALS = "lowerEquals".freeze
    MATCH_REGEX = "matchRegex".freeze
    BETWEEN = "between".freeze
    IS_EMPTY = "isEmpty".freeze
    NOT_IS_EMPTY = "notIsEmpty".freeze

    # Builds the enum from string
    # @param value [String] The enum value in the form of the string
    # @return [String] The enum value
    # @!visibility private
    def self.build_from_hash(value)
      new.build_from_hash(value)
    end

    # Builds the enum from string
    # @param value [String] The enum value in the form of the string
    # @return [String] The enum value
    # @!visibility private
    def build_from_hash(value)
      constantValues = SyntheticsCheckType.constants.select { |c| SyntheticsCheckType::const_get(c) == value }
      constantValues.empty? ? DatadogAPIClient::V1::UnparsedObject.new(value) : value
    end
  end
end
