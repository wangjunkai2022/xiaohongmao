package org.bouncycastle.crypto;

/* loaded from: classes4.dex */
public interface StreamCipher {
    String getAlgorithmName();

    void init(boolean z9, CipherParameters cipherParameters) throws IllegalArgumentException;

    int processBytes(byte[] bArr, int i4, int i10, byte[] bArr2, int i11) throws DataLengthException;

    void reset();

    byte returnByte(byte b10);
}
