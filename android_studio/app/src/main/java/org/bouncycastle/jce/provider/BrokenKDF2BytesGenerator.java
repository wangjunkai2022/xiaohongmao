package org.bouncycastle.jce.provider;

import com.ksyun.media.player.KSYMediaMeta;
import org.bouncycastle.crypto.DataLengthException;
import org.bouncycastle.crypto.DerivationFunction;
import org.bouncycastle.crypto.DerivationParameters;
import org.bouncycastle.crypto.Digest;
import org.bouncycastle.crypto.OutputLengthException;
import org.bouncycastle.crypto.params.KDFParameters;

/* loaded from: classes5.dex */
public class BrokenKDF2BytesGenerator implements DerivationFunction {
    private Digest digest;
    private byte[] iv;
    private byte[] shared;

    public BrokenKDF2BytesGenerator(Digest digest) {
        this.digest = digest;
    }

    @Override // org.bouncycastle.crypto.DerivationFunction
    public int generateBytes(byte[] bArr, int i4, int i10) throws DataLengthException, IllegalArgumentException {
        if (bArr.length - i10 >= i4) {
            long j4 = i10 * 8;
            if (j4 <= this.digest.getDigestSize() * 8 * KSYMediaMeta.AV_CH_WIDE_LEFT) {
                int digestSize = (int) (j4 / this.digest.getDigestSize());
                int digestSize2 = this.digest.getDigestSize();
                byte[] bArr2 = new byte[digestSize2];
                for (int i11 = 1; i11 <= digestSize; i11++) {
                    Digest digest = this.digest;
                    byte[] bArr3 = this.shared;
                    digest.update(bArr3, 0, bArr3.length);
                    this.digest.update((byte) (i11 & 255));
                    this.digest.update((byte) ((i11 >> 8) & 255));
                    this.digest.update((byte) ((i11 >> 16) & 255));
                    this.digest.update((byte) ((i11 >> 24) & 255));
                    Digest digest2 = this.digest;
                    byte[] bArr4 = this.iv;
                    digest2.update(bArr4, 0, bArr4.length);
                    this.digest.doFinal(bArr2, 0);
                    int i12 = i10 - i4;
                    if (i12 > digestSize2) {
                        System.arraycopy(bArr2, 0, bArr, i4, digestSize2);
                        i4 += digestSize2;
                    } else {
                        System.arraycopy(bArr2, 0, bArr, i4, i12);
                    }
                }
                this.digest.reset();
                return i10;
            }
            throw new IllegalArgumentException("Output length too large");
        }
        throw new OutputLengthException("output buffer too small");
    }

    public Digest getDigest() {
        return this.digest;
    }

    @Override // org.bouncycastle.crypto.DerivationFunction
    public void init(DerivationParameters derivationParameters) {
        if (!(derivationParameters instanceof KDFParameters)) {
            throw new IllegalArgumentException("KDF parameters required for generator");
        }
        KDFParameters kDFParameters = (KDFParameters) derivationParameters;
        this.shared = kDFParameters.getSharedSecret();
        this.iv = kDFParameters.getIV();
    }
}
