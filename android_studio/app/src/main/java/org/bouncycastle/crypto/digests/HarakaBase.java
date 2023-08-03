package org.bouncycastle.crypto.digests;

import com.fasterxml.jackson.core.json.a;
import com.google.common.base.c;
import com.google.common.primitives.k;
import okio.Utf8;
import org.bouncycastle.crypto.Digest;
import org.bouncycastle.crypto.signers.PSSSigner;

/* loaded from: classes4.dex */
public abstract class HarakaBase implements Digest {
    protected static final int DIGEST_SIZE = 32;
    private static final byte[][] S = {new byte[]{99, 124, 119, 123, -14, 107, 111, -59, 48, 1, 103, 43, -2, -41, -85, 118}, new byte[]{-54, -126, -55, 125, -6, 89, 71, -16, -83, -44, -94, -81, -100, -92, 114, -64}, new byte[]{-73, -3, -109, 38, 54, Utf8.REPLACEMENT_BYTE, -9, -52, 52, -91, -27, -15, 113, -40, 49, c.f32118y}, new byte[]{4, -57, 35, -61, c.B, -106, 5, -102, 7, c.f32114u, Byte.MIN_VALUE, -30, -21, 39, -78, 117}, new byte[]{9, -125, 44, c.D, c.E, 110, 90, -96, 82, 59, -42, -77, 41, -29, 47, -124}, new byte[]{83, -47, 0, -19, 32, -4, -79, 91, 106, -53, -66, 57, 74, 76, 88, -49}, new byte[]{-48, a.f13998i, -86, -5, 67, 77, 51, -123, 69, -7, 2, Byte.MAX_VALUE, 80, 60, -97, -88}, new byte[]{81, -93, k.f34876a, -113, -110, -99, 56, -11, PSSSigner.TRAILER_IMPLICIT, -74, -38, 33, 16, -1, -13, -46}, new byte[]{-51, c.f32107n, 19, -20, 95, -105, 68, c.A, -60, -89, 126, 61, 100, 93, c.C, 115}, new byte[]{96, -127, 79, -36, 34, 42, -112, -120, 70, -18, -72, c.f32117x, -34, 94, c.f32106m, -37}, new byte[]{-32, 50, 58, 10, 73, 6, 36, 92, -62, -45, -84, 98, -111, -107, -28, 121}, new byte[]{-25, -56, 55, 109, -115, -43, 78, -87, 108, 86, -12, -22, 101, 122, -82, 8}, new byte[]{-70, 120, 37, 46, c.F, -90, -76, -58, -24, -35, 116, c.I, 75, -67, -117, -118}, new byte[]{112, 62, -75, 102, 72, 3, -10, c.f32109p, 97, 53, 87, -71, -122, -63, c.G, -98}, new byte[]{-31, -8, -104, 17, 105, -39, -114, -108, -101, c.H, -121, -23, -50, 85, 40, -33}, new byte[]{-116, -95, -119, c.f32108o, a.f14000k, -26, 66, 104, 65, -103, 45, c.f32110q, -80, 84, a.f13999j, c.f32119z}};

    /* JADX INFO: Access modifiers changed from: package-private */
    public static byte[] aesEnc(byte[] bArr, byte[] bArr2) {
        byte[] mixColumns = mixColumns(shiftRows(subBytes(bArr)));
        xorReverse(mixColumns, bArr2);
        return mixColumns;
    }

    private static byte[] mixColumns(byte[] bArr) {
        byte[] bArr2 = new byte[bArr.length];
        int i4 = 0;
        for (int i10 = 0; i10 < 4; i10++) {
            int i11 = i4 + 1;
            int i12 = i10 * 4;
            int i13 = i12 + 1;
            int i14 = i12 + 2;
            int i15 = i12 + 3;
            bArr2[i4] = (byte) ((((xTime(bArr[i12]) ^ xTime(bArr[i13])) ^ bArr[i13]) ^ bArr[i14]) ^ bArr[i15]);
            int i16 = i11 + 1;
            bArr2[i11] = (byte) ((((bArr[i12] ^ xTime(bArr[i13])) ^ xTime(bArr[i14])) ^ bArr[i14]) ^ bArr[i15]);
            int i17 = i16 + 1;
            bArr2[i16] = (byte) ((((bArr[i12] ^ bArr[i13]) ^ xTime(bArr[i14])) ^ xTime(bArr[i15])) ^ bArr[i15]);
            i4 = i17 + 1;
            bArr2[i17] = (byte) ((((bArr[i12] ^ xTime(bArr[i12])) ^ bArr[i13]) ^ bArr[i14]) ^ xTime(bArr[i15]));
        }
        return bArr2;
    }

