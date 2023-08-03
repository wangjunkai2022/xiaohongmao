package com.auth0.jwt.interfaces;

import java.security.interfaces.ECPrivateKey;
import java.security.interfaces.ECPublicKey;

/* compiled from: ECDSAKeyProvider.java */
/* loaded from: classes.dex */
public interface d extends h<ECPublicKey, ECPrivateKey> {
    @Override // com.auth0.jwt.interfaces.h
    /* synthetic */ ECPrivateKey a();

    @Override // com.auth0.jwt.interfaces.h
    /* synthetic */ ECPublicKey b(String str);

    @Override // com.auth0.jwt.interfaces.h
    /* synthetic */ String c();
}
