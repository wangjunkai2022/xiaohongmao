package org.minidns.dnssec.algorithms;

import java.io.ByteArrayInputStream;
import java.io.ByteArrayOutputStream;
import java.io.DataInputStream;
import java.io.DataOutputStream;
import java.io.IOException;
import java.math.BigInteger;
import java.security.NoSuchAlgorithmException;
import java.security.PublicKey;
import java.security.spec.DSAPublicKeySpec;
import java.security.spec.InvalidKeySpecException;
import org.minidns.dnssec.DnssecValidationFailedException;

/* compiled from: DsaSignatureVerifier.java */
/* loaded from: classes5.dex */
class b extends f {

    /* renamed from: c  reason: collision with root package name */
    private static final int f92738c = 20;

    public b(String str) throws NoSuchAlgorithmException {
        super("DSA", str);
    }

    @Override // org.minidns.dnssec.algorithms.f
    protected PublicKey c(byte[] bArr) {
        DataInputStream dataInputStream = new DataInputStream(new ByteArrayInputStream(bArr));
        try {
            int readUnsignedByte = dataInputStream.readUnsignedByte();
            byte[] bArr2 = new byte[20];
            dataInputStream.readFully(bArr2);
            BigInteger bigInteger = new BigInteger(1, bArr2);
            int i4 = (readUnsignedByte * 8) + 64;
            byte[] bArr3 = new byte[i4];
            dataInputStream.readFully(bArr3);
            BigInteger bigInteger2 = new BigInteger(1, bArr3);
            byte[] bArr4 = new byte[i4];
            dataInputStream.readFully(bArr4);
            BigInteger bigInteger3 = new BigInteger(1, bArr4);
            byte[] bArr5 = new byte[i4];
            dataInputStream.readFully(bArr5);
            return b().generatePublic(new DSAPublicKeySpec(new BigInteger(1, bArr5), bigInteger2, bigInteger, bigInteger3));
        } catch (IOException | InvalidKeySpecException e4) {
            throw new DnssecValidationFailedException("Invalid public key!", e4);
        }
    }

    @Override // org.minidns.dnssec.algorithms.f
    protected byte[] d(byte[] bArr) {
        DataInputStream dataInputStream = new DataInputStream(new ByteArrayInputStream(bArr));
        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
        DataOutputStream dataOutputStream = new DataOutputStream(byteArrayOutputStream);
        try {
            dataInputStream.readByte();
            byte[] bArr2 = new byte[20];
            dataInputStream.readFully(bArr2);
            int i4 = 21;
            int i10 = bArr2[0] < 0 ? 21 : 20;
            byte[] bArr3 = new byte[20];
            dataInputStream.readFully(bArr3);
            if (bArr3[0] >= 0) {
                i4 = 20;
            }
            dataOutputStream.writeByte(48);
            dataOutputStream.writeByte(i10 + i4 + 4);
            dataOutputStream.writeByte(2);
            dataOutputStream.writeByte(i10);
            if (i10 > 20) {
                dataOutputStream.writeByte(0);
            }
            dataOutputStream.write(bArr2);
            dataOutputStream.writeByte(2);
            dataOutputStream.writeByte(i4);
            if (i4 > 20) {
                dataOutputStream.writeByte(0);
            }
            dataOutputStream.write(bArr3);
            return byteArrayOutputStream.toByteArray();
        } catch (IOException e4) {
            throw new DnssecValidationFailedException("Invalid signature!", e4);
        }
    }
}
