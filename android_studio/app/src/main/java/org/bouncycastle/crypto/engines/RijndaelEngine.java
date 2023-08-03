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

/* loaded from: classes4.dex */
public class RijndaelEngine implements BlockCipher {
    private static final int MAXKC = 64;
    private static final int MAXROUNDS = 14;
    private long A0;
    private long A1;
    private long A2;
    private long A3;
    private int BC;
    private long BC_MASK;
    private int ROUNDS;
    private int blockBits;
    private boolean forEncryption;
    private byte[] shifts0SC;
    private byte[] shifts1SC;
    private long[][] workingKey;
    private static final byte[] logtable = {0, 0, c.C, 1, 50, 2, c.D, -58, 75, -57, c.E, 104, 51, -18, -33, 3, 100, 4, -32, c.f32109p, 52, -115, -127, a.f13998i, 76, 113, 8, -56, -8, 105, c.F, -63, 125, -62, c.G, -75, -7, -71, 39, 106, 77, -28, -90, 114, -102, -55, 9, 120, 101, 47, -118, 5, 33, c.f32110q, -31, 36, c.f32114u, -16, -126, 69, 53, -109, -38, -114, -106, -113, -37, -67, 54, -48, -50, -108, 19, 92, -46, -15, k.f34876a, 70, -125, 56, 102, -35, -3, 48, a.f14000k, 6, -117, 98, -77, 37, -30, -104, 34, -120, -111, 16, 126, 110, 72, -61, -93, -74, c.H, 66, 58, 107, 40, 84, -6, -123, 61, -70, 43, 121, 10, c.f32118y, -101, -97, 94, -54, 78, -44, -84, -27, -13, 115, -89, 87, -81, 88, -88, 80, -12, -22, -42, 116, 79, -82, -23, -43, -25, -26, -83, -24, 44, -41, 117, 122, -21, c.f32119z, c.f32106m, -11, 89, -53, 95, -80, -100, -87, 81, -96, Byte.MAX_VALUE, c.f32107n, -10, 111, c.A, -60, 73, -20, -40, 67, c.I, 45, -92, 118, 123, -73, -52, a.f13999j, 62, 90, -5, 96, -79, -122, 59, 82, -95, 108, -86, 85, 41, -99, -105, -78, -121, -112, 97, -66, -36, -4, PSSSigner.TRAILER_IMPLICIT, -107, -49, -51, 55, Utf8.REPLACEMENT_BYTE, 91, -47, 83, 57, -124, 60, 65, -94, 109, 71, c.f32117x, 42, -98, 93, 86, -14, -45, -85, 68, 17, -110, -39, 35, 32, 46, -119, -76, 124, -72, 38, 119, -103, -29, -91, 103, 74, -19, -34, -59, 49, -2, c.B, c.f32108o, 99, -116, Byte.MIN_VALUE, -64, -9, 112, 7};
    private static final byte[] aLogtable = {0, 3, 5, c.f32110q, 17, 51, 85, -1, c.D, 46, 114, -106, -95, -8, 19, 53, 95, -31, 56, 72, -40, 115, -107, -92, -9, 2, 6, 10, c.H, 34, 102, -86, -27, 52, 92, -28, 55, 89, -21, 38, 106, -66, -39, 112, -112, -85, -26, 49, 83, -11, 4, c.f32107n, c.f32117x, 60, 68, -52, 79, -47, 104, -72, -45, 110, -78, -51, 76, -44, 103, -87, -32, 59, 77, -41, 98, -90, -15, 8, c.B, 40, 120, -120, -125, -98, -71, -48, 107, -67, -36, Byte.MAX_VALUE, -127, -104, -77, -50, 73, -37, 118, -102, -75, -60, 87, -7, 16, 48, 80, -16, c.f32106m, c.G, 39, 105, a.f13999j, -42, 97, -93, -2, c.C, 43, 125, -121, -110, -83, -20, 47, 113, -109, -82, -23, 32, 96, -96, -5, c.f32119z, 58, 78, -46, 109, -73, -62, 93, -25, 50, 86, -6, c.f32118y, Utf8.REPLACEMENT_BYTE, 65, -61, 94, -30, 61, 71, -55, k.f34876a, -64, 91, -19, 44, 116, -100, a.f14000k, -38, 117, -97, -70, -43, 100, -84, a.f13998i, 42, 126, -126, -99, PSSSigner.TRAILER_IMPLICIT, -33, 122, -114, -119, Byte.MIN_VALUE, -101, -74, -63, 88, -24, 35, 101, -81, -22, 37, 111, -79, -56, 67, -59, 84, -4, c.I, 33, 99, -91, -12, 7, 9, c.E, 45, 119, -103, -80, -53, 70, -54, 69, -49, 74, -34, 121, -117, -122, -111, -88, -29, 62, 66, -58, 81, -13, c.f32109p, c.f32114u, 54, 90, -18, 41, 123, -115, -116, -113, -118, -123, -108, -89, -14, c.f32108o, c.A, 57, 75, -35, 124, -124, -105, -94, -3, c.F, 36, 108, -76, -57, 82, -10, 1, 3, 5, c.f32110q, 17, 51, 85, -1, c.D, 46, 114, -106, -95, -8, 19, 53, 95, -31, 56, 72, -40, 115, -107, -92, -9, 2, 6, 10, c.H, 34, 102, -86, -27, 52, 92, -28, 55, 89, -21, 38, 106, -66, -39, 112, -112, -85, -26, 49, 83, -11, 4, c.f32107n, c.f32117x, 60, 68, -52, 79, -47, 104, -72, -45, 110, -78, -51, 76, -44, 103, -87, -32, 59, 77, -41, 98, -90, -15, 8, c.B, 40, 120, -120, -125, -98, -71, -48, 107, -67, -36, Byte.MAX_VALUE, -127, -104, -77, -50, 73, -37, 118, -102, -75, -60, 87, -7, 16, 48, 80, -16, c.f32106m, c.G, 39, 105, a.f13999j, -42, 97, -93, -2, c.C, 43, 125, -121, -110, -83, -20, 47, 113, -109, -82, -23, 32, 96, -96, -5, c.f32119z, 58, 78, -46, 109, -73, -62, 93, -25, 50, 86, -6, c.f32118y, Utf8.REPLACEMENT_BYTE, 65, -61, 94, -30, 61, 71, -55, k.f34876a, -64, 91, -19, 44, 116, -100, a.f14000k, -38, 117, -97, -70, -43, 100, -84, a.f13998i, 42, 126, -126, -99, PSSSigner.TRAILER_IMPLICIT, -33, 122, -114, -119, Byte.MIN_VALUE, -101, -74, -63, 88, -24, 35, 101, -81, -22, 37, 111, -79, -56, 67, -59, 84, -4, c.I, 33, 99, -91, -12, 7, 9, c.E, 45, 119, -103, -80, -53, 70, -54, 69, -49, 74, -34, 121, -117, -122, -111, -88, -29, 62, 66, -58, 81, -13, c.f32109p, c.f32114u, 54, 90, -18, 41, 123, -115, -116, -113, -118, -123, -108, -89, -14, c.f32108o, c.A, 57, 75, -35, 124, -124, -105, -94, -3, c.F, 36, 108, -76, -57, 82, -10, 1};
    private static final byte[] S = {99, 124, 119, 123, -14, 107, 111, -59, 48, 1, 103, 43, -2, -41, -85, 118, -54, -126, -55, 125, -6, 89, 71, -16, -83, -44, -94, -81, -100, -92, 114, -64, -73, -3, -109, 38, 54, Utf8.REPLACEMENT_BYTE, -9, -52, 52, -91, -27, -15, 113, -40, 49, c.f32118y, 4, -57, 35, -61, c.B, -106, 5, -102, 7, c.f32114u, Byte.MIN_VALUE, -30, -21, 39, -78, 117, 9, -125, 44, c.D, c.E, 110, 90, -96, 82, 59, -42, -77, 41, -29, 47, -124, 83, -47, 0, -19, 32, -4, -79, 91, 106, -53, -66, 57, 74, 76, 88, -49, -48, a.f13998i, -86, -5, 67, 77, 51, -123, 69, -7, 2, Byte.MAX_VALUE, 80, 60, -97, -88, 81, -93, k.f34876a, -113, -110, -99, 56, -11, PSSSigner.TRAILER_IMPLICIT, -74, -38, 33, 16, -1, -13, -46, -51, c.f32107n, 19, -20, 95, -105, 68, c.A, -60, -89, 126, 61, 100, 93, c.C, 115, 96, -127, 79, -36, 34, 42, -112, -120, 70, -18, -72, c.f32117x, -34, 94, c.f32106m, -37, -32, 50, 58, 10, 73, 6, 36, 92, -62, -45, -84, 98, -111, -107, -28, 121, -25, -56, 55, 109, -115, -43, 78, -87, 108, 86, -12, -22, 101, 122, -82, 8, -70, 120, 37, 46, c.F, -90, -76, -58, -24, -35, 116, c.I, 75, -67, -117, -118, 112, 62, -75, 102, 72, 3, -10, c.f32109p, 97, 53, 87, -71, -122, -63, c.G, -98, -31, -8, -104, 17, 105, -39, -114, -108, -101, c.H, -121, -23, -50, 85, 40, -33, -116, -95, -119, c.f32108o, a.f14000k, -26, 66, 104, 65, -103, 45, c.f32110q, -80, 84, a.f13999j, c.f32119z};
    private static final byte[] Si = {82, 9, 106, -43, 48, 54, -91, 56, a.f14000k, k.f34876a, -93, -98, -127, -13, -41, -5, 124, -29, 57, -126, -101, 47, -1, -121, 52, -114, 67, 68, -60, -34, -23, -53, 84, 123, -108, 50, -90, -62, 35, 61, -18, 76, -107, c.f32106m, 66, -6, -61, 78, 8, 46, -95, 102, 40, -39, 36, -78, 118, 91, -94, 73, 109, -117, -47, 37, 114, -8, -10, 100, -122, 104, -104, c.f32119z, -44, -92, 92, -52, 93, 101, -74, -110, 108, 112, 72, 80, -3, -19, -71, -38, 94, c.f32118y, 70, 87, -89, -115, -99, -124, -112, -40, -85, 0, -116, PSSSigner.TRAILER_IMPLICIT, -45, 10, -9, -28, 88, 5, -72, -77, 69, 6, -48, 44, c.H, -113, -54, Utf8.REPLACEMENT_BYTE, c.f32110q, 2, -63, -81, -67, 3, 1, 19, -118, 107, 58, -111, 17, 65, 79, 103, -36, -22, -105, -14, -49, -50, -16, -76, -26, 115, -106, -84, 116, 34, -25, -83, 53, -123, -30, -7, 55, -24, c.F, 117, -33, 110, 71, -15, c.D, 113, c.G, 41, -59, -119, 111, -73, 98, c.f32109p, -86, c.B, -66, c.E, -4, 86, 62, 75, -58, -46, 121, 32, -102, -37, -64, -2, 120, -51, 90, -12, c.I, -35, -88, 51, -120, 7, -57, 49, -79, c.f32114u, 16, 89, 39, Byte.MIN_VALUE, -20, 95, 96, 81, Byte.MAX_VALUE, -87, c.C, -75, 74, c.f32108o, 45, -27, 122, -97, -109, -55, -100, a.f13998i, -96, -32, 59, 77, -82, 42, -11, -80, -56, -21, a.f13999j, 60, -125, 83, -103, 97, c.A, 43, 4, 126, -70, 119, -42, 38, -31, 105, c.f32117x, 99, 85, 33, c.f32107n, 125};
    private static final int[] rcon = {1, 2, 4, 8, 16, 32, 64, 128, 27, 54, 108, com.facebook.imageutils.c.f13388c, 171, 77, 154, 47, 94, 188, 99, 198, 151, 53, 106, 212, 179, 125, ItemTouchHelper.Callback.DEFAULT_SWIPE_ANIMATION_DURATION, 239, 197, 145};
    static byte[][] shifts0 = {new byte[]{0, 8, 16, c.B}, new byte[]{0, 8, 16, c.B}, new byte[]{0, 8, 16, c.B}, new byte[]{0, 8, 16, 32}, new byte[]{0, 8, c.B, 32}};
    static byte[][] shifts1 = {new byte[]{0, c.B, 16, 8}, new byte[]{0, 32, c.B, 16}, new byte[]{0, 40, 32, c.B}, new byte[]{0, 48, 40, c.B}, new byte[]{0, 56, 40, 32}};

