package com.auth0.jwt.exceptions;

/* loaded from: classes.dex */
public class JWTVerificationException extends RuntimeException {
    public JWTVerificationException(String str) {
        this(str, null);
    }

    public JWTVerificationException(String str, Throwable th) {
        super(str, th);
    }
}
