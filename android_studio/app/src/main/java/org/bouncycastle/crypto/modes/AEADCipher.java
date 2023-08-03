package org.bouncycastle.crypto.modes;

import org.bouncycastle.crypto.CipherParameters;
import org.bouncycastle.crypto.DataLengthException;
import org.bouncycastle.crypto.InvalidCipherTextException;

/* loaded from: classes4.dex */
public interface AEADCipher {
    int doFinal(byte[] bArr, int i4) throws IllegalStateException, InvalidCipherTextException;

    String getAlgorithmName();

    byte[] getMac();

    int getOutputSize(int i4);

    int getUpdateOutputSize(int i4);

    void init(boolean z9, CipherParameters cipherParameters) throws IllegalArgumentException;

    void processAADByte(byte b10);

    void processAADBytes(byte[] bArr, int i4, int i10);

    int processByte(byte b10, byte[] bArr, int i4) throws DataLengthException;

    int processBytes(byte[] bArr, int i4, int i10, byte[] bArr2, int i11) throws DataLengthException;

    void reset();
}
