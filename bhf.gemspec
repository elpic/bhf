# Generated by jeweler
# DO NOT EDIT THIS FILE DIRECTLY
# Instead, edit Jeweler::Tasks in Rakefile, and run 'rake gemspec'
# -*- encoding: utf-8 -*-

Gem::Specification.new do |s|
  s.name = %q{bhf}
  s.version = "0.3.9"

  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.authors = ["Anton Pawlik"]
  s.date = %q{2011-08-03}
  s.description = %q{Gets you there in time}
  s.email = %q{anton.pawlik@gmail.com}
  s.extra_rdoc_files = [
    "README.md"
  ]
  s.files = [
    "app/controllers/bhf/application_controller.rb",
    "app/controllers/bhf/entries_controller.rb",
    "app/controllers/bhf/pages_controller.rb",
    "app/helpers/bhf/application_helper.rb",
    "app/helpers/bhf/entries_helper.rb",
    "app/helpers/bhf/pages_helper.rb",
    "app/views/bhf/_footer.haml",
    "app/views/bhf/_user.haml",
    "app/views/bhf/application/index.haml",
    "app/views/bhf/entries/_form.haml",
    "app/views/bhf/entries/_validation_errors.haml",
    "app/views/bhf/entries/edit.haml",
    "app/views/bhf/entries/form/belongs_to/_account_scope.haml",
    "app/views/bhf/entries/form/belongs_to/_radio.haml",
    "app/views/bhf/entries/form/belongs_to/_select.haml",
    "app/views/bhf/entries/form/belongs_to/_static.haml",
    "app/views/bhf/entries/form/column/_boolean.haml",
    "app/views/bhf/entries/form/column/_date.haml",
    "app/views/bhf/entries/form/column/_file.haml",
    "app/views/bhf/entries/form/column/_markdown.haml",
    "app/views/bhf/entries/form/column/_multiple_fields.haml",
    "app/views/bhf/entries/form/column/_number.haml",
    "app/views/bhf/entries/form/column/_password.haml",
    "app/views/bhf/entries/form/column/_static.haml",
    "app/views/bhf/entries/form/column/_string.haml",
    "app/views/bhf/entries/form/column/_text.haml",
    "app/views/bhf/entries/form/column/_wysiwyg.haml",
    "app/views/bhf/entries/form/has_and_belongs_to_many/_account_scope.haml",
    "app/views/bhf/entries/form/has_and_belongs_to_many/_check_box.haml",
    "app/views/bhf/entries/form/has_and_belongs_to_many/_static.haml",
    "app/views/bhf/entries/form/has_many/_static.haml",
    "app/views/bhf/entries/form/has_one/_account_scope.haml",
    "app/views/bhf/entries/form/has_one/_static.haml",
    "app/views/bhf/entries/new.haml",
    "app/views/bhf/helper/_field_errors.haml",
    "app/views/bhf/helper/_flash.haml",
    "app/views/bhf/helper/_frontend_edit.haml",
    "app/views/bhf/helper/_info.haml",
    "app/views/bhf/helper/_node.haml",
    "app/views/bhf/helper/_reflection_node.haml",
    "app/views/bhf/pages/_platform.haml",
    "app/views/bhf/pages/_search.haml",
    "app/views/bhf/pages/macro/belongs_to/_default.haml",
    "app/views/bhf/pages/macro/column/_boolean.haml",
    "app/views/bhf/pages/macro/column/_date.haml",
    "app/views/bhf/pages/macro/column/_number.haml",
    "app/views/bhf/pages/macro/column/_primary_key.haml",
    "app/views/bhf/pages/macro/column/_string.haml",
    "app/views/bhf/pages/macro/column/_text.haml",
    "app/views/bhf/pages/macro/has_and_belongs_to_many/_default.haml",
    "app/views/bhf/pages/macro/has_many/_default.haml",
    "app/views/bhf/pages/macro/has_one/_default.haml",
    "app/views/bhf/pages/show.haml",
    "app/views/layouts/bhf/application.haml",
    "app/views/layouts/bhf/quick_edit.haml",
    "config/locales/de.yml",
    "config/locales/en.yml",
    "config/routes.rb",
    "lib/bhf.rb",
    "lib/bhf/active_record/active_record.rb",
    "lib/bhf/active_record/upload.rb",
    "lib/bhf/data.rb",
    "lib/bhf/form.rb",
    "lib/bhf/i18n.rb",
    "lib/bhf/pagination.rb",
    "lib/bhf/platform.rb",
    "lib/bhf/settings.rb",
    "lib/bhf/view_helpers.rb",
    "lib/engine.rb",
    "lib/rails/generators/bhf/templates/initializer.rb",
    "public/images/bhf/ajax_loader.gif",
    "public/images/bhf/bg.png",
    "public/images/bhf/button_bg.png",
    "public/images/bhf/button_bg_2.png",
    "public/images/bhf/button_bg_a.png",
    "public/images/bhf/icon_delete.png",
    "public/images/bhf/icon_delete_a.png",
    "public/images/bhf/icon_delete_h.png",
    "public/images/bhf/icon_drag.png",
    "public/images/bhf/icon_drag_a.png",
    "public/images/bhf/icon_drag_h.png",
    "public/images/bhf/icon_edit.png",
    "public/images/bhf/icon_edit_a.png",
    "public/images/bhf/icon_edit_h.png",
    "public/images/bhf/mooeditable-toolbarbuttons-tango.png",
    "public/images/bhf/small_ajax_loader.gif",
    "public/images/bhf/small_ajax_loader_h.gif",
    "public/images/bhf/wmd-buttons.png",
    "public/images/logo_bhf.png",
    "public/javascripts/bhf.js",
    "public/javascripts/bhf_includes/showdown.js",
    "public/javascripts/bhf_includes/wmd.js",
    "public/stylesheets/bhf.css"
  ]
  s.homepage = %q{http://github.com/antpaw/bahnhof}
  s.require_paths = ["lib"]
  s.rubyforge_project = %q{nowarning}
  s.rubygems_version = %q{1.6.2}
  s.summary = %q{Agnostic rails backend}

  if s.respond_to? :specification_version then
    s.specification_version = 3

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_runtime_dependency(%q<rails>, ["> 3.0.0"])
      s.add_runtime_dependency(%q<haml>, ["> 3.0.0"])
      s.add_runtime_dependency(%q<will_paginate>, ["~> 3.0.pre2"])
    else
      s.add_dependency(%q<rails>, ["> 3.0.0"])
      s.add_dependency(%q<haml>, ["> 3.0.0"])
      s.add_dependency(%q<will_paginate>, ["~> 3.0.pre2"])
    end
  else
    s.add_dependency(%q<rails>, ["> 3.0.0"])
    s.add_dependency(%q<haml>, ["> 3.0.0"])
    s.add_dependency(%q<will_paginate>, ["~> 3.0.pre2"])
  end
end