    public RijndaelEngine() {
        this(128);
    }

    public RijndaelEngine(int i4) {
        if (i4 == 128) {
            this.BC = 32;
            this.BC_MASK = 4294967295L;
            this.shifts0SC = shifts0[0];
            this.shifts1SC = shifts1[0];
        } else if (i4 == 160) {
            this.BC = 40;
            this.BC_MASK = 1099511627775L;
            this.shifts0SC = shifts0[1];
            this.shifts1SC = shifts1[1];
        } else if (i4 == 192) {
            this.BC = 48;
            this.BC_MASK = 281474976710655L;
            this.shifts0SC = shifts0[2];
            this.shifts1SC = shifts1[2];
        } else if (i4 == 224) {
            this.BC = 56;
            this.BC_MASK = 72057594037927935L;
            this.shifts0SC = shifts0[3];
            this.shifts1SC = shifts1[3];
        } else if (i4 != 256) {
            throw new IllegalArgumentException("unknown blocksize to Rijndael");
        } else {
            this.BC = 64;
            this.BC_MASK = -1L;
            this.shifts0SC = shifts0[4];
            this.shifts1SC = shifts1[4];
        }
        this.blockBits = i4;
    }

    private void InvMixColumn() {
        long j4 = 0;
        long j10 = 0;
        long j11 = 0;
        long j12 = 0;
        for (int i4 = 0; i4 < this.BC; i4 += 8) {
            int i10 = (int) ((this.A0 >> i4) & 255);
            int i11 = (int) ((this.A1 >> i4) & 255);
            int i12 = (int) ((this.A2 >> i4) & 255);
            long j13 = j12;
            int i13 = (int) ((this.A3 >> i4) & 255);
            int i14 = -1;
            int i15 = i10 != 0 ? logtable[i10 & 255] & 255 : -1;
            int i16 = i11 != 0 ? logtable[i11 & 255] & 255 : -1;
            int i17 = i12 != 0 ? logtable[i12 & 255] & 255 : -1;
            if (i13 != 0) {
                i14 = logtable[i13 & 255] & 255;
            }
            j4 |= ((((mul0xe(i15) ^ mul0xb(i16)) ^ mul0xd(i17)) ^ mul0x9(i14)) & 255) << i4;
            j10 |= ((((mul0xe(i16) ^ mul0xb(i17)) ^ mul0xd(i14)) ^ mul0x9(i15)) & 255) << i4;
            j11 |= ((((mul0xe(i17) ^ mul0xb(i14)) ^ mul0xd(i15)) ^ mul0x9(i16)) & 255) << i4;
            j12 = j13 | (((((mul0xe(i14) ^ mul0xb(i15)) ^ mul0xd(i16)) ^ mul0x9(i17)) & 255) << i4);
        }
        this.A0 = j4;
        this.A1 = j10;
        this.A2 = j11;
        this.A3 = j12;
    }

