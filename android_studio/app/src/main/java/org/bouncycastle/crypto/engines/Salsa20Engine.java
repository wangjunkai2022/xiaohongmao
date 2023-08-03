package org.bouncycastle.crypto.engines;

import org.bouncycastle.crypto.CipherParameters;
import org.bouncycastle.crypto.DataLengthException;
import org.bouncycastle.crypto.MaxBytesExceededException;
import org.bouncycastle.crypto.OutputLengthException;
import org.bouncycastle.crypto.SkippingStreamCipher;
import org.bouncycastle.crypto.params.KeyParameter;
import org.bouncycastle.crypto.params.ParametersWithIV;
import org.bouncycastle.util.Integers;
import org.bouncycastle.util.Pack;
import org.bouncycastle.util.Strings;

/* loaded from: classes4.dex */
public class Salsa20Engine implements SkippingStreamCipher {
    public static final int DEFAULT_ROUNDS = 20;
    private static final int STATE_SIZE = 16;
    private static final int[] TAU_SIGMA = Pack.littleEndianToInt(Strings.toByteArray("expand 16-byte kexpand 32-byte k"), 0, 8);
    protected static final byte[] sigma = Strings.toByteArray("expand 32-byte k");
    protected static final byte[] tau = Strings.toByteArray("expand 16-byte k");
    private int cW0;
    private int cW1;
    private int cW2;
    protected int[] engineState;
    private int index;
    private boolean initialised;
    private byte[] keyStream;
    protected int rounds;

    /* renamed from: x  reason: collision with root package name */
    protected int[] f91240x;

    public Salsa20Engine() {
        this(20);
    }

    public Salsa20Engine(int i4) {
        this.index = 0;
        this.engineState = new int[16];
        this.f91240x = new int[16];
        this.keyStream = new byte[64];
        this.initialised = false;
        if (i4 <= 0 || (i4 & 1) != 0) {
            throw new IllegalArgumentException("'rounds' must be a positive, even number");
        }
        this.rounds = i4;
    }

    private boolean limitExceeded() {
        int i4 = this.cW0 + 1;
        this.cW0 = i4;
        if (i4 == 0) {
            int i10 = this.cW1 + 1;
            this.cW1 = i10;
            if (i10 == 0) {
                int i11 = this.cW2 + 1;
                this.cW2 = i11;
                return (i11 & 32) != 0;
            }
        }
        return false;
    }

    private boolean limitExceeded(int i4) {
        int i10 = this.cW0 + i4;
        this.cW0 = i10;
        if (i10 >= i4 || i10 < 0) {
            return false;
        }
        int i11 = this.cW1 + 1;
        this.cW1 = i11;
        if (i11 == 0) {
            int i12 = this.cW2 + 1;
            this.cW2 = i12;
            return (i12 & 32) != 0;
        }
        return false;
    }

    private void resetLimitCounter() {
        this.cW0 = 0;
        this.cW1 = 0;
        this.cW2 = 0;
    }

