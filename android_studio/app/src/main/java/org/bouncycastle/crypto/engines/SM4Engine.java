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
import org.bouncycastle.util.Pack;

/* loaded from: classes4.dex */
public class SM4Engine implements BlockCipher {
    private static final int BLOCK_SIZE = 16;
    private final int[] X = new int[4];
    private int[] rk;
    private static final byte[] Sbox = {-42, -112, -23, -2, -52, -31, 61, -73, c.f32119z, -74, c.f32117x, -62, 40, -5, 44, 5, 43, 103, -102, 118, 42, -66, 4, -61, -86, 68, 19, 38, 73, -122, 6, -103, -100, 66, 80, -12, -111, a.f13998i, -104, 122, 51, 84, c.f32106m, 67, -19, -49, -84, 98, -28, -77, c.F, -87, -55, 8, -24, -107, Byte.MIN_VALUE, -33, -108, -6, 117, -113, Utf8.REPLACEMENT_BYTE, -90, 71, 7, -89, -4, -13, 115, c.A, -70, -125, 89, 60, c.C, -26, -123, 79, -88, 104, 107, -127, -78, 113, 100, -38, -117, -8, -21, c.f32110q, 75, 112, 86, -99, 53, c.H, 36, c.f32109p, 94, 99, 88, -47, -94, 37, 34, 124, 59, 1, 33, 120, -121, -44, 0, 70, 87, -97, -45, 39, 82, 76, 54, 2, -25, -96, -60, -56, -98, -22, a.f14000k, -118, -46, k.f34876a, -57, 56, -75, -93, -9, -14, -50, -7, 97, c.f32118y, -95, -32, -82, 93, -92, -101, 52, c.D, 85, -83, -109, 50, 48, -11, -116, -79, -29, c.G, -10, -30, 46, -126, 102, -54, 96, -64, 41, 35, -85, c.f32108o, 83, 78, 111, -43, -37, 55, 69, -34, -3, -114, 47, 3, -1, 106, 114, 109, 108, 91, 81, -115, c.E, -81, -110, a.f13999j, -35, PSSSigner.TRAILER_IMPLICIT, Byte.MAX_VALUE, 17, -39, 92, 65, c.I, 16, 90, -40, 10, -63, 49, -120, -91, -51, 123, -67, 45, 116, -48, c.f32114u, -72, -27, -76, -80, -119, 105, -105, 74, c.f32107n, -106, 119, 126, 101, -71, -15, 9, -59, 110, -58, -124, c.B, -16, 125, -20, 58, -36, 77, 32, 121, -18, 95, 62, -41, -53, 57, 72};
    private static final int[] CK = {462357, 472066609, 943670861, 1415275113, 1886879365, -1936483679, -1464879427, -993275175, -521670923, -66909679, 404694573, 876298825, 1347903077, 1819507329, -2003855715, -1532251463, -1060647211, -589042959, -117504499, 337322537, 808926789, 1280531041, 1752135293, -2071227751, -1599623499, -1128019247, -656414995, -184876535, 269950501, 741554753, 1213159005, 1684763257};
    private static final int[] FK = {-1548633402, 1453994832, 1736282519, -1301273892};

    private int F0(int[] iArr, int i4) {
        return T((iArr[3] ^ (iArr[1] ^ iArr[2])) ^ i4) ^ iArr[0];
    }

    private int F1(int[] iArr, int i4) {
        return T((iArr[0] ^ (iArr[2] ^ iArr[3])) ^ i4) ^ iArr[1];
    }

    private int F2(int[] iArr, int i4) {
        return T((iArr[1] ^ (iArr[3] ^ iArr[0])) ^ i4) ^ iArr[2];
    }

    private int F3(int[] iArr, int i4) {
        return T((iArr[2] ^ (iArr[0] ^ iArr[1])) ^ i4) ^ iArr[3];
    }

    private int L(int i4) {
        return rotateLeft(i4, 24) ^ (((rotateLeft(i4, 2) ^ i4) ^ rotateLeft(i4, 10)) ^ rotateLeft(i4, 18));
    }

    private int L_ap(int i4) {
        return rotateLeft(i4, 23) ^ (rotateLeft(i4, 13) ^ i4);
    }

    private int T(int i4) {
        return L(tau(i4));
    }

    private int T_ap(int i4) {
        return L_ap(tau(i4));
    }

