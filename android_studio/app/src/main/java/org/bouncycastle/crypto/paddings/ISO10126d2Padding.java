package org.bouncycastle.crypto.paddings;

import java.security.SecureRandom;
import org.bouncycastle.crypto.CryptoServicesRegistrar;
import org.bouncycastle.crypto.InvalidCipherTextException;

/* loaded from: classes4.dex */
public class ISO10126d2Padding implements BlockCipherPadding {
    SecureRandom random;

    @Override // org.bouncycastle.crypto.paddings.BlockCipherPadding
    public int addPadding(byte[] bArr, int i4) {
        byte length = (byte) (bArr.length - i4);
        while (i4 < bArr.length - 1) {
            bArr[i4] = (byte) this.random.nextInt();
            i4++;
        }
        bArr[i4] = length;
        return length;
    }

    @Override // org.bouncycastle.crypto.paddings.BlockCipherPadding
    public String getPaddingName() {
        return "ISO10126-2";
    }

    @Override // org.bouncycastle.crypto.paddings.BlockCipherPadding
    public void init(SecureRandom secureRandom) throws IllegalArgumentException {
        this.random = CryptoServicesRegistrar.getSecureRandom(secureRandom);
    }

    @Override // org.bouncycastle.crypto.paddings.BlockCipherPadding
    public int padCount(byte[] bArr) throws InvalidCipherTextException {
        int i4 = bArr[bArr.length - 1] & 255;
        if (i4 <= bArr.length) {
            return i4;
        }
        throw new InvalidCipherTextException("pad block corrupted");
    }
}
