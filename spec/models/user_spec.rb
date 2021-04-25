require 'rails_helper'

RSpec.describe 'userモデルのテスト', type: :model do
  describe 'バリデーションのテスト' do
    subject { user.valid? }

    let!(:other_user) { create(:user) }
    let(:user) { build(:user) }

    context 'nameカラム' do
      it "空欄でないこと" do
        user.name = ""
        is_expected.to eq false
      end
      it '2文字以上であること(1文字は不可)' do
        user.name = Faker::Lorem.characters(number: 1)
        is_expected.to eq false
      end
      it '2文字以上であること(2文字は可)' do
        user.name = Faker::Lorem.characters(number: 2)
        is_expected.to eq true
      end
      it '10文字以下であること(11文字は不可)' do
        user.name = Faker::Lorem.characters(number: 11)
        is_expected.to eq false
      end
      it '10文字以下であること(10文字は可)' do
        user.name = Faker::Lorem.characters(number: 10)
        is_expected.to eq true
      end
    end

    context 'introductionカラム' do
      it '20文字以下であること(21文字は不可)' do
        user.introduction = Faker::Lorem.characters(number: 21)
        is_expected.to eq false
      end
      it '20文字以下であること(20文字は可)' do
        user.introduction = Faker::Lorem.characters(number: 20)
        is_expected.to eq true
      end
    end

    context 'name_idカラム' do
      it "空欄でないこと" do
        user.name_id = ""
        is_expected.to eq false
      end
      it '2文字以上であること(1文字は不可)' do
        user.name_id = Faker::Lorem.characters(number: 1)
        is_expected.to eq false
      end
      it '2文字以上であること(2文字は可)' do
        user.name_id = Faker::Lorem.characters(number: 2)
        is_expected.to eq true
      end
      it '10文字以下であること(11文字は不可)' do
        user.name_id = Faker::Lorem.characters(number: 11)
        is_expected.to eq false
      end
      it '10文字以下であること(10文字は可)' do
        user.name_id = Faker::Lorem.characters(number: 10)
        is_expected.to eq true
      end
      it '一意性であること' do
        user.name_id = other_user.name_id
        is_expected.to eq false
      end
    end
  end
end

describe 'アソシエーションのテスト' do
  context 'postモデルとの関係' do
    it '1:Nとなっている' do
      expect(User.reflect_on_association(:posts).macro).to eq :has_many
    end
  end

  context 'likeモデルとの関係' do
    it '1:Nとなっている' do
      expect(User.reflect_on_association(:likes).macro).to eq :has_many
    end
  end

  context 'relationshipモデルとの関係' do
    it '1:Nとなっている' do
      expect(User.reflect_on_association(:relationships).macro).to eq :has_many
    end
  end

  context 'reverse_of_relationshipモデルとの関係' do
    it '1:Nとなっている' do
      expect(User.reflect_on_association(:reverse_of_relationships).macro).to eq :has_many
    end
  end

  context 'followingsモデルとの関係' do
    it '1:Nとなっている' do
      expect(User.reflect_on_association(:followings).macro).to eq :has_many
    end
  end

  context 'followersモデルとの関係' do
    it '1:Nとなっている' do
      expect(User.reflect_on_association(:followers).macro).to eq :has_many
    end
  end
end
