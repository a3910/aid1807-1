from django import forms

#声明ChoiceField要用到的数据
TOPIC_CHOICE = (
  ('1','好评'),
  ('2','中评'),
  ('3','差评'),
)

#表示评论内容的表单控件的class
#控件1-评论标题-文本框
#控件2-电子邮箱-邮件框
#控件3-评论内容-Textarea
#控件4-评论级别-下拉选择框
#控件5-是否保存-复选框
class RemarkForm(forms.Form):
  #评论标题
  # forms.CharField() - 文本框
  # label : 控件前的文本标签
  subject = forms.CharField(label='标题')
  #电子邮箱
  # forms.EmailField() - Email框
  # label : 控件前的文本标签
  email = forms.EmailField(label='邮箱')
  #品论内容
  # widget=Textarea : 将当前的单行文本框变为多行文本域
  message = forms.CharField(label='内容',widget=forms.Textarea)
  #品论级别
  # forms.ChoiceField() - 下拉列表框
  # choices : 表示当前下拉列表框中的数据,取值为元组或列表
  topic = forms.ChoiceField(label='级别',choices=TOPIC_CHOICE)
  #是否保存-复选框
  isSaved = forms.BooleanField(label='是否保存')







