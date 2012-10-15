require 'spec_helper'

describe User do

  describe 'validations' do

    it 'should pass valid date' do
      @attr = {
          "name" => "foo",
          "birthday" => "2001-02-03",
      }
      @user = User.new(@attr)
      @user.should be_valid
    end

    it 'should disable not valid date' do
      @attr = {
          "name" => "foo",
          "birthday" => "foo",
      }
      @user = User.new(@attr)
      @user.should_not be_valid
    end

  end

end
