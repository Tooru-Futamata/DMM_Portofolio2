require 'rails_helper'

RSpec.describe Region, type: :model do
  describe 'アソシエーションのテスト' do
    context 'golf_courseモデルとの関係' do
      it '1:Nとなっている' do
        expect(Region.reflect_on_association(:golf_courses).macro).to eq :has_many
      end
    end
  end
end
