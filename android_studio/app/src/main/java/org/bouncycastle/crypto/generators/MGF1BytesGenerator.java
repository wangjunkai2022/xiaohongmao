package org.bouncycastle.crypto.generators;

import org.bouncycastle.crypto.DataLengthException;
import org.bouncycastle.crypto.DerivationFunction;
import org.bouncycastle.crypto.DerivationParameters;
import org.bouncycastle.crypto.Digest;
import org.bouncycastle.crypto.OutputLengthException;
import org.bouncycastle.crypto.params.MGFParameters;

/* loaded from: classes4.dex */
public class MGF1BytesGenerator implements DerivationFunction {
    private Digest digest;
    private int hLen;
    private byte[] seed;

    public MGF1BytesGenerator(Digest digest) {
        this.digest = digest;
        this.hLen = digest.getDigestSize();
    }

    private void ItoOSP(int i4, byte[] bArr) {
        bArr[0] = (byte) (i4 >>> 24);
        bArr[1] = (byte) (i4 >>> 16);
        bArr[2] = (byte) (i4 >>> 8);
        bArr[3] = (byte) (i4 >>> 0);
    }

    @Override // org.bouncycastle.crypto.DerivationFunction
    public int generateBytes(byte[] bArr, int i4, int i10) throws DataLengthException, IllegalArgumentException {
        int i11;
        if (bArr.length - i10 >= i4) {
            byte[] bArr2 = new byte[this.hLen];
            byte[] bArr3 = new byte[4];
            this.digest.reset();
            if (i10 > this.hLen) {
                i11 = 0;
                do {
                    ItoOSP(i11, bArr3);
                    Digest digest = this.digest;
                    byte[] bArr4 = this.seed;
                    digest.update(bArr4, 0, bArr4.length);
                    this.digest.update(bArr3, 0, 4);
                    this.digest.doFinal(bArr2, 0);
                    int i12 = this.hLen;
                    System.arraycopy(bArr2, 0, bArr, (i11 * i12) + i4, i12);
                    i11++;
                } while (i11 < i10 / this.hLen);
            } else {
                i11 = 0;
            }
            if (this.hLen * i11 < i10) {
                ItoOSP(i11, bArr3);
                Digest digest2 = this.digest;
                byte[] bArr5 = this.seed;
                digest2.update(bArr5, 0, bArr5.length);
                this.digest.update(bArr3, 0, 4);
                this.digest.doFinal(bArr2, 0);
                int i13 = this.hLen;
                System.arraycopy(bArr2, 0, bArr, i4 + (i11 * i13), i10 - (i11 * i13));
            }
            return i10;
        }
        throw new OutputLengthException("output buffer too small");
    }

    public Digest getDigest() {
        return this.digest;
    }

    @Override // org.bouncycastle.crypto.DerivationFunction
    public void init(DerivationParameters derivationParameters) {
        if (!(derivationParameters instanceof MGFParameters)) {
            throw new IllegalArgumentException("MGF parameters required for MGF1Generator");
        }
        this.seed = ((MGFParameters) derivationParameters).getSeed();
    }
}
