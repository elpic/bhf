module Bhf
  module BhfHelper
    

    def new_t(platform)
      t("bhf.helpers.entry.models.#{platform.model_name}.new", :platform_name => platform.title.singularize, :default => t('bhf.helpers.entry.new'))
    end

    def edit_t(platform)
      t("bhf.helpers.entry.models.#{platform.model_name}.edit", :platform_name => platform.title.singularize, :default => t('bhf.helpers.entry.edit'))
    end

    def delete_t(platform)
      t("bhf.helpers.entry.models.#{platform.model_name}.delete", :platform_name => platform.title.singularize, :default => t('bhf.helpers.entry.delete'))
    end

    def current_path(overwrite = {})
      url_for params.merge(overwrite.merge(:only_path => true))
    end

  end
end