    public static void salsaCore(int i4, int[] iArr, int[] iArr2) {
        if (iArr.length != 16) {
            throw new IllegalArgumentException();
        }
        if (iArr2.length != 16) {
            throw new IllegalArgumentException();
        }
        if (i4 % 2 != 0) {
            throw new IllegalArgumentException("Number of rounds must be even");
        }
        int i10 = iArr[0];
        int i11 = iArr[1];
        int i12 = iArr[2];
        int i13 = iArr[3];
        int i14 = iArr[4];
        int i15 = iArr[5];
        int i16 = iArr[6];
        int i17 = 7;
        int i18 = iArr[7];
        int i19 = iArr[8];
        int i20 = 9;
        int i21 = iArr[9];
        int i22 = iArr[10];
        int i23 = iArr[11];
        int i24 = iArr[12];
        int i25 = 13;
        int i26 = iArr[13];
        int i27 = iArr[14];
        int i28 = iArr[15];
        int i29 = i27;
        int i30 = i26;
        int i31 = i24;
        int i32 = i23;
        int i33 = i22;
        int i34 = i21;
        int i35 = i19;
        int i36 = i18;
        int i37 = i16;
        int i38 = i15;
        int i39 = i14;
        int i40 = i13;
        int i41 = i12;
        int i42 = i11;
        int i43 = i10;
        int i44 = i4;
        while (i44 > 0) {
            int rotateLeft = Integers.rotateLeft(i43 + i31, i17) ^ i39;
            int rotateLeft2 = i35 ^ Integers.rotateLeft(rotateLeft + i43, i20);
            int rotateLeft3 = i31 ^ Integers.rotateLeft(rotateLeft2 + rotateLeft, i25);
            int rotateLeft4 = Integers.rotateLeft(rotateLeft3 + rotateLeft2, 18) ^ i43;
            int rotateLeft5 = i34 ^ Integers.rotateLeft(i38 + i42, i17);
            int rotateLeft6 = i30 ^ Integers.rotateLeft(rotateLeft5 + i38, i20);
            int rotateLeft7 = i42 ^ Integers.rotateLeft(rotateLeft6 + rotateLeft5, i25);
            int rotateLeft8 = Integers.rotateLeft(rotateLeft7 + rotateLeft6, 18) ^ i38;
            int rotateLeft9 = i29 ^ Integers.rotateLeft(i33 + i37, 7);
            int rotateLeft10 = i41 ^ Integers.rotateLeft(rotateLeft9 + i33, 9);
            int rotateLeft11 = i37 ^ Integers.rotateLeft(rotateLeft10 + rotateLeft9, 13);
            int rotateLeft12 = i33 ^ Integers.rotateLeft(rotateLeft11 + rotateLeft10, 18);
            int rotateLeft13 = i40 ^ Integers.rotateLeft(i28 + i32, 7);
            int rotateLeft14 = i36 ^ Integers.rotateLeft(rotateLeft13 + i28, 9);
            int i45 = i44;
            int rotateLeft15 = i32 ^ Integers.rotateLeft(rotateLeft14 + rotateLeft13, 13);
            int rotateLeft16 = i28 ^ Integers.rotateLeft(rotateLeft15 + rotateLeft14, 18);
            i42 = rotateLeft7 ^ Integers.rotateLeft(rotateLeft4 + rotateLeft13, 7);
            i41 = rotateLeft10 ^ Integers.rotateLeft(i42 + rotateLeft4, 9);
            int rotateLeft17 = rotateLeft13 ^ Integers.rotateLeft(i41 + i42, 13);
            int rotateLeft18 = rotateLeft4 ^ Integers.rotateLeft(rotateLeft17 + i41, 18);
            i37 = rotateLeft11 ^ Integers.rotateLeft(rotateLeft8 + rotateLeft, 7);
            i36 = rotateLeft14 ^ Integers.rotateLeft(i37 + rotateLeft8, 9);
            int rotateLeft19 = Integers.rotateLeft(i36 + i37, 13) ^ rotateLeft;
            i38 = rotateLeft8 ^ Integers.rotateLeft(rotateLeft19 + i36, 18);
            i32 = rotateLeft15 ^ Integers.rotateLeft(rotateLeft12 + rotateLeft5, 7);
            int rotateLeft20 = Integers.rotateLeft(i32 + rotateLeft12, 9) ^ rotateLeft2;
            i34 = rotateLeft5 ^ Integers.rotateLeft(rotateLeft20 + i32, 13);
            i33 = rotateLeft12 ^ Integers.rotateLeft(i34 + rotateLeft20, 18);
            i31 = rotateLeft3 ^ Integers.rotateLeft(rotateLeft16 + rotateLeft9, 7);
            i30 = rotateLeft6 ^ Integers.rotateLeft(i31 + rotateLeft16, 9);
            i29 = rotateLeft9 ^ Integers.rotateLeft(i30 + i31, 13);
            i28 = rotateLeft16 ^ Integers.rotateLeft(i29 + i30, 18);
            i40 = rotateLeft17;
            i35 = rotateLeft20;
            i43 = rotateLeft18;
            i39 = rotateLeft19;
            i25 = 13;
            i20 = 9;
            i17 = 7;
            i44 = i45 - 2;
        }
        iArr2[0] = i43 + iArr[0];
        iArr2[1] = i42 + iArr[1];
        iArr2[2] = i41 + iArr[2];
        iArr2[3] = i40 + iArr[3];
        iArr2[4] = i39 + iArr[4];
        iArr2[5] = i38 + iArr[5];
        iArr2[6] = i37 + iArr[6];
        iArr2[7] = i36 + iArr[7];
        iArr2[8] = i35 + iArr[8];
        iArr2[9] = i34 + iArr[9];
        iArr2[10] = i33 + iArr[10];
        iArr2[11] = i32 + iArr[11];
        iArr2[12] = i31 + iArr[12];
        iArr2[13] = i30 + iArr[13];
        iArr2[14] = i29 + iArr[14];
        iArr2[15] = i28 + iArr[15];
    }

