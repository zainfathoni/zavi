class TailwindFormBuilder < ActionView::Helpers::FormBuilder
  # TODO: Remove `<br>` tag from label
  def label(method, text = nil, options = {}, &block)
    options[:class] ||= "block text-sm font-medium leading-6 text-gray-900"
    super
  end

  def text_field(method, options = {})
    options[:class] ||= "block w-full rounded-md border-0 py-1.5 text-gray-900 shadow-sm ring-1 ring-inset ring-gray-300 placeholder:text-gray-400 focus:ring-2 focus:ring-inset focus:ring-indigo-600 sm:text-sm sm:leading-6"
    super
  end

  def text_area(method, options = {})
    options[:class] ||= "block w-full rounded-md border-0 py-1.5 text-gray-900 shadow-sm ring-1 ring-inset ring-gray-300 placeholder:text-gray-400 focus:ring-2 focus:ring-inset focus:ring-indigo-600 sm:text-sm sm:leading-6"
    super
  end

  def submit(options = {})
    options[:class] ||= "rounded-md bg-indigo-600 px-3 py-2 text-sm font-semibold text-white shadow-sm hover:bg-indigo-500 focus-visible:outline focus-visible:outline-2 focus-visible:outline-offset-2 focus-visible:outline-indigo-600"
    super
  end

  def tailwind_select(method, choices, options = {}, html_options = {})
    label_text = options.delete(:label) || method.to_s.humanize

    @template.content_tag(:div) do
      @template.concat(
        @template.label_tag(method, label_text, class: "block text-sm font-medium leading-6 text-gray-900")
      )
      @template.concat(
        select(method, choices, options, html_options.merge(
          class: "mt-2 block w-full rounded-md border-0 py-1.5 pl-3 pr-10 text-gray-900 ring-1 ring-inset ring-gray-300 focus:ring-2 focus:ring-indigo-600 sm:text-sm sm:leading-6 cursor-pointer"
        ))
      )
    end
  end
end
