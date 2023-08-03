package org.bouncycastle.crypto;

import org.bouncycastle.util.Strings;

/* loaded from: classes4.dex */
public abstract class PBEParametersGenerator {
    protected int iterationCount;
    protected byte[] password;
    protected byte[] salt;

    public static byte[] PKCS12PasswordToBytes(char[] cArr) {
        if (cArr == null || cArr.length <= 0) {
            return new byte[0];
        }
        byte[] bArr = new byte[(cArr.length + 1) * 2];
        for (int i4 = 0; i4 != cArr.length; i4++) {
            int i10 = i4 * 2;
            bArr[i10] = (byte) (cArr[i4] >>> '\b');
            bArr[i10 + 1] = (byte) cArr[i4];
        }
        return bArr;
    }

    public static byte[] PKCS5PasswordToBytes(char[] cArr) {
        if (cArr != null) {
            int length = cArr.length;
            byte[] bArr = new byte[length];
            for (int i4 = 0; i4 != length; i4++) {
                bArr[i4] = (byte) cArr[i4];
            }
            return bArr;
        }
        return new byte[0];
    }

    public static byte[] PKCS5PasswordToUTF8Bytes(char[] cArr) {
        return cArr != null ? Strings.toUTF8ByteArray(cArr) : new byte[0];
    }

    public abstract CipherParameters generateDerivedMacParameters(int i4);

    public abstract CipherParameters generateDerivedParameters(int i4);

    public abstract CipherParameters generateDerivedParameters(int i4, int i10);

    public int getIterationCount() {
        return this.iterationCount;
    }

    public byte[] getPassword() {
        return this.password;
    }

    public byte[] getSalt() {
        return this.salt;
    }

    public void init(byte[] bArr, byte[] bArr2, int i4) {
        this.password = bArr;
        this.salt = bArr2;
        this.iterationCount = i4;
    }
}
