package org.bouncycastle.crypto.engines;

import com.fasterxml.jackson.core.json.a;
import com.google.common.base.c;
import com.google.common.primitives.k;
import java.lang.reflect.Array;
import okio.Utf8;
import org.bouncycastle.crypto.BlockCipher;
import org.bouncycastle.crypto.CipherParameters;
import org.bouncycastle.crypto.DataLengthException;
import org.bouncycastle.crypto.OutputLengthException;
import org.bouncycastle.crypto.params.KeyParameter;
import org.bouncycastle.crypto.signers.PSSSigner;
import org.bouncycastle.util.encoders.Hex;

/* loaded from: classes4.dex */
public class ARIAEngine implements BlockCipher {
    protected static final int BLOCK_SIZE = 16;
    private static final byte[][] C = {Hex.decodeStrict("517cc1b727220a94fe13abe8fa9a6ee0"), Hex.decodeStrict("6db14acc9e21c820ff28b1d5ef5de2b0"), Hex.decodeStrict("db92371d2126e9700324977504e8c90e")};
    private static final byte[] SB1_sbox = {99, 124, 119, 123, -14, 107, 111, -59, 48, 1, 103, 43, -2, -41, -85, 118, -54, -126, -55, 125, -6, 89, 71, -16, -83, -44, -94, -81, -100, -92, 114, -64, -73, -3, -109, 38, 54, Utf8.REPLACEMENT_BYTE, -9, -52, 52, -91, -27, -15, 113, -40, 49, c.f32118y, 4, -57, 35, -61, c.B, -106, 5, -102, 7, c.f32114u, Byte.MIN_VALUE, -30, -21, 39, -78, 117, 9, -125, 44, c.D, c.E, 110, 90, -96, 82, 59, -42, -77, 41, -29, 47, -124, 83, -47, 0, -19, 32, -4, -79, 91, 106, -53, -66, 57, 74, 76, 88, -49, -48, a.f13998i, -86, -5, 67, 77, 51, -123, 69, -7, 2, Byte.MAX_VALUE, 80, 60, -97, -88, 81, -93, k.f34876a, -113, -110, -99, 56, -11, PSSSigner.TRAILER_IMPLICIT, -74, -38, 33, 16, -1, -13, -46, -51, c.f32107n, 19, -20, 95, -105, 68, c.A, -60, -89, 126, 61, 100, 93, c.C, 115, 96, -127, 79, -36, 34, 42, -112, -120, 70, -18, -72, c.f32117x, -34, 94, c.f32106m, -37, -32, 50, 58, 10, 73, 6, 36, 92, -62, -45, -84, 98, -111, -107, -28, 121, -25, -56, 55, 109, -115, -43, 78, -87, 108, 86, -12, -22, 101, 122, -82, 8, -70, 120, 37, 46, c.F, -90, -76, -58, -24, -35, 116, c.I, 75, -67, -117, -118, 112, 62, -75, 102, 72, 3, -10, c.f32109p, 97, 53, 87, -71, -122, -63, c.G, -98, -31, -8, -104, 17, 105, -39, -114, -108, -101, c.H, -121, -23, -50, 85, 40, -33, -116, -95, -119, c.f32108o, a.f14000k, -26, 66, 104, 65, -103, 45, c.f32110q, -80, 84, a.f13999j, c.f32119z};
    private static final byte[] SB2_sbox = {-30, 78, 84, -4, -108, -62, 74, -52, 98, c.f32108o, 106, 70, 60, 77, -117, -47, 94, -6, 100, -53, -76, -105, -66, 43, PSSSigner.TRAILER_IMPLICIT, 119, 46, 3, -45, c.C, 89, -63, c.G, 6, 65, 107, 85, -16, -103, 105, -22, -100, c.B, -82, 99, -33, -25, a.f13999j, 0, 115, 102, -5, -106, 76, -123, -28, 58, 9, 69, -86, c.f32110q, -18, 16, -21, 45, Byte.MAX_VALUE, -12, 41, -84, -49, -83, -111, -115, 120, -56, -107, -7, 47, -50, -51, 8, 122, -120, 56, 92, -125, 42, 40, 71, -37, -72, -57, -109, -92, c.f32114u, 83, -1, -121, c.f32109p, 49, 54, 33, 88, 72, 1, -114, 55, 116, 50, -54, -23, -79, -73, -85, c.f32107n, -41, -60, 86, 66, 38, 7, -104, 96, -39, -74, -71, 17, k.f34876a, -20, 32, -116, -67, -96, -55, -124, 4, 73, 35, -15, 79, 80, c.I, 19, -36, -40, -64, -98, 87, -29, -61, 123, 101, 59, 2, -113, 62, -24, 37, -110, -27, c.f32118y, -35, -3, c.A, -87, a.f14000k, -44, -102, 126, -59, 57, 103, -2, 118, -99, 67, -89, -31, -48, -11, 104, -14, c.E, 52, 112, 5, -93, -118, -43, 121, -122, -88, 48, -58, 81, 75, c.H, -90, 39, -10, 53, -46, 110, 36, c.f32119z, -126, 95, -38, -26, 117, -94, a.f13998i, 44, -78, c.F, -97, 93, 111, Byte.MIN_VALUE, 10, 114, 68, -101, 108, -112, c.f32106m, 91, 51, 125, 90, 82, -13, 97, -95, -9, -80, -42, Utf8.REPLACEMENT_BYTE, 124, 109, -19, c.f32117x, -32, -91, 61, 34, -77, -8, -119, -34, 113, c.D, -81, -70, -75, -127};
    private static final byte[] SB3_sbox = {82, 9, 106, -43, 48, 54, -91, 56, a.f14000k, k.f34876a, -93, -98, -127, -13, -41, -5, 124, -29, 57, -126, -101, 47, -1, -121, 52, -114, 67, 68, -60, -34, -23, -53, 84, 123, -108, 50, -90, -62, 35, 61, -18, 76, -107, c.f32106m, 66, -6, -61, 78, 8, 46, -95, 102, 40, -39, 36, -78, 118, 91, -94, 73, 109, -117, -47, 37, 114, -8, -10, 100, -122, 104, -104, c.f32119z, -44, -92, 92, -52, 93, 101, -74, -110, 108, 112, 72, 80, -3, -19, -71, -38, 94, c.f32118y, 70, 87, -89, -115, -99, -124, -112, -40, -85, 0, -116, PSSSigner.TRAILER_IMPLICIT, -45, 10, -9, -28, 88, 5, -72, -77, 69, 6, -48, 44, c.H, -113, -54, Utf8.REPLACEMENT_BYTE, c.f32110q, 2, -63, -81, -67, 3, 1, 19, -118, 107, 58, -111, 17, 65, 79, 103, -36, -22, -105, -14, -49, -50, -16, -76, -26, 115, -106, -84, 116, 34, -25, -83, 53, -123, -30, -7, 55, -24, c.F, 117, -33, 110, 71, -15, c.D, 113, c.G, 41, -59, -119, 111, -73, 98, c.f32109p, -86, c.B, -66, c.E, -4, 86, 62, 75, -58, -46, 121, 32, -102, -37, -64, -2, 120, -51, 90, -12, c.I, -35, -88, 51, -120, 7, -57, 49, -79, c.f32114u, 16, 89, 39, Byte.MIN_VALUE, -20, 95, 96, 81, Byte.MAX_VALUE, -87, c.C, -75, 74, c.f32108o, 45, -27, 122, -97, -109, -55, -100, a.f13998i, -96, -32, 59, 77, -82, 42, -11, -80, -56, -21, a.f13999j, 60, -125, 83, -103, 97, c.A, 43, 4, 126, -70, 119, -42, 38, -31, 105, c.f32117x, 99, 85, 33, c.f32107n, 125};
    private static final byte[] SB4_sbox = {48, 104, -103, c.E, -121, -71, 33, 120, 80, 57, -37, -31, 114, 9, 98, 60, 62, 126, 94, -114, -15, -96, -52, -93, 42, c.G, -5, -74, -42, 32, -60, -115, -127, 101, -11, -119, -53, -99, 119, -58, 87, 67, 86, c.A, -44, k.f34876a, c.D, 77, -64, 99, 108, -29, -73, -56, 100, 106, 83, -86, 56, -104, c.f32107n, -12, -101, -19, Byte.MAX_VALUE, 34, 118, -81, -35, 58, c.f32106m, 88, 103, -120, 6, -61, 53, c.f32108o, 1, -117, -116, -62, -26, 95, 2, 36, 117, -109, 102, c.H, -27, -30, 84, -40, 16, -50, 122, -24, 8, 44, c.f32114u, -105, 50, -85, -76, 39, 10, 35, -33, a.f13998i, -54, -39, -72, -6, -36, 49, 107, -47, -83, c.C, 73, -67, 81, -106, -18, -28, -88, 65, -38, -1, -51, 85, -122, 54, -66, 97, 82, -8, a.f13999j, c.f32109p, -126, 72, 105, -102, -32, 71, -98, 92, 4, 75, 52, c.f32118y, 121, 38, -89, -34, 41, -82, -110, -41, -124, -23, -46, -70, 93, -13, -59, -80, a.f14000k, -92, 59, 113, 68, 70, 43, -4, -21, 111, -43, -10, c.f32117x, -2, 124, 112, 90, 125, -3, 47, c.B, -125, c.f32119z, -91, -111, c.I, 5, -107, 116, -87, -63, 91, 74, -123, 109, 19, 7, 79, 78, 69, -78, c.f32110q, -55, c.F, -90, PSSSigner.TRAILER_IMPLICIT, -20, 115, -112, 123, -49, 89, -113, -95, -7, 45, -14, -79, 0, -108, 55, -97, -48, 46, -100, 110, 40, Utf8.REPLACEMENT_BYTE, Byte.MIN_VALUE, -16, 61, -45, 37, -118, -75, -25, 66, -77, -57, -22, -9, 76, 17, 51, 3, -94, -84, 96};
    private byte[][] roundKeys;

