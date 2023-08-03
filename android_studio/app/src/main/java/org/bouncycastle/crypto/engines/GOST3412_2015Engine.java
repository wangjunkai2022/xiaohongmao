package org.bouncycastle.crypto.engines;

import com.fasterxml.jackson.core.json.a;
import com.google.common.base.c;
import com.google.common.primitives.k;
import okio.Utf8;
import org.bouncycastle.crypto.BlockCipher;
import org.bouncycastle.crypto.CipherParameters;
import org.bouncycastle.crypto.DataLengthException;
import org.bouncycastle.crypto.OutputLengthException;
import org.bouncycastle.crypto.params.KeyParameter;
import org.bouncycastle.crypto.signers.PSSSigner;
import org.bouncycastle.util.Arrays;

/* loaded from: classes4.dex */
public class GOST3412_2015Engine implements BlockCipher {
    protected static final int BLOCK_SIZE = 16;
    private static final byte[] PI = {-4, -18, -35, 17, -49, 110, 49, c.f32119z, -5, -60, -6, -38, 35, -59, 4, 77, -23, 119, -16, -37, -109, 46, -103, -70, c.A, 54, -15, a.f13999j, c.f32117x, -51, 95, -63, -7, c.B, 101, 90, -30, 92, a.f13998i, 33, -127, c.F, 60, 66, -117, 1, -114, 79, 5, -124, 2, -82, -29, 106, -113, -96, 6, c.f32106m, -19, -104, Byte.MAX_VALUE, -44, -45, c.I, -21, 52, 44, 81, -22, -56, 72, -85, -14, 42, 104, -94, -3, 58, -50, -52, -75, 112, c.f32109p, 86, 8, c.f32107n, 118, c.f32114u, a.f14000k, 114, 19, 71, -100, -73, 93, -121, c.f32118y, -95, -106, 41, 16, 123, -102, -57, -13, -111, 120, 111, -99, -98, -78, -79, 50, 117, c.C, 61, -1, 53, -118, 126, 109, 84, -58, Byte.MIN_VALUE, -61, -67, c.f32108o, 87, -33, -11, 36, -87, 62, -88, 67, -55, -41, 121, -42, -10, 124, 34, -71, 3, -32, c.f32110q, -20, -34, 122, -108, -80, PSSSigner.TRAILER_IMPLICIT, -36, -24, 40, 80, 78, 51, 10, 74, -89, -105, 96, 115, c.H, 0, 98, 68, c.D, -72, 56, -126, 100, -97, 38, 65, -83, 69, 70, -110, 39, 94, 85, 47, -116, -93, -91, 125, 105, -43, -107, 59, 7, 88, -77, k.f34876a, -122, -84, c.G, -9, 48, 55, 107, -28, -120, -39, -25, -119, -31, c.E, -125, 73, 76, Utf8.REPLACEMENT_BYTE, -8, -2, -115, 83, -86, -112, -54, -40, -123, 97, 32, 113, 103, -92, 45, 43, 9, 91, -53, -101, 37, -48, -66, -27, 108, 82, 89, -90, 116, -46, -26, -12, -76, -64, -47, 102, -81, -62, 57, 75, 99, -74};
    private static final byte[] inversePI = {-91, 45, 50, -113, c.f32109p, 48, 56, -64, 84, -26, -98, 57, 85, 126, 82, -111, 100, 3, 87, 90, c.F, 96, 7, c.B, 33, 114, -88, -47, 41, -58, -92, Utf8.REPLACEMENT_BYTE, -32, 39, -115, c.f32107n, -126, -22, -82, -76, -102, 99, 73, -27, 66, -28, c.f32118y, -73, -56, 6, 112, -99, 65, 117, c.C, -55, -86, -4, 77, a.f14000k, 42, 115, -124, -43, -61, -81, 43, -122, -89, -79, -78, 91, 70, -45, -97, -3, -44, c.f32110q, -100, 47, -101, 67, a.f13998i, -39, 121, -74, 83, Byte.MAX_VALUE, -63, -16, 35, -25, 37, 94, -75, c.H, -94, -33, -90, -2, -84, 34, -7, -30, 74, PSSSigner.TRAILER_IMPLICIT, 53, -54, -18, 120, 5, 107, 81, -31, 89, -93, -14, 113, 86, 17, 106, -119, -108, 101, -116, a.f13999j, 119, 60, 123, 40, -85, -46, 49, -34, -60, 95, -52, -49, 118, 44, -72, -40, 46, 54, -37, 105, -77, c.f32117x, -107, -66, 98, -95, 59, c.f32119z, 102, -23, 92, 108, 109, -83, 55, 97, 75, -71, -29, -70, -15, -96, -123, -125, -38, 71, -59, -80, 51, -6, -106, 111, 110, -62, -10, 80, -1, 93, -87, -114, c.A, c.E, -105, 125, -20, 88, -9, c.I, -5, 124, 9, c.f32108o, 122, 103, 69, -121, -36, -24, 79, c.G, 78, 4, -21, -8, -13, 62, 61, -67, -118, -120, -35, -51, c.f32106m, 19, -104, 2, -109, Byte.MIN_VALUE, -112, -48, 36, 52, -53, -19, -12, -50, -103, 16, 68, k.f34876a, -110, 58, 1, 38, c.f32114u, c.D, 72, 104, -11, -127, -117, -57, -42, 32, 10, 8, 0, 76, -41, 116};
    private boolean forEncryption;
    private final byte[] lFactors = {-108, 32, -123, 16, -62, -64, 1, -5, 1, -64, -62, 16, -123, 32, -108, 1};
    private int KEY_LENGTH = 32;
    private int SUB_LENGTH = 32 / 2;
    private byte[][] subKeys = null;
    private byte[][] _gf_mul = init_gf256_mul_table();

