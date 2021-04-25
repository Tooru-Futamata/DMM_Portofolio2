require 'rails_helper'

describe 'ログイン前のテスト' do
  describe 'トップ画面のテスト' do
    before do
      visit root_path
    end

    context '表示内容の確認' do
      it 'URLが正しい' do
        expect(current_path).to eq root_path
      end
    end

    context 'ログイン前: ヘッダーの表示内容' do
      it 'Sign upのリンクが表示される' do
        expect(page).to have_link "", href: new_user_registration_path
      end
      it 'Log inのリンクが表示される' do
        expect(page).to have_link "", href: new_user_session_path
      end
      it 'Coursesのリンクが表示される' do
        expect(page).to have_link "", href: public_public_golfcourses_path
      end
      it 'Rankingのリンクが表示される' do
        expect(page).to have_link "", href: public_rankings_path
      end
    end
  end

  describe '新規登録のテスト' do
    before do
      visit new_user_registration_path
    end

    context '表示内容の確認' do
      it 'URLが正しい' do
        expect(current_path).to eq new_user_registration_path
      end
      it '新規登録と表示される' do
        expect(page).to have_content '新規登録'
      end
      it '名前フォームが表示される' do
        expect(page).to have_field '名前'
      end
      it 'ユーザーIDフォームが表示される' do
        expect(page).to have_field 'ユーザーID'
      end
      it 'メールアドレスフォームが表示される' do
        expect(page).to have_field 'Email'
      end
      it 'パスワードフォームが表示される' do
        expect(page).to have_field 'Password'
      end
      it 'パスワード確認用フォームが表示される' do
        expect(page).to have_field 'Password confirmation'
      end
      it '新規登録するボタンが表示される' do
        expect(page).to have_button 'Sign up'
      end
    end

    context '新規登録成功のテスト' do
      before do
        fill_in '名前', with: Faker::Lorem.characters(number: 5)
        fill_in 'ユーザーID', with: Faker::Lorem.characters(number:10)
        fill_in 'Email', with: Faker::Internet.email
        fill_in 'Password', with: 'password'
        fill_in 'Password confirmation', with: 'password'
      end

      it '新規登録が成功する' do
        expect { click_button 'Sign up' }.to change(User.all, :count).by(1)
      end
      it '新規登録後のリダイレクト先が、新規登録できた会員の会員詳細画面になっている' do
        click_button 'Sign up'
        expect(current_path).to eq('/users/' + User.last.id.to_s)
      end
    end

    context '新規登録失敗後のテスト' do
      before do
        fill_in '名前', with: ""
        fill_in 'ユーザーID', with: ""
        fill_in 'Email', with: ""
        fill_in 'Password', with: ""
        fill_in 'Password confirmation', with: ''
      end
    end
  end
end

describe 'ログインのテスト' do
  let(:user) { create(:user) }

  before do
    visit new_user_session_path
  end

  context '表示内容の確認' do
    it 'URLが正しい' do
      expect(current_path).to eq new_user_session_path
    end
    it 'ログインと表示される' do
      expect(page).to have_content 'ログイン'
    end
    it 'メールアドレスのフォームが表示される' do
      expect(page).to have_field 'Email'
    end
    it 'パスワードフォームが表示される' do
      expect(page).to have_field 'Password'
    end
    it 'ログインボタンが表示される' do
      expect(page).to have_button 'Log in'
    end
  end

  describe 'ログイン後のテスト' do
    context 'ログイン成功後のテスト' do
      before do
        fill_in 'Email', with: user.email
        fill_in 'Password', with: user.password
      end

      it 'ログイン後のリダイレクト先が、ログインできた会員の会員詳細画面になっている' do
        click_button 'Log in'
        expect(current_path).to eq public_user_path(user)
      end
    end

    context 'ログイン失敗後のテスト' do
      before do
        fill_in 'Email', with: ""
        fill_in 'Password', with: ""
      end

      it 'ログイン失敗後のリダイレクト先が、ログイン画面である' do
        click_button 'Log in'
        expect(current_path).to eq new_user_session_path
      end
    end
  end
end

