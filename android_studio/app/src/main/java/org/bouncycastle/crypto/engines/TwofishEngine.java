package org.bouncycastle.crypto.engines;

import androidx.core.view.InputDeviceCompat;
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
import org.bouncycastle.util.Integers;
import org.bouncycastle.util.Pack;

/* loaded from: classes4.dex */
public final class TwofishEngine implements BlockCipher {
    private static final int BLOCK_SIZE = 16;
    private static final int GF256_FDBK = 361;
    private static final int GF256_FDBK_2 = 180;
    private static final int GF256_FDBK_4 = 90;
    private static final int INPUT_WHITEN = 0;
    private static final int MAX_KEY_BITS = 256;
    private static final int MAX_ROUNDS = 16;
    private static final int OUTPUT_WHITEN = 4;
    private static final byte[][] P = {new byte[]{-87, 103, -77, -24, 4, -3, -93, 118, -102, -110, Byte.MIN_VALUE, 120, -28, -35, -47, 56, c.f32108o, -58, 53, -104, c.B, -9, -20, 108, 67, 117, 55, 38, -6, 19, -108, 72, -14, -48, -117, 48, -124, 84, -33, 35, c.C, 91, 61, 89, -13, -82, -94, -126, 99, 1, -125, 46, -39, 81, -101, 124, -90, -21, -91, -66, c.f32119z, c.f32107n, -29, 97, -64, -116, 58, -11, 115, 44, 37, c.f32106m, a.f13999j, 78, -119, 107, 83, 106, -76, -15, -31, -26, -67, 69, -30, -12, -74, 102, -52, -107, 3, 86, -44, c.F, c.H, -41, -5, -61, -114, -75, -23, -49, a.f14000k, -70, -22, 119, 57, -81, 51, -55, 98, 113, -127, 121, 9, -83, 36, -51, -7, -40, -27, -59, -71, 77, 68, 8, -122, -25, -95, c.G, -86, -19, 6, 112, -78, -46, 65, 123, -96, 17, 49, -62, 39, -112, 32, -10, 96, -1, -106, 92, -79, -85, -98, -100, 82, c.E, 95, -109, 10, a.f13998i, -111, -123, 73, -18, 45, 79, -113, 59, 71, -121, 109, 70, -42, 62, 105, 100, 42, -50, -53, 47, -4, -105, 5, 122, -84, Byte.MAX_VALUE, -43, c.D, 75, c.f32109p, -89, 90, 40, c.f32117x, Utf8.REPLACEMENT_BYTE, 41, -120, 60, 76, 2, -72, -38, -80, c.A, 85, c.I, -118, 125, 87, -57, -115, 116, -73, -60, -97, 114, 126, c.f32118y, 34, c.f32114u, 88, 7, -103, 52, 110, 80, -34, 104, 101, PSSSigner.TRAILER_IMPLICIT, -37, -8, -56, -88, 43, k.f34876a, -36, -2, 50, -92, -54, 16, 33, -16, -45, 93, c.f32110q, 0, 111, -99, 54, 66, 74, 94, -63, -32}, new byte[]{117, -13, -58, -12, -37, 123, -5, -56, 74, -45, -26, 107, 69, 125, -24, 75, -42, 50, -40, -3, 55, 113, -15, -31, 48, c.f32110q, -8, c.E, -121, -6, 6, Utf8.REPLACEMENT_BYTE, 94, -70, -82, 91, -118, 0, PSSSigner.TRAILER_IMPLICIT, -99, 109, -63, -79, c.f32109p, Byte.MIN_VALUE, 93, -46, -43, -96, -124, 7, c.f32117x, -75, -112, 44, -93, -78, 115, 76, 84, -110, 116, 54, 81, 56, -80, -67, 90, -4, 96, 98, -106, 108, 66, -9, 16, 124, 40, 39, -116, 19, -107, -100, -57, 36, 70, 59, 112, -54, -29, -123, -53, 17, -48, -109, -72, -90, -125, 32, -1, -97, 119, -61, -52, 3, 111, 8, a.f14000k, k.f34876a, -25, 43, -30, 121, c.f32107n, -86, -126, 65, 58, -22, -71, -28, -102, -92, -105, 126, -38, 122, c.A, 102, -108, -95, c.G, 61, -16, -34, -77, c.f32106m, 114, -89, c.F, a.f13998i, -47, 83, 62, -113, 51, 38, 95, -20, 118, 42, 73, -127, -120, -18, 33, -60, c.D, -21, -39, -59, 57, -103, -51, -83, 49, -117, 1, c.B, 35, -35, c.I, 78, 45, -7, 72, 79, -14, 101, -114, 120, 92, 88, c.C, -115, -27, -104, 87, 103, Byte.MAX_VALUE, 5, 100, -81, 99, -74, -2, -11, -73, 60, -91, -50, -23, 104, 68, -32, 77, 67, 105, 41, 46, -84, c.f32118y, 89, -88, 10, -98, 110, 71, -33, 52, 53, 106, -49, -36, 34, -55, -64, -101, -119, -44, -19, -85, c.f32114u, -94, c.f32108o, 82, a.f13999j, 2, 47, -87, -41, 97, c.H, -76, 80, 4, -10, -62, c.f32119z, 37, -122, 86, 85, 9, -66, -111}};
    private static final int P_00 = 1;
    private static final int P_01 = 0;
    private static final int P_02 = 0;
    private static final int P_03 = 1;
    private static final int P_04 = 1;
    private static final int P_10 = 0;
    private static final int P_11 = 0;
    private static final int P_12 = 1;
    private static final int P_13 = 1;
    private static final int P_14 = 0;
    private static final int P_20 = 1;
    private static final int P_21 = 1;
    private static final int P_22 = 0;
    private static final int P_23 = 0;
    private static final int P_24 = 0;
    private static final int P_30 = 0;
    private static final int P_31 = 1;
    private static final int P_32 = 1;
    private static final int P_33 = 0;
    private static final int P_34 = 1;
    private static final int ROUNDS = 16;
    private static final int ROUND_SUBKEYS = 8;
    private static final int RS_GF_FDBK = 333;
    private static final int SK_BUMP = 16843009;
    private static final int SK_ROTL = 9;
    private static final int SK_STEP = 33686018;
    private static final int TOTAL_SUBKEYS = 40;
    private int[] gSBox;
    private int[] gSubKeys;
    private boolean encrypting = false;
    private int[] gMDS0 = new int[256];
    private int[] gMDS1 = new int[256];
    private int[] gMDS2 = new int[256];
    private int[] gMDS3 = new int[256];
    private int k64Cnt = 0;
    private byte[] workingKey = null;