    private void KeyAddition(long[] jArr) {
        this.A0 ^= jArr[0];
        this.A1 ^= jArr[1];
        this.A2 ^= jArr[2];
        this.A3 ^= jArr[3];
    }

    private void MixColumn() {
        long j4 = 0;
        long j10 = 0;
        long j11 = 0;
        long j12 = 0;
        for (int i4 = 0; i4 < this.BC; i4 += 8) {
            int i10 = (int) ((this.A0 >> i4) & 255);
            int i11 = (int) ((this.A1 >> i4) & 255);
            int i12 = (int) ((this.A2 >> i4) & 255);
            int i13 = (int) ((this.A3 >> i4) & 255);
            j4 |= ((((mul0x2(i10) ^ mul0x3(i11)) ^ i12) ^ i13) & 255) << i4;
            j10 |= ((((mul0x2(i11) ^ mul0x3(i12)) ^ i13) ^ i10) & 255) << i4;
            j11 |= ((((mul0x2(i12) ^ mul0x3(i13)) ^ i10) ^ i11) & 255) << i4;
            j12 |= ((((mul0x2(i13) ^ mul0x3(i10)) ^ i11) ^ i12) & 255) << i4;
        }
        this.A0 = j4;
        this.A1 = j10;
        this.A2 = j11;
        this.A3 = j12;
    }

