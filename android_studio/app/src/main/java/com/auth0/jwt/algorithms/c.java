package com.auth0.jwt.algorithms;

import com.auth0.jwt.exceptions.SignatureGenerationException;
import com.auth0.jwt.exceptions.SignatureVerificationException;
import java.security.InvalidKeyException;
import java.security.NoSuchAlgorithmException;
import java.security.SignatureException;
import java.security.interfaces.ECPrivateKey;
import java.security.interfaces.ECPublicKey;

/* compiled from: ECDSAAlgorithm.java */
/* loaded from: classes.dex */
class c extends com.auth0.jwt.algorithms.a {

    /* renamed from: c  reason: collision with root package name */
    private final com.auth0.jwt.interfaces.d f7041c;

    /* renamed from: d  reason: collision with root package name */
    private final b f7042d;

    /* renamed from: e  reason: collision with root package name */
    private final int f7043e;

    /* compiled from: ECDSAAlgorithm.java */
    /* loaded from: classes.dex */
    class a implements com.auth0.jwt.interfaces.d {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ ECPublicKey f7044a;

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ ECPrivateKey f7045b;

        a(ECPublicKey eCPublicKey, ECPrivateKey eCPrivateKey) {
            this.f7044a = eCPublicKey;
            this.f7045b = eCPrivateKey;
        }

        @Override // com.auth0.jwt.interfaces.d, com.auth0.jwt.interfaces.h
        public String c() {
            return null;
        }

        @Override // com.auth0.jwt.interfaces.d, com.auth0.jwt.interfaces.h
        /* renamed from: d */
        public ECPrivateKey a() {
            return this.f7045b;
        }

        @Override // com.auth0.jwt.interfaces.d, com.auth0.jwt.interfaces.h
        /* renamed from: e */
        public ECPublicKey b(String str) {
            return this.f7044a;
        }
    }

    c(b bVar, String str, String str2, int i4, com.auth0.jwt.interfaces.d dVar) throws IllegalArgumentException {
        super(str, str2);
        if (dVar != null) {
            this.f7041c = dVar;
            this.f7042d = bVar;
            this.f7043e = i4;
            return;
        }
        throw new IllegalArgumentException("The Key Provider cannot be null.");
    }

