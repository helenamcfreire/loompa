class NotifierController < ActionMailer::Base

  def sendEmail(user)
    mail(:from => user.email,
         :to => 'contato@loompa.me',
         :subject => 'Contato pelo http://www.loompa.me',
         :content_type => 'text/html',
         :body => user.mensagem
    )
  end

end