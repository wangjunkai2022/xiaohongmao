package org.bouncycastle.crypto.engines;

import androidx.recyclerview.widget.ItemTouchHelper;
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
import org.bouncycastle.util.Pack;

/* loaded from: classes4.dex */
public class AESLightEngine implements BlockCipher {
    private static final int BLOCK_SIZE = 16;

    /* renamed from: m1  reason: collision with root package name */
    private static final int f91221m1 = -2139062144;

    /* renamed from: m2  reason: collision with root package name */
    private static final int f91222m2 = 2139062143;

    /* renamed from: m3  reason: collision with root package name */
    private static final int f91223m3 = 27;

    /* renamed from: m4  reason: collision with root package name */
    private static final int f91224m4 = -1061109568;

    /* renamed from: m5  reason: collision with root package name */
    private static final int f91225m5 = 1061109567;
    private int ROUNDS;
    private int[][] WorkingKey = null;
    private boolean forEncryption;
    private static final byte[] S = {99, 124, 119, 123, -14, 107, 111, -59, 48, 1, 103, 43, -2, -41, -85, 118, -54, -126, -55, 125, -6, 89, 71, -16, -83, -44, -94, -81, -100, -92, 114, -64, -73, -3, -109, 38, 54, Utf8.REPLACEMENT_BYTE, -9, -52, 52, -91, -27, -15, 113, -40, 49, c.f32118y, 4, -57, 35, -61, c.B, -106, 5, -102, 7, c.f32114u, Byte.MIN_VALUE, -30, -21, 39, -78, 117, 9, -125, 44, c.D, c.E, 110, 90, -96, 82, 59, -42, -77, 41, -29, 47, -124, 83, -47, 0, -19, 32, -4, -79, 91, 106, -53, -66, 57, 74, 76, 88, -49, -48, a.f13998i, -86, -5, 67, 77, 51, -123, 69, -7, 2, Byte.MAX_VALUE, 80, 60, -97, -88, 81, -93, k.f34876a, -113, -110, -99, 56, -11, PSSSigner.TRAILER_IMPLICIT, -74, -38, 33, 16, -1, -13, -46, -51, c.f32107n, 19, -20, 95, -105, 68, c.A, -60, -89, 126, 61, 100, 93, c.C, 115, 96, -127, 79, -36, 34, 42, -112, -120, 70, -18, -72, c.f32117x, -34, 94, c.f32106m, -37, -32, 50, 58, 10, 73, 6, 36, 92, -62, -45, -84, 98, -111, -107, -28, 121, -25, -56, 55, 109, -115, -43, 78, -87, 108, 86, -12, -22, 101, 122, -82, 8, -70, 120, 37, 46, c.F, -90, -76, -58, -24, -35, 116, c.I, 75, -67, -117, -118, 112, 62, -75, 102, 72, 3, -10, c.f32109p, 97, 53, 87, -71, -122, -63, c.G, -98, -31, -8, -104, 17, 105, -39, -114, -108, -101, c.H, -121, -23, -50, 85, 40, -33, -116, -95, -119, c.f32108o, a.f14000k, -26, 66, 104, 65, -103, 45, c.f32110q, -80, 84, a.f13999j, c.f32119z};
    private static final byte[] Si = {82, 9, 106, -43, 48, 54, -91, 56, a.f14000k, k.f34876a, -93, -98, -127, -13, -41, -5, 124, -29, 57, -126, -101, 47, -1, -121, 52, -114, 67, 68, -60, -34, -23, -53, 84, 123, -108, 50, -90, -62, 35, 61, -18, 76, -107, c.f32106m, 66, -6, -61, 78, 8, 46, -95, 102, 40, -39, 36, -78, 118, 91, -94, 73, 109, -117, -47, 37, 114, -8, -10, 100, -122, 104, -104, c.f32119z, -44, -92, 92, -52, 93, 101, -74, -110, 108, 112, 72, 80, -3, -19, -71, -38, 94, c.f32118y, 70, 87, -89, -115, -99, -124, -112, -40, -85, 0, -116, PSSSigner.TRAILER_IMPLICIT, -45, 10, -9, -28, 88, 5, -72, -77, 69, 6, -48, 44, c.H, -113, -54, Utf8.REPLACEMENT_BYTE, c.f32110q, 2, -63, -81, -67, 3, 1, 19, -118, 107, 58, -111, 17, 65, 79, 103, -36, -22, -105, -14, -49, -50, -16, -76, -26, 115, -106, -84, 116, 34, -25, -83, 53, -123, -30, -7, 55, -24, c.F, 117, -33, 110, 71, -15, c.D, 113, c.G, 41, -59, -119, 111, -73, 98, c.f32109p, -86, c.B, -66, c.E, -4, 86, 62, 75, -58, -46, 121, 32, -102, -37, -64, -2, 120, -51, 90, -12, c.I, -35, -88, 51, -120, 7, -57, 49, -79, c.f32114u, 16, 89, 39, Byte.MIN_VALUE, -20, 95, 96, 81, Byte.MAX_VALUE, -87, c.C, -75, 74, c.f32108o, 45, -27, 122, -97, -109, -55, -100, a.f13998i, -96, -32, 59, 77, -82, 42, -11, -80, -56, -21, a.f13999j, 60, -125, 83, -103, 97, c.A, 43, 4, 126, -70, 119, -42, 38, -31, 105, c.f32117x, 99, 85, 33, c.f32107n, 125};
    private static final int[] rcon = {1, 2, 4, 8, 16, 32, 64, 128, 27, 54, 108, com.facebook.imageutils.c.f13388c, 171, 77, 154, 47, 94, 188, 99, 198, 151, 53, 106, 212, 179, 125, ItemTouchHelper.Callback.DEFAULT_SWIPE_ANIMATION_DURATION, 239, 197, 145};

