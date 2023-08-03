package org.bouncycastle.pqc.crypto.sphincsplus;

import org.bouncycastle.crypto.Digest;
import org.bouncycastle.crypto.Xof;
import org.bouncycastle.crypto.digests.SHA256Digest;
import org.bouncycastle.crypto.digests.SHA512Digest;
import org.bouncycastle.crypto.digests.SHAKEDigest;
import org.bouncycastle.crypto.generators.MGF1BytesGenerator;
import org.bouncycastle.crypto.macs.HMac;
import org.bouncycastle.crypto.params.KeyParameter;
import org.bouncycastle.crypto.params.MGFParameters;
import org.bouncycastle.util.Arrays;
import org.bouncycastle.util.Pack;

/* loaded from: classes5.dex */
abstract class SPHINCSPlusEngine {
    final int A;
    final int D;
    final int H;
    final int H_PRIME;
    final int K;
    final int N;
    final int T;
    final int WOTS_LEN;
    final int WOTS_LEN1;
    final int WOTS_LEN2;
    final int WOTS_LOGW;
    final int WOTS_W;
    final boolean robust;

    /* loaded from: classes5.dex */
    static class Sha256Engine extends SPHINCSPlusEngine {
        private final byte[] digestBuf;
        private final byte[] hmacBuf;
        private final MGF1BytesGenerator mgf1;
        private final Digest msgDigest;
        private final byte[] padding;
        private final Digest treeDigest;
        private final HMac treeHMac;

        public Sha256Engine(boolean z9, int i4, int i10, int i11, int i12, int i13, int i14) {
            super(z9, i4, i10, i11, i12, i13, i14);
            MGF1BytesGenerator mGF1BytesGenerator;
            this.padding = new byte[64];
            SHA256Digest sHA256Digest = new SHA256Digest();
            this.treeDigest = sHA256Digest;
            if (i4 == 32) {
                this.msgDigest = new SHA512Digest();
                this.treeHMac = new HMac(new SHA512Digest());
                mGF1BytesGenerator = new MGF1BytesGenerator(new SHA512Digest());
            } else {
                this.msgDigest = new SHA256Digest();
                this.treeHMac = new HMac(new SHA256Digest());
                mGF1BytesGenerator = new MGF1BytesGenerator(new SHA256Digest());
            }
            this.mgf1 = mGF1BytesGenerator;
            this.digestBuf = new byte[sHA256Digest.getDigestSize()];
            this.hmacBuf = new byte[this.treeHMac.getMacSize()];
        }

        private byte[] compressedADRS(ADRS adrs) {
            byte[] bArr = new byte[22];
            System.arraycopy(adrs.value, 3, bArr, 0, 1);
            System.arraycopy(adrs.value, 8, bArr, 1, 8);
            System.arraycopy(adrs.value, 19, bArr, 9, 1);
            System.arraycopy(adrs.value, 20, bArr, 10, 12);
            return bArr;
        }

        @Override // org.bouncycastle.pqc.crypto.sphincsplus.SPHINCSPlusEngine
        public byte[] F(byte[] bArr, ADRS adrs, byte[] bArr2) {
            byte[] compressedADRS = compressedADRS(adrs);
            if (this.robust) {
                bArr2 = bitmask256(Arrays.concatenate(bArr, compressedADRS), bArr2);
            }
            this.treeDigest.update(bArr, 0, bArr.length);
            this.treeDigest.update(this.padding, 0, 64 - bArr.length);
            this.treeDigest.update(compressedADRS, 0, compressedADRS.length);
            this.treeDigest.update(bArr2, 0, bArr2.length);
            this.treeDigest.doFinal(this.digestBuf, 0);
            return Arrays.copyOfRange(this.digestBuf, 0, this.N);
        }

        @Override // org.bouncycastle.pqc.crypto.sphincsplus.SPHINCSPlusEngine
        public byte[] H(byte[] bArr, ADRS adrs, byte[] bArr2, byte[] bArr3) {
            byte[] concatenate = Arrays.concatenate(bArr2, bArr3);
            byte[] compressedADRS = compressedADRS(adrs);
            if (this.robust) {
                concatenate = bitmask256(Arrays.concatenate(bArr, compressedADRS), concatenate);
            }
            this.treeDigest.update(bArr, 0, bArr.length);
            this.treeDigest.update(this.padding, 0, 64 - this.N);
            this.treeDigest.update(compressedADRS, 0, compressedADRS.length);
            this.treeDigest.update(concatenate, 0, concatenate.length);
            this.treeDigest.doFinal(this.digestBuf, 0);
            return Arrays.copyOfRange(this.digestBuf, 0, this.N);
        }