    protected void advanceCounter() {
        int[] iArr = this.engineState;
        int i4 = iArr[8] + 1;
        iArr[8] = i4;
        if (i4 == 0) {
            iArr[9] = iArr[9] + 1;
        }
    }

    protected void advanceCounter(long j4) {
        int i4 = (int) (j4 >>> 32);
        int i10 = (int) j4;
        if (i4 > 0) {
            int[] iArr = this.engineState;
            iArr[9] = iArr[9] + i4;
        }
        int[] iArr2 = this.engineState;
        int i11 = iArr2[8];
        iArr2[8] = iArr2[8] + i10;
        if (i11 == 0 || iArr2[8] >= i11) {
            return;
        }
        iArr2[9] = iArr2[9] + 1;
    }

    protected void generateKeyStream(byte[] bArr) {
        salsaCore(this.rounds, this.engineState, this.f91240x);
        Pack.intToLittleEndian(this.f91240x, bArr, 0);
    }

    @Override // org.bouncycastle.crypto.StreamCipher
    public String getAlgorithmName() {
        if (this.rounds != 20) {
            return "Salsa20/" + this.rounds;
        }
        return "Salsa20";
    }

    protected long getCounter() {
        int[] iArr = this.engineState;
        return (iArr[9] << 32) | (iArr[8] & 4294967295L);
    }

    protected int getNonceSize() {
        return 8;
    }

    @Override // org.bouncycastle.crypto.SkippingCipher
    public long getPosition() {
        return (getCounter() * 64) + this.index;
    }