    private static int FFmulX(int i4) {
        return (((i4 & f91221m1) >>> 7) * 27) ^ ((f91222m2 & i4) << 1);
    }

    private static int FFmulX2(int i4) {
        int i10 = i4 & f91224m4;
        int i11 = i10 ^ (i10 >>> 1);
        return (i11 >>> 5) ^ (((f91225m5 & i4) << 2) ^ (i11 >>> 2));
    }

    private void decryptBlock(byte[] bArr, int i4, byte[] bArr2, int i10, int[][] iArr) {
        int littleEndianToInt = Pack.littleEndianToInt(bArr, i4 + 0);
        int littleEndianToInt2 = Pack.littleEndianToInt(bArr, i4 + 4);
        int littleEndianToInt3 = Pack.littleEndianToInt(bArr, i4 + 8);
        int littleEndianToInt4 = Pack.littleEndianToInt(bArr, i4 + 12);
        int i11 = this.ROUNDS;
        int i12 = littleEndianToInt ^ iArr[i11][0];
        int i13 = littleEndianToInt2 ^ iArr[i11][1];
        int i14 = littleEndianToInt3 ^ iArr[i11][2];
        int i15 = i11 - 1;
        int i16 = littleEndianToInt4 ^ iArr[i11][3];
        while (true) {
            byte[] bArr3 = Si;
            int i17 = i12 & 255;
            if (i15 <= 1) {
                int inv_mcol = inv_mcol((((bArr3[i17] & 255) ^ ((bArr3[(i16 >> 8) & 255] & 255) << 8)) ^ ((bArr3[(i14 >> 16) & 255] & 255) << 16)) ^ (bArr3[(i13 >> 24) & 255] << c.B)) ^ iArr[i15][0];
                int inv_mcol2 = inv_mcol((((bArr3[i13 & 255] & 255) ^ ((bArr3[(i12 >> 8) & 255] & 255) << 8)) ^ ((bArr3[(i16 >> 16) & 255] & 255) << 16)) ^ (bArr3[(i14 >> 24) & 255] << c.B)) ^ iArr[i15][1];
                int inv_mcol3 = inv_mcol((((bArr3[i14 & 255] & 255) ^ ((bArr3[(i13 >> 8) & 255] & 255) << 8)) ^ ((bArr3[(i12 >> 16) & 255] & 255) << 16)) ^ (bArr3[(i16 >> 24) & 255] << c.B)) ^ iArr[i15][2];
                int inv_mcol4 = inv_mcol((((bArr3[i16 & 255] & 255) ^ ((bArr3[(i14 >> 8) & 255] & 255) << 8)) ^ ((bArr3[(i13 >> 16) & 255] & 255) << 16)) ^ (bArr3[(i12 >> 24) & 255] << c.B)) ^ iArr[i15][3];
                int i18 = ((((bArr3[inv_mcol & 255] & 255) ^ ((bArr3[(inv_mcol4 >> 8) & 255] & 255) << 8)) ^ ((bArr3[(inv_mcol3 >> 16) & 255] & 255) << 16)) ^ (bArr3[(inv_mcol2 >> 24) & 255] << c.B)) ^ iArr[0][0];
                int i19 = ((((bArr3[inv_mcol2 & 255] & 255) ^ ((bArr3[(inv_mcol >> 8) & 255] & 255) << 8)) ^ ((bArr3[(inv_mcol4 >> 16) & 255] & 255) << 16)) ^ (bArr3[(inv_mcol3 >> 24) & 255] << c.B)) ^ iArr[0][1];
                int i20 = ((((bArr3[inv_mcol3 & 255] & 255) ^ ((bArr3[(inv_mcol2 >> 8) & 255] & 255) << 8)) ^ ((bArr3[(inv_mcol >> 16) & 255] & 255) << 16)) ^ (bArr3[(inv_mcol4 >> 24) & 255] << c.B)) ^ iArr[0][2];
                int i21 = ((((bArr3[inv_mcol4 & 255] & 255) ^ ((bArr3[(inv_mcol3 >> 8) & 255] & 255) << 8)) ^ ((bArr3[(inv_mcol2 >> 16) & 255] & 255) << 16)) ^ (bArr3[(inv_mcol >> 24) & 255] << c.B)) ^ iArr[0][3];
                Pack.intToLittleEndian(i18, bArr2, i10 + 0);
                Pack.intToLittleEndian(i19, bArr2, i10 + 4);
                Pack.intToLittleEndian(i20, bArr2, i10 + 8);
                Pack.intToLittleEndian(i21, bArr2, i10 + 12);
                return;
            }
            int inv_mcol5 = inv_mcol((((bArr3[i17] & 255) ^ ((bArr3[(i16 >> 8) & 255] & 255) << 8)) ^ ((bArr3[(i14 >> 16) & 255] & 255) << 16)) ^ (bArr3[(i13 >> 24) & 255] << c.B)) ^ iArr[i15][0];
            int inv_mcol6 = inv_mcol((((bArr3[i13 & 255] & 255) ^ ((bArr3[(i12 >> 8) & 255] & 255) << 8)) ^ ((bArr3[(i16 >> 16) & 255] & 255) << 16)) ^ (bArr3[(i14 >> 24) & 255] << c.B)) ^ iArr[i15][1];
            int inv_mcol7 = inv_mcol((((bArr3[i14 & 255] & 255) ^ ((bArr3[(i13 >> 8) & 255] & 255) << 8)) ^ ((bArr3[(i12 >> 16) & 255] & 255) << 16)) ^ (bArr3[(i16 >> 24) & 255] << c.B)) ^ iArr[i15][2];
            int i22 = i15 - 1;
            int inv_mcol8 = inv_mcol((((bArr3[i16 & 255] & 255) ^ ((bArr3[(i14 >> 8) & 255] & 255) << 8)) ^ ((bArr3[(i13 >> 16) & 255] & 255) << 16)) ^ (bArr3[(i12 >> 24) & 255] << c.B)) ^ iArr[i15][3];
            int inv_mcol9 = inv_mcol((((bArr3[inv_mcol5 & 255] & 255) ^ ((bArr3[(inv_mcol8 >> 8) & 255] & 255) << 8)) ^ ((bArr3[(inv_mcol7 >> 16) & 255] & 255) << 16)) ^ (bArr3[(inv_mcol6 >> 24) & 255] << c.B)) ^ iArr[i22][0];
            int inv_mcol10 = inv_mcol((((bArr3[inv_mcol6 & 255] & 255) ^ ((bArr3[(inv_mcol5 >> 8) & 255] & 255) << 8)) ^ ((bArr3[(inv_mcol8 >> 16) & 255] & 255) << 16)) ^ (bArr3[(inv_mcol7 >> 24) & 255] << c.B)) ^ iArr[i22][1];
            int i23 = i22 - 1;
            i16 = inv_mcol((((bArr3[inv_mcol8 & 255] & 255) ^ ((bArr3[(inv_mcol7 >> 8) & 255] & 255) << 8)) ^ ((bArr3[(inv_mcol6 >> 16) & 255] & 255) << 16)) ^ (bArr3[(inv_mcol5 >> 24) & 255] << c.B)) ^ iArr[i22][3];
            i12 = inv_mcol9;
            i13 = inv_mcol10;
            i14 = inv_mcol((((bArr3[inv_mcol7 & 255] & 255) ^ ((bArr3[(inv_mcol6 >> 8) & 255] & 255) << 8)) ^ ((bArr3[(inv_mcol5 >> 16) & 255] & 255) << 16)) ^ (bArr3[(inv_mcol8 >> 24) & 255] << c.B)) ^ iArr[i22][2];
            i15 = i23;
        }
    }

