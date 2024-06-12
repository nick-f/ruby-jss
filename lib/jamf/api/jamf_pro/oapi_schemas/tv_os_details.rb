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


    # OAPI Object Model and Enums for: TvOsDetails
    #
    # Description of this class from the OAPI Schema:
    #   will be populated if the type is appleTv.
    #
    # This class was automatically genereated from the api/schema
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
    #  - Jamf::OAPISchemas::MobileDeviceDetailsV2
    #
    # Sub Objects:
    # Other object models used by this model's attributes.
    #  - Jamf::OAPISchemas::PurchasingV2
    #  - Jamf::OAPISchemas::ConfigurationProfile
    #  - Jamf::OAPISchemas::MobileDeviceCertificateV2
    #
    # Endpoints and Privileges:
    # API endpoints and HTTP operations that use this object
    # model, and the Jamf Pro privileges needed to access them.
    #
    #
    #
    class TvOsDetails < Jamf::OAPIObject

      

      OAPI_PROPERTIES = {

        # @!attribute model
        #   @return [String]
        model: {
          class: :string
        },

        # @!attribute modelIdentifier
        #   @return [String]
        modelIdentifier: {
          class: :string
        },

        # @!attribute modelNumber
        #   @return [String]
        modelNumber: {
          class: :string
        },

        # @!attribute supervised
        #   @return [Boolean]
        supervised: {
          class: :boolean
        },

        # @!attribute airplayPassword
        #   @return [String]
        airplayPassword: {
          class: :string,
          format: 'password'
        },

        # @!attribute deviceId
        #   @return [String]
        deviceId: {
          class: :string
        },

        # @!attribute locales
        #   @return [String]
        locales: {
          class: :string
        },

        # @!attribute purchasing
        #   @return [Jamf::OAPISchemas::PurchasingV2]
        purchasing: {
          class: Jamf::OAPISchemas::PurchasingV2
        },

        # @!attribute configurationProfiles
        #   @return [Array<Jamf::OAPISchemas::ConfigurationProfile>]
        configurationProfiles: {
          class: Jamf::OAPISchemas::ConfigurationProfile,
          multi: true
        },

        # @!attribute certificates
        #   @return [Array<Jamf::OAPISchemas::MobileDeviceCertificateV2>]
        certificates: {
          class: Jamf::OAPISchemas::MobileDeviceCertificateV2,
          multi: true
        }

      } # end OAPI_PROPERTIES

    end # class TvOsDetails

  end # module OAPISchemas

end # module Jamf
