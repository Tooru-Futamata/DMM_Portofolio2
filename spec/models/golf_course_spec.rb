require 'rails_helper'

RSpec.describe GolfCourse, type: :model do
  describe 'バリデーションのテスト' do
    subject { golf_course.valid? }

    let(:golf_course) { build(:golf_course) }
    let(:region) { build(:region) }
    let(:prefecture) { build(:prefecture) }
    let!(:other_golf_course) { build(:golf_course) }

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
      expect(GolfCourse.reflect_on_association(:posts).macro).to eq :has_many
    end
  end

  context 'likeモデルとの関係' do
    it '1:Nとなっている' do
      expect(GolfCourse.reflect_on_association(:likes).macro).to eq :has_many
    end
  end

  context 'regionモデルとの関係' do
    it 'N:1となっている' do
      expect(GolfCourse.reflect_on_association(:region).macro).to eq :belongs_to
    end
  end

  context 'prefectureモデルとの関係' do
    it 'N:1となっている' do
      expect(GolfCourse.reflect_on_association(:prefecture).macro).to eq :belongs_to
    end
  end
end