    private void C(byte[] bArr, int i4) {
        Arrays.clear(bArr);
        bArr[15] = (byte) i4;
        L(bArr);
    }

    private void F(byte[] bArr, byte[] bArr2, byte[] bArr3) {
        byte[] LSX = LSX(bArr, bArr2);
        X(LSX, bArr3);
        System.arraycopy(bArr2, 0, bArr3, 0, this.SUB_LENGTH);
        System.arraycopy(LSX, 0, bArr2, 0, this.SUB_LENGTH);
    }

    private void GOST3412_2015Func(byte[] bArr, int i4, byte[] bArr2, int i10) {
        byte[][] bArr3;
        byte[] bArr4 = new byte[16];
        System.arraycopy(bArr, i4, bArr4, 0, 16);
        int i11 = 9;
        if (this.forEncryption) {
            for (int i12 = 0; i12 < 9; i12++) {
                bArr4 = Arrays.copyOf(LSX(this.subKeys[i12], bArr4), 16);
            }
            X(bArr4, this.subKeys[9]);
        } else {
            while (true) {
                bArr3 = this.subKeys;
                if (i11 <= 0) {
                    break;
                }
                bArr4 = Arrays.copyOf(XSL(bArr3[i11], bArr4), 16);
                i11--;
            }
            X(bArr4, bArr3[0]);
        }
        System.arraycopy(bArr4, 0, bArr2, i10, 16);
    }

    private void L(byte[] bArr) {
        for (int i4 = 0; i4 < 16; i4++) {
            R(bArr);
        }
    }

    private byte[] LSX(byte[] bArr, byte[] bArr2) {
        byte[] copyOf = Arrays.copyOf(bArr, bArr.length);
        X(copyOf, bArr2);
        S(copyOf);
        L(copyOf);
        return copyOf;
    }

    private void R(byte[] bArr) {
        byte l10 = l(bArr);
        System.arraycopy(bArr, 0, bArr, 1, 15);
        bArr[0] = l10;
    }

    private void S(byte[] bArr) {
        for (int i4 = 0; i4 < bArr.length; i4++) {
            bArr[i4] = PI[unsignedByte(bArr[i4])];
        }
    }

    private void X(byte[] bArr, byte[] bArr2) {
        for (int i4 = 0; i4 < bArr.length; i4++) {
            bArr[i4] = (byte) (bArr[i4] ^ bArr2[i4]);
        }
    }

    private byte[] XSL(byte[] bArr, byte[] bArr2) {
        byte[] copyOf = Arrays.copyOf(bArr, bArr.length);
        X(copyOf, bArr2);
        inverseL(copyOf);
        inverseS(copyOf);
        return copyOf;
    }

