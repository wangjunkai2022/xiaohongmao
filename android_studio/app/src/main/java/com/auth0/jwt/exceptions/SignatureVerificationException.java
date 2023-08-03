package com.auth0.jwt.exceptions;

import com.auth0.jwt.algorithms.a;

/* loaded from: classes.dex */
public class SignatureVerificationException extends JWTVerificationException {
    public SignatureVerificationException(a aVar) {
        this(aVar, null);
    }

    public SignatureVerificationException(a aVar, Throwable th) {
        super("The Token's Signature resulted invalid when verified using the Algorithm: " + aVar, th);
    }
}
