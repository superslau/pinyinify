# spec/pinyinify/transliterate/transliterate_spec.rb
# $Id$

# Require the spec helper relative to this file
require File.join(File.dirname(__FILE__), %w[ .. .. spec_helper])

# No need to type Pinyinify:: before each call
include Pinyinify

describe Transliterate do
  setup do
      @t = Transliterate.new
  end
      
  # All of our specs for Transliterate will go in here
  it "should be instantiated without any arguments" do
    lambda { Transliterate.new() }.should_not raise_error
    lambda { Transliterate.new( "moo" )}.should raise_error(ArgumentError)
  end
  
  it "should accept a string on a transliterate method, and return a string" do
    @t.transliterate("text").should be_instance_of(String)
  end
  
  it "should accept a non chinese string and return the same value back " do
    @t.transliterate("text test english").should == "text test english"
  end  
  
  it "should accept a chinese character and return the correct transliterated string" do
    @t.transliterate("周").should be_instance_of(String)
    @t.transliterate("周").should == "zhou"
  end
  
  it "should accept a chinese phrase and return the correct transliterated string" do
    @t.transliterate("最長的電影").should be_instance_of(String)
    @t.transliterate("最長的電影").should == "zui chang de dian ying" #this transliteration came from itunes :)
    @t.transliterate("东风破").should == "dong feng po" #this transliteration also came from itunes    
  end
  
  it "should accept a mixed chinese and english phrase and return the correct transliterated string" do

    @t.transliterate("最長的電影is a good song").should == "zui chang de dian ying is a good song" 
  end
  
  it "should load the hanzi data in from the data file on instantiation" do
    IO.should_receive(:read).and_return(
      "--- \nU742B: BENG3\nU3E61: XUAN2 XUAN4"
    )
    
    t = Transliterate.new
    t.characters.should be_a_kind_of(Hash)
    t.characters.keys.size.should == 2    
  end
  
  
end

# EOF