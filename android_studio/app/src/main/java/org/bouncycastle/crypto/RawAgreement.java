package org.bouncycastle.crypto;

/* loaded from: classes4.dex */
public interface RawAgreement {
    void calculateAgreement(CipherParameters cipherParameters, byte[] bArr, int i4);

    int getAgreementSize();

    void init(CipherParameters cipherParameters);
}