    static byte sBox(byte b10) {
        return S[(b10 & 255) >>> 4][b10 & c.f32110q];
    }

    static byte[] shiftRows(byte[] bArr) {
        return new byte[]{bArr[0], bArr[5], bArr[10], bArr[15], bArr[4], bArr[9], bArr[14], bArr[3], bArr[8], bArr[13], bArr[2], bArr[7], bArr[12], bArr[1], bArr[6], bArr[11]};
    }

    static byte[] subBytes(byte[] bArr) {
        byte[] bArr2 = new byte[bArr.length];
        bArr2[0] = sBox(bArr[0]);
        bArr2[1] = sBox(bArr[1]);
        bArr2[2] = sBox(bArr[2]);
        bArr2[3] = sBox(bArr[3]);
        bArr2[4] = sBox(bArr[4]);
        bArr2[5] = sBox(bArr[5]);
        bArr2[6] = sBox(bArr[6]);
        bArr2[7] = sBox(bArr[7]);
        bArr2[8] = sBox(bArr[8]);
        bArr2[9] = sBox(bArr[9]);
        bArr2[10] = sBox(bArr[10]);
        bArr2[11] = sBox(bArr[11]);
        bArr2[12] = sBox(bArr[12]);
        bArr2[13] = sBox(bArr[13]);
        bArr2[14] = sBox(bArr[14]);
        bArr2[15] = sBox(bArr[15]);
        return bArr2;
    }

    static byte xTime(byte b10) {
        int i4 = b10 >>> 7;
        int i10 = b10 << 1;
        if (i4 > 0) {
            i10 ^= 27;
        }
        return (byte) (i10 & 255);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static byte[] xor(byte[] bArr, byte[] bArr2, int i4) {
        byte[] bArr3 = new byte[16];
        int i10 = 0;
        while (i10 < 16) {
            bArr3[i10] = (byte) (bArr2[i4] ^ bArr[i10]);
            i10++;
            i4++;
        }
        return bArr3;
    }

    static void xorReverse(byte[] bArr, byte[] bArr2) {
        bArr[0] = (byte) (bArr[0] ^ bArr2[15]);
        bArr[1] = (byte) (bArr[1] ^ bArr2[14]);
        bArr[2] = (byte) (bArr[2] ^ bArr2[13]);
        bArr[3] = (byte) (bArr[3] ^ bArr2[12]);
        bArr[4] = (byte) (bArr[4] ^ bArr2[11]);
        bArr[5] = (byte) (bArr[5] ^ bArr2[10]);
        bArr[6] = (byte) (bArr[6] ^ bArr2[9]);
        bArr[7] = (byte) (bArr[7] ^ bArr2[8]);
        bArr[8] = (byte) (bArr2[7] ^ bArr[8]);
        bArr[9] = (byte) (bArr2[6] ^ bArr[9]);
        bArr[10] = (byte) (bArr2[5] ^ bArr[10]);
        bArr[11] = (byte) (bArr2[4] ^ bArr[11]);
        bArr[12] = (byte) (bArr2[3] ^ bArr[12]);
        bArr[13] = (byte) (bArr2[2] ^ bArr[13]);
        bArr[14] = (byte) (bArr2[1] ^ bArr[14]);
        bArr[15] = (byte) (bArr2[0] ^ bArr[15]);
    }

    @Override // org.bouncycastle.crypto.Digest
    public int getDigestSize() {
        return 32;
    }
}
