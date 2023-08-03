package org.bouncycastle.crypto.paddings;

import java.security.SecureRandom;
import org.bouncycastle.crypto.InvalidCipherTextException;

/* loaded from: classes4.dex */
public class PKCS7Padding implements BlockCipherPadding {
    @Override // org.bouncycastle.crypto.paddings.BlockCipherPadding
    public int addPadding(byte[] bArr, int i4) {
        byte length = (byte) (bArr.length - i4);
        while (i4 < bArr.length) {
            bArr[i4] = length;
            i4++;
        }
        return length;
    }

    @Override // org.bouncycastle.crypto.paddings.BlockCipherPadding
    public String getPaddingName() {
        return "PKCS7";
    }

    @Override // org.bouncycastle.crypto.paddings.BlockCipherPadding
    public void init(SecureRandom secureRandom) throws IllegalArgumentException {
    }

    @Override // org.bouncycastle.crypto.paddings.BlockCipherPadding
    public int padCount(byte[] bArr) throws InvalidCipherTextException {
        int i4 = bArr[bArr.length - 1] & 255;
        byte b10 = (byte) i4;
        boolean z9 = (i4 > bArr.length) | (i4 == 0);
        for (int i10 = 0; i10 < bArr.length; i10++) {
            z9 |= (bArr.length - i10 <= i4) & (bArr[i10] != b10);
        }
        if (z9) {
            throw new InvalidCipherTextException("pad block corrupted");
        }
        return i4;
    }
}
