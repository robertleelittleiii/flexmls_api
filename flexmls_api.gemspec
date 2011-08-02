# Generated by jeweler
# DO NOT EDIT THIS FILE DIRECTLY
# Instead, edit Jeweler::Tasks in Rakefile, and run 'rake gemspec'
# -*- encoding: utf-8 -*-

Gem::Specification.new do |s|
  s.name = %q{flexmls_api}
  s.version = "0.6.1"

  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.authors = ["Brandon Hornseth", "Wade McEwen"]
  s.date = %q{2011-08-02}
  s.default_executable = %q{flexmls_api}
  s.description = %q{A library for interacting with the flexmls web services.}
  s.email = %q{api-support@flexmls.com}
  s.executables = ["flexmls_api"]
  s.extra_rdoc_files = [
    "LICENSE",
    "README.md"
  ]
  s.files = [
    "Gemfile",
    "Gemfile.lock",
    "KEYS",
    "LICENSE",
    "README.md",
    "Rakefile",
    "VERSION",
    "bin/flexmls_api",
    "lib/flexmls_api.rb",
    "lib/flexmls_api/authentication.rb",
    "lib/flexmls_api/authentication/api_auth.rb",
    "lib/flexmls_api/authentication/base_auth.rb",
    "lib/flexmls_api/authentication/oauth2.rb",
    "lib/flexmls_api/authentication/oauth2_impl/grant_type_base.rb",
    "lib/flexmls_api/authentication/oauth2_impl/grant_type_code.rb",
    "lib/flexmls_api/authentication/oauth2_impl/grant_type_password.rb",
    "lib/flexmls_api/authentication/oauth2_impl/grant_type_refresh.rb",
    "lib/flexmls_api/authentication/oauth2_impl/middleware.rb",
    "lib/flexmls_api/cli.rb",
    "lib/flexmls_api/cli/api_auth.rb",
    "lib/flexmls_api/cli/oauth2.rb",
    "lib/flexmls_api/cli/setup.rb",
    "lib/flexmls_api/client.rb",
    "lib/flexmls_api/configuration.rb",
    "lib/flexmls_api/faraday.rb",
    "lib/flexmls_api/models.rb",
    "lib/flexmls_api/models/account.rb",
    "lib/flexmls_api/models/base.rb",
    "lib/flexmls_api/models/connect_prefs.rb",
    "lib/flexmls_api/models/contact.rb",
    "lib/flexmls_api/models/custom_fields.rb",
    "lib/flexmls_api/models/document.rb",
    "lib/flexmls_api/models/finders.rb",
    "lib/flexmls_api/models/idx_link.rb",
    "lib/flexmls_api/models/listing.rb",
    "lib/flexmls_api/models/listing_cart.rb",
    "lib/flexmls_api/models/market_statistics.rb",
    "lib/flexmls_api/models/note.rb",
    "lib/flexmls_api/models/photo.rb",
    "lib/flexmls_api/models/property_types.rb",
    "lib/flexmls_api/models/saved_search.rb",
    "lib/flexmls_api/models/shared_listing.rb",
    "lib/flexmls_api/models/standard_fields.rb",
    "lib/flexmls_api/models/subresource.rb",
    "lib/flexmls_api/models/system_info.rb",
    "lib/flexmls_api/models/tour_of_home.rb",
    "lib/flexmls_api/models/video.rb",
    "lib/flexmls_api/models/virtual_tour.rb",
    "lib/flexmls_api/multi_client.rb",
    "lib/flexmls_api/paginate.rb",
    "lib/flexmls_api/primary_array.rb",
    "lib/flexmls_api/request.rb",
    "lib/flexmls_api/version.rb",
    "script/console",
    "script/example.rb",
    "spec/fixtures/accounts/all.json",
    "spec/fixtures/accounts/my.json",
    "spec/fixtures/accounts/my_portal.json",
    "spec/fixtures/accounts/my_put.json",
    "spec/fixtures/accounts/my_save.json",
    "spec/fixtures/accounts/office.json",
    "spec/fixtures/add_note.json",
    "spec/fixtures/agent_shared_note.json",
    "spec/fixtures/agent_shared_note_empty.json",
    "spec/fixtures/authentication_failure.json",
    "spec/fixtures/base.json",
    "spec/fixtures/contact_my.json",
    "spec/fixtures/contact_new.json",
    "spec/fixtures/contact_new_empty.json",
    "spec/fixtures/contact_new_notify.json",
    "spec/fixtures/contact_tags.json",
    "spec/fixtures/contacts.json",
    "spec/fixtures/contacts_post.json",
    "spec/fixtures/count.json",
    "spec/fixtures/empty.json",
    "spec/fixtures/errors/expired.json",
    "spec/fixtures/errors/failure.json",
    "spec/fixtures/generic_delete.json",
    "spec/fixtures/generic_failure.json",
    "spec/fixtures/listing_cart.json",
    "spec/fixtures/listing_cart_add_listing.json",
    "spec/fixtures/listing_cart_add_listing_post.json",
    "spec/fixtures/listing_cart_empty.json",
    "spec/fixtures/listing_cart_new.json",
    "spec/fixtures/listing_cart_post.json",
    "spec/fixtures/listing_cart_remove_listing.json",
    "spec/fixtures/listing_document_index.json",
    "spec/fixtures/listing_no_subresources.json",
    "spec/fixtures/listing_photos_index.json",
    "spec/fixtures/listing_videos_index.json",
    "spec/fixtures/listing_virtual_tours_index.json",
    "spec/fixtures/listing_with_documents.json",
    "spec/fixtures/listing_with_photos.json",
    "spec/fixtures/listing_with_supplement.json",
    "spec/fixtures/listing_with_videos.json",
    "spec/fixtures/listing_with_vtour.json",
    "spec/fixtures/note_new.json",
    "spec/fixtures/oauth2/access.json",
    "spec/fixtures/oauth2/access_with_old_refresh.json",
    "spec/fixtures/oauth2/access_with_refresh.json",
    "spec/fixtures/oauth2/authorization_code_body.json",
    "spec/fixtures/oauth2/error.json",
    "spec/fixtures/oauth2/password_body.json",
    "spec/fixtures/oauth2/refresh_body.json",
    "spec/fixtures/oauth2_error.json",
    "spec/fixtures/saved_search.json",
    "spec/fixtures/session.json",
    "spec/fixtures/shared_listing_new.json",
    "spec/fixtures/shared_listing_post.json",
    "spec/fixtures/standardfields.json",
    "spec/fixtures/standardfields_city.json",
    "spec/fixtures/standardfields_nearby.json",
    "spec/fixtures/standardfields_stateorprovince.json",
    "spec/fixtures/success.json",
    "spec/fixtures/tour_of_homes.json",
    "spec/json_helper.rb",
    "spec/mock_helper.rb",
    "spec/oauth2_helper.rb",
    "spec/spec_helper.rb",
    "spec/unit/flexmls_api/authentication/api_auth_spec.rb",
    "spec/unit/flexmls_api/authentication/oauth2_impl/grant_type_base_spec.rb",
    "spec/unit/flexmls_api/authentication/oauth2_spec.rb",
    "spec/unit/flexmls_api/authentication_spec.rb",
    "spec/unit/flexmls_api/configuration_spec.rb",
    "spec/unit/flexmls_api/faraday_spec.rb",
    "spec/unit/flexmls_api/models/account_spec.rb",
    "spec/unit/flexmls_api/models/base_spec.rb",
    "spec/unit/flexmls_api/models/connect_prefs_spec.rb",
    "spec/unit/flexmls_api/models/contact_spec.rb",
    "spec/unit/flexmls_api/models/document_spec.rb",
    "spec/unit/flexmls_api/models/listing_cart_spec.rb",
    "spec/unit/flexmls_api/models/listing_spec.rb",
    "spec/unit/flexmls_api/models/note_spec.rb",
    "spec/unit/flexmls_api/models/photo_spec.rb",
    "spec/unit/flexmls_api/models/property_types_spec.rb",
    "spec/unit/flexmls_api/models/saved_search_spec.rb",
    "spec/unit/flexmls_api/models/shared_listing_spec.rb",
    "spec/unit/flexmls_api/models/standard_fields_spec.rb",
    "spec/unit/flexmls_api/models/system_info_spec.rb",
    "spec/unit/flexmls_api/models/tour_of_home_spec.rb",
    "spec/unit/flexmls_api/models/video_spec.rb",
    "spec/unit/flexmls_api/models/virtual_tour_spec.rb",
    "spec/unit/flexmls_api/multi_client_spec.rb",
    "spec/unit/flexmls_api/paginate_spec.rb",
    "spec/unit/flexmls_api/primary_array_spec.rb",
    "spec/unit/flexmls_api/request_spec.rb",
    "spec/unit/flexmls_api_spec.rb"
  ]
  s.homepage = %q{https://github.com/flexmls/flexmls_api}
  s.require_paths = ["lib"]
  s.rubygems_version = %q{1.6.2}
  s.summary = %q{A library for interacting with the flexmls web services.}

  if s.respond_to? :specification_version then
    s.specification_version = 3

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_runtime_dependency(%q<flexmls_api>, [">= 0"])
      s.add_runtime_dependency(%q<curb>, ["~> 0.7.15"])
      s.add_runtime_dependency(%q<faraday>, ["~> 0.6.1"])
      s.add_runtime_dependency(%q<faraday_middleware>, ["~> 0.6.3"])
      s.add_runtime_dependency(%q<multi_json>, ["~> 1.0.0"])
      s.add_runtime_dependency(%q<json>, ["~> 1.5.1"])
      s.add_runtime_dependency(%q<yajl-ruby>, ["~> 0.8.2"])
      s.add_runtime_dependency(%q<builder>, ["< 4.0.0", ">= 2.1.2"])
      s.add_runtime_dependency(%q<addressable>, ["~> 2.2.5"])
      s.add_runtime_dependency(%q<will_paginate>, ["< 4.0.0", ">= 3.0.pre2"])
      s.add_development_dependency(%q<rspec>, ["~> 2.3.0"])
      s.add_development_dependency(%q<webmock>, ["~> 1.4.0"])
      s.add_development_dependency(%q<jeweler>, ["~> 1.5.2"])
      s.add_development_dependency(%q<typhoeus>, ["~> 0.2.0"])
      s.add_development_dependency(%q<ci_reporter>, ["~> 1.6.3"])
      s.add_development_dependency(%q<rcov>, ["~> 0.9.9"])
    else
      s.add_dependency(%q<flexmls_api>, [">= 0"])
      s.add_dependency(%q<curb>, ["~> 0.7.15"])
      s.add_dependency(%q<faraday>, ["~> 0.6.1"])
      s.add_dependency(%q<faraday_middleware>, ["~> 0.6.3"])
      s.add_dependency(%q<multi_json>, ["~> 1.0.0"])
      s.add_dependency(%q<json>, ["~> 1.5.1"])
      s.add_dependency(%q<yajl-ruby>, ["~> 0.8.2"])
      s.add_dependency(%q<builder>, ["< 4.0.0", ">= 2.1.2"])
      s.add_dependency(%q<addressable>, ["~> 2.2.5"])
      s.add_dependency(%q<will_paginate>, ["< 4.0.0", ">= 3.0.pre2"])
      s.add_dependency(%q<rspec>, ["~> 2.3.0"])
      s.add_dependency(%q<webmock>, ["~> 1.4.0"])
      s.add_dependency(%q<jeweler>, ["~> 1.5.2"])
      s.add_dependency(%q<typhoeus>, ["~> 0.2.0"])
      s.add_dependency(%q<ci_reporter>, ["~> 1.6.3"])
      s.add_dependency(%q<rcov>, ["~> 0.9.9"])
    end
  else
    s.add_dependency(%q<flexmls_api>, [">= 0"])
    s.add_dependency(%q<curb>, ["~> 0.7.15"])
    s.add_dependency(%q<faraday>, ["~> 0.6.1"])
    s.add_dependency(%q<faraday_middleware>, ["~> 0.6.3"])
    s.add_dependency(%q<multi_json>, ["~> 1.0.0"])
    s.add_dependency(%q<json>, ["~> 1.5.1"])
    s.add_dependency(%q<yajl-ruby>, ["~> 0.8.2"])
    s.add_dependency(%q<builder>, ["< 4.0.0", ">= 2.1.2"])
    s.add_dependency(%q<addressable>, ["~> 2.2.5"])
    s.add_dependency(%q<will_paginate>, ["< 4.0.0", ">= 3.0.pre2"])
    s.add_dependency(%q<rspec>, ["~> 2.3.0"])
    s.add_dependency(%q<webmock>, ["~> 1.4.0"])
    s.add_dependency(%q<jeweler>, ["~> 1.5.2"])
    s.add_dependency(%q<typhoeus>, ["~> 0.2.0"])
    s.add_dependency(%q<ci_reporter>, ["~> 1.6.3"])
    s.add_dependency(%q<rcov>, ["~> 0.9.9"])
  end
end

