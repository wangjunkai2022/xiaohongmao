package org.bouncycastle.crypto.modes;

import org.bouncycastle.crypto.BlockCipher;
import org.bouncycastle.crypto.CipherParameters;
import org.bouncycastle.crypto.DataLengthException;
import org.bouncycastle.crypto.OutputLengthException;
import org.bouncycastle.crypto.SkippingStreamCipher;
import org.bouncycastle.crypto.StreamBlockCipher;
import org.bouncycastle.crypto.params.ParametersWithIV;
import org.bouncycastle.util.Arrays;
import org.bouncycastle.util.Pack;

/* loaded from: classes4.dex */
public class SICBlockCipher extends StreamBlockCipher implements SkippingStreamCipher {
    private byte[] IV;
    private final int blockSize;
    private int byteCount;
    private final BlockCipher cipher;
    private byte[] counter;
    private byte[] counterOut;

    public SICBlockCipher(BlockCipher blockCipher) {
        super(blockCipher);
        this.cipher = blockCipher;
        int blockSize = blockCipher.getBlockSize();
        this.blockSize = blockSize;
        this.IV = new byte[blockSize];
        this.counter = new byte[blockSize];
        this.counterOut = new byte[blockSize];
        this.byteCount = 0;
    }

    private void adjustCounter(long j4) {
        int i4;
        int i10 = 5;
        if (j4 >= 0) {
            long j10 = (this.byteCount + j4) / this.blockSize;
            long j11 = j10;
            if (j10 > 255) {
                while (i10 >= 1) {
                    long j12 = 1 << (i10 * 8);
                    while (j11 >= j12) {
                        incrementCounterAt(i10);
                        j11 -= j12;
                    }
                    i10--;
                }
            }
            incrementCounter((int) j11);
            i4 = (int) ((j4 + this.byteCount) - (this.blockSize * j10));
        } else {
            long j13 = ((-j4) - this.byteCount) / this.blockSize;
            long j14 = j13;
            if (j13 > 255) {
                while (i10 >= 1) {
                    long j15 = 1 << (i10 * 8);
                    while (j14 > j15) {
                        decrementCounterAt(i10);
                        j14 -= j15;
                    }
                    i10--;
                }
            }
            for (long j16 = 0; j16 != j14; j16++) {
                decrementCounterAt(0);
            }
            int i11 = (int) (this.byteCount + j4 + (this.blockSize * j13));
            if (i11 >= 0) {
                this.byteCount = 0;
                return;
            } else {
                decrementCounterAt(0);
                i4 = this.blockSize + i11;
            }
        }
        this.byteCount = i4;
    }

    private void checkCounter() {
        if (this.IV.length >= this.blockSize) {
            return;
        }
        int i4 = 0;
        while (true) {
            byte[] bArr = this.IV;
            if (i4 == bArr.length) {
                return;
            }
            if (this.counter[i4] != bArr[i4]) {
                throw new IllegalStateException("Counter in CTR/SIC mode out of range.");
            }
            i4++;
        }
    }

    private void decrementCounterAt(int i4) {
        byte[] bArr;
        byte b10;
        int length = this.counter.length - i4;
        do {
            length--;
            if (length < 0) {
                return;
            }
            b10 = (byte) (bArr[length] - 1);
            this.counter[length] = b10;
        } while (b10 == -1);
    }

    private void incrementCounter(int i4) {
        byte[] bArr = this.counter;
        byte b10 = bArr[bArr.length - 1];
        int length = bArr.length - 1;
        bArr[length] = (byte) (bArr[length] + i4);
        if (b10 == 0 || bArr[bArr.length - 1] >= b10) {
            return;
        }
        incrementCounterAt(1);
    }

    private void incrementCounterAt(int i4) {
        byte b10;
        int length = this.counter.length - i4;
        do {
            length--;
            if (length < 0) {
                return;
            }
            byte[] bArr = this.counter;
            b10 = (byte) (bArr[length] + 1);
            bArr[length] = b10;
        } while (b10 == 0);
    }

    private void incrementCounterChecked() {
        byte b10;
        int length = this.counter.length;
        do {
            length--;
            if (length < 0) {
                break;
            }
            byte[] bArr = this.counter;
            b10 = (byte) (bArr[length] + 1);
            bArr[length] = b10;
        } while (b10 == 0);
        byte[] bArr2 = this.IV;
        if (length < bArr2.length && bArr2.length < this.blockSize) {
            throw new IllegalStateException("Counter in CTR/SIC mode out of range.");
        }
    }

    @Override // org.bouncycastle.crypto.StreamBlockCipher
    protected byte calculateByte(byte b10) throws DataLengthException, IllegalStateException {
        int i4 = this.byteCount;
        if (i4 == 0) {
            this.cipher.processBlock(this.counter, 0, this.counterOut, 0);
            byte[] bArr = this.counterOut;
            int i10 = this.byteCount;
            this.byteCount = i10 + 1;
            return (byte) (b10 ^ bArr[i10]);
        }
        byte[] bArr2 = this.counterOut;
        int i11 = i4 + 1;
        this.byteCount = i11;
        byte b11 = (byte) (b10 ^ bArr2[i4]);
        if (i11 == this.counter.length) {
            this.byteCount = 0;
            incrementCounterChecked();
        }
        return b11;
    }