        @Override // org.bouncycastle.pqc.crypto.sphincsplus.SPHINCSPlusEngine
        IndexedDigest H_msg(byte[] bArr, byte[] bArr2, byte[] bArr3, byte[] bArr4) {
            int i4 = ((this.A * this.K) + 7) / 8;
            int i10 = this.H;
            int i11 = i10 / this.D;
            int i12 = i10 - i11;
            int i13 = (i11 + 7) / 8;
            int i14 = (i12 + 7) / 8;
            byte[] bArr5 = new byte[this.msgDigest.getDigestSize()];
            this.msgDigest.update(bArr, 0, bArr.length);
            this.msgDigest.update(bArr2, 0, bArr2.length);
            this.msgDigest.update(bArr3, 0, bArr3.length);
            this.msgDigest.update(bArr4, 0, bArr4.length);
            this.msgDigest.doFinal(bArr5, 0);
            byte[] bitmask = bitmask(Arrays.concatenate(bArr, bArr2, bArr5), new byte[i4 + i13 + i14]);
            byte[] bArr6 = new byte[8];
            System.arraycopy(bitmask, i4, bArr6, 8 - i14, i14);
            long bigEndianToLong = Pack.bigEndianToLong(bArr6, 0) & ((-1) >>> (64 - i12));
            byte[] bArr7 = new byte[4];
            System.arraycopy(bitmask, i14 + i4, bArr7, 4 - i13, i13);
            return new IndexedDigest(bigEndianToLong, Pack.bigEndianToInt(bArr7, 0) & ((-1) >>> (32 - i11)), Arrays.copyOfRange(bitmask, 0, i4));
        }

        @Override // org.bouncycastle.pqc.crypto.sphincsplus.SPHINCSPlusEngine
        byte[] PRF(byte[] bArr, ADRS adrs) {
            int length = bArr.length;
            this.treeDigest.update(bArr, 0, bArr.length);
            byte[] compressedADRS = compressedADRS(adrs);
            this.treeDigest.update(compressedADRS, 0, compressedADRS.length);
            this.treeDigest.doFinal(this.digestBuf, 0);
            return Arrays.copyOfRange(this.digestBuf, 0, length);
        }

        @Override // org.bouncycastle.pqc.crypto.sphincsplus.SPHINCSPlusEngine
        public byte[] PRF_msg(byte[] bArr, byte[] bArr2, byte[] bArr3) {
            this.treeHMac.init(new KeyParameter(bArr));
            this.treeHMac.update(bArr2, 0, bArr2.length);
            this.treeHMac.update(bArr3, 0, bArr3.length);
            this.treeHMac.doFinal(this.hmacBuf, 0);
            return Arrays.copyOfRange(this.hmacBuf, 0, this.N);
        }

        @Override // org.bouncycastle.pqc.crypto.sphincsplus.SPHINCSPlusEngine
        public byte[] T_l(byte[] bArr, ADRS adrs, byte[] bArr2) {
            byte[] compressedADRS = compressedADRS(adrs);
            if (this.robust) {
                bArr2 = bitmask256(Arrays.concatenate(bArr, compressedADRS), bArr2);
            }
            this.treeDigest.update(bArr, 0, bArr.length);
            this.treeDigest.update(this.padding, 0, 64 - this.N);
            this.treeDigest.update(compressedADRS, 0, compressedADRS.length);
            this.treeDigest.update(bArr2, 0, bArr2.length);
            this.treeDigest.doFinal(this.digestBuf, 0);
            return Arrays.copyOfRange(this.digestBuf, 0, this.N);
        }

        protected byte[] bitmask(byte[] bArr, byte[] bArr2) {
            int length = bArr2.length;
            byte[] bArr3 = new byte[length];
            this.mgf1.init(new MGFParameters(bArr));
            this.mgf1.generateBytes(bArr3, 0, length);
            for (int i4 = 0; i4 < bArr2.length; i4++) {
                bArr3[i4] = (byte) (bArr3[i4] ^ bArr2[i4]);
            }
            return bArr3;
        }

        protected byte[] bitmask256(byte[] bArr, byte[] bArr2) {
            int length = bArr2.length;
            byte[] bArr3 = new byte[length];
            MGF1BytesGenerator mGF1BytesGenerator = new MGF1BytesGenerator(new SHA256Digest());
            mGF1BytesGenerator.init(new MGFParameters(bArr));
            mGF1BytesGenerator.generateBytes(bArr3, 0, length);
            for (int i4 = 0; i4 < bArr2.length; i4++) {
                bArr3[i4] = (byte) (bArr3[i4] ^ bArr2[i4]);
            }
            return bArr3;
        }
    }

    /* loaded from: classes5.dex */
    static class Shake256Engine extends SPHINCSPlusEngine {
        private final Xof treeDigest;

