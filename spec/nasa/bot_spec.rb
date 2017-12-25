require 'spec_helper'

describe Nasa::Bot do
  def app
    Nasa::Bot.instance
  end

  subject { app }

  it_behaves_like 'a slack ruby bot'
end
