package org.bouncycastle.crypto.generators;

import org.bouncycastle.crypto.CipherParameters;
import org.bouncycastle.crypto.Digest;
import org.bouncycastle.crypto.PBEParametersGenerator;
import org.bouncycastle.crypto.params.KeyParameter;
import org.bouncycastle.crypto.params.ParametersWithIV;
import org.bouncycastle.crypto.util.DigestFactory;

/* loaded from: classes4.dex */
public class OpenSSLPBEParametersGenerator extends PBEParametersGenerator {
    private final Digest digest;

    public OpenSSLPBEParametersGenerator() {
        this(DigestFactory.createMD5());
    }

    public OpenSSLPBEParametersGenerator(Digest digest) {
        this.digest = digest;
    }

    private byte[] generateDerivedKey(int i4) {
        int digestSize = this.digest.getDigestSize();
        byte[] bArr = new byte[digestSize];
        byte[] bArr2 = new byte[i4];
        int i10 = 0;
        while (true) {
            Digest digest = this.digest;
            byte[] bArr3 = this.password;
            digest.update(bArr3, 0, bArr3.length);
            Digest digest2 = this.digest;
            byte[] bArr4 = this.salt;
            digest2.update(bArr4, 0, bArr4.length);
            this.digest.doFinal(bArr, 0);
            int i11 = i4 > digestSize ? digestSize : i4;
            System.arraycopy(bArr, 0, bArr2, i10, i11);
            i10 += i11;
            i4 -= i11;
            if (i4 == 0) {
                return bArr2;
            }
            this.digest.reset();
            this.digest.update(bArr, 0, digestSize);
        }
    }

    @Override // org.bouncycastle.crypto.PBEParametersGenerator
    public CipherParameters generateDerivedMacParameters(int i4) {
        return generateDerivedParameters(i4);
    }

    @Override // org.bouncycastle.crypto.PBEParametersGenerator
    public CipherParameters generateDerivedParameters(int i4) {
        int i10 = i4 / 8;
        return new KeyParameter(generateDerivedKey(i10), 0, i10);
    }

    @Override // org.bouncycastle.crypto.PBEParametersGenerator
    public CipherParameters generateDerivedParameters(int i4, int i10) {
        int i11 = i4 / 8;
        int i12 = i10 / 8;
        byte[] generateDerivedKey = generateDerivedKey(i11 + i12);
        return new ParametersWithIV(new KeyParameter(generateDerivedKey, 0, i11), generateDerivedKey, i11, i12);
    }

    public void init(byte[] bArr, byte[] bArr2) {
        super.init(bArr, bArr2, 1);
    }
}
