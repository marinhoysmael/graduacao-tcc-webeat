package br.com.eatweb.webRequest;

import java.util.Properties;

import javax.mail.Address;
import javax.mail.Message;
import javax.mail.MessagingException;
import javax.mail.PasswordAuthentication;
import javax.mail.Session;
import javax.mail.Transport;
import javax.mail.internet.InternetAddress;
import javax.mail.internet.MimeMessage;

public class Email {

	public static void enviarEmail(String enderecoEmail, String assunto,
			String mensagem) {
		Properties props = new Properties();
		/** Parâmetros de conexão com servidor Gmail */
		props.put("mail.smtp.host", "smtp.gmail.com");
		props.put("mail.smtp.socketFactory.port", "465");
		props.put("mail.smtp.socketFactory.class", "javax.net.ssl.SSLSocketFactory");
		props.put("mail.smtp.auth", "true");
		props.put("mail.smtp.port", "465");

		Session session = Session.getDefaultInstance(props,
				new javax.mail.Authenticator() {
					protected PasswordAuthentication getPasswordAuthentication() {
						return new PasswordAuthentication(
								"personalsoftwareinc@gmail.com",
								"personal@software");
					}
				});

		/** Ativa Debug para sessão */
		session.setDebug(true);

		try {
			Message message = new MimeMessage(session);
			message.setFrom(new InternetAddress("personalsoftwareinc@gmail.com")); // Remetente

			Address[] toUser = InternetAddress // Destinatário(s)
					.parse(enderecoEmail);

			message.setRecipients(Message.RecipientType.TO, toUser);
			message.setSubject(assunto);// Assunto
			message.setContent(mensagem, "text/html");
			/** Método para enviar a mensagem criada */
			Transport.send(message);

		} catch (MessagingException e) {
			throw new RuntimeException(e);
		}

	}
}
