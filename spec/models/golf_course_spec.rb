require 'rails_helper'

RSpec.describe GolfCourse, type: :model do
  pending "add some examples to (or delete) #{__FILE__}"

  describe 'バリデーションのテスト' do
    subject { golf_course.valid? }

    let!(:other_golf_course) { create(:golf_course) }
    let(:golf_course) { build(:golf_course) }

    context 'nameカラム' do
      it "空欄でないこと" do
        golf_course.name = ""
        is_expected.to eq false
      end
      it '一意性であること' do
        golf_course.name = other_golf_course.name
        is_expected.to eq false
      end
    end

    context 'region_idカラム' do
      it "空欄でないこと" do
        golf_course.region_id = ""
        is_expected.to eq false
      end
    end

    context 'prefecture_idカラム' do
      it "空欄でないこと" do
        golf_course.prefecture_id = ""
        is_expected.to eq false
      end
    end
    context 'addressカラム' do
      it "空欄でないこと" do
        golf_course.address = ""
        is_expected.to eq false
      end
    end
    context 'image_idカラム' do
      it "空欄でないこと" do
        golf_course.image_id = ""
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
