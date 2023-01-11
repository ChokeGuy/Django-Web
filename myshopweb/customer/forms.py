from django import forms
import re
from .models import User
from django.contrib.auth.forms import PasswordChangeForm
from django.core.exceptions import ObjectDoesNotExist
class RegistrationForm(forms.Form):
    username = forms.CharField(label="Tên đăng nhập", max_length=50)
    email = forms.EmailField(label="Email")
    password1 = forms.CharField(label="Mật khẩu", widget=forms.PasswordInput())
    password2 = forms.CharField(label="Nhập lại mật khẩu ", widget=forms.PasswordInput())

    # Hàm check mật khẩu
    def clean_pasword2(self):
        if 'password1' in self.cleaned_data:
            password1 = self.cleaned_data['password1']
            password2 = self.cleaned_data['password2']
        if password1 == password2 and password1:
            return password2
        raise forms.ValidationError("Mật khẩu không khớp")

    # Hàm check username
    def clean_username(self):
        username = self.cleaned_data['username']
        if not re.search(r'^\w+$',username):
            raise forms.ValidationError("Tên đăng nhập có chứa kí tự đặc biệt")
        try:
            User.objects.get(username = username)
        except ObjectDoesNotExist:
            return username
        raise forms.ValidationError("Tài khoản đã tồn tài")
    
    # Hàm lưu tài khoản đã đăng kí
    def save(self):
        User.objects.create_user(username=self.cleaned_data['username'],email=self.cleaned_data['email'],password=self.cleaned_data['password1'])