    private void encryptBlock(byte[] bArr, int i4, byte[] bArr2, int i10, int[][] iArr) {
        int littleEndianToInt = Pack.littleEndianToInt(bArr, i4 + 0);
        int littleEndianToInt2 = Pack.littleEndianToInt(bArr, i4 + 4);
        int littleEndianToInt3 = Pack.littleEndianToInt(bArr, i4 + 8);
        int littleEndianToInt4 = Pack.littleEndianToInt(bArr, i4 + 12);
        int i11 = littleEndianToInt ^ iArr[0][0];
        int i12 = littleEndianToInt2 ^ iArr[0][1];
        int i13 = littleEndianToInt3 ^ iArr[0][2];
        int i14 = littleEndianToInt4 ^ iArr[0][3];
        int i15 = 1;
        while (i15 < this.ROUNDS - 1) {
            byte[] bArr3 = S;
            int mcol = mcol((((bArr3[i11 & 255] & 255) ^ ((bArr3[(i12 >> 8) & 255] & 255) << 8)) ^ ((bArr3[(i13 >> 16) & 255] & 255) << 16)) ^ (bArr3[(i14 >> 24) & 255] << c.B)) ^ iArr[i15][0];
            int mcol2 = mcol((((bArr3[i12 & 255] & 255) ^ ((bArr3[(i13 >> 8) & 255] & 255) << 8)) ^ ((bArr3[(i14 >> 16) & 255] & 255) << 16)) ^ (bArr3[(i11 >> 24) & 255] << c.B)) ^ iArr[i15][1];
            int mcol3 = mcol((((bArr3[i13 & 255] & 255) ^ ((bArr3[(i14 >> 8) & 255] & 255) << 8)) ^ ((bArr3[(i11 >> 16) & 255] & 255) << 16)) ^ (bArr3[(i12 >> 24) & 255] << c.B)) ^ iArr[i15][2];
            int i16 = i15 + 1;
            int mcol4 = mcol((((bArr3[i14 & 255] & 255) ^ ((bArr3[(i11 >> 8) & 255] & 255) << 8)) ^ ((bArr3[(i12 >> 16) & 255] & 255) << 16)) ^ (bArr3[(i13 >> 24) & 255] << c.B)) ^ iArr[i15][3];
            int mcol5 = mcol((((bArr3[mcol & 255] & 255) ^ ((bArr3[(mcol2 >> 8) & 255] & 255) << 8)) ^ ((bArr3[(mcol3 >> 16) & 255] & 255) << 16)) ^ (bArr3[(mcol4 >> 24) & 255] << c.B)) ^ iArr[i16][0];
            int mcol6 = mcol((((bArr3[mcol2 & 255] & 255) ^ ((bArr3[(mcol3 >> 8) & 255] & 255) << 8)) ^ ((bArr3[(mcol4 >> 16) & 255] & 255) << 16)) ^ (bArr3[(mcol >> 24) & 255] << c.B)) ^ iArr[i16][1];
            int i17 = i16 + 1;
            i14 = mcol((((bArr3[mcol4 & 255] & 255) ^ ((bArr3[(mcol >> 8) & 255] & 255) << 8)) ^ ((bArr3[(mcol2 >> 16) & 255] & 255) << 16)) ^ (bArr3[(mcol3 >> 24) & 255] << c.B)) ^ iArr[i16][3];
            i11 = mcol5;
            i12 = mcol6;
            i13 = mcol((((bArr3[mcol3 & 255] & 255) ^ ((bArr3[(mcol4 >> 8) & 255] & 255) << 8)) ^ ((bArr3[(mcol >> 16) & 255] & 255) << 16)) ^ (bArr3[(mcol2 >> 24) & 255] << c.B)) ^ iArr[i16][2];
            i15 = i17;
        }
        byte[] bArr4 = S;
        int mcol7 = mcol((((bArr4[i11 & 255] & 255) ^ ((bArr4[(i12 >> 8) & 255] & 255) << 8)) ^ ((bArr4[(i13 >> 16) & 255] & 255) << 16)) ^ (bArr4[(i14 >> 24) & 255] << c.B)) ^ iArr[i15][0];
        int mcol8 = mcol((((bArr4[i12 & 255] & 255) ^ ((bArr4[(i13 >> 8) & 255] & 255) << 8)) ^ ((bArr4[(i14 >> 16) & 255] & 255) << 16)) ^ (bArr4[(i11 >> 24) & 255] << c.B)) ^ iArr[i15][1];
        int mcol9 = mcol((((bArr4[i13 & 255] & 255) ^ ((bArr4[(i14 >> 8) & 255] & 255) << 8)) ^ ((bArr4[(i11 >> 16) & 255] & 255) << 16)) ^ (bArr4[(i12 >> 24) & 255] << c.B)) ^ iArr[i15][2];
        int i18 = i15 + 1;
        int mcol10 = mcol((((bArr4[i14 & 255] & 255) ^ ((bArr4[(i11 >> 8) & 255] & 255) << 8)) ^ ((bArr4[(i12 >> 16) & 255] & 255) << 16)) ^ (bArr4[(i13 >> 24) & 255] << c.B)) ^ iArr[i15][3];
        int i19 = ((((bArr4[mcol7 & 255] & 255) ^ ((bArr4[(mcol8 >> 8) & 255] & 255) << 8)) ^ ((bArr4[(mcol9 >> 16) & 255] & 255) << 16)) ^ (bArr4[(mcol10 >> 24) & 255] << c.B)) ^ iArr[i18][0];
        int i20 = ((((bArr4[mcol8 & 255] & 255) ^ ((bArr4[(mcol9 >> 8) & 255] & 255) << 8)) ^ ((bArr4[(mcol10 >> 16) & 255] & 255) << 16)) ^ (bArr4[(mcol7 >> 24) & 255] << c.B)) ^ iArr[i18][1];
        int i21 = ((((bArr4[mcol9 & 255] & 255) ^ ((bArr4[(mcol10 >> 8) & 255] & 255) << 8)) ^ ((bArr4[(mcol7 >> 16) & 255] & 255) << 16)) ^ (bArr4[(mcol8 >> 24) & 255] << c.B)) ^ iArr[i18][2];
        int i22 = ((((bArr4[mcol10 & 255] & 255) ^ ((bArr4[(mcol7 >> 8) & 255] & 255) << 8)) ^ ((bArr4[(mcol8 >> 16) & 255] & 255) << 16)) ^ (bArr4[(mcol9 >> 24) & 255] << c.B)) ^ iArr[i18][3];
        Pack.intToLittleEndian(i19, bArr2, i10 + 0);
        Pack.intToLittleEndian(i20, bArr2, i10 + 4);
        Pack.intToLittleEndian(i21, bArr2, i10 + 8);
        Pack.intToLittleEndian(i22, bArr2, i10 + 12);
    }

