package org.bouncycastle.crypto;

/* loaded from: classes4.dex */
public interface Mac {
    int doFinal(byte[] bArr, int i4) throws DataLengthException, IllegalStateException;

    String getAlgorithmName();

    int getMacSize();

    void init(CipherParameters cipherParameters) throws IllegalArgumentException;

    void reset();

    void update(byte b10) throws IllegalStateException;

    void update(byte[] bArr, int i4, int i10) throws DataLengthException, IllegalStateException;
}