    private int J(byte[] bArr, int i4, int i10) {
        int i11;
        int i12 = 0;
        while (true) {
            i11 = i4 + i12;
            if (i11 >= i10 || bArr[i11] != 0) {
                break;
            }
            i12++;
        }
        return (bArr[i11] & 255) > 127 ? i12 - 1 : i12;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static com.auth0.jwt.interfaces.d K(ECPublicKey eCPublicKey, ECPrivateKey eCPrivateKey) {
        if (eCPublicKey == null && eCPrivateKey == null) {
            throw new IllegalArgumentException("Both provided Keys cannot be null.");
        }
        return new a(eCPublicKey, eCPrivateKey);
    }

    @Override // com.auth0.jwt.algorithms.a
    public String C() {
        return this.f7041c.c();
    }

    @Override // com.auth0.jwt.algorithms.a
    @Deprecated
    public byte[] E(byte[] bArr) throws SignatureGenerationException {
        try {
            ECPrivateKey eCPrivateKey = (ECPrivateKey) this.f7041c.a();
            if (eCPrivateKey != null) {
                return H(this.f7042d.a(A(), eCPrivateKey, bArr));
            }
            throw new IllegalStateException("The given Private Key is null.");
        } catch (IllegalStateException | InvalidKeyException | NoSuchAlgorithmException | SignatureException e4) {
            throw new SignatureGenerationException(this, e4);
        }
    }

    @Override // com.auth0.jwt.algorithms.a
    public byte[] F(byte[] bArr, byte[] bArr2) throws SignatureGenerationException {
        try {
            ECPrivateKey eCPrivateKey = (ECPrivateKey) this.f7041c.a();
            if (eCPrivateKey != null) {
                return H(this.f7042d.b(A(), eCPrivateKey, bArr, bArr2));
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
            ECPublicKey eCPublicKey = (ECPublicKey) this.f7041c.b(cVar.d());
            if (eCPublicKey != null) {
                if (!this.f7042d.e(A(), eCPublicKey, cVar.j(), cVar.e(), I(x9))) {
                    throw new SignatureVerificationException(this);
                }
                return;
            }
            throw new IllegalStateException("The given Public Key is null.");
        } catch (IllegalStateException | InvalidKeyException | NoSuchAlgorithmException | SignatureException e4) {
            throw new SignatureVerificationException(this, e4);
        }
    }

    byte[] H(byte[] bArr) throws SignatureException {
        if (bArr[0] == 48 && bArr.length != this.f7043e * 2) {
            int i4 = this.f7043e;
            byte[] bArr2 = new byte[i4 * 2];
            int i10 = bArr[1] != -127 ? 1 : 2;
            int i11 = i10 + 1;
            if ((bArr[i10] & 255) == bArr.length - i11) {
                int i12 = i11 + 1;
                int i13 = i12 + 1;
                int i14 = bArr[i12];
                if (i14 <= i4 + 1) {
                    int i15 = i4 - i14;
                    System.arraycopy(bArr, Math.max(-i15, 0) + i13, bArr2, Math.max(i15, 0), Math.min(i15, 0) + i14);
                    int i16 = i13 + i14 + 1;
                    int i17 = i16 + 1;
                    byte b10 = bArr[i16];
                    int i18 = this.f7043e;
                    if (b10 <= i18 + 1) {
                        int i19 = i18 - b10;
                        System.arraycopy(bArr, i17 + Math.max(-i19, 0), bArr2, this.f7043e + Math.max(i19, 0), b10 + Math.min(i19, 0));
                        return bArr2;
                    }
                    throw new SignatureException("Invalid DER signature format.");
                }
                throw new SignatureException("Invalid DER signature format.");
            }
            throw new SignatureException("Invalid DER signature format.");
        }
        throw new SignatureException("Invalid DER signature format.");
    }

    byte[] I(byte[] bArr) throws SignatureException {
        byte[] bArr2;
        int i4;
        int length = bArr.length;
        int i10 = this.f7043e;
        if (length == i10 * 2) {
            int J = J(bArr, 0, i10);
            int J2 = J(bArr, this.f7043e, bArr.length);
            int i11 = this.f7043e;
            int i12 = i11 - J;
            int i13 = i11 - J2;
            int i14 = i12 + 2 + 2 + i13;
            if (i14 <= 255) {
                int i15 = 1;
                if (i14 > 127) {
                    bArr2 = new byte[i14 + 3];
                    bArr2[1] = -127;
                    i15 = 2;
                } else {
                    bArr2 = new byte[i14 + 2];
                }
                bArr2[0] = 48;
                int i16 = i15 + 1;
                bArr2[i15] = (byte) (i14 & 255);
                int i17 = i16 + 1;
                bArr2[i16] = 2;
                int i18 = i17 + 1;
                bArr2[i17] = (byte) i12;
                if (J < 0) {
                    int i19 = i18 + 1;
                    bArr2[i18] = 0;
                    System.arraycopy(bArr, 0, bArr2, i19, i11);
                    i4 = i19 + this.f7043e;
                } else {
                    int min = Math.min(i11, i12);
                    System.arraycopy(bArr, J, bArr2, i18, min);
                    i4 = i18 + min;
                }
                int i20 = i4 + 1;
                bArr2[i4] = 2;
                int i21 = i20 + 1;
                bArr2[i20] = (byte) i13;
                if (J2 < 0) {
                    bArr2[i21] = 0;
                    int i22 = this.f7043e;
                    System.arraycopy(bArr, i22, bArr2, i21 + 1, i22);
                } else {
                    int i23 = this.f7043e;
                    System.arraycopy(bArr, J2 + i23, bArr2, i21, Math.min(i23, i13));
                }
                return bArr2;
            }
            throw new SignatureException("Invalid JOSE signature format.");
        }
        throw new SignatureException("Invalid JOSE signature format.");
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public c(String str, String str2, int i4, com.auth0.jwt.interfaces.d dVar) throws IllegalArgumentException {
        this(new b(), str, str2, i4, dVar);
    }
}