    private void ShiftRow(byte[] bArr) {
        this.A1 = shift(this.A1, bArr[1]);
        this.A2 = shift(this.A2, bArr[2]);
        this.A3 = shift(this.A3, bArr[3]);
    }

    private void Substitution(byte[] bArr) {
        this.A0 = applyS(this.A0, bArr);
        this.A1 = applyS(this.A1, bArr);
        this.A2 = applyS(this.A2, bArr);
        this.A3 = applyS(this.A3, bArr);
    }

    private long applyS(long j4, byte[] bArr) {
        long j10 = 0;
        for (int i4 = 0; i4 < this.BC; i4 += 8) {
            j10 |= (bArr[(int) ((j4 >> i4) & 255)] & 255) << i4;
        }
        return j10;
    }

    private void decryptBlock(long[][] jArr) {
        KeyAddition(jArr[this.ROUNDS]);
        Substitution(Si);
        ShiftRow(this.shifts1SC);
        for (int i4 = this.ROUNDS - 1; i4 > 0; i4--) {
            KeyAddition(jArr[i4]);
            InvMixColumn();
            Substitution(Si);
            ShiftRow(this.shifts1SC);
        }
        KeyAddition(jArr[0]);
    }

    private void encryptBlock(long[][] jArr) {
        KeyAddition(jArr[0]);
        for (int i4 = 1; i4 < this.ROUNDS; i4++) {
            Substitution(S);
            ShiftRow(this.shifts0SC);
            MixColumn();
            KeyAddition(jArr[i4]);
        }
        Substitution(S);
        ShiftRow(this.shifts0SC);
        KeyAddition(jArr[this.ROUNDS]);
    }

