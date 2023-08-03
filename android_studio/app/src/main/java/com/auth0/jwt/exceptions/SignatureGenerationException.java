package com.auth0.jwt.exceptions;

import com.auth0.jwt.algorithms.a;

/* loaded from: classes.dex */
public class SignatureGenerationException extends JWTCreationException {
    public SignatureGenerationException(a aVar, Throwable th) {
        super("The Token's Signature couldn't be generated when signing using the Algorithm: " + aVar, th);
    }
}