    public TwofishEngine() {
        int[] iArr = new int[2];
        int[] iArr2 = new int[2];
        int[] iArr3 = new int[2];
        for (int i4 = 0; i4 < 256; i4++) {
            byte[][] bArr = P;
            int i10 = bArr[0][i4] & 255;
            iArr[0] = i10;
            iArr2[0] = Mx_X(i10) & 255;
            iArr3[0] = Mx_Y(i10) & 255;
            int i11 = bArr[1][i4] & 255;
            iArr[1] = i11;
            iArr2[1] = Mx_X(i11) & 255;
            iArr3[1] = Mx_Y(i11) & 255;
            this.gMDS0[i4] = iArr[1] | (iArr2[1] << 8) | (iArr3[1] << 16) | (iArr3[1] << 24);
            this.gMDS1[i4] = iArr3[0] | (iArr3[0] << 8) | (iArr2[0] << 16) | (iArr[0] << 24);
            this.gMDS2[i4] = (iArr3[1] << 24) | iArr2[1] | (iArr3[1] << 8) | (iArr[1] << 16);
            this.gMDS3[i4] = iArr2[0] | (iArr[0] << 8) | (iArr3[0] << 16) | (iArr2[0] << 24);
        }
    }

    private int F32(int i4, int[] iArr) {
        int i10;
        int i11;
        int b02 = b0(i4);
        int b12 = b1(i4);
        int b22 = b2(i4);
        int b32 = b3(i4);
        int i12 = iArr[0];
        int i13 = iArr[1];
        int i14 = iArr[2];
        int i15 = iArr[3];
        int i16 = this.k64Cnt & 3;
        if (i16 != 0) {
            if (i16 == 1) {
                int[] iArr2 = this.gMDS0;
                byte[][] bArr = P;
                i10 = (iArr2[(bArr[0][b02] & 255) ^ b0(i12)] ^ this.gMDS1[(bArr[0][b12] & 255) ^ b1(i12)]) ^ this.gMDS2[(bArr[1][b22] & 255) ^ b2(i12)];
                i11 = this.gMDS3[(bArr[1][b32] & 255) ^ b3(i12)];
                return i10 ^ i11;
            }
            if (i16 != 2) {
                if (i16 != 3) {
                    return 0;
                }
            }
            int[] iArr3 = this.gMDS0;
            byte[][] bArr2 = P;
            i10 = (iArr3[(bArr2[0][(bArr2[0][b02] & 255) ^ b0(i13)] & 255) ^ b0(i12)] ^ this.gMDS1[(bArr2[0][(bArr2[1][b12] & 255) ^ b1(i13)] & 255) ^ b1(i12)]) ^ this.gMDS2[(bArr2[1][(bArr2[0][b22] & 255) ^ b2(i13)] & 255) ^ b2(i12)];
            i11 = this.gMDS3[(bArr2[1][(bArr2[1][b32] & 255) ^ b3(i13)] & 255) ^ b3(i12)];
            return i10 ^ i11;
        }
        byte[][] bArr3 = P;
        b02 = (bArr3[1][b02] & 255) ^ b0(i15);
        b12 = (bArr3[0][b12] & 255) ^ b1(i15);
        b22 = (bArr3[0][b22] & 255) ^ b2(i15);
        b32 = (bArr3[1][b32] & 255) ^ b3(i15);
        byte[][] bArr4 = P;
        b02 = (bArr4[1][b02] & 255) ^ b0(i14);
        b12 = (bArr4[1][b12] & 255) ^ b1(i14);
        b22 = (bArr4[0][b22] & 255) ^ b2(i14);
        b32 = (bArr4[0][b32] & 255) ^ b3(i14);
        int[] iArr32 = this.gMDS0;
        byte[][] bArr22 = P;
        i10 = (iArr32[(bArr22[0][(bArr22[0][b02] & 255) ^ b0(i13)] & 255) ^ b0(i12)] ^ this.gMDS1[(bArr22[0][(bArr22[1][b12] & 255) ^ b1(i13)] & 255) ^ b1(i12)]) ^ this.gMDS2[(bArr22[1][(bArr22[0][b22] & 255) ^ b2(i13)] & 255) ^ b2(i12)];
        i11 = this.gMDS3[(bArr22[1][(bArr22[1][b32] & 255) ^ b3(i13)] & 255) ^ b3(i12)];
        return i10 ^ i11;
    }