    private int[] expandKey(boolean z9, byte[] bArr) {
        int[] iArr = new int[32];
        int[] iArr2 = {Pack.bigEndianToInt(bArr, 0), Pack.bigEndianToInt(bArr, 4), Pack.bigEndianToInt(bArr, 8), Pack.bigEndianToInt(bArr, 12)};
        int i4 = iArr2[0];
        int[] iArr3 = FK;
        int[] iArr4 = {i4 ^ iArr3[0], iArr2[1] ^ iArr3[1], iArr2[2] ^ iArr3[2], iArr2[3] ^ iArr3[3]};
        if (z9) {
            int i10 = iArr4[0];
            int i11 = (iArr4[1] ^ iArr4[2]) ^ iArr4[3];
            int[] iArr5 = CK;
            iArr[0] = i10 ^ T_ap(i11 ^ iArr5[0]);
            iArr[1] = iArr4[1] ^ T_ap(((iArr4[2] ^ iArr4[3]) ^ iArr[0]) ^ iArr5[1]);
            iArr[2] = iArr4[2] ^ T_ap(((iArr4[3] ^ iArr[0]) ^ iArr[1]) ^ iArr5[2]);
            iArr[3] = iArr4[3] ^ T_ap(((iArr[0] ^ iArr[1]) ^ iArr[2]) ^ iArr5[3]);
            for (int i12 = 4; i12 < 32; i12++) {
                iArr[i12] = iArr[i12 - 4] ^ T_ap(((iArr[i12 - 3] ^ iArr[i12 - 2]) ^ iArr[i12 - 1]) ^ CK[i12]);
            }
        } else {
            int i13 = iArr4[0];
            int i14 = (iArr4[1] ^ iArr4[2]) ^ iArr4[3];
            int[] iArr6 = CK;
            iArr[31] = i13 ^ T_ap(i14 ^ iArr6[0]);
            iArr[30] = iArr4[1] ^ T_ap(((iArr4[2] ^ iArr4[3]) ^ iArr[31]) ^ iArr6[1]);
            iArr[29] = iArr4[2] ^ T_ap(((iArr4[3] ^ iArr[31]) ^ iArr[30]) ^ iArr6[2]);
            iArr[28] = iArr4[3] ^ T_ap(((iArr[31] ^ iArr[30]) ^ iArr[29]) ^ iArr6[3]);
            for (int i15 = 27; i15 >= 0; i15--) {
                iArr[i15] = iArr[i15 + 4] ^ T_ap(((iArr[i15 + 3] ^ iArr[i15 + 2]) ^ iArr[i15 + 1]) ^ CK[31 - i15]);
            }
        }
        return iArr;
    }

    private int rotateLeft(int i4, int i10) {
        return (i4 >>> (-i10)) | (i4 << i10);
    }

    private int tau(int i4) {
        byte[] bArr = Sbox;
        return (bArr[i4 & 255] & 255) | ((bArr[(i4 >> 24) & 255] & 255) << 24) | ((bArr[(i4 >> 16) & 255] & 255) << 16) | ((bArr[(i4 >> 8) & 255] & 255) << 8);
    }

    @Override // org.bouncycastle.crypto.BlockCipher
    public String getAlgorithmName() {
        return "SM4";
    }

    @Override // org.bouncycastle.crypto.BlockCipher
    public int getBlockSize() {
        return 16;
    }

    @Override // org.bouncycastle.crypto.BlockCipher
    public void init(boolean z9, CipherParameters cipherParameters) throws IllegalArgumentException {
        if (!(cipherParameters instanceof KeyParameter)) {
            throw new IllegalArgumentException("invalid parameter passed to SM4 init - " + cipherParameters.getClass().getName());
        }
        byte[] key = ((KeyParameter) cipherParameters).getKey();
        if (key.length != 16) {
            throw new IllegalArgumentException("SM4 requires a 128 bit key");
        }
        this.rk = expandKey(z9, key);
    }

    @Override // org.bouncycastle.crypto.BlockCipher
    public int processBlock(byte[] bArr, int i4, byte[] bArr2, int i10) throws DataLengthException, IllegalStateException {
        if (this.rk != null) {
            if (i4 + 16 <= bArr.length) {
                if (i10 + 16 <= bArr2.length) {
                    this.X[0] = Pack.bigEndianToInt(bArr, i4);
                    this.X[1] = Pack.bigEndianToInt(bArr, i4 + 4);
                    this.X[2] = Pack.bigEndianToInt(bArr, i4 + 8);
                    this.X[3] = Pack.bigEndianToInt(bArr, i4 + 12);
                    for (int i11 = 0; i11 < 32; i11 += 4) {
                        int[] iArr = this.X;
                        iArr[0] = F0(iArr, this.rk[i11]);
                        int[] iArr2 = this.X;
                        iArr2[1] = F1(iArr2, this.rk[i11 + 1]);
                        int[] iArr3 = this.X;
                        iArr3[2] = F2(iArr3, this.rk[i11 + 2]);
                        int[] iArr4 = this.X;
                        iArr4[3] = F3(iArr4, this.rk[i11 + 3]);
                    }
                    Pack.intToBigEndian(this.X[3], bArr2, i10);
                    Pack.intToBigEndian(this.X[2], bArr2, i10 + 4);
                    Pack.intToBigEndian(this.X[1], bArr2, i10 + 8);
                    Pack.intToBigEndian(this.X[0], bArr2, i10 + 12);
                    return 16;
                }
                throw new OutputLengthException("output buffer too short");
            }
            throw new DataLengthException("input buffer too short");
        }
        throw new IllegalStateException("SM4 not initialised");
    }

    @Override // org.bouncycastle.crypto.BlockCipher
    public void reset() {
    }
}