    protected static void A(byte[] bArr) {
        byte b10 = bArr[0];
        byte b11 = bArr[1];
        byte b12 = bArr[2];
        byte b13 = bArr[3];
        byte b14 = bArr[4];
        byte b15 = bArr[5];
        byte b16 = bArr[6];
        byte b17 = bArr[7];
        byte b18 = bArr[8];
        byte b19 = bArr[9];
        byte b20 = bArr[10];
        byte b21 = bArr[11];
        byte b22 = bArr[12];
        byte b23 = bArr[13];
        byte b24 = bArr[14];
        byte b25 = bArr[15];
        bArr[0] = (byte) ((((((b13 ^ b14) ^ b16) ^ b18) ^ b19) ^ b23) ^ b24);
        bArr[1] = (byte) ((((((b12 ^ b15) ^ b17) ^ b18) ^ b19) ^ b22) ^ b25);
        bArr[2] = (byte) ((((((b11 ^ b14) ^ b16) ^ b20) ^ b21) ^ b22) ^ b25);
        bArr[3] = (byte) ((((((b10 ^ b15) ^ b17) ^ b20) ^ b21) ^ b23) ^ b24);
        int i4 = b10 ^ b12;
        bArr[4] = (byte) (((((i4 ^ b15) ^ b18) ^ b21) ^ b24) ^ b25);
        int i10 = b11 ^ b13;
        bArr[5] = (byte) (((((i10 ^ b14) ^ b19) ^ b20) ^ b24) ^ b25);
        bArr[6] = (byte) (((((i4 ^ b17) ^ b19) ^ b20) ^ b22) ^ b23);
        bArr[7] = (byte) (((((i10 ^ b16) ^ b18) ^ b21) ^ b22) ^ b23);
        int i11 = b10 ^ b11;
        bArr[8] = (byte) (((((i11 ^ b14) ^ b17) ^ b20) ^ b23) ^ b25);
        bArr[9] = (byte) (((((i11 ^ b15) ^ b16) ^ b21) ^ b22) ^ b24);
        int i12 = b12 ^ b13;
        bArr[10] = (byte) (((((i12 ^ b15) ^ b16) ^ b18) ^ b23) ^ b25);
        bArr[11] = (byte) (((((i12 ^ b14) ^ b17) ^ b19) ^ b22) ^ b24);
        int i13 = b11 ^ b12;
        bArr[12] = (byte) (((((i13 ^ b16) ^ b17) ^ b19) ^ b21) ^ b22);
        int i14 = b10 ^ b13;
        bArr[13] = (byte) (((((i14 ^ b16) ^ b17) ^ b18) ^ b20) ^ b23);
        bArr[14] = (byte) (((((i14 ^ b14) ^ b15) ^ b19) ^ b21) ^ b24);
        bArr[15] = (byte) (((((i13 ^ b14) ^ b15) ^ b18) ^ b20) ^ b25);
    }