    private void generateSubKeys(byte[] bArr) {
        int i4;
        if (bArr.length != this.KEY_LENGTH) {
            throw new IllegalArgumentException("Key length invalid. Key needs to be 32 byte - 256 bit!!!");
        }
        this.subKeys = new byte[10];
        for (int i10 = 0; i10 < 10; i10++) {
            this.subKeys[i10] = new byte[this.SUB_LENGTH];
        }
        int i11 = this.SUB_LENGTH;
        byte[] bArr2 = new byte[i11];
        byte[] bArr3 = new byte[i11];
        int i12 = 0;
        while (true) {
            i4 = this.SUB_LENGTH;
            if (i12 >= i4) {
                break;
            }
            byte[][] bArr4 = this.subKeys;
            byte[] bArr5 = bArr4[0];
            byte b10 = bArr[i12];
            bArr2[i12] = b10;
            bArr5[i12] = b10;
            byte[] bArr6 = bArr4[1];
            byte b11 = bArr[i4 + i12];
            bArr3[i12] = b11;
            bArr6[i12] = b11;
            i12++;
        }
        byte[] bArr7 = new byte[i4];
        for (int i13 = 1; i13 < 5; i13++) {
            for (int i14 = 1; i14 <= 8; i14++) {
                C(bArr7, ((i13 - 1) * 8) + i14);
                F(bArr7, bArr2, bArr3);
            }
            int i15 = i13 * 2;
            System.arraycopy(bArr2, 0, this.subKeys[i15], 0, this.SUB_LENGTH);
            System.arraycopy(bArr3, 0, this.subKeys[i15 + 1], 0, this.SUB_LENGTH);
        }
    }

    private static byte[][] init_gf256_mul_table() {
        byte[][] bArr = new byte[256];
        for (int i4 = 0; i4 < 256; i4++) {
            bArr[i4] = new byte[256];
            for (int i10 = 0; i10 < 256; i10++) {
                bArr[i4][i10] = kuz_mul_gf256_slow((byte) i4, (byte) i10);
            }
        }
        return bArr;
    }

    private void inverseL(byte[] bArr) {
        for (int i4 = 0; i4 < 16; i4++) {
            inverseR(bArr);
        }
    }

    private void inverseR(byte[] bArr) {
        byte[] bArr2 = new byte[16];
        System.arraycopy(bArr, 1, bArr2, 0, 15);
        bArr2[15] = bArr[0];
        byte l10 = l(bArr2);
        System.arraycopy(bArr, 1, bArr, 0, 15);
        bArr[15] = l10;
    }

    private void inverseS(byte[] bArr) {
        for (int i4 = 0; i4 < bArr.length; i4++) {
            bArr[i4] = inversePI[unsignedByte(bArr[i4])];
        }
    }

    private static byte kuz_mul_gf256_slow(byte b10, byte b11) {
        byte b12 = 0;
        for (byte b13 = 0; b13 < 8 && b10 != 0 && b11 != 0; b13 = (byte) (b13 + 1)) {
            if ((b11 & 1) != 0) {
                b12 = (byte) (b12 ^ b10);
            }
            byte b14 = (byte) (b10 & 128);
            b10 = (byte) (b10 << 1);
            if (b14 != 0) {
                b10 = (byte) (b10 ^ 195);
            }
            b11 = (byte) (b11 >> 1);
        }
        return b12;
    }

    private byte l(byte[] bArr) {
        byte b10 = bArr[15];
        for (int i4 = 14; i4 >= 0; i4--) {
            b10 = (byte) (b10 ^ this._gf_mul[unsignedByte(bArr[i4])][unsignedByte(this.lFactors[i4])]);
        }
        return b10;
    }

    private int unsignedByte(byte b10) {
        return b10 & 255;
    }

    @Override // org.bouncycastle.crypto.BlockCipher
    public String getAlgorithmName() {
        return "GOST3412_2015";
    }

    @Override // org.bouncycastle.crypto.BlockCipher
    public int getBlockSize() {
        return 16;
    }

    @Override // org.bouncycastle.crypto.BlockCipher
    public void init(boolean z9, CipherParameters cipherParameters) throws IllegalArgumentException {
        if (cipherParameters instanceof KeyParameter) {
            this.forEncryption = z9;
            generateSubKeys(((KeyParameter) cipherParameters).getKey());
        } else if (cipherParameters == null) {
        } else {
            throw new IllegalArgumentException("invalid parameter passed to GOST3412_2015 init - " + cipherParameters.getClass().getName());
        }
    }

    @Override // org.bouncycastle.crypto.BlockCipher
    public int processBlock(byte[] bArr, int i4, byte[] bArr2, int i10) throws DataLengthException, IllegalStateException {
        if (this.subKeys != null) {
            if (i4 + 16 <= bArr.length) {
                if (i10 + 16 <= bArr2.length) {
                    GOST3412_2015Func(bArr, i4, bArr2, i10);
                    return 16;
                }
                throw new OutputLengthException("output buffer too short");
            }
            throw new DataLengthException("input buffer too short");
        }
        throw new IllegalStateException("GOST3412_2015 engine not initialised");
    }

    @Override // org.bouncycastle.crypto.BlockCipher
    public void reset() {
    }
}
