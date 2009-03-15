module Pinyinify
  
  require 'yaml'
  require 'rubygems'  
  require 'active_support'  
  require 'active_support/multibyte'
  
  class Transliterate

    attr_reader :characters
    
    def transliterate(string)
      result = ""
      ActiveSupport::Multibyte::Chars.u_unpack(string).each_with_index {|c,i|
         lookup_result=lookup(c)
         lookup_result==nil ?  result=result+string.mb_chars[i] : result=result+lookup_result.strip+" " 
      }
      result.strip
    end
    
    def initialize
      
      hanzi_file_yml = File.join(File.dirname(__FILE__), %w[ .. .. .. data hanzi.yml ])
      @characters = YAML.load( IO.read(hanzi_file_yml) )

    end
    
    private
      
      def lookup(character_code) 
        ucode="U"+character_code.to_s(base=16).upcase      #convert into form U12345
        res = @characters[ucode]
        res==nil ? nil : res.split(" ").first.gsub(/[^-A-Z\s]/, "").downcase
      end      
  end
end