    @Override // org.bouncycastle.crypto.BlockCipher
    public String getAlgorithmName() {
        return this.cipher.getAlgorithmName() + "/SIC";
    }

    @Override // org.bouncycastle.crypto.BlockCipher
    public int getBlockSize() {
        return this.cipher.getBlockSize();
    }

    @Override // org.bouncycastle.crypto.SkippingCipher
    public long getPosition() {
        byte[] bArr = this.counter;
        int length = bArr.length;
        byte[] bArr2 = new byte[length];
        System.arraycopy(bArr, 0, bArr2, 0, length);
        int i4 = length - 1;
        while (i4 >= 1) {
            byte[] bArr3 = this.IV;
            int i10 = i4 < bArr3.length ? (bArr2[i4] & 255) - (bArr3[i4] & 255) : bArr2[i4] & 255;
            if (i10 < 0) {
                int i11 = i4 - 1;
                bArr2[i11] = (byte) (bArr2[i11] - 1);
                i10 += 256;
            }
            bArr2[i4] = (byte) i10;
            i4--;
        }
        return (Pack.bigEndianToLong(bArr2, length - 8) * this.blockSize) + this.byteCount;
    }

    @Override // org.bouncycastle.crypto.BlockCipher
    public void init(boolean z9, CipherParameters cipherParameters) throws IllegalArgumentException {
        if (!(cipherParameters instanceof ParametersWithIV)) {
            throw new IllegalArgumentException("CTR/SIC mode requires ParametersWithIV");
        }
        ParametersWithIV parametersWithIV = (ParametersWithIV) cipherParameters;
        byte[] clone = Arrays.clone(parametersWithIV.getIV());
        this.IV = clone;
        int i4 = this.blockSize;
        if (i4 < clone.length) {
            throw new IllegalArgumentException("CTR/SIC mode requires IV no greater than: " + this.blockSize + " bytes.");
        }
        int i10 = 8 > i4 / 2 ? i4 / 2 : 8;
        if (i4 - clone.length <= i10) {
            if (parametersWithIV.getParameters() != null) {
                this.cipher.init(true, parametersWithIV.getParameters());
            }
            reset();
            return;
        }
        throw new IllegalArgumentException("CTR/SIC mode requires IV of at least: " + (this.blockSize - i10) + " bytes.");
    }

    @Override // org.bouncycastle.crypto.BlockCipher
    public int processBlock(byte[] bArr, int i4, byte[] bArr2, int i10) throws DataLengthException, IllegalStateException {
        if (this.byteCount != 0) {
            processBytes(bArr, i4, this.blockSize, bArr2, i10);
        } else {
            int i11 = this.blockSize;
            if (i4 + i11 > bArr.length) {
                throw new DataLengthException("input buffer too small");
            }
            if (i11 + i10 > bArr2.length) {
                throw new OutputLengthException("output buffer too short");
            }
            this.cipher.processBlock(this.counter, 0, this.counterOut, 0);
            for (int i12 = 0; i12 < this.blockSize; i12++) {
                bArr2[i10 + i12] = (byte) (bArr[i4 + i12] ^ this.counterOut[i12]);
            }
            incrementCounterChecked();
        }
        return this.blockSize;
    }

    @Override // org.bouncycastle.crypto.StreamBlockCipher, org.bouncycastle.crypto.StreamCipher
    public int processBytes(byte[] bArr, int i4, int i10, byte[] bArr2, int i11) throws DataLengthException {
        byte b10;
        if (i4 + i10 <= bArr.length) {
            if (i11 + i10 <= bArr2.length) {
                for (int i12 = 0; i12 < i10; i12++) {
                    int i13 = this.byteCount;
                    if (i13 == 0) {
                        this.cipher.processBlock(this.counter, 0, this.counterOut, 0);
                        byte b11 = bArr[i4 + i12];
                        byte[] bArr3 = this.counterOut;
                        int i14 = this.byteCount;
                        this.byteCount = i14 + 1;
                        b10 = (byte) (b11 ^ bArr3[i14]);
                    } else {
                        byte b12 = bArr[i4 + i12];
                        byte[] bArr4 = this.counterOut;
                        int i15 = i13 + 1;
                        this.byteCount = i15;
                        b10 = (byte) (bArr4[i13] ^ b12);
                        if (i15 == this.counter.length) {
                            this.byteCount = 0;
                            incrementCounterChecked();
                        }
                    }
                    bArr2[i11 + i12] = b10;
                }
                return i10;
            }
            throw new OutputLengthException("output buffer too short");
        }
        throw new DataLengthException("input buffer too small");
    }

    @Override // org.bouncycastle.crypto.BlockCipher
    public void reset() {
        Arrays.fill(this.counter, (byte) 0);
        byte[] bArr = this.IV;
        System.arraycopy(bArr, 0, this.counter, 0, bArr.length);
        this.cipher.reset();
        this.byteCount = 0;
    }

    @Override // org.bouncycastle.crypto.SkippingCipher
    public long seekTo(long j4) {
        reset();
        return skip(j4);
    }

    @Override // org.bouncycastle.crypto.SkippingCipher
    public long skip(long j4) {
        adjustCounter(j4);
        checkCounter();
        this.cipher.processBlock(this.counter, 0, this.counterOut, 0);
        return j4;
    }
}
