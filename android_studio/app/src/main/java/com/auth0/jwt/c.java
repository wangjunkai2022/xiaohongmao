package com.auth0.jwt;

import com.auth0.jwt.d;
import com.auth0.jwt.exceptions.JWTDecodeException;
import com.auth0.jwt.interfaces.k;

/* compiled from: JWT.java */
/* loaded from: classes.dex */
public class c {

    /* renamed from: a  reason: collision with root package name */
    private final com.auth0.jwt.impl.d f7052a = new com.auth0.jwt.impl.d();

    public static d.b a() {
        return d.b();
    }

    public static com.auth0.jwt.interfaces.c b(String str) throws JWTDecodeException {
        return new e(str);
    }

    public static k d(com.auth0.jwt.algorithms.a aVar) {
        return f.l(aVar);
    }

    public com.auth0.jwt.interfaces.c c(String str) throws JWTDecodeException {
        return new e(this.f7052a, str);
    }
}
