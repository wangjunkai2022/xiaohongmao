package org.bouncycastle.crypto;

import java.math.BigInteger;

/* loaded from: classes4.dex */
public interface DSA {
    BigInteger[] generateSignature(byte[] bArr);

    void init(boolean z9, CipherParameters cipherParameters);

    boolean verifySignature(byte[] bArr, BigInteger bigInteger, BigInteger bigInteger2);
}
