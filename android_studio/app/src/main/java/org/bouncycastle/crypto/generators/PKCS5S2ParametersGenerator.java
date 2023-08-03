package org.bouncycastle.crypto.generators;

import org.bouncycastle.crypto.CipherParameters;
import org.bouncycastle.crypto.Digest;
import org.bouncycastle.crypto.Mac;
import org.bouncycastle.crypto.PBEParametersGenerator;
import org.bouncycastle.crypto.macs.HMac;
import org.bouncycastle.crypto.params.KeyParameter;
import org.bouncycastle.crypto.params.ParametersWithIV;
import org.bouncycastle.crypto.util.DigestFactory;

/* loaded from: classes4.dex */
public class PKCS5S2ParametersGenerator extends PBEParametersGenerator {
    private Mac hMac;
    private byte[] state;

    public PKCS5S2ParametersGenerator() {
        this(DigestFactory.createSHA1());
    }

    public PKCS5S2ParametersGenerator(Digest digest) {
        HMac hMac = new HMac(digest);
        this.hMac = hMac;
        this.state = new byte[hMac.getMacSize()];
    }

    private void F(byte[] bArr, int i4, byte[] bArr2, byte[] bArr3, int i10) {
        if (i4 == 0) {
            throw new IllegalArgumentException("iteration count must be at least 1.");
        }
        if (bArr != null) {
            this.hMac.update(bArr, 0, bArr.length);
        }
        this.hMac.update(bArr2, 0, bArr2.length);
        this.hMac.doFinal(this.state, 0);
        byte[] bArr4 = this.state;
        System.arraycopy(bArr4, 0, bArr3, i10, bArr4.length);
        for (int i11 = 1; i11 < i4; i11++) {
            Mac mac = this.hMac;
            byte[] bArr5 = this.state;
            mac.update(bArr5, 0, bArr5.length);
            this.hMac.doFinal(this.state, 0);
            int i12 = 0;
            while (true) {
                byte[] bArr6 = this.state;
                if (i12 != bArr6.length) {
                    int i13 = i10 + i12;
                    bArr3[i13] = (byte) (bArr6[i12] ^ bArr3[i13]);
                    i12++;
                }
            }
        }
    }

    private byte[] generateDerivedKey(int i4) {
        int i10;
        int macSize = this.hMac.getMacSize();
        int i11 = ((i4 + macSize) - 1) / macSize;
        byte[] bArr = new byte[4];
        byte[] bArr2 = new byte[i11 * macSize];
        this.hMac.init(new KeyParameter(this.password));
        int i12 = 0;
        for (int i13 = 1; i13 <= i11; i13++) {
            while (true) {
                byte b10 = (byte) (bArr[i10] + 1);
                bArr[i10] = b10;
                i10 = b10 == 0 ? i10 - 1 : 3;
            }
            F(this.salt, this.iterationCount, bArr, bArr2, i12);
            i12 += macSize;
        }
        return bArr2;
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
}
