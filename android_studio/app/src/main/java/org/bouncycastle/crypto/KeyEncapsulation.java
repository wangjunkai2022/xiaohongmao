package org.bouncycastle.crypto;

/* loaded from: classes4.dex */
public interface KeyEncapsulation {
    CipherParameters decrypt(byte[] bArr, int i4, int i10, int i11);

    CipherParameters encrypt(byte[] bArr, int i4, int i10);

    void init(CipherParameters cipherParameters);
}
