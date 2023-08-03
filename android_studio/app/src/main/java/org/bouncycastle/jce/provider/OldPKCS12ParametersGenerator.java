package org.bouncycastle.jce.provider;

import org.bouncycastle.crypto.CipherParameters;
import org.bouncycastle.crypto.Digest;
import org.bouncycastle.crypto.PBEParametersGenerator;
import org.bouncycastle.crypto.digests.MD5Digest;
import org.bouncycastle.crypto.digests.RIPEMD160Digest;
import org.bouncycastle.crypto.digests.SHA1Digest;
import org.bouncycastle.crypto.params.KeyParameter;
import org.bouncycastle.crypto.params.ParametersWithIV;

/* loaded from: classes5.dex */
class OldPKCS12ParametersGenerator extends PBEParametersGenerator {
    public static final int IV_MATERIAL = 2;
    public static final int KEY_MATERIAL = 1;
    public static final int MAC_MATERIAL = 3;
    private Digest digest;

    /* renamed from: u  reason: collision with root package name */
    private int f91386u;

    /* renamed from: v  reason: collision with root package name */
    private int f91387v;

    public OldPKCS12ParametersGenerator(Digest digest) {
        this.digest = digest;
        if (digest instanceof MD5Digest) {
            this.f91386u = 16;
        } else if (!(digest instanceof SHA1Digest) && !(digest instanceof RIPEMD160Digest)) {
            throw new IllegalArgumentException("Digest " + digest.getAlgorithmName() + " unsupported");
        } else {
            this.f91386u = 20;
        }
        this.f91387v = 64;
    }

    private void adjust(byte[] bArr, int i4, byte[] bArr2) {
        int i10 = (bArr2[bArr2.length - 1] & 255) + (bArr[(bArr2.length + i4) - 1] & 255) + 1;
        bArr[(bArr2.length + i4) - 1] = (byte) i10;
        int i11 = i10 >>> 8;
        for (int length = bArr2.length - 2; length >= 0; length--) {
            int i12 = i4 + length;
            int i13 = i11 + (bArr2[length] & 255) + (bArr[i12] & 255);
            bArr[i12] = (byte) i13;
            i11 = i13 >>> 8;
        }
    }

    private byte[] generateDerivedKey(int i4, int i10) {
        byte[] bArr;
        byte[] bArr2;
        int i11 = this.f91387v;
        byte[] bArr3 = new byte[i11];
        byte[] bArr4 = new byte[i10];
        int i12 = 0;
        for (int i13 = 0; i13 != i11; i13++) {
            bArr3[i13] = (byte) i4;
        }
        byte[] bArr5 = this.salt;
        if (bArr5 == null || bArr5.length == 0) {
            bArr = new byte[0];
        } else {
            int i14 = this.f91387v;
            int length = i14 * (((bArr5.length + i14) - 1) / i14);
            bArr = new byte[length];
            for (int i15 = 0; i15 != length; i15++) {
                byte[] bArr6 = this.salt;
                bArr[i15] = bArr6[i15 % bArr6.length];
            }
        }
        byte[] bArr7 = this.password;
        if (bArr7 == null || bArr7.length == 0) {
            bArr2 = new byte[0];
        } else {
            int i16 = this.f91387v;
            int length2 = i16 * (((bArr7.length + i16) - 1) / i16);
            bArr2 = new byte[length2];
            for (int i17 = 0; i17 != length2; i17++) {
                byte[] bArr8 = this.password;
                bArr2[i17] = bArr8[i17 % bArr8.length];
            }
        }
        int length3 = bArr.length + bArr2.length;
        byte[] bArr9 = new byte[length3];
        System.arraycopy(bArr, 0, bArr9, 0, bArr.length);
        System.arraycopy(bArr2, 0, bArr9, bArr.length, bArr2.length);
        int i18 = this.f91387v;
        byte[] bArr10 = new byte[i18];
        int i19 = this.f91386u;
        int i20 = ((i10 + i19) - 1) / i19;
        int i21 = 1;
        while (i21 <= i20) {
            int i22 = this.f91386u;
            byte[] bArr11 = new byte[i22];
            this.digest.update(bArr3, i12, i11);
            this.digest.update(bArr9, i12, length3);
            this.digest.doFinal(bArr11, i12);
            for (int i23 = 1; i23 != this.iterationCount; i23++) {
                this.digest.update(bArr11, i12, i22);
                this.digest.doFinal(bArr11, i12);
            }
            for (int i24 = 0; i24 != i18; i24++) {
                bArr10[i21] = bArr11[i24 % i22];
            }
            int i25 = 0;
            while (true) {
                int i26 = this.f91387v;
                if (i25 == length3 / i26) {
                    break;
                }
                adjust(bArr9, i26 * i25, bArr10);
                i25++;
            }
            if (i21 == i20) {
                int i27 = i21 - 1;
                int i28 = this.f91386u;
                System.arraycopy(bArr11, 0, bArr4, i27 * i28, i10 - (i27 * i28));
            } else {
                System.arraycopy(bArr11, 0, bArr4, (i21 - 1) * this.f91386u, i22);
            }
            i21++;
            i12 = 0;
        }
        return bArr4;
    }

    @Override // org.bouncycastle.crypto.PBEParametersGenerator
    public CipherParameters generateDerivedMacParameters(int i4) {
        int i10 = i4 / 8;
        return new KeyParameter(generateDerivedKey(3, i10), 0, i10);
    }

    @Override // org.bouncycastle.crypto.PBEParametersGenerator
    public CipherParameters generateDerivedParameters(int i4) {
        int i10 = i4 / 8;
        return new KeyParameter(generateDerivedKey(1, i10), 0, i10);
    }

    @Override // org.bouncycastle.crypto.PBEParametersGenerator
    public CipherParameters generateDerivedParameters(int i4, int i10) {
        int i11 = i4 / 8;
        int i12 = i10 / 8;
        byte[] generateDerivedKey = generateDerivedKey(1, i11);
        return new ParametersWithIV(new KeyParameter(generateDerivedKey, 0, i11), generateDerivedKey(2, i12), 0, i12);
    }
}
