require "cangjie"

unless String.method_defined?(:has_chinese?)
  class String
    def has_chinese?
      Cangjie.has_chinese?(self)
    end
  end
end

unless String.method_defined?(:all_chinese?)
  class String
    def all_chinese?
      Cangjie.all_chinese?(self)
    end
  end
end
