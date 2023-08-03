package org.minidns.dnssec.algorithms;

import java.io.ByteArrayInputStream;
import java.io.DataInputStream;
import java.io.IOException;
import java.math.BigInteger;
import java.security.NoSuchAlgorithmException;
import java.security.PublicKey;
import java.security.spec.ECFieldFp;
import java.security.spec.ECParameterSpec;
import java.security.spec.ECPoint;
import java.security.spec.ECPublicKeySpec;
import java.security.spec.EllipticCurve;
import java.security.spec.InvalidKeySpecException;
import org.minidns.dnssec.DnssecValidationFailedException;

/* compiled from: EcgostSignatureVerifier.java */
/* loaded from: classes5.dex */
class d extends f {

    /* renamed from: c  reason: collision with root package name */
    private static final int f92743c = 32;

    /* renamed from: d  reason: collision with root package name */
    private static final ECParameterSpec f92744d = new ECParameterSpec(new EllipticCurve(new ECFieldFp(new BigInteger("FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFD97", 16)), new BigInteger("FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFD94", 16), new BigInteger("A6", 16)), new ECPoint(BigInteger.ONE, new BigInteger("8D91E471E0989CDA27DF505A453F2B7635294F2DDF23E3B122ACC99C9E9F1E14", 16)), new BigInteger("FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF6C611070995AD10045841B09B761B893", 16), 1);

    public d() throws NoSuchAlgorithmException {
        super("ECGOST3410", "GOST3411withECGOST3410");
    }

    private static void e(byte[] bArr) {
        for (int i4 = 0; i4 < bArr.length / 2; i4++) {
            int length = (bArr.length - i4) - 1;
            byte b10 = bArr[i4];
            bArr[i4] = bArr[length];
            bArr[length] = b10;
        }
    }

    @Override // org.minidns.dnssec.algorithms.f
    protected PublicKey c(byte[] bArr) {
        DataInputStream dataInputStream = new DataInputStream(new ByteArrayInputStream(bArr));
        try {
            byte[] bArr2 = new byte[32];
            dataInputStream.readFully(bArr2);
            e(bArr2);
            BigInteger bigInteger = new BigInteger(1, bArr2);
            byte[] bArr3 = new byte[32];
            dataInputStream.readFully(bArr3);
            e(bArr3);
            return b().generatePublic(new ECPublicKeySpec(new ECPoint(bigInteger, new BigInteger(1, bArr3)), f92744d));
        } catch (IOException | InvalidKeySpecException e4) {
            throw new DnssecValidationFailedException("Invalid public key!", e4);
        }
    }

    @Override // org.minidns.dnssec.algorithms.f
    protected byte[] d(byte[] bArr) {
        return bArr;
    }
}
