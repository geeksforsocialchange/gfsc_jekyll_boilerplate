module Jekyll
  class SidenoteBlock < Liquid::Block
    def render(context)
      text = super
      "<div class='sidenote' markdown='1'>#{text}</div>"
    end
  end
end

module Jekyll
  class RefTag < Liquid::Tag
    def render(context)
      text = super
      "<sup>#{text}</sup>"
    end
  end
end

Liquid::Template.register_tag('sidenote', Jekyll::SidenoteBlock)
Liquid::Template.register_tag('ref', Jekyll::RefTag)
