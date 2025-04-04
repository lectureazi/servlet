package com.grepp.servlet.app.auth;

import com.grepp.servlet.app.code.Grade;
import java.time.LocalDateTime;

public record Principal(
    String userId,
    Grade grade,
    LocalDateTime loginTime
) {
    
    public static final Principal ANONYMOUS = new Principal(
        "anonymous", Grade.ANONYMOUS, LocalDateTime.now()
    );
}