    private long[][] generateWorkingKey(byte[] bArr) {
        int i4;
        int i10;
        int i11 = 8;
        int length = bArr.length * 8;
        byte[][] bArr2 = (byte[][]) Array.newInstance(byte.class, 4, 64);
        long[][] jArr = (long[][]) Array.newInstance(long.class, 15, 4);
        int i12 = 4;
        if (length == 128) {
            i4 = 4;
        } else if (length == 160) {
            i4 = 5;
        } else if (length == 192) {
            i4 = 6;
        } else if (length == 224) {
            i4 = 7;
        } else if (length != 256) {
            throw new IllegalArgumentException("Key length not 128/160/192/224/256 bits.");
        } else {
            i4 = 8;
        }
        this.ROUNDS = length >= this.blockBits ? i4 + 6 : (this.BC / 8) + 6;
        char c10 = 0;
        int i13 = 0;
        int i14 = 0;
        while (i13 < bArr.length) {
            bArr2[i13 % 4][i13 / 4] = bArr[i14];
            i13++;
            i14++;
        }
        int i15 = 0;
        int i16 = 0;
        while (i15 < i4 && i16 < (this.ROUNDS + 1) * (this.BC / 8)) {
            int i17 = 0;
            while (i17 < i12) {
                int i18 = this.BC;
                long[] jArr2 = jArr[i16 / (i18 / 8)];
                jArr2[i17] = ((bArr2[i17][i15] & 255) << ((i16 * 8) % i18)) | jArr2[i17];
                i17++;
                i12 = 4;
            }
            i15++;
            i16++;
            i12 = 4;
        }
        int i19 = 0;
        while (i16 < (this.ROUNDS + 1) * (this.BC / i11)) {
            int i20 = 0;
            while (i20 < 4) {
                byte[] bArr3 = bArr2[i20];
                i20++;
                bArr3[c10] = (byte) (bArr3[c10] ^ S[bArr2[i20 % 4][i4 - 1] & 255]);
            }
            byte[] bArr4 = bArr2[c10];
            int i21 = i19 + 1;
            bArr4[c10] = (byte) (rcon[i19] ^ bArr4[c10]);
            int i22 = 1;
            if (i4 <= 6) {
                while (i22 < i4) {
                    for (int i23 = 0; i23 < 4; i23++) {
                        byte[] bArr5 = bArr2[i23];
                        bArr5[i22] = (byte) (bArr5[i22] ^ bArr2[i23][i22 - 1]);
                    }
                    i22++;
                }
            } else {
                while (true) {
                    i10 = 4;
                    if (i22 >= 4) {
                        break;
                    }
                    int i24 = 0;
                    while (i24 < i10) {
                        byte[] bArr6 = bArr2[i24];
                        bArr6[i22] = (byte) (bArr6[i22] ^ bArr2[i24][i22 - 1]);
                        i24++;
                        i10 = 4;
                    }
                    i22++;
                }
                for (int i25 = 0; i25 < 4; i25++) {
                    byte[] bArr7 = bArr2[i25];
                    bArr7[4] = (byte) (bArr7[4] ^ S[bArr2[i25][3] & 255]);
                }
                int i26 = 5;
                while (i26 < i4) {
                    int i27 = 0;
                    while (i27 < i10) {
                        byte[] bArr8 = bArr2[i27];
                        bArr8[i26] = (byte) (bArr8[i26] ^ bArr2[i27][i26 - 1]);
                        i27++;
                        i10 = 4;
                    }
                    i26++;
                    i10 = 4;
                }
            }
            int i28 = 0;
            while (i28 < i4 && i16 < (this.ROUNDS + 1) * (this.BC / i11)) {
                for (int i29 = 0; i29 < 4; i29++) {
                    int i30 = this.BC;
                    long[] jArr3 = jArr[i16 / (i30 / 8)];
                    jArr3[i29] = ((bArr2[i29][i28] & 255) << ((i16 * 8) % i30)) | jArr3[i29];
                }
                i28++;
                i16++;
                i11 = 8;
            }
            i19 = i21;
            c10 = 0;
            i11 = 8;
        }
        return jArr;
    }