    private int Fe32_0(int i4) {
        int[] iArr = this.gSBox;
        return iArr[(((i4 >>> 24) & 255) * 2) + InputDeviceCompat.SOURCE_DPAD] ^ ((iArr[((i4 & 255) * 2) + 0] ^ iArr[(((i4 >>> 8) & 255) * 2) + 1]) ^ iArr[(((i4 >>> 16) & 255) * 2) + 512]);
    }

    private int Fe32_3(int i4) {
        int[] iArr = this.gSBox;
        return iArr[(((i4 >>> 16) & 255) * 2) + InputDeviceCompat.SOURCE_DPAD] ^ ((iArr[(((i4 >>> 24) & 255) * 2) + 0] ^ iArr[((i4 & 255) * 2) + 1]) ^ iArr[(((i4 >>> 8) & 255) * 2) + 512]);
    }

    private int LFSR1(int i4) {
        return ((i4 & 1) != 0 ? 180 : 0) ^ (i4 >> 1);
    }

    private int LFSR2(int i4) {
        return ((i4 >> 2) ^ ((i4 & 2) != 0 ? 180 : 0)) ^ ((i4 & 1) != 0 ? 90 : 0);
    }

    private int Mx_X(int i4) {
        return i4 ^ LFSR2(i4);
    }

    private int Mx_Y(int i4) {
        return LFSR2(i4) ^ (LFSR1(i4) ^ i4);
    }

    private int RS_MDS_Encode(int i4, int i10) {
        for (int i11 = 0; i11 < 4; i11++) {
            i10 = RS_rem(i10);
        }
        int i12 = i4 ^ i10;
        for (int i13 = 0; i13 < 4; i13++) {
            i12 = RS_rem(i12);
        }
        return i12;
    }