        public Shake256Engine(boolean z9, int i4, int i10, int i11, int i12, int i13, int i14) {
            super(z9, i4, i10, i11, i12, i13, i14);
            this.treeDigest = new SHAKEDigest(256);
        }

        @Override // org.bouncycastle.pqc.crypto.sphincsplus.SPHINCSPlusEngine
        byte[] F(byte[] bArr, ADRS adrs, byte[] bArr2) {
            if (this.robust) {
                bArr2 = bitmask(bArr, adrs, bArr2);
            }
            int i4 = this.N;
            byte[] bArr3 = new byte[i4];
            this.treeDigest.update(bArr, 0, bArr.length);
            Xof xof = this.treeDigest;
            byte[] bArr4 = adrs.value;
            xof.update(bArr4, 0, bArr4.length);
            this.treeDigest.update(bArr2, 0, bArr2.length);
            this.treeDigest.doFinal(bArr3, 0, i4);
            return bArr3;
        }

        @Override // org.bouncycastle.pqc.crypto.sphincsplus.SPHINCSPlusEngine
        byte[] H(byte[] bArr, ADRS adrs, byte[] bArr2, byte[] bArr3) {
            byte[] concatenate = Arrays.concatenate(bArr2, bArr3);
            if (this.robust) {
                concatenate = bitmask(bArr, adrs, concatenate);
            }
            int i4 = this.N;
            byte[] bArr4 = new byte[i4];
            this.treeDigest.update(bArr, 0, bArr.length);
            Xof xof = this.treeDigest;
            byte[] bArr5 = adrs.value;
            xof.update(bArr5, 0, bArr5.length);
            this.treeDigest.update(concatenate, 0, concatenate.length);
            this.treeDigest.doFinal(bArr4, 0, i4);
            return bArr4;
        }

        @Override // org.bouncycastle.pqc.crypto.sphincsplus.SPHINCSPlusEngine
        IndexedDigest H_msg(byte[] bArr, byte[] bArr2, byte[] bArr3, byte[] bArr4) {
            int i4 = ((this.A * this.K) + 7) / 8;
            int i10 = this.H;
            int i11 = i10 / this.D;
            int i12 = i10 - i11;
            int i13 = (i11 + 7) / 8;
            int i14 = (i12 + 7) / 8;
            int i15 = i4 + i13 + i14;
            byte[] bArr5 = new byte[i15];
            this.treeDigest.update(bArr, 0, bArr.length);
            this.treeDigest.update(bArr2, 0, bArr2.length);
            this.treeDigest.update(bArr3, 0, bArr3.length);
            this.treeDigest.update(bArr4, 0, bArr4.length);
            this.treeDigest.doFinal(bArr5, 0, i15);
            byte[] bArr6 = new byte[8];
            System.arraycopy(bArr5, i4, bArr6, 8 - i14, i14);
            long bigEndianToLong = Pack.bigEndianToLong(bArr6, 0) & ((-1) >>> (64 - i12));
            byte[] bArr7 = new byte[4];
            System.arraycopy(bArr5, i14 + i4, bArr7, 4 - i13, i13);
            return new IndexedDigest(bigEndianToLong, Pack.bigEndianToInt(bArr7, 0) & ((-1) >>> (32 - i11)), Arrays.copyOfRange(bArr5, 0, i4));
        }

        @Override // org.bouncycastle.pqc.crypto.sphincsplus.SPHINCSPlusEngine
        byte[] PRF(byte[] bArr, ADRS adrs) {
            this.treeDigest.update(bArr, 0, bArr.length);
            Xof xof = this.treeDigest;
            byte[] bArr2 = adrs.value;
            xof.update(bArr2, 0, bArr2.length);
            int i4 = this.N;
            byte[] bArr3 = new byte[i4];
            this.treeDigest.doFinal(bArr3, 0, i4);
            return bArr3;
        }

        @Override // org.bouncycastle.pqc.crypto.sphincsplus.SPHINCSPlusEngine
        public byte[] PRF_msg(byte[] bArr, byte[] bArr2, byte[] bArr3) {
            this.treeDigest.update(bArr, 0, bArr.length);
            this.treeDigest.update(bArr2, 0, bArr2.length);
            this.treeDigest.update(bArr3, 0, bArr3.length);
            int i4 = this.N;
            byte[] bArr4 = new byte[i4];
            this.treeDigest.doFinal(bArr4, 0, i4);
            return bArr4;
        }

        @Override // org.bouncycastle.pqc.crypto.sphincsplus.SPHINCSPlusEngine
        byte[] T_l(byte[] bArr, ADRS adrs, byte[] bArr2) {
            if (this.robust) {
                bArr2 = bitmask(bArr, adrs, bArr2);
            }
            int i4 = this.N;
            byte[] bArr3 = new byte[i4];
            this.treeDigest.update(bArr, 0, bArr.length);
            Xof xof = this.treeDigest;
            byte[] bArr4 = adrs.value;
            xof.update(bArr4, 0, bArr4.length);
            this.treeDigest.update(bArr2, 0, bArr2.length);
            this.treeDigest.doFinal(bArr3, 0, i4);
            return bArr3;
        }