    protected static void FE(byte[] bArr, byte[] bArr2) {
        xor(bArr, bArr2);
        SL2(bArr);
        A(bArr);
    }

    protected static void FO(byte[] bArr, byte[] bArr2) {
        xor(bArr, bArr2);
        SL1(bArr);
        A(bArr);
    }

    protected static byte SB1(byte b10) {
        return SB1_sbox[b10 & 255];
    }

    protected static byte SB2(byte b10) {
        return SB2_sbox[b10 & 255];
    }

    protected static byte SB3(byte b10) {
        return SB3_sbox[b10 & 255];
    }

    protected static byte SB4(byte b10) {
        return SB4_sbox[b10 & 255];
    }

    protected static void SL1(byte[] bArr) {
        bArr[0] = SB1(bArr[0]);
        bArr[1] = SB2(bArr[1]);
        bArr[2] = SB3(bArr[2]);
        bArr[3] = SB4(bArr[3]);
        bArr[4] = SB1(bArr[4]);
        bArr[5] = SB2(bArr[5]);
        bArr[6] = SB3(bArr[6]);
        bArr[7] = SB4(bArr[7]);
        bArr[8] = SB1(bArr[8]);
        bArr[9] = SB2(bArr[9]);
        bArr[10] = SB3(bArr[10]);
        bArr[11] = SB4(bArr[11]);
        bArr[12] = SB1(bArr[12]);
        bArr[13] = SB2(bArr[13]);
        bArr[14] = SB3(bArr[14]);
        bArr[15] = SB4(bArr[15]);
    }

