package org.bouncycastle.crypto;

/* loaded from: classes4.dex */
public interface Digest {
    int doFinal(byte[] bArr, int i4);

    String getAlgorithmName();

    int getDigestSize();

    void reset();

    void update(byte b10);

    void update(byte[] bArr, int i4, int i10);
}
