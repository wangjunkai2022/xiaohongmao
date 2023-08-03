package org.bouncycastle.pqc.crypto.gmss;

import java.lang.reflect.Array;
import org.bouncycastle.crypto.Digest;
import org.bouncycastle.pqc.crypto.gmss.util.GMSSRandom;
import org.bouncycastle.util.encoders.Hex;

/* loaded from: classes5.dex */
public class GMSSRootSig {
    private long big8;
    private int checksum;
    private int counter;
    private GMSSRandom gmssRandom;
    private byte[] hash;
    private int height;
    private int ii;

    /* renamed from: k  reason: collision with root package name */
    private int f91501k;
    private int keysize;
    private int mdsize;
    private Digest messDigestOTS;
    private int messagesize;
    private byte[] privateKeyOTS;

    /* renamed from: r  reason: collision with root package name */
    private int f91502r;
    private byte[] seed;
    private byte[] sign;
    private int steps;
    private int test;
    private long test8;

    /* renamed from: w  reason: collision with root package name */
    private int f91503w;

    public GMSSRootSig(Digest digest, int i4, int i10) {
        this.messDigestOTS = digest;
        this.gmssRandom = new GMSSRandom(digest);
        int digestSize = this.messDigestOTS.getDigestSize();
        this.mdsize = digestSize;
        this.f91503w = i4;
        this.height = i10;
        this.f91501k = (1 << i4) - 1;
        this.messagesize = (int) Math.ceil((digestSize << 3) / i4);
    }

    public GMSSRootSig(Digest digest, byte[][] bArr, int[] iArr) {
        this.messDigestOTS = digest;
        this.gmssRandom = new GMSSRandom(digest);
        this.counter = iArr[0];
        this.test = iArr[1];
        this.ii = iArr[2];
        this.f91502r = iArr[3];
        this.steps = iArr[4];
        this.keysize = iArr[5];
        this.height = iArr[6];
        this.f91503w = iArr[7];
        this.checksum = iArr[8];
        int digestSize = this.messDigestOTS.getDigestSize();
        this.mdsize = digestSize;
        int i4 = this.f91503w;
        this.f91501k = (1 << i4) - 1;
        this.messagesize = (int) Math.ceil((digestSize << 3) / i4);
        this.privateKeyOTS = bArr[0];
        this.seed = bArr[1];
        this.hash = bArr[2];
        this.sign = bArr[3];
        this.test8 = ((bArr[4][1] & 255) << 8) | (bArr[4][0] & 255) | ((bArr[4][2] & 255) << 16) | ((bArr[4][3] & 255) << 24) | ((bArr[4][4] & 255) << 32) | ((bArr[4][5] & 255) << 40) | ((bArr[4][6] & 255) << 48) | ((bArr[4][7] & 255) << 56);
        this.big8 = (bArr[4][8] & 255) | ((bArr[4][9] & 255) << 8) | ((bArr[4][10] & 255) << 16) | ((bArr[4][11] & 255) << 24) | ((bArr[4][12] & 255) << 32) | ((bArr[4][13] & 255) << 40) | ((bArr[4][14] & 255) << 48) | ((bArr[4][15] & 255) << 56);
    }

