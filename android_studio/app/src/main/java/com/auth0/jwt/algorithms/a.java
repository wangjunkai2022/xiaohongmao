package com.auth0.jwt.algorithms;

import com.auth0.jwt.exceptions.SignatureGenerationException;
import com.auth0.jwt.exceptions.SignatureVerificationException;
import com.auth0.jwt.interfaces.j;
import java.security.interfaces.ECKey;
import java.security.interfaces.ECPrivateKey;
import java.security.interfaces.ECPublicKey;
import java.security.interfaces.RSAKey;
import java.security.interfaces.RSAPrivateKey;
import java.security.interfaces.RSAPublicKey;

/* compiled from: Algorithm.java */
/* loaded from: classes.dex */
public abstract class a {

    /* renamed from: a  reason: collision with root package name */
    private final String f7038a;

    /* renamed from: b  reason: collision with root package name */
    private final String f7039b;

    /* JADX INFO: Access modifiers changed from: protected */
    public a(String str, String str2) {
        this.f7038a = str;
        this.f7039b = str2;
    }

    public static a D() {
        return new e();
    }

    public static a a(com.auth0.jwt.interfaces.d dVar) throws IllegalArgumentException {
        return new c("ES256", "SHA256withECDSA", 32, dVar);
    }

    @Deprecated
    public static a b(ECKey eCKey) throws IllegalArgumentException {
        return c(eCKey instanceof ECPublicKey ? (ECPublicKey) eCKey : null, eCKey instanceof ECPrivateKey ? (ECPrivateKey) eCKey : null);
    }

    public static a c(ECPublicKey eCPublicKey, ECPrivateKey eCPrivateKey) throws IllegalArgumentException {
        return a(c.K(eCPublicKey, eCPrivateKey));
    }

    public static a d(com.auth0.jwt.interfaces.d dVar) throws IllegalArgumentException {
        return new c("ES256K", "SHA256withECDSA", 32, dVar);
    }

    public static a e(ECPublicKey eCPublicKey, ECPrivateKey eCPrivateKey) throws IllegalArgumentException {
        return d(c.K(eCPublicKey, eCPrivateKey));
    }

    public static a f(com.auth0.jwt.interfaces.d dVar) throws IllegalArgumentException {
        return new c("ES384", "SHA384withECDSA", 48, dVar);
    }

    @Deprecated
    public static a g(ECKey eCKey) throws IllegalArgumentException {
        return h(eCKey instanceof ECPublicKey ? (ECPublicKey) eCKey : null, eCKey instanceof ECPrivateKey ? (ECPrivateKey) eCKey : null);
    }

    public static a h(ECPublicKey eCPublicKey, ECPrivateKey eCPrivateKey) throws IllegalArgumentException {
        return f(c.K(eCPublicKey, eCPrivateKey));
    }

    public static a i(com.auth0.jwt.interfaces.d dVar) throws IllegalArgumentException {
        return new c("ES512", "SHA512withECDSA", 66, dVar);
    }

    @Deprecated
    public static a j(ECKey eCKey) throws IllegalArgumentException {
        return k(eCKey instanceof ECPublicKey ? (ECPublicKey) eCKey : null, eCKey instanceof ECPrivateKey ? (ECPrivateKey) eCKey : null);
    }

    public static a k(ECPublicKey eCPublicKey, ECPrivateKey eCPrivateKey) throws IllegalArgumentException {
        return i(c.K(eCPublicKey, eCPrivateKey));
    }

    public static a l(String str) throws IllegalArgumentException {
        return new d("HS256", "HmacSHA256", str);
    }

    public static a m(byte[] bArr) throws IllegalArgumentException {
        return new d("HS256", "HmacSHA256", bArr);
    }

    public static a n(String str) throws IllegalArgumentException {
        return new d("HS384", "HmacSHA384", str);
    }

    public static a o(byte[] bArr) throws IllegalArgumentException {
        return new d("HS384", "HmacSHA384", bArr);
    }

    public static a p(String str) throws IllegalArgumentException {
        return new d("HS512", "HmacSHA512", str);
    }

    public static a q(byte[] bArr) throws IllegalArgumentException {
        return new d("HS512", "HmacSHA512", bArr);
    }

    public static a r(j jVar) throws IllegalArgumentException {
        return new f("RS256", "SHA256withRSA", jVar);
    }

    @Deprecated
    public static a s(RSAKey rSAKey) throws IllegalArgumentException {
        return t(rSAKey instanceof RSAPublicKey ? (RSAPublicKey) rSAKey : null, rSAKey instanceof RSAPrivateKey ? (RSAPrivateKey) rSAKey : null);
    }

    public static a t(RSAPublicKey rSAPublicKey, RSAPrivateKey rSAPrivateKey) throws IllegalArgumentException {
        return r(f.H(rSAPublicKey, rSAPrivateKey));
    }

    public static a u(j jVar) throws IllegalArgumentException {
        return new f("RS384", "SHA384withRSA", jVar);
    }

    @Deprecated
    public static a v(RSAKey rSAKey) throws IllegalArgumentException {
        return w(rSAKey instanceof RSAPublicKey ? (RSAPublicKey) rSAKey : null, rSAKey instanceof RSAPrivateKey ? (RSAPrivateKey) rSAKey : null);
    }

    public static a w(RSAPublicKey rSAPublicKey, RSAPrivateKey rSAPrivateKey) throws IllegalArgumentException {
        return u(f.H(rSAPublicKey, rSAPrivateKey));
    }

    public static a x(j jVar) throws IllegalArgumentException {
        return new f("RS512", "SHA512withRSA", jVar);
    }

    @Deprecated
    public static a y(RSAKey rSAKey) throws IllegalArgumentException {
        return z(rSAKey instanceof RSAPublicKey ? (RSAPublicKey) rSAKey : null, rSAKey instanceof RSAPrivateKey ? (RSAPrivateKey) rSAKey : null);
    }

    public static a z(RSAPublicKey rSAPublicKey, RSAPrivateKey rSAPrivateKey) throws IllegalArgumentException {
        return x(f.H(rSAPublicKey, rSAPrivateKey));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public String A() {
        return this.f7039b;
    }

    public String B() {
        return this.f7038a;
    }

    public String C() {
        return null;
    }

    @Deprecated
    public abstract byte[] E(byte[] bArr) throws SignatureGenerationException;

    public byte[] F(byte[] bArr, byte[] bArr2) throws SignatureGenerationException {
        byte[] bArr3 = new byte[bArr.length + 1 + bArr2.length];
        System.arraycopy(bArr, 0, bArr3, 0, bArr.length);
        bArr3[bArr.length] = 46;
        System.arraycopy(bArr2, 0, bArr3, bArr.length + 1, bArr2.length);
        return E(bArr3);
    }

    public abstract void G(com.auth0.jwt.interfaces.c cVar) throws SignatureVerificationException;

    public String toString() {
        return this.f7039b;
    }
}
