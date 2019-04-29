/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package mypackage;

import java.util.Properties;
import javax.mail.Message;
import javax.mail.PasswordAuthentication;
import javax.mail.Session;
import javax.mail.Transport;
import javax.mail.internet.InternetAddress;
import javax.mail.internet.MimeMessage;

/**
 *
 * @author vanaja
 */
public class sendmail {
    public void send(String to,String msg,String sub)
    {
    final String username = "nvss3163@gmail.com";//sender emailid
		final String password = "nvss01111";//sender password
 
		Properties props = new Properties();
		props.put("mail.smtp.auth", "true");
		props.put("mail.smtp.starttls.enable", "true");
		props.put("mail.smtp.host", "smtp.gmail.com");
		props.put("mail.smtp.port", "587");
 
		Session session1 = Session.getInstance(props,
		  new javax.mail.Authenticator() {
			protected PasswordAuthentication getPasswordAuthentication() {
				return new PasswordAuthentication(username, password);
			}
		  });
 
		try {
 
 
  
			Message message = new MimeMessage(session1);
			message.setFrom(new InternetAddress("nvss3163@gmail.com"));
			
			message.setRecipients(Message.RecipientType.TO,
				InternetAddress.parse(to));
			message.setSubject(sub);
			message.setText(msg);
 
			Transport.send(message);
 
			System.out.println("Done");
                        System.out.println(to);
                }
                catch(Exception e)
                {
                }
           
    }
}
