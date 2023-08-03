package org.bouncycastle.crypto;

/* loaded from: classes4.dex */
public interface AsymmetricBlockCipher {
    int getInputBlockSize();

    int getOutputBlockSize();

    void init(boolean z9, CipherParameters cipherParameters);

    byte[] processBlock(byte[] bArr, int i4, int i10) throws InvalidCipherTextException;
}
