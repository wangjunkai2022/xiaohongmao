package org.bouncycastle.crypto.agreement.kdf;

import org.bouncycastle.crypto.DataLengthException;
import org.bouncycastle.crypto.DerivationParameters;
import org.bouncycastle.crypto.Digest;
import org.bouncycastle.crypto.DigestDerivationFunction;
import org.bouncycastle.util.Arrays;
import org.bouncycastle.util.Pack;

/* loaded from: classes4.dex */
public class GSKKFDGenerator implements DigestDerivationFunction {
    private byte[] buf;
    private int counter;
    private final Digest digest;

    /* renamed from: r  reason: collision with root package name */
    private byte[] f91178r;

    /* renamed from: z  reason: collision with root package name */
    private byte[] f91179z;

    public GSKKFDGenerator(Digest digest) {
        this.digest = digest;
        this.buf = new byte[digest.getDigestSize()];
    }

    @Override // org.bouncycastle.crypto.DerivationFunction
    public int generateBytes(byte[] bArr, int i4, int i10) throws DataLengthException, IllegalArgumentException {
        if (i4 + i10 <= bArr.length) {
            Digest digest = this.digest;
            byte[] bArr2 = this.f91179z;
            digest.update(bArr2, 0, bArr2.length);
            int i11 = this.counter;
            this.counter = i11 + 1;
            byte[] intToBigEndian = Pack.intToBigEndian(i11);
            this.digest.update(intToBigEndian, 0, intToBigEndian.length);
            byte[] bArr3 = this.f91178r;
            if (bArr3 != null) {
                this.digest.update(bArr3, 0, bArr3.length);
            }
            this.digest.doFinal(this.buf, 0);
            System.arraycopy(this.buf, 0, bArr, i4, i10);
            Arrays.clear(this.buf);
            return i10;
        }
        throw new DataLengthException("output buffer too small");
    }

    @Override // org.bouncycastle.crypto.DigestDerivationFunction
    public Digest getDigest() {
        return this.digest;
    }

    @Override // org.bouncycastle.crypto.DerivationFunction
    public void init(DerivationParameters derivationParameters) {
        if (!(derivationParameters instanceof GSKKDFParameters)) {
            throw new IllegalArgumentException("unkown parameters type");
        }
        GSKKDFParameters gSKKDFParameters = (GSKKDFParameters) derivationParameters;
        this.f91179z = gSKKDFParameters.getZ();
        this.counter = gSKKDFParameters.getStartCounter();
        this.f91178r = gSKKDFParameters.getNonce();
    }
}
