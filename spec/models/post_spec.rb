require 'rails_helper'

RSpec.describe Post, type: :model do
  describe 'バリデーションのテスト' do
    subject { post.valid? }

    let(:post) { build(:post) }

    context 'rateカラム' do
      it "空欄でないこと" do
        post.rate = ""
        is_expected.to eq false
      end
    end

    context 'contentカラム' do
      it '200文字以下であること(201文字は不可)' do
        post.content = Faker::Lorem.characters(number: 201)
        is_expected.to eq false
      end
      # it '200文字以下であること(200文字は可)' do
      #   post.content = Faker::Lorem.characters(number: 200)
      #   is_expected.to eq true
      # end
    end
  end
  describe 'アソシエーションのテスト' do
    context 'userモデルとの関係' do
      it 'N:1となっている' do
        expect(Post.reflect_on_association(:user).macro).to eq :belongs_to
      end
    end
    context 'golf_courseモデルとの関係' do
      it 'N:1となっている' do
        expect(Post.reflect_on_association(:golf_course).macro).to eq :belongs_to
      end
    end
  end

end
