package com.auth0.jwt;

import com.auth0.jwt.exceptions.JWTDecodeException;
import com.auth0.jwt.interfaces.i;
import java.io.Serializable;
import java.util.Date;
import java.util.List;
import java.util.Map;
import shaded.org.apache.commons.codec.binary.m;

/* compiled from: JWTDecoder.java */
/* loaded from: classes.dex */
final class e implements com.auth0.jwt.interfaces.c, Serializable {

    /* renamed from: d  reason: collision with root package name */
    private static final long f7060d = 1873362438023312895L;

    /* renamed from: a  reason: collision with root package name */
    private final String[] f7061a;

    /* renamed from: b  reason: collision with root package name */
    private final com.auth0.jwt.interfaces.e f7062b;

    /* renamed from: c  reason: collision with root package name */
    private final i f7063c;

    /* JADX INFO: Access modifiers changed from: package-private */
    public e(String str) throws JWTDecodeException {
        this(new com.auth0.jwt.impl.d(), str);
    }

    @Override // com.auth0.jwt.interfaces.i
    public String a() {
        return this.f7063c.a();
    }

    @Override // com.auth0.jwt.interfaces.i
    public Date b() {
        return this.f7063c.b();
    }

    @Override // com.auth0.jwt.interfaces.i
    public Date c() {
        return this.f7063c.c();
    }

    @Override // com.auth0.jwt.interfaces.e
    public String d() {
        return this.f7062b.d();
    }

    @Override // com.auth0.jwt.interfaces.c
    public String e() {
        return this.f7061a[1];
    }

    @Override // com.auth0.jwt.interfaces.e
    public String getAlgorithm() {
        return this.f7062b.getAlgorithm();
    }

    @Override // com.auth0.jwt.interfaces.e
    public String getContentType() {
        return this.f7062b.getContentType();
    }

    @Override // com.auth0.jwt.interfaces.i
    public String getId() {
        return this.f7063c.getId();
    }

    @Override // com.auth0.jwt.interfaces.i
    public String getIssuer() {
        return this.f7063c.getIssuer();
    }

    @Override // com.auth0.jwt.interfaces.i
    public Date getNotBefore() {
        return this.f7063c.getNotBefore();
    }

    @Override // com.auth0.jwt.interfaces.c
    public String getSignature() {
        return this.f7061a[2];
    }

    @Override // com.auth0.jwt.interfaces.e
    public String getType() {
        return this.f7062b.getType();
    }

    @Override // com.auth0.jwt.interfaces.i
    public Map<String, com.auth0.jwt.interfaces.a> h() {
        return this.f7063c.h();
    }

    @Override // com.auth0.jwt.interfaces.c
    public String i() {
        String[] strArr = this.f7061a;
        return String.format("%s.%s.%s", strArr[0], strArr[1], strArr[2]);
    }

    @Override // com.auth0.jwt.interfaces.c
    public String j() {
        return this.f7061a[0];
    }

    @Override // com.auth0.jwt.interfaces.i
    public List<String> k() {
        return this.f7063c.k();
    }

    @Override // com.auth0.jwt.interfaces.i
    public com.auth0.jwt.interfaces.a l(String str) {
        return this.f7063c.l(str);
    }

    @Override // com.auth0.jwt.interfaces.e
    public com.auth0.jwt.interfaces.a m(String str) {
        return this.f7062b.m(str);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public e(com.auth0.jwt.impl.d dVar, String str) throws JWTDecodeException {
        String[] a10 = h.a(str);
        this.f7061a = a10;
        try {
            String t9 = m.t(shaded.org.apache.commons.codec.binary.d.x(a10[0]));
            String t10 = m.t(shaded.org.apache.commons.codec.binary.d.x(a10[1]));
            this.f7062b = dVar.b(t9);
            this.f7063c = dVar.a(t10);
        } catch (IllegalArgumentException e4) {
            throw new JWTDecodeException("The input is not a valid base 64 encoded string.", e4);
        } catch (NullPointerException e10) {
            throw new JWTDecodeException("The UTF-8 Charset isn't initialized.", e10);
        }
    }
}
