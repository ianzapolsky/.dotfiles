export PATH=/usr/local/bin:$PATH

# add eb, the AWS Beanstalk command line tool
export PATH=$PATH:/usr/local/Library/AWS-ElasticBeanstalk-CLI-2.5.1/eb/macosx/python2.7 

# Add zork folder to PATH to enable the running of jzip
export PATH=$PATH:/Users/ianzapolsky/Interactive\ Fiction/zork/

# Setting PATH for Python 2.7
export PATH=$PATH:/Library/Frameworks/Python.framework/Versions/2.7/bin

# Set PATH to include /bin directory that ships with Postgres.app
export PATH=$PATH:/Applications/Postgres.app/Contents/MacOS/bin

# Set PATH to include Ruby gem
export PATH=$PATH:/System/Library/Frameworks/Ruby.framework/Versions/1.8/usr/bin/gem

# Set SECRET_KEY variable for Django development
export SOME_SECRET_KEY='bqe5_j^+aw5^&amp;#8(tiafpd3yef#2yt!9td^!7k%ax@%+&amp;)86j8'

# Add RVM to PATH for scripting
export PATH=$PATH:$HOME/.rvm/bin 

# Add scripts in .dotfiles
export PATH=$PATH:~/.dotfiles/bin

# set prompt
source ~/.prompt

alias awssh='ssh -i ~/.ssh/awskey.pem ec2-user@ec2-54-200-184-94.us-west-2.compute.amazonaws.com'

alias microssh='ssh -i ~/.ssh/awskey.pem ec2-user@ec2-54-201-89-156.us-west-2.compute.amazonaws.com'

alias cussh='ssh iaz2105@clic.cs.columbia.edu'

alias beet='sudo beet'

# add sublime to path
#ln -s /Applications/Sublime\ Text\ 2.app/Contents/SharedSupport/bin/subl /usr/local/bin/subl

