package com.auth0.jwt.exceptions;

/* loaded from: classes.dex */
public class JWTDecodeException extends JWTVerificationException {
    public JWTDecodeException(String str) {
        this(str, null);
    }

    public JWTDecodeException(String str, Throwable th) {
        super(str, th);
    }
}
