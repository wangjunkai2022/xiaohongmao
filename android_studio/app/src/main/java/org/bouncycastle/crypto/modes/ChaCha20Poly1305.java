package org.bouncycastle.crypto.modes;

import java.util.Objects;
import org.bouncycastle.crypto.CipherParameters;
import org.bouncycastle.crypto.DataLengthException;
import org.bouncycastle.crypto.InvalidCipherTextException;
import org.bouncycastle.crypto.Mac;
import org.bouncycastle.crypto.OutputLengthException;
import org.bouncycastle.crypto.engines.ChaCha7539Engine;
import org.bouncycastle.crypto.macs.Poly1305;
import org.bouncycastle.crypto.params.AEADParameters;
import org.bouncycastle.crypto.params.KeyParameter;
import org.bouncycastle.crypto.params.ParametersWithIV;
import org.bouncycastle.util.Arrays;
import org.bouncycastle.util.Pack;

/* loaded from: classes4.dex */
public class ChaCha20Poly1305 implements AEADCipher {
    private static final long AAD_LIMIT = -1;
    private static final int BUF_SIZE = 64;
    private static final long DATA_LIMIT = 274877906880L;
    private static final int KEY_SIZE = 32;
    private static final int MAC_SIZE = 16;
    private static final int NONCE_SIZE = 12;
    private static final byte[] ZEROES = new byte[15];
    private long aadCount;
    private final byte[] buf;
    private int bufPos;
    private final ChaCha7539Engine chacha20;
    private long dataCount;
    private byte[] initialAAD;
    private final byte[] key;
    private final byte[] mac;
    private final byte[] nonce;
    private final Mac poly1305;
    private int state;

    /* loaded from: classes4.dex */
    private static final class State {
        static final int DEC_AAD = 6;
        static final int DEC_DATA = 7;
        static final int DEC_FINAL = 8;
        static final int DEC_INIT = 5;
        static final int ENC_AAD = 2;
        static final int ENC_DATA = 3;
        static final int ENC_FINAL = 4;
        static final int ENC_INIT = 1;
        static final int UNINITIALIZED = 0;

        private State() {
        }
    }

    public ChaCha20Poly1305() {
        this(new Poly1305());
    }

    public ChaCha20Poly1305(Mac mac) {
        this.key = new byte[32];
        this.nonce = new byte[12];
        this.buf = new byte[80];
        this.mac = new byte[16];
        this.state = 0;
        Objects.requireNonNull(mac, "'poly1305' cannot be null");
        if (16 != mac.getMacSize()) {
            throw new IllegalArgumentException("'poly1305' must be a 128-bit MAC");
        }
        this.chacha20 = new ChaCha7539Engine();
        this.poly1305 = mac;
    }

    private void checkAAD() {
        int i4 = this.state;
        int i10 = 2;
        if (i4 != 1) {
            if (i4 == 2) {
                return;
            }
            if (i4 == 4) {
                throw new IllegalStateException("ChaCha20Poly1305 cannot be reused for encryption");
            }
            i10 = 6;
            if (i4 != 5) {
                if (i4 != 6) {
                    throw new IllegalStateException();
                }
                return;
            }
        }
        this.state = i10;
    }

    private void checkData() {
        int i4;
        switch (this.state) {
            case 1:
            case 2:
                i4 = 3;
                break;
            case 3:
            case 7:
                return;
            case 4:
                throw new IllegalStateException("ChaCha20Poly1305 cannot be reused for encryption");
            case 5:
            case 6:
                i4 = 7;
                break;
            default:
                throw new IllegalStateException();
        }
        finishAAD(i4);
    }

    private void finishAAD(int i4) {
        padMAC(this.aadCount);
        this.state = i4;
    }

    private void finishData(int i4) {
        padMAC(this.dataCount);
        byte[] bArr = new byte[16];
        Pack.longToLittleEndian(this.aadCount, bArr, 0);
        Pack.longToLittleEndian(this.dataCount, bArr, 8);
        this.poly1305.update(bArr, 0, 16);
        this.poly1305.doFinal(this.mac, 0);
        this.state = i4;
    }

