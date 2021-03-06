from django.db import models
from django.contrib.auth.models import User

# Create your models here.

class QuestionManager(models.Manager):

	def new(self):
		return self.order_by('-added_at')
	def popular(self):
		return self.order_by('-rating')
   
class Question(models.Model):
	title=models.CharField(max_length=255)
	text=models.TextField()
	added_at=models.DateTimeField(auto_now_add=True)
	rating=models.IntegerField(default=0)
	author=models.ForeignKey(User, null=False, on_delete=models.DO_NOTHING)
	likes=models.ManyToManyField(User, related_name='question_like_user')

	objects = QuestionManager()


class Answer (models.Model):
	
	text=models.TextField()
	added_at=models.DateTimeField(auto_now_add=True)
	question=models.OneToOneField(Question, on_delete=models.DO_NOTHING)
	author=models.ForeignKey(User, null=False, on_delete=models.DO_NOTHING)