    private byte mul0x2(int i4) {
        if (i4 != 0) {
            return aLogtable[(logtable[i4] & 255) + 25];
        }
        return (byte) 0;
    }

    private byte mul0x3(int i4) {
        if (i4 != 0) {
            return aLogtable[(logtable[i4] & 255) + 1];
        }
        return (byte) 0;
    }

    private byte mul0x9(int i4) {
        if (i4 >= 0) {
            return aLogtable[i4 + 199];
        }
        return (byte) 0;
    }

    private byte mul0xb(int i4) {
        if (i4 >= 0) {
            return aLogtable[i4 + 104];
        }
        return (byte) 0;
    }

    private byte mul0xd(int i4) {
        if (i4 >= 0) {
            return aLogtable[i4 + 238];
        }
        return (byte) 0;
    }

    private byte mul0xe(int i4) {
        if (i4 >= 0) {
            return aLogtable[i4 + 223];
        }
        return (byte) 0;
    }

    private void packBlock(byte[] bArr, int i4) {
        for (int i10 = 0; i10 != this.BC; i10 += 8) {
            int i11 = i4 + 1;
            bArr[i4] = (byte) (this.A0 >> i10);
            int i12 = i11 + 1;
            bArr[i11] = (byte) (this.A1 >> i10);
            int i13 = i12 + 1;
            bArr[i12] = (byte) (this.A2 >> i10);
            i4 = i13 + 1;
            bArr[i13] = (byte) (this.A3 >> i10);
        }
    }

    private long shift(long j4, int i4) {
        return ((j4 << (this.BC - i4)) | (j4 >>> i4)) & this.BC_MASK;
    }

    private void unpackBlock(byte[] bArr, int i4) {
        int i10;
        int i11;
        int i12;
        int i13;
        int i14;
        int i15;
        this.A0 = bArr[i4] & 255;
        this.A1 = bArr[i10] & 255;
        this.A2 = bArr[i11] & 255;
        int i16 = i4 + 1 + 1 + 1 + 1;
        this.A3 = bArr[i12] & 255;
        for (int i17 = 8; i17 != this.BC; i17 += 8) {
            this.A0 |= (bArr[i16] & 255) << i17;
            this.A1 |= (bArr[i13] & 255) << i17;
            this.A2 |= (bArr[i14] & 255) << i17;
            i16 = i16 + 1 + 1 + 1 + 1;
            this.A3 |= (bArr[i15] & 255) << i17;
        }
    }

    @Override // org.bouncycastle.crypto.BlockCipher
    public String getAlgorithmName() {
        return "Rijndael";
    }

    @Override // org.bouncycastle.crypto.BlockCipher
    public int getBlockSize() {
        return this.BC / 2;
    }

    @Override // org.bouncycastle.crypto.BlockCipher
    public void init(boolean z9, CipherParameters cipherParameters) {
        if (cipherParameters instanceof KeyParameter) {
            this.workingKey = generateWorkingKey(((KeyParameter) cipherParameters).getKey());
            this.forEncryption = z9;
            return;
        }
        throw new IllegalArgumentException("invalid parameter passed to Rijndael init - " + cipherParameters.getClass().getName());
    }

    @Override // org.bouncycastle.crypto.BlockCipher
    public int processBlock(byte[] bArr, int i4, byte[] bArr2, int i10) {
        if (this.workingKey != null) {
            int i11 = this.BC;
            if ((i11 / 2) + i4 <= bArr.length) {
                if ((i11 / 2) + i10 <= bArr2.length) {
                    boolean z9 = this.forEncryption;
                    unpackBlock(bArr, i4);
                    long[][] jArr = this.workingKey;
                    if (z9) {
                        encryptBlock(jArr);
                    } else {
                        decryptBlock(jArr);
                    }
                    packBlock(bArr2, i10);
                    return this.BC / 2;
                }
                throw new OutputLengthException("output buffer too short");
            }
            throw new DataLengthException("input buffer too short");
        }
        throw new IllegalStateException("Rijndael engine not initialised");
    }

    @Override // org.bouncycastle.crypto.BlockCipher
    public void reset() {
    }
}
