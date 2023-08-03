package com.auth0.jwt.algorithms;

import com.auth0.jwt.exceptions.SignatureGenerationException;
import com.auth0.jwt.exceptions.SignatureVerificationException;
import java.nio.charset.StandardCharsets;
import java.security.InvalidKeyException;
import java.security.NoSuchAlgorithmException;
import java.util.Arrays;

/* compiled from: HMACAlgorithm.java */
/* loaded from: classes.dex */
class d extends a {

    /* renamed from: c  reason: collision with root package name */
    private final b f7046c;

    /* renamed from: d  reason: collision with root package name */
    private final byte[] f7047d;

    d(b bVar, String str, String str2, byte[] bArr) throws IllegalArgumentException {
        super(str, str2);
        if (bArr != null) {
            this.f7047d = Arrays.copyOf(bArr, bArr.length);
            this.f7046c = bVar;
            return;
        }
        throw new IllegalArgumentException("The Secret cannot be null");
    }

    static byte[] H(String str) throws IllegalArgumentException {
        if (str != null) {
            return str.getBytes(StandardCharsets.UTF_8);
        }
        throw new IllegalArgumentException("The Secret cannot be null");
    }

    @Override // com.auth0.jwt.algorithms.a
    @Deprecated
    public byte[] E(byte[] bArr) throws SignatureGenerationException {
        try {
            return this.f7046c.c(A(), this.f7047d, bArr);
        } catch (InvalidKeyException | NoSuchAlgorithmException e4) {
            throw new SignatureGenerationException(this, e4);
        }
    }

    @Override // com.auth0.jwt.algorithms.a
    public byte[] F(byte[] bArr, byte[] bArr2) throws SignatureGenerationException {
        try {
            return this.f7046c.d(A(), this.f7047d, bArr, bArr2);
        } catch (InvalidKeyException | NoSuchAlgorithmException e4) {
            throw new SignatureGenerationException(this, e4);
        }
    }

    @Override // com.auth0.jwt.algorithms.a
    public void G(com.auth0.jwt.interfaces.c cVar) throws SignatureVerificationException {
        try {
            if (this.f7046c.h(A(), this.f7047d, cVar.j(), cVar.e(), shaded.org.apache.commons.codec.binary.d.x(cVar.getSignature()))) {
                return;
            }
            throw new SignatureVerificationException(this);
        } catch (IllegalStateException | InvalidKeyException | NoSuchAlgorithmException e4) {
            throw new SignatureVerificationException(this, e4);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public d(String str, String str2, byte[] bArr) throws IllegalArgumentException {
        this(new b(), str, str2, bArr);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public d(String str, String str2, String str3) throws IllegalArgumentException {
        this(new b(), str, str2, H(str3));
    }
}
