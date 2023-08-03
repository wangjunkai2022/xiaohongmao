package org.bouncycastle.crypto;

/* loaded from: classes4.dex */
public interface Wrapper {
    String getAlgorithmName();

    void init(boolean z9, CipherParameters cipherParameters);

    byte[] unwrap(byte[] bArr, int i4, int i10) throws InvalidCipherTextException;

    byte[] wrap(byte[] bArr, int i4, int i10);
}