    private int RS_rem(int i4) {
        int i10 = (i4 >>> 24) & 255;
        int i11 = ((i10 << 1) ^ ((i10 & 128) != 0 ? RS_GF_FDBK : 0)) & 255;
        int i12 = ((i10 >>> 1) ^ ((i10 & 1) != 0 ? 166 : 0)) ^ i11;
        return ((((i4 << 8) ^ (i12 << 24)) ^ (i11 << 16)) ^ (i12 << 8)) ^ i10;
    }

    private int b0(int i4) {
        return i4 & 255;
    }

    private int b1(int i4) {
        return (i4 >>> 8) & 255;
    }

    private int b2(int i4) {
        return (i4 >>> 16) & 255;
    }

    private int b3(int i4) {
        return (i4 >>> 24) & 255;
    }

    private void decryptBlock(byte[] bArr, int i4, byte[] bArr2, int i10) {
        int littleEndianToInt = Pack.littleEndianToInt(bArr, i4) ^ this.gSubKeys[4];
        int littleEndianToInt2 = Pack.littleEndianToInt(bArr, i4 + 4) ^ this.gSubKeys[5];
        int littleEndianToInt3 = Pack.littleEndianToInt(bArr, i4 + 8) ^ this.gSubKeys[6];
        int littleEndianToInt4 = Pack.littleEndianToInt(bArr, i4 + 12) ^ this.gSubKeys[7];
        int i11 = 39;
        int i12 = 0;
        while (i12 < 16) {
            int Fe32_0 = Fe32_0(littleEndianToInt);
            int Fe32_3 = Fe32_3(littleEndianToInt2);
            int i13 = i11 - 1;
            int i14 = Fe32_0 + Fe32_3;
            int i15 = i13 - 1;
            littleEndianToInt3 = Integers.rotateLeft(littleEndianToInt3, 1) ^ (i14 + this.gSubKeys[i13]);
            littleEndianToInt4 = Integers.rotateRight(littleEndianToInt4 ^ (((Fe32_3 * 2) + Fe32_0) + this.gSubKeys[i11]), 1);
            int Fe32_02 = Fe32_0(littleEndianToInt3);
            int Fe32_32 = Fe32_3(littleEndianToInt4);
            int i16 = i15 - 1;
            littleEndianToInt = Integers.rotateLeft(littleEndianToInt, 1) ^ ((Fe32_02 + Fe32_32) + this.gSubKeys[i16]);
            littleEndianToInt2 = Integers.rotateRight(littleEndianToInt2 ^ (((Fe32_32 * 2) + Fe32_02) + this.gSubKeys[i15]), 1);
            i12 += 2;
            i11 = i16 - 1;
        }
        Pack.intToLittleEndian(this.gSubKeys[0] ^ littleEndianToInt3, bArr2, i10);
        Pack.intToLittleEndian(littleEndianToInt4 ^ this.gSubKeys[1], bArr2, i10 + 4);
        Pack.intToLittleEndian(this.gSubKeys[2] ^ littleEndianToInt, bArr2, i10 + 8);
        Pack.intToLittleEndian(this.gSubKeys[3] ^ littleEndianToInt2, bArr2, i10 + 12);
    }

