package com.auth0.jwt.interfaces;

import java.security.PrivateKey;
import java.security.PublicKey;

/* compiled from: KeyProvider.java */
/* loaded from: classes.dex */
interface h<U extends PublicKey, R extends PrivateKey> {
    R a();

    U b(String str);

    String c();
}