    private int[][] generateWorkingKey(byte[] bArr, boolean z9) {
        int length = bArr.length;
        if (length < 16 || length > 32 || (length & 7) != 0) {
            throw new IllegalArgumentException("Key length not 128/192/256 bits.");
        }
        int i4 = length >>> 2;
        int i10 = i4 + 6;
        this.ROUNDS = i10;
        int[][] iArr = (int[][]) Array.newInstance(int.class, i10 + 1, 4);
        int i11 = 8;
        char c10 = 3;
        if (i4 == 4) {
            int littleEndianToInt = Pack.littleEndianToInt(bArr, 0);
            iArr[0][0] = littleEndianToInt;
            int littleEndianToInt2 = Pack.littleEndianToInt(bArr, 4);
            iArr[0][1] = littleEndianToInt2;
            int littleEndianToInt3 = Pack.littleEndianToInt(bArr, 8);
            iArr[0][2] = littleEndianToInt3;
            int littleEndianToInt4 = Pack.littleEndianToInt(bArr, 12);
            iArr[0][3] = littleEndianToInt4;
            for (int i12 = 1; i12 <= 10; i12++) {
                littleEndianToInt ^= subWord(shift(littleEndianToInt4, 8)) ^ rcon[i12 - 1];
                iArr[i12][0] = littleEndianToInt;
                littleEndianToInt2 ^= littleEndianToInt;
                iArr[i12][1] = littleEndianToInt2;
                littleEndianToInt3 ^= littleEndianToInt2;
                iArr[i12][2] = littleEndianToInt3;
                littleEndianToInt4 ^= littleEndianToInt3;
                iArr[i12][3] = littleEndianToInt4;
            }
        } else if (i4 == 6) {
            int littleEndianToInt5 = Pack.littleEndianToInt(bArr, 0);
            iArr[0][0] = littleEndianToInt5;
            int littleEndianToInt6 = Pack.littleEndianToInt(bArr, 4);
            iArr[0][1] = littleEndianToInt6;
            int littleEndianToInt7 = Pack.littleEndianToInt(bArr, 8);
            iArr[0][2] = littleEndianToInt7;
            int littleEndianToInt8 = Pack.littleEndianToInt(bArr, 12);
            iArr[0][3] = littleEndianToInt8;
            int littleEndianToInt9 = Pack.littleEndianToInt(bArr, 16);
            int littleEndianToInt10 = Pack.littleEndianToInt(bArr, 20);
            int i13 = 1;
            int i14 = 1;
            while (true) {
                iArr[i13][0] = littleEndianToInt9;
                iArr[i13][1] = littleEndianToInt10;
                int subWord = subWord(shift(littleEndianToInt10, 8)) ^ i14;
                int i15 = i14 << 1;
                int i16 = littleEndianToInt5 ^ subWord;
                iArr[i13][2] = i16;
                int i17 = littleEndianToInt6 ^ i16;
                iArr[i13][3] = i17;
                int i18 = littleEndianToInt7 ^ i17;
                int i19 = i13 + 1;
                iArr[i19][0] = i18;
                int i20 = littleEndianToInt8 ^ i18;
                iArr[i19][1] = i20;
                int i21 = littleEndianToInt9 ^ i20;
                iArr[i19][2] = i21;
                int i22 = littleEndianToInt10 ^ i21;
                iArr[i19][3] = i22;
                int subWord2 = subWord(shift(i22, 8)) ^ i15;
                i14 = i15 << 1;
                littleEndianToInt5 = i16 ^ subWord2;
                int i23 = i13 + 2;
                iArr[i23][0] = littleEndianToInt5;
                littleEndianToInt6 = i17 ^ littleEndianToInt5;
                iArr[i23][1] = littleEndianToInt6;
                littleEndianToInt7 = i18 ^ littleEndianToInt6;
                iArr[i23][2] = littleEndianToInt7;
                littleEndianToInt8 = i20 ^ littleEndianToInt7;
                iArr[i23][3] = littleEndianToInt8;
                i13 += 3;
                if (i13 >= 13) {
                    break;
                }
                littleEndianToInt9 = i21 ^ littleEndianToInt8;
                littleEndianToInt10 = i22 ^ littleEndianToInt9;
            }
        } else if (i4 != 8) {
            throw new IllegalStateException("Should never get here");
        } else {
            int littleEndianToInt11 = Pack.littleEndianToInt(bArr, 0);
            iArr[0][0] = littleEndianToInt11;
            int littleEndianToInt12 = Pack.littleEndianToInt(bArr, 4);
            iArr[0][1] = littleEndianToInt12;
            int littleEndianToInt13 = Pack.littleEndianToInt(bArr, 8);
            iArr[0][2] = littleEndianToInt13;
            int littleEndianToInt14 = Pack.littleEndianToInt(bArr, 12);
            iArr[0][3] = littleEndianToInt14;
            int littleEndianToInt15 = Pack.littleEndianToInt(bArr, 16);
            iArr[1][0] = littleEndianToInt15;
            int littleEndianToInt16 = Pack.littleEndianToInt(bArr, 20);
            iArr[1][1] = littleEndianToInt16;
            int littleEndianToInt17 = Pack.littleEndianToInt(bArr, 24);
            iArr[1][2] = littleEndianToInt17;
            int littleEndianToInt18 = Pack.littleEndianToInt(bArr, 28);
            iArr[1][3] = littleEndianToInt18;
            int i24 = 1;
            int i25 = 2;
            while (true) {
                int subWord3 = subWord(shift(littleEndianToInt18, i11)) ^ i24;
                i24 <<= 1;
                littleEndianToInt11 ^= subWord3;
                iArr[i25][0] = littleEndianToInt11;
                littleEndianToInt12 ^= littleEndianToInt11;
                iArr[i25][1] = littleEndianToInt12;
                littleEndianToInt13 ^= littleEndianToInt12;
                iArr[i25][2] = littleEndianToInt13;
                littleEndianToInt14 ^= littleEndianToInt13;
                iArr[i25][c10] = littleEndianToInt14;
                int i26 = i25 + 1;
                if (i26 >= 15) {
                    break;
                }
                littleEndianToInt15 ^= subWord(littleEndianToInt14);
                iArr[i26][0] = littleEndianToInt15;
                littleEndianToInt16 ^= littleEndianToInt15;
                iArr[i26][1] = littleEndianToInt16;
                littleEndianToInt17 ^= littleEndianToInt16;
                iArr[i26][2] = littleEndianToInt17;
                littleEndianToInt18 ^= littleEndianToInt17;
                iArr[i26][3] = littleEndianToInt18;
                i25 = i26 + 1;
                i11 = 8;
                c10 = 3;
            }
        }
        if (!z9) {
            for (int i27 = 1; i27 < this.ROUNDS; i27++) {
                for (int i28 = 0; i28 < 4; i28++) {
                    iArr[i27][i28] = inv_mcol(iArr[i27][i28]);
                }
            }
        }
        return iArr;
    }

