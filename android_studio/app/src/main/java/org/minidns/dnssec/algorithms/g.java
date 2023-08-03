package org.minidns.dnssec.algorithms;

import java.io.ByteArrayInputStream;
import java.io.DataInputStream;
import java.io.IOException;
import java.math.BigInteger;
import java.security.NoSuchAlgorithmException;
import java.security.PublicKey;
import java.security.spec.InvalidKeySpecException;
import java.security.spec.RSAPublicKeySpec;
import org.minidns.dnssec.DnssecValidationFailedException;

/* compiled from: RsaSignatureVerifier.java */
/* loaded from: classes5.dex */
class g extends f {
    public g(String str) throws NoSuchAlgorithmException {
        super("RSA", str);
    }

    @Override // org.minidns.dnssec.algorithms.f
    protected PublicKey c(byte[] bArr) {
        int i4;
        DataInputStream dataInputStream = new DataInputStream(new ByteArrayInputStream(bArr));
        try {
            int readUnsignedByte = dataInputStream.readUnsignedByte();
            if (readUnsignedByte == 0) {
                readUnsignedByte = dataInputStream.readUnsignedShort();
                i4 = 3;
            } else {
                i4 = 1;
            }
            byte[] bArr2 = new byte[readUnsignedByte];
            dataInputStream.readFully(bArr2);
            int i10 = i4 + readUnsignedByte;
            BigInteger bigInteger = new BigInteger(1, bArr2);
            byte[] bArr3 = new byte[bArr.length - i10];
            dataInputStream.readFully(bArr3);
            return b().generatePublic(new RSAPublicKeySpec(new BigInteger(1, bArr3), bigInteger));
        } catch (IOException | InvalidKeySpecException e4) {
            throw new DnssecValidationFailedException("Invalid public key!", e4);
        }
    }

    @Override // org.minidns.dnssec.algorithms.f
    protected byte[] d(byte[] bArr) {
        return bArr;
    }
}
