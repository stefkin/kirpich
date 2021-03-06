module Kirpich
  class Text
    APPEAL_REGEX = /(паштет|пашок|пашка|кирпич|паш|пацантре|народ|кто-нибудь|kirpich),?\s*/i
    FAP_REGEX = /(сиськи|сисяндры|сисяндра|титьки|письки|секс|эротика|титьк|грудь|сисек|сиська|сиськи|сиську|сосок|жоп|задниц|попец|голую|телку|сисечки|голая|обнаженная|буфер)/i

    attr_reader :clean, :original

    def initialize(text)
      @original = text
      @clean = text.downcase.gsub(APPEAL_REGEX, '')
    end

    def question?
      @original =~ /\?$/
    end

    def appeal?
      @original =~ APPEAL_REGEX
    end

    def fap?
      @original =~ FAP_REGEX
    end
  end
end
