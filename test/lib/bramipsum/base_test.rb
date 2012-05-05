require_relative '../../test_helper'

describe Bramipsum::Base do

  subject { Bramipsum::Base }

  describe "reading from file" do

    it "must have a source" do
      subject.must_respond_to(:source)
    end

    it "must have the dracula file as a source" do
      subject.source.must_be_instance_of(String)
    end

  end

  describe "splitting into lines" do

    it "must correctly split the file into lines" do
      subject.processed_source.must_be_instance_of(Array)
      subject.processed_source.wont_include(nil)
    end

  end

end