    @Override // org.bouncycastle.crypto.StreamCipher
    public void init(boolean z9, CipherParameters cipherParameters) {
        if (!(cipherParameters instanceof ParametersWithIV)) {
            throw new IllegalArgumentException(getAlgorithmName() + " Init parameters must include an IV");
        }
        ParametersWithIV parametersWithIV = (ParametersWithIV) cipherParameters;
        byte[] iv = parametersWithIV.getIV();
        if (iv == null || iv.length != getNonceSize()) {
            throw new IllegalArgumentException(getAlgorithmName() + " requires exactly " + getNonceSize() + " bytes of IV");
        }
        CipherParameters parameters = parametersWithIV.getParameters();
        if (parameters == null) {
            if (!this.initialised) {
                throw new IllegalStateException(getAlgorithmName() + " KeyParameter can not be null for first initialisation");
            }
            setKey(null, iv);
        } else if (!(parameters instanceof KeyParameter)) {
            throw new IllegalArgumentException(getAlgorithmName() + " Init parameters must contain a KeyParameter (or null for re-init)");
        } else {
            setKey(((KeyParameter) parameters).getKey(), iv);
        }
        reset();
        this.initialised = true;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void packTauOrSigma(int i4, int[] iArr, int i10) {
        int i11 = (i4 - 16) / 4;
        int[] iArr2 = TAU_SIGMA;
        iArr[i10] = iArr2[i11];
        iArr[i10 + 1] = iArr2[i11 + 1];
        iArr[i10 + 2] = iArr2[i11 + 2];
        iArr[i10 + 3] = iArr2[i11 + 3];
    }

    @Override // org.bouncycastle.crypto.StreamCipher
    public int processBytes(byte[] bArr, int i4, int i10, byte[] bArr2, int i11) {
        if (!this.initialised) {
            throw new IllegalStateException(getAlgorithmName() + " not initialised");
        } else if (i4 + i10 <= bArr.length) {
            if (i11 + i10 <= bArr2.length) {
                if (limitExceeded(i10)) {
                    throw new MaxBytesExceededException("2^70 byte limit per IV would be exceeded; Change IV");
                }
                for (int i12 = 0; i12 < i10; i12++) {
                    byte[] bArr3 = this.keyStream;
                    int i13 = this.index;
                    bArr2[i12 + i11] = (byte) (bArr3[i13] ^ bArr[i12 + i4]);
                    int i14 = (i13 + 1) & 63;
                    this.index = i14;
                    if (i14 == 0) {
                        advanceCounter();
                        generateKeyStream(this.keyStream);
                    }
                }
                return i10;
            }
            throw new OutputLengthException("output buffer too short");
        } else {
            throw new DataLengthException("input buffer too short");
        }
    }

    @Override // org.bouncycastle.crypto.StreamCipher
    public void reset() {
        this.index = 0;
        resetLimitCounter();
        resetCounter();
        generateKeyStream(this.keyStream);
    }

    protected void resetCounter() {
        int[] iArr = this.engineState;
        iArr[9] = 0;
        iArr[8] = 0;
    }

    protected void retreatCounter() {
        int[] iArr = this.engineState;
        if (iArr[8] == 0 && iArr[9] == 0) {
            throw new IllegalStateException("attempt to reduce counter past zero.");
        }
        int i4 = iArr[8] - 1;
        iArr[8] = i4;
        if (i4 == -1) {
            iArr[9] = iArr[9] - 1;
        }
    }

    protected void retreatCounter(long j4) {
        int i4 = (int) (j4 >>> 32);
        int i10 = (int) j4;
        if (i4 != 0) {
            int[] iArr = this.engineState;
            if ((iArr[9] & 4294967295L) < (i4 & 4294967295L)) {
                throw new IllegalStateException("attempt to reduce counter past zero.");
            }
            iArr[9] = iArr[9] - i4;
        }
        int[] iArr2 = this.engineState;
        if ((iArr2[8] & 4294967295L) >= (4294967295L & i10)) {
            iArr2[8] = iArr2[8] - i10;
        } else if (iArr2[9] == 0) {
            throw new IllegalStateException("attempt to reduce counter past zero.");
        } else {
            iArr2[9] = iArr2[9] - 1;
            iArr2[8] = iArr2[8] - i10;
        }
    }

    @Override // org.bouncycastle.crypto.StreamCipher
    public byte returnByte(byte b10) {
        if (limitExceeded()) {
            throw new MaxBytesExceededException("2^70 byte limit per IV; Change IV");
        }
        byte[] bArr = this.keyStream;
        int i4 = this.index;
        byte b11 = (byte) (b10 ^ bArr[i4]);
        int i10 = (i4 + 1) & 63;
        this.index = i10;
        if (i10 == 0) {
            advanceCounter();
            generateKeyStream(this.keyStream);
        }
        return b11;
    }

    @Override // org.bouncycastle.crypto.SkippingCipher
    public long seekTo(long j4) {
        reset();
        return skip(j4);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void setKey(byte[] bArr, byte[] bArr2) {
        if (bArr != null) {
            if (bArr.length != 16 && bArr.length != 32) {
                throw new IllegalArgumentException(getAlgorithmName() + " requires 128 bit or 256 bit key");
            }
            int length = (bArr.length - 16) / 4;
            int[] iArr = this.engineState;
            int[] iArr2 = TAU_SIGMA;
            iArr[0] = iArr2[length];
            iArr[5] = iArr2[length + 1];
            iArr[10] = iArr2[length + 2];
            iArr[15] = iArr2[length + 3];
            Pack.littleEndianToInt(bArr, 0, iArr, 1, 4);
            Pack.littleEndianToInt(bArr, bArr.length - 16, this.engineState, 11, 4);
        }
        Pack.littleEndianToInt(bArr2, 0, this.engineState, 6, 2);
    }

    @Override // org.bouncycastle.crypto.SkippingCipher
    public long skip(long j4) {
        long j10;
        if (j4 >= 0) {
            if (j4 >= 64) {
                long j11 = j4 / 64;
                advanceCounter(j11);
                j10 = j4 - (j11 * 64);
            } else {
                j10 = j4;
            }
            int i4 = this.index;
            int i10 = (((int) j10) + i4) & 63;
            this.index = i10;
            if (i10 < i4) {
                advanceCounter();
            }
        } else {
            long j12 = -j4;
            if (j12 >= 64) {
                long j13 = j12 / 64;
                retreatCounter(j13);
                j12 -= j13 * 64;
            }
            for (long j14 = 0; j14 < j12; j14++) {
                if (this.index == 0) {
                    retreatCounter();
                }
                this.index = (this.index - 1) & 63;
            }
        }
        generateKeyStream(this.keyStream);
        return j4;
    }
}