    protected static void SL2(byte[] bArr) {
        bArr[0] = SB3(bArr[0]);
        bArr[1] = SB4(bArr[1]);
        bArr[2] = SB1(bArr[2]);
        bArr[3] = SB2(bArr[3]);
        bArr[4] = SB3(bArr[4]);
        bArr[5] = SB4(bArr[5]);
        bArr[6] = SB1(bArr[6]);
        bArr[7] = SB2(bArr[7]);
        bArr[8] = SB3(bArr[8]);
        bArr[9] = SB4(bArr[9]);
        bArr[10] = SB1(bArr[10]);
        bArr[11] = SB2(bArr[11]);
        bArr[12] = SB3(bArr[12]);
        bArr[13] = SB4(bArr[13]);
        bArr[14] = SB1(bArr[14]);
        bArr[15] = SB2(bArr[15]);
    }

    protected static byte[][] keySchedule(boolean z9, byte[] bArr) {
        int length = bArr.length;
        if (length < 16 || length > 32 || (length & 7) != 0) {
            throw new IllegalArgumentException("Key length not 128/192/256 bits.");
        }
        int i4 = (length >>> 3) - 2;
        byte[][] bArr2 = C;
        byte[] bArr3 = bArr2[i4];
        byte[] bArr4 = bArr2[(i4 + 1) % 3];
        byte[] bArr5 = bArr2[(i4 + 2) % 3];
        byte[] bArr6 = new byte[16];
        byte[] bArr7 = new byte[16];
        System.arraycopy(bArr, 0, bArr6, 0, 16);
        System.arraycopy(bArr, 16, bArr7, 0, length - 16);
        byte[] bArr8 = new byte[16];
        byte[] bArr9 = new byte[16];
        byte[] bArr10 = new byte[16];
        byte[] bArr11 = new byte[16];
        System.arraycopy(bArr6, 0, bArr8, 0, 16);
        System.arraycopy(bArr8, 0, bArr9, 0, 16);
        FO(bArr9, bArr3);
        xor(bArr9, bArr7);
        System.arraycopy(bArr9, 0, bArr10, 0, 16);
        FE(bArr10, bArr4);
        xor(bArr10, bArr8);
        System.arraycopy(bArr10, 0, bArr11, 0, 16);
        FO(bArr11, bArr5);
        xor(bArr11, bArr9);
        int i10 = (i4 * 2) + 12;
        byte[][] bArr12 = (byte[][]) Array.newInstance(byte.class, i10 + 1, 16);
        keyScheduleRound(bArr12[0], bArr8, bArr9, 19);
        keyScheduleRound(bArr12[1], bArr9, bArr10, 19);
        keyScheduleRound(bArr12[2], bArr10, bArr11, 19);
        keyScheduleRound(bArr12[3], bArr11, bArr8, 19);
        keyScheduleRound(bArr12[4], bArr8, bArr9, 31);
        keyScheduleRound(bArr12[5], bArr9, bArr10, 31);
        keyScheduleRound(bArr12[6], bArr10, bArr11, 31);
        keyScheduleRound(bArr12[7], bArr11, bArr8, 31);
        keyScheduleRound(bArr12[8], bArr8, bArr9, 67);
        keyScheduleRound(bArr12[9], bArr9, bArr10, 67);
        keyScheduleRound(bArr12[10], bArr10, bArr11, 67);
        keyScheduleRound(bArr12[11], bArr11, bArr8, 67);
        keyScheduleRound(bArr12[12], bArr8, bArr9, 97);
        if (i10 > 12) {
            keyScheduleRound(bArr12[13], bArr9, bArr10, 97);
            keyScheduleRound(bArr12[14], bArr10, bArr11, 97);
            if (i10 > 14) {
                keyScheduleRound(bArr12[15], bArr11, bArr8, 97);
                keyScheduleRound(bArr12[16], bArr8, bArr9, 109);
            }
        }
        if (!z9) {
            reverseKeys(bArr12);
            for (int i11 = 1; i11 < i10; i11++) {
                A(bArr12[i11]);
            }
        }
        return bArr12;
    }

