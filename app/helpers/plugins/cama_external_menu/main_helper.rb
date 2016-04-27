module Plugins::CamaExternalMenu::MainHelper
  def self.included(klass)
    # klass.helper_method [:my_helper_method] rescue "" # here your methods accessible from views
  end

  # here all actions on going to active
  # you can run sql commands like this:
  # results = ActiveRecord::Base.connection.execute(query);
  # plugin: plugin model
  def cama_external_menu_on_active(plugin)
  end

  # here all actions on going to inactive
  # plugin: plugin model
  def cama_external_menu_on_inactive(plugin)
  end

  def cama_external_menu_form(args)
    item_roles = args[:menu_item].get_option('user_roles', ['public_menu'])
    args[:html] << render(partial: plugin_view('admin/form'), locals: {args: args, item_roles: item_roles})
  end

  def cama_external_menu_on_external_menu(args)
    roles = args[:menu_item].get_option('user_roles', ['public_menu'])
    return if roles.include?('public_menu')
    args[:parsed_menu] = false if !current_user.present? || !roles.include?(current_user.role)
  end

end
