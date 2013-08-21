require 'spec_helper'

describe Nerve::Test::Process do

  let(:command) { 'echo' }
  let(:options) { { :arguments => ['blah'] } }
  let(:process) { Nerve::Test::Process.new(command, options) }

  it "should start a process" do
    process.start
    process.wait
  end

  it "should stop a process" do
    process.start
    process.stop
  end

end

describe Nerve::Test::NerveProcess do

  let(:process) { Nerve::Test::NerveProcess.new }

  it "should start nerve" do
    process.start
  end

end