package org.bouncycastle.crypto;

/* loaded from: classes4.dex */
public interface BlockCipher {
    String getAlgorithmName();

    int getBlockSize();

    void init(boolean z9, CipherParameters cipherParameters) throws IllegalArgumentException;

    int processBlock(byte[] bArr, int i4, byte[] bArr2, int i10) throws DataLengthException, IllegalStateException;

    void reset();
}