    private static int inv_mcol(int i4) {
        int shift = shift(i4, 8) ^ i4;
        int FFmulX = i4 ^ FFmulX(shift);
        int FFmulX2 = shift ^ FFmulX2(FFmulX);
        return FFmulX ^ (FFmulX2 ^ shift(FFmulX2, 16));
    }

    private static int mcol(int i4) {
        int shift = shift(i4, 8);
        int i10 = i4 ^ shift;
        return FFmulX(i10) ^ (shift ^ shift(i10, 16));
    }

    private static int shift(int i4, int i10) {
        return (i4 << (-i10)) | (i4 >>> i10);
    }

    private static int subWord(int i4) {
        byte[] bArr = S;
        return (bArr[(i4 >> 24) & 255] << c.B) | (bArr[i4 & 255] & 255) | ((bArr[(i4 >> 8) & 255] & 255) << 8) | ((bArr[(i4 >> 16) & 255] & 255) << 16);
    }

    @Override // org.bouncycastle.crypto.BlockCipher
    public String getAlgorithmName() {
        return "AES";
    }

    @Override // org.bouncycastle.crypto.BlockCipher
    public int getBlockSize() {
        return 16;
    }

    @Override // org.bouncycastle.crypto.BlockCipher
    public void init(boolean z9, CipherParameters cipherParameters) {
        if (cipherParameters instanceof KeyParameter) {
            this.WorkingKey = generateWorkingKey(((KeyParameter) cipherParameters).getKey(), z9);
            this.forEncryption = z9;
            return;
        }
        throw new IllegalArgumentException("invalid parameter passed to AES init - " + cipherParameters.getClass().getName());
    }

    @Override // org.bouncycastle.crypto.BlockCipher
    public int processBlock(byte[] bArr, int i4, byte[] bArr2, int i10) {
        int[][] iArr = this.WorkingKey;
        if (iArr != null) {
            if (i4 <= bArr.length - 16) {
                if (i10 <= bArr2.length - 16) {
                    if (this.forEncryption) {
                        encryptBlock(bArr, i4, bArr2, i10, iArr);
                    } else {
                        decryptBlock(bArr, i4, bArr2, i10, iArr);
                    }
                    return 16;
                }
                throw new OutputLengthException("output buffer too short");
            }
            throw new DataLengthException("input buffer too short");
        }
        throw new IllegalStateException("AES engine not initialised");
    }

    @Override // org.bouncycastle.crypto.BlockCipher
    public void reset() {
    }
}
