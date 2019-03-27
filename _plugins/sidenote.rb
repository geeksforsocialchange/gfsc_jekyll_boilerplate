module Jekyll
  class SidenoteBlock < Liquid::Block
    def render(context)
      text = super
      "<div class='sidenote' markdown='1'>#{text}</div>"
    end
  end
end

Liquid::Template.register_tag('sidenote', Jekyll::SidenoteBlock)
