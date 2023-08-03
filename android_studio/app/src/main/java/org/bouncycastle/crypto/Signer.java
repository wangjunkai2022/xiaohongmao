package org.bouncycastle.crypto;

/* loaded from: classes4.dex */
public interface Signer {
    byte[] generateSignature() throws CryptoException, DataLengthException;

    void init(boolean z9, CipherParameters cipherParameters);

    void reset();

    void update(byte b10);

    void update(byte[] bArr, int i4, int i10);

    boolean verifySignature(byte[] bArr);
}
