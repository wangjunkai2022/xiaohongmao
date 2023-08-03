package com.auth0.jwt.interfaces;

import java.security.interfaces.RSAPrivateKey;
import java.security.interfaces.RSAPublicKey;

/* compiled from: RSAKeyProvider.java */
/* loaded from: classes.dex */
public interface j extends h<RSAPublicKey, RSAPrivateKey> {
    @Override // com.auth0.jwt.interfaces.h
    /* synthetic */ RSAPrivateKey a();

    @Override // com.auth0.jwt.interfaces.h
    /* synthetic */ RSAPublicKey b(String str);

    @Override // com.auth0.jwt.interfaces.h
    /* synthetic */ String c();
}
