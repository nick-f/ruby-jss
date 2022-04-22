### Copyright 2022 Pixar

###
###    Licensed under the Apache License, Version 2.0 (the "Apache License")
###    with the following modification; you may not use this file except in
###    compliance with the Apache License and the following modification to it:
###    Section 6. Trademarks. is deleted and replaced with:
###
###    6. Trademarks. This License does not grant permission to use the trade
###       names, trademarks, service marks, or product names of the Licensor
###       and its affiliates, except as required to comply with Section 4(c) of
###       the License and to reproduce the content of the NOTICE file.
###
###    You may obtain a copy of the Apache License at
###
###        http://www.apache.org/licenses/LICENSE-2.0
###
###    Unless required by applicable law or agreed to in writing, software
###    distributed under the Apache License with the above modification is
###    distributed on an "AS IS" BASIS, WITHOUT WARRANTIES OR CONDITIONS OF ANY
###    KIND, either express or implied. See the Apache License for the specific
###    language governing permissions and limitations under the Apache License.
###
###

module JamfTest

  class ComputerPrestage < JamfTest::APITest

    include JamfTest::CollectionTests

    COLLECTION_CLASS = Jamf::ComputerPrestage

    # run the tests
    def run_class_tests
      run_collection_tests do_object_tests: false

      if @cached_all.empty?
        say 'No ComputerPrestages defined, skipping remaining tests'
        return
      end

      fetch_default_prestage
      all_serials_by_prestage_id
      serials_for_prestage
    end

    #########
    def fetch_default_prestage
      @default_computer_prestage = collection_class.default
      say "Ran #{collection_class}.default to fetch the default Computer prestage"
    end

    #########
    def all_serials_by_prestage_id
      serials = collection_class.serials_by_prestage_id
      say "Ran #{collection_class}.default to fetch the default Computer prestage"
      validate_hash serials, key_class: String, val_class: String
    end

    ###########
    def serials_for_prestage
      collection_class.serials_for_prestage @default_computer_prestage.id
      say "Ran #{collection_class}.serials_for_prestage '#{@default_computer_prestage.id}'"

      collection_class.serials_for_prestage @default_computer_prestage.displayName
      say "Ran #{collection_class}.serials_for_prestage '#{@default_computer_prestage.displayName}'"
    end

  end # class

end # module JamfTest
