package com.auth0.jwt.algorithms;

import com.auth0.jwt.exceptions.SignatureGenerationException;
import com.auth0.jwt.exceptions.SignatureVerificationException;
import com.auth0.jwt.interfaces.j;
import java.security.InvalidKeyException;
import java.security.NoSuchAlgorithmException;
import java.security.SignatureException;
import java.security.interfaces.RSAPrivateKey;
import java.security.interfaces.RSAPublicKey;

/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: RSAAlgorithm.java */
/* loaded from: classes.dex */
public class f extends com.auth0.jwt.algorithms.a {

    /* renamed from: c  reason: collision with root package name */
    private final j f7048c;

    /* renamed from: d  reason: collision with root package name */
    private final b f7049d;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: RSAAlgorithm.java */
    /* loaded from: classes.dex */
    public class a implements j {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ RSAPublicKey f7050a;

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ RSAPrivateKey f7051b;

        a(RSAPublicKey rSAPublicKey, RSAPrivateKey rSAPrivateKey) {
            this.f7050a = rSAPublicKey;
            this.f7051b = rSAPrivateKey;
        }

        @Override // com.auth0.jwt.interfaces.j, com.auth0.jwt.interfaces.h
        public String c() {
            return null;
        }

        @Override // com.auth0.jwt.interfaces.j, com.auth0.jwt.interfaces.h
        /* renamed from: d */
        public RSAPrivateKey a() {
            return this.f7051b;
        }

        @Override // com.auth0.jwt.interfaces.j, com.auth0.jwt.interfaces.h
        /* renamed from: e */
        public RSAPublicKey b(String str) {
            return this.f7050a;
        }
    }

    f(b bVar, String str, String str2, j jVar) throws IllegalArgumentException {
        super(str, str2);
        if (jVar != null) {
            this.f7048c = jVar;
            this.f7049d = bVar;
            return;
        }
        throw new IllegalArgumentException("The Key Provider cannot be null.");
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static j H(RSAPublicKey rSAPublicKey, RSAPrivateKey rSAPrivateKey) {
        if (rSAPublicKey == null && rSAPrivateKey == null) {
            throw new IllegalArgumentException("Both provided Keys cannot be null.");
        }
        return new a(rSAPublicKey, rSAPrivateKey);
    }

    @Override // com.auth0.jwt.algorithms.a
    public String C() {
        return this.f7048c.c();
    }

    @Override // com.auth0.jwt.algorithms.a
    public byte[] E(byte[] bArr) throws SignatureGenerationException {
        try {
            RSAPrivateKey rSAPrivateKey = (RSAPrivateKey) this.f7048c.a();
            if (rSAPrivateKey != null) {
                return this.f7049d.a(A(), rSAPrivateKey, bArr);
            }
            throw new IllegalStateException("The given Private Key is null.");
        } catch (IllegalStateException | InvalidKeyException | NoSuchAlgorithmException | SignatureException e4) {
            throw new SignatureGenerationException(this, e4);
        }
    }

    @Override // com.auth0.jwt.algorithms.a
    @Deprecated
    public byte[] F(byte[] bArr, byte[] bArr2) throws SignatureGenerationException {
        try {
            RSAPrivateKey rSAPrivateKey = (RSAPrivateKey) this.f7048c.a();
            if (rSAPrivateKey != null) {
                return this.f7049d.b(A(), rSAPrivateKey, bArr, bArr2);
            }
            throw new IllegalStateException("The given Private Key is null.");
        } catch (IllegalStateException | InvalidKeyException | NoSuchAlgorithmException | SignatureException e4) {
            throw new SignatureGenerationException(this, e4);
        }
    }

    @Override // com.auth0.jwt.algorithms.a
    public void G(com.auth0.jwt.interfaces.c cVar) throws SignatureVerificationException {
        byte[] x9 = shaded.org.apache.commons.codec.binary.d.x(cVar.getSignature());
        try {
            RSAPublicKey rSAPublicKey = (RSAPublicKey) this.f7048c.b(cVar.d());
            if (rSAPublicKey != null) {
                if (!this.f7049d.e(A(), rSAPublicKey, cVar.j(), cVar.e(), x9)) {
                    throw new SignatureVerificationException(this);
                }
                return;
            }
            throw new IllegalStateException("The given Public Key is null.");
        } catch (IllegalStateException | InvalidKeyException | NoSuchAlgorithmException | SignatureException e4) {
            throw new SignatureVerificationException(this, e4);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public f(String str, String str2, j jVar) throws IllegalArgumentException {
        this(new b(), str, str2, jVar);
    }
}
