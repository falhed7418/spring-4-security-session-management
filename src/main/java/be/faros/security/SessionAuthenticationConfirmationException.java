package be.faros.security;

import org.springframework.security.web.authentication.session.SessionAuthenticationException;

public class SessionAuthenticationConfirmationException extends SessionAuthenticationException {

	public SessionAuthenticationConfirmationException(String msg) {
		super(msg);
	}
}