    private void oneStep() {
        long j4;
        int i4 = this.f91503w;
        if (8 % i4 == 0) {
            int i10 = this.test;
            if (i10 == 0) {
                this.privateKeyOTS = this.gmssRandom.nextSeed(this.seed);
                int i11 = this.ii;
                if (i11 < this.mdsize) {
                    byte[] bArr = this.hash;
                    this.test = bArr[i11] & this.f91501k;
                    bArr[i11] = (byte) (bArr[i11] >>> this.f91503w);
                } else {
                    int i12 = this.checksum;
                    this.test = this.f91501k & i12;
                    this.checksum = i12 >>> this.f91503w;
                }
            } else if (i10 > 0) {
                Digest digest = this.messDigestOTS;
                byte[] bArr2 = this.privateKeyOTS;
                digest.update(bArr2, 0, bArr2.length);
                byte[] bArr3 = new byte[this.messDigestOTS.getDigestSize()];
                this.privateKeyOTS = bArr3;
                this.messDigestOTS.doFinal(bArr3, 0);
                this.test--;
            }
            if (this.test == 0) {
                byte[] bArr4 = this.privateKeyOTS;
                byte[] bArr5 = this.sign;
                int i13 = this.counter;
                int i14 = this.mdsize;
                System.arraycopy(bArr4, 0, bArr5, i13 * i14, i14);
                int i15 = this.counter + 1;
                this.counter = i15;
                if (i15 % (8 / this.f91503w) == 0) {
                    this.ii++;
                    return;
                }
                return;
            }
            return;
        }
        if (i4 < 8) {
            int i16 = this.test;
            if (i16 == 0) {
                int i17 = this.counter;
                if (i17 % 8 == 0) {
                    int i18 = this.ii;
                    int i19 = this.mdsize;
                    if (i18 < i19) {
                        this.big8 = 0L;
                        if (i17 < ((i19 / i4) << 3)) {
                            for (int i20 = 0; i20 < this.f91503w; i20++) {
                                long j10 = this.big8;
                                byte[] bArr6 = this.hash;
                                int i21 = this.ii;
                                this.big8 = j10 ^ ((bArr6[i21] & 255) << (i20 << 3));
                                this.ii = i21 + 1;
                            }
                        } else {
                            for (int i22 = 0; i22 < this.mdsize % this.f91503w; i22++) {
                                long j11 = this.big8;
                                byte[] bArr7 = this.hash;
                                int i23 = this.ii;
                                this.big8 = j11 ^ ((bArr7[i23] & 255) << (i22 << 3));
                                this.ii = i23 + 1;
                            }
                        }
                    }
                }
                if (this.counter == this.messagesize) {
                    this.big8 = this.checksum;
                }
                this.test = (int) (this.big8 & this.f91501k);
                this.privateKeyOTS = this.gmssRandom.nextSeed(this.seed);
            } else if (i16 > 0) {
                Digest digest2 = this.messDigestOTS;
                byte[] bArr8 = this.privateKeyOTS;
                digest2.update(bArr8, 0, bArr8.length);
                byte[] bArr9 = new byte[this.messDigestOTS.getDigestSize()];
                this.privateKeyOTS = bArr9;
                this.messDigestOTS.doFinal(bArr9, 0);
                this.test--;
            }
            if (this.test != 0) {
                return;
            }
            byte[] bArr10 = this.privateKeyOTS;
            byte[] bArr11 = this.sign;
            int i24 = this.counter;
            int i25 = this.mdsize;
            System.arraycopy(bArr10, 0, bArr11, i24 * i25, i25);
            this.big8 >>>= this.f91503w;
        } else if (i4 >= 57) {
            return;
        } else {
            long j12 = this.test8;
            if (j12 == 0) {
                this.big8 = 0L;
                this.ii = 0;
                int i26 = this.f91502r;
                int i27 = i26 % 8;
                int i28 = i26 >>> 3;
                int i29 = this.mdsize;
                if (i28 < i29) {
                    if (i26 <= (i29 << 3) - i4) {
                        int i30 = i26 + i4;
                        this.f91502r = i30;
                        i29 = (i30 + 7) >>> 3;
                    } else {
                        this.f91502r = i26 + i4;
                    }
                    while (true) {
                        j4 = this.big8;
                        if (i28 >= i29) {
                            break;
                        }
                        int i31 = this.ii;
                        this.big8 = j4 ^ ((this.hash[i28] & 255) << (i31 << 3));
                        this.ii = i31 + 1;
                        i28++;
                    }
                    long j13 = j4 >>> i27;
                    this.big8 = j13;
                    this.test8 = j13 & this.f91501k;
                } else {
                    int i32 = this.checksum;
                    this.test8 = this.f91501k & i32;
                    this.checksum = i32 >>> i4;
                }
                this.privateKeyOTS = this.gmssRandom.nextSeed(this.seed);
            } else if (j12 > 0) {
                Digest digest3 = this.messDigestOTS;
                byte[] bArr12 = this.privateKeyOTS;
                digest3.update(bArr12, 0, bArr12.length);
                byte[] bArr13 = new byte[this.messDigestOTS.getDigestSize()];
                this.privateKeyOTS = bArr13;
                this.messDigestOTS.doFinal(bArr13, 0);
                this.test8--;
            }
            if (this.test8 != 0) {
                return;
            }
            byte[] bArr14 = this.privateKeyOTS;
            byte[] bArr15 = this.sign;
            int i33 = this.counter;
            int i34 = this.mdsize;
            System.arraycopy(bArr14, 0, bArr15, i33 * i34, i34);
        }
        this.counter++;
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

    public byte[] getSig() {
        return this.sign;
    }

    public byte[][] getStatByte() {
        byte[][] bArr = (byte[][]) Array.newInstance(byte.class, 5, this.mdsize);
        bArr[0] = this.privateKeyOTS;
        bArr[1] = this.seed;
        bArr[2] = this.hash;
        bArr[3] = this.sign;
        bArr[4] = getStatLong();
        return bArr;
    }

    public int[] getStatInt() {
        return new int[]{this.counter, this.test, this.ii, this.f91502r, this.steps, this.keysize, this.height, this.f91503w, this.checksum};
    }

    public byte[] getStatLong() {
        long j4 = this.test8;
        long j10 = this.big8;
        return new byte[]{(byte) (j4 & 255), (byte) ((j4 >> 8) & 255), (byte) ((j4 >> 16) & 255), (byte) ((j4 >> 24) & 255), (byte) ((j4 >> 32) & 255), (byte) ((j4 >> 40) & 255), (byte) ((j4 >> 48) & 255), (byte) ((j4 >> 56) & 255), (byte) (j10 & 255), (byte) ((j10 >> 8) & 255), (byte) ((j10 >> 16) & 255), (byte) ((j10 >> 24) & 255), (byte) ((j10 >> 32) & 255), (byte) ((j10 >> 40) & 255), (byte) ((j10 >> 48) & 255), (byte) ((j10 >> 56) & 255)};
    }

    public void initSign(byte[] bArr, byte[] bArr2) {
        int i4;
        int i10;
        this.hash = new byte[this.mdsize];
        this.messDigestOTS.update(bArr2, 0, bArr2.length);
        byte[] bArr3 = new byte[this.messDigestOTS.getDigestSize()];
        this.hash = bArr3;
        this.messDigestOTS.doFinal(bArr3, 0);
        int i11 = this.mdsize;
        byte[] bArr4 = new byte[i11];
        System.arraycopy(this.hash, 0, bArr4, 0, i11);
        int log = getLog((this.messagesize << this.f91503w) + 1);
        int i12 = this.f91503w;
        int i13 = 8;
        if (8 % i12 == 0) {
            int i14 = 8 / i12;
            i4 = 0;
            for (int i15 = 0; i15 < this.mdsize; i15++) {
                for (int i16 = 0; i16 < i14; i16++) {
                    i4 += bArr4[i15] & this.f91501k;
                    bArr4[i15] = (byte) (bArr4[i15] >>> this.f91503w);
                }
            }
            int i17 = (this.messagesize << this.f91503w) - i4;
            this.checksum = i17;
            int i18 = 0;
            while (i18 < log) {
                i4 += this.f91501k & i17;
                int i19 = this.f91503w;
                i17 >>>= i19;
                i18 += i19;
            }
        } else if (i12 < 8) {
            int i20 = this.mdsize / i12;
            int i21 = 0;
            int i22 = 0;
            int i23 = 0;
            while (i21 < i20) {
                long j4 = 0;
                for (int i24 = 0; i24 < this.f91503w; i24++) {
                    j4 ^= (bArr4[i22] & 255) << (i24 << 3);
                    i22++;
                }
                int i25 = 0;
                while (i25 < i13) {
                    i23 += (int) (this.f91501k & j4);
                    j4 >>>= this.f91503w;
                    i25++;
                    i20 = i20;
                    i13 = 8;
                }
                i21++;
                i13 = 8;
            }
            int i26 = this.mdsize % this.f91503w;
            long j10 = 0;
            for (int i27 = 0; i27 < i26; i27++) {
                j10 ^= (bArr4[i22] & 255) << (i27 << 3);
                i22++;
            }
            int i28 = i26 << 3;
            int i29 = 0;
            while (i29 < i28) {
                i23 += (int) (this.f91501k & j10);
                int i30 = this.f91503w;
                j10 >>>= i30;
                i29 += i30;
            }
            int i31 = (this.messagesize << this.f91503w) - i23;
            this.checksum = i31;
            i4 = i23;
            int i32 = 0;
            while (i32 < log) {
                i4 += this.f91501k & i31;
                int i33 = this.f91503w;
                i31 >>>= i33;
                i32 += i33;
            }
        } else if (i12 < 57) {
            int i34 = 0;
            int i35 = 0;
            while (true) {
                i10 = this.mdsize;
                int i36 = this.f91503w;
                if (i34 > (i10 << 3) - i36) {
                    break;
                }
                int i37 = i34 % 8;
                i34 += i36;
                int i38 = (i34 + 7) >>> 3;
                long j11 = 0;
                int i39 = 0;
                for (int i40 = i34 >>> 3; i40 < i38; i40++) {
                    j11 ^= (bArr4[i40] & 255) << (i39 << 3);
                    i39++;
                }
                i35 = (int) (i35 + ((j11 >>> i37) & this.f91501k));
            }
            int i41 = i34 >>> 3;
            if (i41 < i10) {
                int i42 = i34 % 8;
                int i43 = 0;
                long j12 = 0;
                while (i41 < this.mdsize) {
                    j12 ^= (bArr4[i41] & 255) << (i43 << 3);
                    i43++;
                    i41++;
                }
                i35 = (int) (i35 + ((j12 >>> i42) & this.f91501k));
            }
            int i44 = (this.messagesize << this.f91503w) - i35;
            this.checksum = i44;
            i4 = i35;
            int i45 = 0;
            while (i45 < log) {
                i4 += this.f91501k & i44;
                int i46 = this.f91503w;
                i44 >>>= i46;
                i45 += i46;
            }
        } else {
            i4 = 0;
        }
        int ceil = this.messagesize + ((int) Math.ceil(log / this.f91503w));
        this.keysize = ceil;
        this.steps = (int) Math.ceil((ceil + i4) / (1 << this.height));
        int i47 = this.keysize;
        int i48 = this.mdsize;
        this.sign = new byte[i47 * i48];
        this.counter = 0;
        this.test = 0;
        this.ii = 0;
        this.test8 = 0L;
        this.f91502r = 0;
        this.privateKeyOTS = new byte[i48];
        byte[] bArr5 = new byte[i48];
        this.seed = bArr5;
        System.arraycopy(bArr, 0, bArr5, 0, i48);
    }

    public String toString() {
        String str = "" + this.big8 + "  ";
        int[] statInt = getStatInt();
        byte[][] bArr = (byte[][]) Array.newInstance(byte.class, 5, this.mdsize);
        byte[][] statByte = getStatByte();
        for (int i4 = 0; i4 < 9; i4++) {
            str = str + statInt[i4] + " ";
        }
        for (int i10 = 0; i10 < 5; i10++) {
            str = str + new String(Hex.encode(statByte[i10])) + " ";
        }
        return str;
    }

    public boolean updateSign() {
        for (int i4 = 0; i4 < this.steps; i4++) {
            if (this.counter < this.keysize) {
                oneStep();
            }
            if (this.counter == this.keysize) {
                return true;
            }
        }
        return false;
    }
}
