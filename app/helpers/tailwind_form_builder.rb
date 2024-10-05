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
    options[:class] ||= "cursor-pointer rounded bg-indigo-600 px-2 py-1 text-sm font-semibold text-white shadow-sm hover:bg-indigo-500 focus-visible:outline focus-visible:outline-2 focus-visible:outline-offset-2 focus-visible:outline-indigo-600"
    super
  end
end
