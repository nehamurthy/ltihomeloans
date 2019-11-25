package homeloan.service;


	
	import javax.mail.MessagingException;
	import javax.mail.internet.MimeMessage;

	import org.springframework.beans.factory.annotation.Autowired;
	//import org.springframework.mail.MailSender;
	//import org.springframework.mail.SimpleMailMessage;
	import org.springframework.mail.javamail.JavaMailSender;
	import org.springframework.mail.javamail.MimeMessageHelper;
	//import org.springframework.stereotype.Component;
	import org.springframework.stereotype.Service;

import homeloan.dao.HomeLoanDaoIntf;
import homeloan.model.Users;



	@Service
	public class MailService {
		@Autowired
		private JavaMailSender javamailsender;
		
		@Autowired
		public HomeLoanDaoIntf homeLoanDaoIntf;
		
		public void send (String to,String subject,String body) throws MessagingException{
			
			Users u = homeLoanDaoIntf.send(to);
			MimeMessage message= javamailsender.createMimeMessage();
			MimeMessageHelper helper;
			helper=new MimeMessageHelper(message,true);
			helper.setSubject(subject);
			helper.setTo(to);
			helper.setText(body+u.getPassword(),true);
			javamailsender.send(message);
			
		}
		

			
					
			
		}



