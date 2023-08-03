package org.bouncycastle.crypto.paddings;

import java.security.SecureRandom;
import org.bouncycastle.crypto.InvalidCipherTextException;

/* loaded from: classes4.dex */
public class TBCPadding implements BlockCipherPadding {
    @Override // org.bouncycastle.crypto.paddings.BlockCipherPadding
    public int addPadding(byte[] bArr, int i4) {
        int length = bArr.length - i4;
        int i10 = 255;
        if (i4 <= 0 ? (bArr[bArr.length - 1] & 1) != 0 : (bArr[i4 - 1] & 1) != 0) {
            i10 = 0;
        }
        byte b10 = (byte) i10;
        while (i4 < bArr.length) {
            bArr[i4] = b10;
            i4++;
        }
        return length;
    }

    @Override // org.bouncycastle.crypto.paddings.BlockCipherPadding
    public String getPaddingName() {
        return "TBC";
    }

    @Override // org.bouncycastle.crypto.paddings.BlockCipherPadding
    public void init(SecureRandom secureRandom) throws IllegalArgumentException {
    }

    @Override // org.bouncycastle.crypto.paddings.BlockCipherPadding
    public int padCount(byte[] bArr) throws InvalidCipherTextException {
        byte b10 = bArr[bArr.length - 1];
        int length = bArr.length - 1;
        while (length > 0 && bArr[length - 1] == b10) {
            length--;
        }
        return bArr.length - length;
    }
}