    private long incrementCount(long j4, int i4, long j10) {
        long j11 = i4;
        if (j4 - Long.MIN_VALUE <= (j10 - j11) - Long.MIN_VALUE) {
            return j4 + j11;
        }
        throw new IllegalStateException("Limit exceeded");
    }

    private void initMAC() {
        byte[] bArr = new byte[64];
        try {
            this.chacha20.processBytes(bArr, 0, 64, bArr, 0);
            this.poly1305.init(new KeyParameter(bArr, 0, 32));
        } finally {
            Arrays.clear(bArr);
        }
    }

    private void padMAC(long j4) {
        int i4 = ((int) j4) & 15;
        if (i4 != 0) {
            this.poly1305.update(ZEROES, 0, 16 - i4);
        }
    }

    private void processData(byte[] bArr, int i4, int i10, byte[] bArr2, int i11) {
        if (i11 > bArr2.length - i10) {
            throw new OutputLengthException("Output buffer too short");
        }
        this.chacha20.processBytes(bArr, i4, i10, bArr2, i11);
        this.dataCount = incrementCount(this.dataCount, i10, DATA_LIMIT);
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    private void reset(boolean z9, boolean z10) {
        Arrays.clear(this.buf);
        if (z9) {
            Arrays.clear(this.mac);
        }
        this.aadCount = 0L;
        this.dataCount = 0L;
        this.bufPos = 0;
        switch (this.state) {
            case 1:
            case 5:
                break;
            case 2:
            case 3:
            case 4:
                this.state = 4;
                return;
            case 6:
            case 7:
            case 8:
                this.state = 5;
                break;
            default:
                throw new IllegalStateException();
        }
        if (z10) {
            this.chacha20.reset();
        }
        initMAC();
        byte[] bArr = this.initialAAD;
        if (bArr != null) {
            processAADBytes(bArr, 0, bArr.length);
        }
    }

    @Override // org.bouncycastle.crypto.modes.AEADCipher
    public int doFinal(byte[] bArr, int i4) throws IllegalStateException, InvalidCipherTextException {
        int i10;
        Objects.requireNonNull(bArr, "'out' cannot be null");
        if (i4 >= 0) {
            checkData();
            Arrays.clear(this.mac);
            int i11 = this.state;
            if (i11 == 3) {
                int i12 = this.bufPos;
                i10 = i12 + 16;
                if (i4 > bArr.length - i10) {
                    throw new OutputLengthException("Output buffer too short");
                }
                if (i12 > 0) {
                    processData(this.buf, 0, i12, bArr, i4);
                    this.poly1305.update(bArr, i4, this.bufPos);
                }
                finishData(4);
                System.arraycopy(this.mac, 0, bArr, i4 + this.bufPos, 16);
            } else if (i11 != 7) {
                throw new IllegalStateException();
            } else {
                int i13 = this.bufPos;
                if (i13 < 16) {
                    throw new InvalidCipherTextException("data too short");
                }
                i10 = i13 - 16;
                if (i4 > bArr.length - i10) {
                    throw new OutputLengthException("Output buffer too short");
                }
                if (i10 > 0) {
                    this.poly1305.update(this.buf, 0, i10);
                    processData(this.buf, 0, i10, bArr, i4);
                }
                finishData(8);
                if (!Arrays.constantTimeAreEqual(16, this.mac, 0, this.buf, i10)) {
                    throw new InvalidCipherTextException("mac check in ChaCha20Poly1305 failed");
                }
            }
            reset(false, true);
            return i10;
        }
        throw new IllegalArgumentException("'outOff' cannot be negative");
    }

    @Override // org.bouncycastle.crypto.modes.AEADCipher
    public String getAlgorithmName() {
        return "ChaCha20Poly1305";
    }

    @Override // org.bouncycastle.crypto.modes.AEADCipher
    public byte[] getMac() {
        return Arrays.clone(this.mac);
    }

    @Override // org.bouncycastle.crypto.modes.AEADCipher
    public int getOutputSize(int i4) {
        int max = Math.max(0, i4) + this.bufPos;
        int i10 = this.state;
        if (i10 == 1 || i10 == 2 || i10 == 3) {
            return max + 16;
        }
        if (i10 == 5 || i10 == 6 || i10 == 7) {
            return Math.max(0, max - 16);
        }
        throw new IllegalStateException();
    }

    @Override // org.bouncycastle.crypto.modes.AEADCipher
    public int getUpdateOutputSize(int i4) {
        int max = Math.max(0, i4) + this.bufPos;
        int i10 = this.state;
        if (i10 != 1 && i10 != 2 && i10 != 3) {
            if (i10 != 5 && i10 != 6 && i10 != 7) {
                throw new IllegalStateException();
            }
            max = Math.max(0, max - 16);
        }
        return max - (max % 64);
    }

    @Override // org.bouncycastle.crypto.modes.AEADCipher
    public void init(boolean z9, CipherParameters cipherParameters) throws IllegalArgumentException {
        ParametersWithIV parametersWithIV;
        KeyParameter keyParameter;
        byte[] iv;
        if (cipherParameters instanceof AEADParameters) {
            AEADParameters aEADParameters = (AEADParameters) cipherParameters;
            int macSize = aEADParameters.getMacSize();
            if (128 != macSize) {
                throw new IllegalArgumentException("Invalid value for MAC size: " + macSize);
            }
            keyParameter = aEADParameters.getKey();
            iv = aEADParameters.getNonce();
            parametersWithIV = new ParametersWithIV(keyParameter, iv);
            this.initialAAD = aEADParameters.getAssociatedText();
        } else if (!(cipherParameters instanceof ParametersWithIV)) {
            throw new IllegalArgumentException("invalid parameters passed to ChaCha20Poly1305");
        } else {
            parametersWithIV = (ParametersWithIV) cipherParameters;
            keyParameter = (KeyParameter) parametersWithIV.getParameters();
            iv = parametersWithIV.getIV();
            this.initialAAD = null;
        }
        if (keyParameter == null) {
            if (this.state == 0) {
                throw new IllegalArgumentException("Key must be specified in initial init");
            }
        } else if (32 != keyParameter.getKey().length) {
            throw new IllegalArgumentException("Key must be 256 bits");
        }
        if (iv == null || 12 != iv.length) {
            throw new IllegalArgumentException("Nonce must be 96 bits");
        }
        if (this.state != 0 && z9 && Arrays.areEqual(this.nonce, iv) && (keyParameter == null || Arrays.areEqual(this.key, keyParameter.getKey()))) {
            throw new IllegalArgumentException("cannot reuse nonce for ChaCha20Poly1305 encryption");
        }
        if (keyParameter != null) {
            System.arraycopy(keyParameter.getKey(), 0, this.key, 0, 32);
        }
        System.arraycopy(iv, 0, this.nonce, 0, 12);
        this.chacha20.init(true, parametersWithIV);
        this.state = z9 ? 1 : 5;
        reset(true, false);
    }

    @Override // org.bouncycastle.crypto.modes.AEADCipher
    public void processAADByte(byte b10) {
        checkAAD();
        this.aadCount = incrementCount(this.aadCount, 1, -1L);
        this.poly1305.update(b10);
    }

    @Override // org.bouncycastle.crypto.modes.AEADCipher
    public void processAADBytes(byte[] bArr, int i4, int i10) {
        Objects.requireNonNull(bArr, "'in' cannot be null");
        if (i4 < 0) {
            throw new IllegalArgumentException("'inOff' cannot be negative");
        }
        if (i10 < 0) {
            throw new IllegalArgumentException("'len' cannot be negative");
        }
        if (i4 > bArr.length - i10) {
            throw new DataLengthException("Input buffer too short");
        }
        checkAAD();
        if (i10 > 0) {
            this.aadCount = incrementCount(this.aadCount, i10, -1L);
            this.poly1305.update(bArr, i4, i10);
        }
    }

    @Override // org.bouncycastle.crypto.modes.AEADCipher
    public int processByte(byte b10, byte[] bArr, int i4) throws DataLengthException {
        checkData();
        int i10 = this.state;
        if (i10 == 3) {
            byte[] bArr2 = this.buf;
            int i11 = this.bufPos;
            bArr2[i11] = b10;
            int i12 = i11 + 1;
            this.bufPos = i12;
            if (i12 == 64) {
                processData(bArr2, 0, 64, bArr, i4);
                this.poly1305.update(bArr, i4, 64);
                this.bufPos = 0;
                return 64;
            }
            return 0;
        } else if (i10 == 7) {
            byte[] bArr3 = this.buf;
            int i13 = this.bufPos;
            bArr3[i13] = b10;
            int i14 = i13 + 1;
            this.bufPos = i14;
            if (i14 == bArr3.length) {
                this.poly1305.update(bArr3, 0, 64);
                processData(this.buf, 0, 64, bArr, i4);
                byte[] bArr4 = this.buf;
                System.arraycopy(bArr4, 64, bArr4, 0, 16);
                this.bufPos = 16;
                return 64;
            }
            return 0;
        } else {
            throw new IllegalStateException();
        }
    }

    @Override // org.bouncycastle.crypto.modes.AEADCipher
    public int processBytes(byte[] bArr, int i4, int i10, byte[] bArr2, int i11) throws DataLengthException {
        int i12;
        int i13 = i4;
        int i14 = i10;
        Objects.requireNonNull(bArr, "'in' cannot be null");
        if (i13 >= 0) {
            if (i14 >= 0) {
                if (i13 <= bArr.length - i14) {
                    if (i11 >= 0) {
                        checkData();
                        int i15 = this.state;
                        if (i15 == 3) {
                            if (this.bufPos != 0) {
                                while (i14 > 0) {
                                    i14--;
                                    byte[] bArr3 = this.buf;
                                    int i16 = this.bufPos;
                                    int i17 = i13 + 1;
                                    bArr3[i16] = bArr[i13];
                                    int i18 = i16 + 1;
                                    this.bufPos = i18;
                                    if (i18 == 64) {
                                        processData(bArr3, 0, 64, bArr2, i11);
                                        this.poly1305.update(bArr2, i11, 64);
                                        this.bufPos = 0;
                                        i13 = i17;
                                        i12 = 64;
                                        break;
                                    }
                                    i13 = i17;
                                }
                            }
                            i12 = 0;
                            while (i14 >= 64) {
                                int i19 = i11 + i12;
                                processData(bArr, i13, 64, bArr2, i19);
                                this.poly1305.update(bArr2, i19, 64);
                                i13 += 64;
                                i14 -= 64;
                                i12 += 64;
                            }
                            if (i14 > 0) {
                                System.arraycopy(bArr, i13, this.buf, 0, i14);
                                this.bufPos = i14;
                            }
                        } else if (i15 != 7) {
                            throw new IllegalStateException();
                        } else {
                            i12 = 0;
                            for (int i20 = 0; i20 < i14; i20++) {
                                byte[] bArr4 = this.buf;
                                int i21 = this.bufPos;
                                bArr4[i21] = bArr[i13 + i20];
                                int i22 = i21 + 1;
                                this.bufPos = i22;
                                if (i22 == bArr4.length) {
                                    this.poly1305.update(bArr4, 0, 64);
                                    processData(this.buf, 0, 64, bArr2, i11 + i12);
                                    byte[] bArr5 = this.buf;
                                    System.arraycopy(bArr5, 64, bArr5, 0, 16);
                                    this.bufPos = 16;
                                    i12 += 64;
                                }
                            }
                        }
                        return i12;
                    }
                    throw new IllegalArgumentException("'outOff' cannot be negative");
                }
                throw new DataLengthException("Input buffer too short");
            }
            throw new IllegalArgumentException("'len' cannot be negative");
        }
        throw new IllegalArgumentException("'inOff' cannot be negative");
    }

    @Override // org.bouncycastle.crypto.modes.AEADCipher
    public void reset() {
        reset(true, true);
    }
}