        protected byte[] bitmask(byte[] bArr, ADRS adrs, byte[] bArr2) {
            int length = bArr2.length;
            byte[] bArr3 = new byte[length];
            this.treeDigest.update(bArr, 0, bArr.length);
            Xof xof = this.treeDigest;
            byte[] bArr4 = adrs.value;
            xof.update(bArr4, 0, bArr4.length);
            this.treeDigest.doFinal(bArr3, 0, length);
            for (int i4 = 0; i4 < bArr2.length; i4++) {
                bArr3[i4] = (byte) (bArr3[i4] ^ bArr2[i4]);
            }
            return bArr3;
        }
    }

    public SPHINCSPlusEngine(boolean z9, int i4, int i10, int i11, int i12, int i13, int i14) {
        this.N = i4;
        if (i10 == 16) {
            this.WOTS_LOGW = 4;
            this.WOTS_LEN1 = (i4 * 8) / 4;
            if (i4 > 8) {
                if (i4 <= 136) {
                    this.WOTS_LEN2 = 3;
                } else if (i4 > 256) {
                    throw new IllegalArgumentException("cannot precompute SPX_WOTS_LEN2 for n outside {2, .., 256}");
                } else {
                    this.WOTS_LEN2 = 4;
                }
                this.WOTS_W = i10;
                this.WOTS_LEN = this.WOTS_LEN1 + this.WOTS_LEN2;
                this.robust = z9;
                this.D = i11;
                this.A = i12;
                this.K = i13;
                this.H = i14;
                this.H_PRIME = i14 / i11;
                this.T = 1 << i12;
            }
            this.WOTS_LEN2 = 2;
            this.WOTS_W = i10;
            this.WOTS_LEN = this.WOTS_LEN1 + this.WOTS_LEN2;
            this.robust = z9;
            this.D = i11;
            this.A = i12;
            this.K = i13;
            this.H = i14;
            this.H_PRIME = i14 / i11;
            this.T = 1 << i12;
        } else if (i10 != 256) {
            throw new IllegalArgumentException("wots_w assumed 16 or 256");
        } else {
            this.WOTS_LOGW = 8;
            this.WOTS_LEN1 = (i4 * 8) / 8;
            if (i4 <= 1) {
                this.WOTS_LEN2 = 1;
                this.WOTS_W = i10;
                this.WOTS_LEN = this.WOTS_LEN1 + this.WOTS_LEN2;
                this.robust = z9;
                this.D = i11;
                this.A = i12;
                this.K = i13;
                this.H = i14;
                this.H_PRIME = i14 / i11;
                this.T = 1 << i12;
            }
            if (i4 > 256) {
                throw new IllegalArgumentException("cannot precompute SPX_WOTS_LEN2 for n outside {2, .., 256}");
            }
            this.WOTS_LEN2 = 2;
            this.WOTS_W = i10;
            this.WOTS_LEN = this.WOTS_LEN1 + this.WOTS_LEN2;
            this.robust = z9;
            this.D = i11;
            this.A = i12;
            this.K = i13;
            this.H = i14;
            this.H_PRIME = i14 / i11;
            this.T = 1 << i12;
        }
    }

    protected static byte[] xor(byte[] bArr, byte[] bArr2) {
        byte[] clone = Arrays.clone(bArr);
        for (int i4 = 0; i4 < bArr.length; i4++) {
            clone[i4] = (byte) (clone[i4] ^ bArr2[i4]);
        }
        return clone;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public abstract byte[] F(byte[] bArr, ADRS adrs, byte[] bArr2);

    /* JADX INFO: Access modifiers changed from: package-private */
    public abstract byte[] H(byte[] bArr, ADRS adrs, byte[] bArr2, byte[] bArr3);

    /* JADX INFO: Access modifiers changed from: package-private */
    public abstract IndexedDigest H_msg(byte[] bArr, byte[] bArr2, byte[] bArr3, byte[] bArr4);

    /* JADX INFO: Access modifiers changed from: package-private */
    public abstract byte[] PRF(byte[] bArr, ADRS adrs);

    /* JADX INFO: Access modifiers changed from: package-private */
    public abstract byte[] PRF_msg(byte[] bArr, byte[] bArr2, byte[] bArr3);

    /* JADX INFO: Access modifiers changed from: package-private */
    public abstract byte[] T_l(byte[] bArr, ADRS adrs, byte[] bArr2);
}
