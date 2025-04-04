package com.grepp.servlet.infra.exception;

public class AuthorizationException extends CommonException{
    
    public AuthorizationException(String message) {
        super(message);
    }
    
    public AuthorizationException(String message, Throwable cause) {
        super(message, cause);
    }
}
