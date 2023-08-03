package org.bouncycastle.pqc.crypto.gmss.util;

import org.bouncycastle.crypto.Digest;

/* loaded from: classes5.dex */
public class WinternitzOTSignature {
    private int checksumsize;
    private GMSSRandom gmssRandom;
    private int keysize;
    private int mdsize;
    private Digest messDigestOTS;
    private int messagesize;
    private byte[][] privateKeyOTS;

    /* renamed from: w  reason: collision with root package name */
    private int f91505w;

    public WinternitzOTSignature(byte[] bArr, Digest digest, int i4) {
        this.f91505w = i4;
        this.messDigestOTS = digest;
        this.gmssRandom = new GMSSRandom(digest);
        int digestSize = this.messDigestOTS.getDigestSize();
        this.mdsize = digestSize;
        int i10 = (((digestSize << 3) + i4) - 1) / i4;
        this.messagesize = i10;
        int log = getLog((i10 << i4) + 1);
        this.checksumsize = log;
        int i11 = this.messagesize + (((log + i4) - 1) / i4);
        this.keysize = i11;
        this.privateKeyOTS = new byte[i11];
        int i12 = this.mdsize;
        byte[] bArr2 = new byte[i12];
        System.arraycopy(bArr, 0, bArr2, 0, i12);
        for (int i13 = 0; i13 < this.keysize; i13++) {
            this.privateKeyOTS[i13] = this.gmssRandom.nextSeed(bArr2);
        }
    }

    private void hashPrivateKeyBlock(int i4, int i10, byte[] bArr, int i11) {
        if (i10 < 1) {
            System.arraycopy(this.privateKeyOTS[i4], 0, bArr, i11, this.mdsize);
            return;
        }
        this.messDigestOTS.update(this.privateKeyOTS[i4], 0, this.mdsize);
        while (true) {
            this.messDigestOTS.doFinal(bArr, i11);
            i10--;
            if (i10 <= 0) {
                return;
            }
            this.messDigestOTS.update(bArr, i11, this.mdsize);
        }
    }

    public int getLog(int i4) {
        int i10 = 1;
        int i11 = 2;
        while (i11 < i4) {
            i11 <<= 1;
            i10++;
        }
        return i10;
    }

    public byte[][] getPrivateKey() {
        return this.privateKeyOTS;
    }

    public byte[] getPublicKey() {
        int i4 = this.keysize * this.mdsize;
        byte[] bArr = new byte[i4];
        int i10 = (1 << this.f91505w) - 1;
        int i11 = 0;
        for (int i12 = 0; i12 < this.keysize; i12++) {
            hashPrivateKeyBlock(i12, i10, bArr, i11);
            i11 += this.mdsize;
        }
        this.messDigestOTS.update(bArr, 0, i4);
        byte[] bArr2 = new byte[this.mdsize];
        this.messDigestOTS.doFinal(bArr2, 0);
        return bArr2;
    }