    private void encryptBlock(byte[] bArr, int i4, byte[] bArr2, int i10) {
        int i11 = 0;
        int littleEndianToInt = Pack.littleEndianToInt(bArr, i4) ^ this.gSubKeys[0];
        int littleEndianToInt2 = Pack.littleEndianToInt(bArr, i4 + 4) ^ this.gSubKeys[1];
        int littleEndianToInt3 = Pack.littleEndianToInt(bArr, i4 + 8) ^ this.gSubKeys[2];
        int littleEndianToInt4 = Pack.littleEndianToInt(bArr, i4 + 12) ^ this.gSubKeys[3];
        int i12 = 8;
        while (i11 < 16) {
            int Fe32_0 = Fe32_0(littleEndianToInt);
            int Fe32_3 = Fe32_3(littleEndianToInt2);
            int i13 = i12 + 1;
            littleEndianToInt3 = Integers.rotateRight(littleEndianToInt3 ^ ((Fe32_0 + Fe32_3) + this.gSubKeys[i12]), 1);
            int i14 = Fe32_0 + (Fe32_3 * 2);
            int i15 = i13 + 1;
            littleEndianToInt4 = Integers.rotateLeft(littleEndianToInt4, 1) ^ (i14 + this.gSubKeys[i13]);
            int Fe32_02 = Fe32_0(littleEndianToInt3);
            int Fe32_32 = Fe32_3(littleEndianToInt4);
            int i16 = i15 + 1;
            littleEndianToInt = Integers.rotateRight(littleEndianToInt ^ ((Fe32_02 + Fe32_32) + this.gSubKeys[i15]), 1);
            littleEndianToInt2 = Integers.rotateLeft(littleEndianToInt2, 1) ^ ((Fe32_02 + (Fe32_32 * 2)) + this.gSubKeys[i16]);
            i11 += 2;
            i12 = i16 + 1;
        }
        Pack.intToLittleEndian(this.gSubKeys[4] ^ littleEndianToInt3, bArr2, i10);
        Pack.intToLittleEndian(littleEndianToInt4 ^ this.gSubKeys[5], bArr2, i10 + 4);
        Pack.intToLittleEndian(this.gSubKeys[6] ^ littleEndianToInt, bArr2, i10 + 8);
        Pack.intToLittleEndian(this.gSubKeys[7] ^ littleEndianToInt2, bArr2, i10 + 12);
    }

    private void setKey(byte[] bArr) {
        int b02;
        int b12;
        int b22;
        int b32;
        int i4;
        int i10;
        int i11;
        int i12;
        int[] iArr = new int[4];
        int[] iArr2 = new int[4];
        int[] iArr3 = new int[4];
        this.gSubKeys = new int[40];
        for (int i13 = 0; i13 < this.k64Cnt; i13++) {
            int i14 = i13 * 8;
            iArr[i13] = Pack.littleEndianToInt(bArr, i14);
            iArr2[i13] = Pack.littleEndianToInt(bArr, i14 + 4);
            iArr3[(this.k64Cnt - 1) - i13] = RS_MDS_Encode(iArr[i13], iArr2[i13]);
        }
        for (int i15 = 0; i15 < 20; i15++) {
            int i16 = SK_STEP * i15;
            int F32 = F32(i16, iArr);
            int rotateLeft = Integers.rotateLeft(F32(i16 + SK_BUMP, iArr2), 8);
            int i17 = F32 + rotateLeft;
            int[] iArr4 = this.gSubKeys;
            int i18 = i15 * 2;
            iArr4[i18] = i17;
            int i19 = i17 + rotateLeft;
            iArr4[i18 + 1] = (i19 << 9) | (i19 >>> 23);
        }
        int i20 = iArr3[0];
        int i21 = iArr3[1];
        int i22 = 2;
        int i23 = iArr3[2];
        int i24 = iArr3[3];
        this.gSBox = new int[1024];
        int i25 = 0;
        while (i25 < 256) {
            int i26 = this.k64Cnt & 3;
            if (i26 != 0) {
                if (i26 == 1) {
                    int[] iArr5 = this.gSBox;
                    int i27 = i25 * 2;
                    int[] iArr6 = this.gMDS0;
                    byte[][] bArr2 = P;
                    iArr5[i27] = iArr6[(bArr2[0][i25] & 255) ^ b0(i20)];
                    this.gSBox[i27 + 1] = this.gMDS1[(bArr2[0][i25] & 255) ^ b1(i20)];
                    this.gSBox[i27 + 512] = this.gMDS2[(bArr2[1][i25] & 255) ^ b2(i20)];
                    this.gSBox[i27 + InputDeviceCompat.SOURCE_DPAD] = this.gMDS3[(bArr2[1][i25] & 255) ^ b3(i20)];
                } else if (i26 == i22) {
                    i12 = i25;
                    i11 = i12;
                    i10 = i11;
                    i4 = i10;
                    int[] iArr7 = this.gSBox;
                    int i28 = i25 * 2;
                    int[] iArr8 = this.gMDS0;
                    byte[][] bArr3 = P;
                    iArr7[i28] = iArr8[(bArr3[0][(bArr3[0][i11] & 255) ^ b0(i21)] & 255) ^ b0(i20)];
                    this.gSBox[i28 + 1] = this.gMDS1[(bArr3[0][(bArr3[1][i10] & 255) ^ b1(i21)] & 255) ^ b1(i20)];
                    this.gSBox[i28 + 512] = this.gMDS2[(bArr3[1][(bArr3[0][i4] & 255) ^ b2(i21)] & 255) ^ b2(i20)];
                    this.gSBox[i28 + InputDeviceCompat.SOURCE_DPAD] = this.gMDS3[(bArr3[1][(bArr3[1][i12] & 255) ^ b3(i21)] & 255) ^ b3(i20)];
                } else if (i26 == 3) {
                    b32 = i25;
                    b02 = b32;
                    b12 = b02;
                    b22 = b12;
                }
                i25++;
                i22 = 2;
            } else {
                byte[][] bArr4 = P;
                b02 = (bArr4[1][i25] & 255) ^ b0(i24);
                b12 = (bArr4[0][i25] & 255) ^ b1(i24);
                b22 = (bArr4[0][i25] & 255) ^ b2(i24);
                b32 = (bArr4[1][i25] & 255) ^ b3(i24);
            }
            byte[][] bArr5 = P;
            i11 = (bArr5[1][b02] & 255) ^ b0(i23);
            i10 = (bArr5[1][b12] & 255) ^ b1(i23);
            i4 = (bArr5[0][b22] & 255) ^ b2(i23);
            i12 = (bArr5[0][b32] & 255) ^ b3(i23);
            int[] iArr72 = this.gSBox;
            int i282 = i25 * 2;
            int[] iArr82 = this.gMDS0;
            byte[][] bArr32 = P;
            iArr72[i282] = iArr82[(bArr32[0][(bArr32[0][i11] & 255) ^ b0(i21)] & 255) ^ b0(i20)];
            this.gSBox[i282 + 1] = this.gMDS1[(bArr32[0][(bArr32[1][i10] & 255) ^ b1(i21)] & 255) ^ b1(i20)];
            this.gSBox[i282 + 512] = this.gMDS2[(bArr32[1][(bArr32[0][i4] & 255) ^ b2(i21)] & 255) ^ b2(i20)];
            this.gSBox[i282 + InputDeviceCompat.SOURCE_DPAD] = this.gMDS3[(bArr32[1][(bArr32[1][i12] & 255) ^ b3(i21)] & 255) ^ b3(i20)];
            i25++;
            i22 = 2;
        }
    }

