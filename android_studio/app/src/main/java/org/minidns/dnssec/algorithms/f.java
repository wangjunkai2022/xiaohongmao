package org.minidns.dnssec.algorithms;

import java.security.InvalidKeyException;
import java.security.KeyFactory;
import java.security.NoSuchAlgorithmException;
import java.security.PublicKey;
import java.security.Signature;
import java.security.SignatureException;
import org.minidns.dnssec.DnssecValidationFailedException;

/* compiled from: JavaSecSignatureVerifier.java */
/* loaded from: classes5.dex */
public abstract class f implements org.minidns.dnssec.d {

    /* renamed from: a  reason: collision with root package name */
    private final KeyFactory f92746a;

    /* renamed from: b  reason: collision with root package name */
    private final String f92747b;

    public f(String str, String str2) throws NoSuchAlgorithmException {
        this.f92746a = KeyFactory.getInstance(str);
        this.f92747b = str2;
        Signature.getInstance(str2);
    }

    @Override // org.minidns.dnssec.d
    public boolean a(byte[] bArr, byte[] bArr2, byte[] bArr3) {
        try {
            PublicKey c10 = c(bArr3);
            Signature signature = Signature.getInstance(this.f92747b);
            signature.initVerify(c10);
            signature.update(bArr);
            return signature.verify(d(bArr2));
        } catch (ArithmeticException e4) {
            e = e4;
            throw new DnssecValidationFailedException("Validating signature failed", e);
        } catch (InvalidKeyException e10) {
            e = e10;
            throw new DnssecValidationFailedException("Validating signature failed", e);
        } catch (NoSuchAlgorithmException unused) {
            throw new IllegalStateException();
        } catch (SignatureException e11) {
            e = e11;
            throw new DnssecValidationFailedException("Validating signature failed", e);
        }
    }

    public KeyFactory b() {
        return this.f92746a;
    }

    protected abstract PublicKey c(byte[] bArr);

    protected abstract byte[] d(byte[] bArr);
}