    public byte[] getSignature(byte[] bArr) {
        int i4;
        int i10 = this.keysize;
        int i11 = this.mdsize;
        byte[] bArr2 = new byte[i10 * i11];
        byte[] bArr3 = new byte[i11];
        int i12 = 0;
        this.messDigestOTS.update(bArr, 0, bArr.length);
        this.messDigestOTS.doFinal(bArr3, 0);
        int i13 = this.f91505w;
        int i14 = 8;
        if (8 % i13 == 0) {
            int i15 = 8 / i13;
            int i16 = (1 << i13) - 1;
            int i17 = 0;
            int i18 = 0;
            for (int i19 = 0; i19 < i11; i19++) {
                for (int i20 = 0; i20 < i15; i20++) {
                    int i21 = bArr3[i19] & i16;
                    i17 += i21;
                    hashPrivateKeyBlock(i18, i21, bArr2, this.mdsize * i18);
                    bArr3[i19] = (byte) (bArr3[i19] >>> this.f91505w);
                    i18++;
                }
            }
            int i22 = (this.messagesize << this.f91505w) - i17;
            while (i12 < this.checksumsize) {
                hashPrivateKeyBlock(i18, i22 & i16, bArr2, this.mdsize * i18);
                int i23 = this.f91505w;
                i22 >>>= i23;
                i18++;
                i12 += i23;
            }
        } else if (i13 < 8) {
            int i24 = this.mdsize / i13;
            int i25 = (1 << i13) - 1;
            int i26 = 0;
            int i27 = 0;
            int i28 = 0;
            int i29 = 0;
            while (i26 < i24) {
                long j4 = 0;
                for (int i30 = 0; i30 < this.f91505w; i30++) {
                    j4 ^= (bArr3[i27] & 255) << (i30 << 3);
                    i27++;
                }
                long j10 = j4;
                int i31 = 0;
                while (i31 < i14) {
                    int i32 = ((int) j10) & i25;
                    i29 += i32;
                    hashPrivateKeyBlock(i28, i32, bArr2, this.mdsize * i28);
                    j10 >>>= this.f91505w;
                    i28++;
                    i31++;
                    i14 = 8;
                }
                i26++;
                i14 = 8;
            }
            int i33 = this.mdsize % this.f91505w;
            long j11 = 0;
            for (int i34 = 0; i34 < i33; i34++) {
                j11 ^= (bArr3[i27] & 255) << (i34 << 3);
                i27++;
            }
            int i35 = i33 << 3;
            int i36 = 0;
            while (i36 < i35) {
                int i37 = ((int) j11) & i25;
                i29 += i37;
                hashPrivateKeyBlock(i28, i37, bArr2, this.mdsize * i28);
                int i38 = this.f91505w;
                j11 >>>= i38;
                i28++;
                i36 += i38;
            }
            int i39 = (this.messagesize << this.f91505w) - i29;
            while (i12 < this.checksumsize) {
                hashPrivateKeyBlock(i28, i39 & i25, bArr2, this.mdsize * i28);
                int i40 = this.f91505w;
                i39 >>>= i40;
                i28++;
                i12 += i40;
            }
        } else if (i13 < 57) {
            int i41 = this.mdsize;
            int i42 = (i41 << 3) - i13;
            int i43 = (1 << i13) - 1;
            byte[] bArr4 = new byte[i41];
            int i44 = 0;
            int i45 = 0;
            int i46 = 0;
            while (i44 <= i42) {
                int i47 = i44 >>> 3;
                int i48 = i44 % 8;
                i44 += this.f91505w;
                int i49 = 0;
                long j12 = 0;
                while (i47 < ((i44 + 7) >>> 3)) {
                    j12 ^= (bArr3[i47] & 255) << (i49 << 3);
                    i49++;
                    i47++;
                    bArr3 = bArr3;
                    i42 = i42;
                }
                byte[] bArr5 = bArr3;
                int i50 = i42;
                long j13 = (j12 >>> i48) & i43;
                i46 = (int) (i46 + j13);
                System.arraycopy(this.privateKeyOTS[i45], 0, bArr4, 0, this.mdsize);
                while (j13 > 0) {
                    this.messDigestOTS.update(bArr4, 0, i41);
                    this.messDigestOTS.doFinal(bArr4, 0);
                    j13--;
                }
                int i51 = this.mdsize;
                System.arraycopy(bArr4, 0, bArr2, i45 * i51, i51);
                i45++;
                bArr3 = bArr5;
                i42 = i50;
            }
            byte[] bArr6 = bArr3;
            int i52 = i44 >>> 3;
            if (i52 < this.mdsize) {
                int i53 = i44 % 8;
                int i54 = 0;
                long j14 = 0;
                while (true) {
                    i4 = this.mdsize;
                    if (i52 >= i4) {
                        break;
                    }
                    j14 ^= (bArr6[i52] & 255) << (i54 << 3);
                    i54++;
                    i52++;
                }
                long j15 = (j14 >>> i53) & i43;
                i46 = (int) (i46 + j15);
                System.arraycopy(this.privateKeyOTS[i45], 0, bArr4, 0, i4);
                while (j15 > 0) {
                    this.messDigestOTS.update(bArr4, 0, i41);
                    this.messDigestOTS.doFinal(bArr4, 0);
                    j15--;
                }
                int i55 = this.mdsize;
                System.arraycopy(bArr4, 0, bArr2, i45 * i55, i55);
                i45++;
            }
            int i56 = (this.messagesize << this.f91505w) - i46;
            int i57 = 0;
            while (i57 < this.checksumsize) {
                System.arraycopy(this.privateKeyOTS[i45], 0, bArr4, 0, this.mdsize);
                for (long j16 = i56 & i43; j16 > 0; j16--) {
                    this.messDigestOTS.update(bArr4, 0, i41);
                    this.messDigestOTS.doFinal(bArr4, 0);
                }
                int i58 = this.mdsize;
                System.arraycopy(bArr4, 0, bArr2, i45 * i58, i58);
                int i59 = this.f91505w;
                i56 >>>= i59;
                i45++;
                i57 += i59;
            }
        }
        return bArr2;
    }
}