    @Override // org.bouncycastle.crypto.BlockCipher
    public String getAlgorithmName() {
        return "Twofish";
    }

    @Override // org.bouncycastle.crypto.BlockCipher
    public int getBlockSize() {
        return 16;
    }

    @Override // org.bouncycastle.crypto.BlockCipher
    public void init(boolean z9, CipherParameters cipherParameters) {
        if (!(cipherParameters instanceof KeyParameter)) {
            throw new IllegalArgumentException("invalid parameter passed to Twofish init - " + cipherParameters.getClass().getName());
        }
        this.encrypting = z9;
        byte[] key = ((KeyParameter) cipherParameters).getKey();
        this.workingKey = key;
        int length = key.length * 8;
        if (length != 128 && length != 192 && length != 256) {
            throw new IllegalArgumentException("Key length not 128/192/256 bits.");
        }
        this.k64Cnt = key.length / 8;
        setKey(key);
    }

    @Override // org.bouncycastle.crypto.BlockCipher
    public int processBlock(byte[] bArr, int i4, byte[] bArr2, int i10) {
        if (this.workingKey != null) {
            if (i4 + 16 <= bArr.length) {
                if (i10 + 16 <= bArr2.length) {
                    if (this.encrypting) {
                        encryptBlock(bArr, i4, bArr2, i10);
                        return 16;
                    }
                    decryptBlock(bArr, i4, bArr2, i10);
                    return 16;
                }
                throw new OutputLengthException("output buffer too short");
            }
            throw new DataLengthException("input buffer too short");
        }
        throw new IllegalStateException("Twofish not initialised");
    }

    @Override // org.bouncycastle.crypto.BlockCipher
    public void reset() {
        byte[] bArr = this.workingKey;
        if (bArr != null) {
            setKey(bArr);
        }
    }
}