    protected static void keyScheduleRound(byte[] bArr, byte[] bArr2, byte[] bArr3, int i4) {
        int i10 = i4 >>> 3;
        int i11 = i4 & 7;
        int i12 = 8 - i11;
        int i13 = bArr3[15 - i10] & 255;
        int i14 = 0;
        while (i14 < 16) {
            int i15 = bArr3[(i14 - i10) & 15] & 255;
            bArr[i14] = (byte) (((i13 << i12) | (i15 >>> i11)) ^ (bArr2[i14] & 255));
            i14++;
            i13 = i15;
        }
    }

    protected static void reverseKeys(byte[][] bArr) {
        int length = bArr.length;
        int i4 = length / 2;
        int i10 = length - 1;
        for (int i11 = 0; i11 < i4; i11++) {
            byte[] bArr2 = bArr[i11];
            int i12 = i10 - i11;
            bArr[i11] = bArr[i12];
            bArr[i12] = bArr2;
        }
    }

    protected static void xor(byte[] bArr, byte[] bArr2) {
        for (int i4 = 0; i4 < 16; i4++) {
            bArr[i4] = (byte) (bArr[i4] ^ bArr2[i4]);
        }
    }

    @Override // org.bouncycastle.crypto.BlockCipher
    public String getAlgorithmName() {
        return "ARIA";
    }

    @Override // org.bouncycastle.crypto.BlockCipher
    public int getBlockSize() {
        return 16;
    }

    @Override // org.bouncycastle.crypto.BlockCipher
    public void init(boolean z9, CipherParameters cipherParameters) throws IllegalArgumentException {
        if (cipherParameters instanceof KeyParameter) {
            this.roundKeys = keySchedule(z9, ((KeyParameter) cipherParameters).getKey());
            return;
        }
        throw new IllegalArgumentException("invalid parameter passed to ARIA init - " + cipherParameters.getClass().getName());
    }

    @Override // org.bouncycastle.crypto.BlockCipher
    public int processBlock(byte[] bArr, int i4, byte[] bArr2, int i10) throws DataLengthException, IllegalStateException {
        if (this.roundKeys != null) {
            if (i4 <= bArr.length - 16) {
                if (i10 <= bArr2.length - 16) {
                    byte[] bArr3 = new byte[16];
                    System.arraycopy(bArr, i4, bArr3, 0, 16);
                    int length = this.roundKeys.length - 3;
                    int i11 = 0;
                    while (i11 < length) {
                        int i12 = i11 + 1;
                        FO(bArr3, this.roundKeys[i11]);
                        FE(bArr3, this.roundKeys[i12]);
                        i11 = i12 + 1;
                    }
                    int i13 = i11 + 1;
                    FO(bArr3, this.roundKeys[i11]);
                    xor(bArr3, this.roundKeys[i13]);
                    SL2(bArr3);
                    xor(bArr3, this.roundKeys[i13 + 1]);
                    System.arraycopy(bArr3, 0, bArr2, i10, 16);
                    return 16;
                }
                throw new OutputLengthException("output buffer too short");
            }
            throw new DataLengthException("input buffer too short");
        }
        throw new IllegalStateException("ARIA engine not initialised");
    }

    @Override // org.bouncycastle.crypto.BlockCipher
    public void reset() {
    }
}
