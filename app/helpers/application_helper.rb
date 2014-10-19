module ApplicationHelper

  def bootstrap_css_class_for_flash(flash_type)
    case flash_type.to_sym
    when :notice
      'alert-success'
    when :error
      'alert-danger'
    end
  end
end
