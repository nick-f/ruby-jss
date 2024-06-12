# Copyright 2024 Pixar
#
#    Licensed under the Apache License, Version 2.0 (the "Apache License")
#    with the following modification; you may not use this file except in
#    compliance with the Apache License and the following modification to it:
#    Section 6. Trademarks. is deleted and replaced with:
#
#    6. Trademarks. This License does not grant permission to use the trade
#       names, trademarks, service marks, or product names of the Licensor
#       and its affiliates, except as required to comply with Section 4(c) of
#       the License and to reproduce the content of the NOTICE file.
#
#    You may obtain a copy of the Apache License at
#
#        http://www.apache.org/licenses/LICENSE-2.0
#
#    Unless required by applicable law or agreed to in writing, software
#    distributed under the Apache License with the above modification is
#    distributed on an "AS IS" BASIS, WITHOUT WARRANTIES OR CONDITIONS OF ANY
#    KIND, either express or implied. See the Apache License for the specific
#    language governing permissions and limitations under the Apache License.
#


module Jamf

  # This module is the namespace for all objects defined
  # in the OAPI JSON schema under the components => schemas key
  #
  module OAPISchemas


    # OAPI Object Model and Enums for: OnboardingItem
    #
    #
    #
    # This class was automatically generated from the api/schema
    # URL path on a Jamf Pro server version 11.5.1-t1716233166
    #
    # This class may be used directly, e.g instances of other classes may
    # use instances of this class as one of their own properties/attributes.
    #
    # It may also be used as a superclass when implementing Jamf Pro API
    # Resources in ruby-jss. The subclasses include appropriate mixins, and
    # should expand on the basic functionality provided here.
    #
    #
    # Container Objects:
    # Other object models that use this model as the value in one
    # of their attributes.
    #  - Jamf::OAPISchemas::OnboardingConfiguration
    #
    # Sub Objects:
    # Other object models used by this model's attributes.
    #  
    #
    # Endpoints and Privileges:
    # API endpoints and HTTP operations that use this object
    # model, and the Jamf Pro privileges needed to access them.
    #
    #
    #
    class OnboardingItem < Jamf::OAPIObject

      # Enums used by this class or others

      SELF_SERVICE_ENTITY_TYPE_OPTIONS = [
        'OS_X_POLICY',
        'OS_X_CONFIG_PROFILE',
        'OS_X_MAC_APP',
        'OS_X_APP_INSTALLER',
        'OS_X_EBOOK',
        'OS_X_PATCH_POLICY',
        'UNKNOWN'
      ]

      OAPI_PROPERTIES = {

        # @!attribute id
        #   @return [String]
        id: {
          class: :j_id,
          nil_ok: true,
          identifier: :primary
        },

        # The id of the Jamf Pro object that should be added to the onboarding workflow for end users.
        # Use this in conjunction with the selfServiceEntityType. For example, if the policy with id 132
        # should be added to onboarding, then entityId should be 132 and selfServiceEntityType should be 
        # OS_X_POLICY.
        # @!attribute entityId
        #   @return [String]
        entityId: {
          class: :string,
          required: true
        },

        # @!attribute [r] entityName
        #   @return [String]
        entityName: {
          class: :string,
          readonly: true
        },

        # @!attribute [r] scopeDescription
        #   @return [String]
        scopeDescription: {
          class: :string,
          readonly: true
        },

        # @!attribute [r] siteDescription
        #   @return [String]
        siteDescription: {
          class: :string,
          readonly: true
        },

        # @!attribute selfServiceEntityType
        #   @return [String]
        selfServiceEntityType: {
          class: :string,
          required: true,
          enum: SELF_SERVICE_ENTITY_TYPE_OPTIONS
        },

        # @!attribute priority
        #   @return [Integer]
        priority: {
          class: :integer,
          required: true
        }

      } # end OAPI_PROPERTIES

    end # class OnboardingItem

  end # module OAPISchemas

end # module Jamf