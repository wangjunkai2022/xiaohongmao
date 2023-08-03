package org.bouncycastle.crypto;

/* loaded from: classes4.dex */
public interface DerivationFunction {
    int generateBytes(byte[] bArr, int i4, int i10) throws DataLengthException, IllegalArgumentException;

    void init(DerivationParameters derivationParameters);
}
