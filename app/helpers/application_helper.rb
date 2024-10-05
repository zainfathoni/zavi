require_relative "tailwind_form_builder"

module ApplicationHelper
  def tailwind_form_with(**options, &block)
    options[:builder] ||= TailwindFormBuilder
    form_with(**options, &block)
  end
end
