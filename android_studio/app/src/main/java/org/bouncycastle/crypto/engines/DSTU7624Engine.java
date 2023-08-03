package org.bouncycastle.crypto.engines;

import com.fasterxml.jackson.core.json.a;
import com.google.common.base.c;
import com.google.common.primitives.k;
import okio.Utf8;
import org.bouncycastle.crypto.BlockCipher;
import org.bouncycastle.crypto.DataLengthException;
import org.bouncycastle.crypto.OutputLengthException;
import org.bouncycastle.crypto.signers.PSSSigner;
import org.bouncycastle.util.Arrays;
import org.bouncycastle.util.Pack;

/* loaded from: classes4.dex */
public class DSTU7624Engine implements BlockCipher {
    private static final int ROUNDS_128 = 10;
    private static final int ROUNDS_256 = 14;
    private static final int ROUNDS_512 = 18;
    private static final byte[] S0 = {-88, 67, 95, 6, 107, 117, 108, 89, 113, -33, -121, -107, c.A, -16, -40, 9, 109, -13, c.G, -53, -55, 77, 44, -81, 121, -32, -105, -3, 111, 75, 69, 57, 62, -35, -93, 79, -76, -74, -102, c.f32109p, c.I, a.f14000k, c.f32118y, -31, 73, -46, -109, -58, -110, 114, -98, 97, -47, 99, -6, -18, -12, c.C, -43, -83, 88, -92, a.f13999j, -95, -36, -14, -125, 55, 66, -28, 122, 50, -100, -52, -85, 74, -113, 110, 4, 39, 46, -25, -30, 90, -106, c.f32119z, 35, 43, -62, 101, 102, c.f32110q, PSSSigner.TRAILER_IMPLICIT, -87, 71, 65, 52, 72, -4, -73, 106, -120, -91, 83, -122, -7, 91, -37, 56, 123, -61, c.H, 34, 51, 36, 40, 54, -57, -78, 59, -114, 119, -70, -11, c.f32117x, -97, 8, 85, -101, 76, -2, 96, 92, -38, c.B, 70, -51, 125, 33, -80, Utf8.REPLACEMENT_BYTE, c.E, -119, -1, -21, -124, 105, 58, -99, -41, -45, 112, 103, k.f34876a, -75, -34, 93, 48, -111, -79, 120, 17, 1, -27, 0, 104, -104, -96, -59, 2, -90, 116, 45, c.f32106m, -94, 118, -77, -66, -50, -67, -82, -23, -118, 49, c.F, -20, -15, -103, -108, -86, -10, 38, 47, a.f13998i, -24, -116, 53, 3, -44, Byte.MAX_VALUE, -5, 5, -63, 94, -112, 32, 61, -126, -9, -22, 10, c.f32108o, 126, -8, 80, c.D, -60, 7, 87, -72, 60, 98, -29, -56, -84, 82, 100, 16, -48, -39, 19, c.f32107n, c.f32114u, 41, 81, -71, -49, -42, 115, -115, -127, 84, -64, -19, 78, 68, -89, 42, -123, 37, -26, -54, 124, -117, 86, Byte.MIN_VALUE};
    private static final byte[] S1 = {-50, a.f13999j, -21, -110, -22, -53, 19, -63, -23, 58, -42, -78, -46, -112, c.A, -8, 66, c.f32118y, 86, -76, 101, c.F, -120, 67, -59, 92, 54, -70, -11, 87, 103, -115, 49, -10, 100, 88, -98, -12, 34, -86, 117, c.f32110q, 2, -79, -33, 109, 115, 77, 124, 38, 46, -9, 8, 93, 68, 62, -97, c.f32117x, -56, -82, 84, 16, -40, PSSSigner.TRAILER_IMPLICIT, c.D, 107, 105, -13, -67, 51, -85, -6, -47, -101, 104, 78, c.f32119z, -107, -111, -18, 76, 99, -114, 91, -52, 60, c.C, -95, -127, 73, 123, -39, 111, 55, 96, -54, -25, 43, 72, -3, -106, 69, -4, 65, c.f32114u, c.f32108o, 121, -27, -119, -116, -29, 32, 48, -36, -73, 108, 74, -75, Utf8.REPLACEMENT_BYTE, -105, -44, 98, 45, 6, -92, -91, -125, 95, 42, -38, -55, 0, 126, -94, 85, a.f14000k, 17, -43, -100, -49, c.f32109p, 10, 61, 81, 125, -109, c.E, -2, -60, 71, 9, -122, c.f32106m, -113, -99, 106, 7, -71, -80, -104, c.B, 50, 113, 75, a.f13998i, 59, 112, -96, -28, k.f34876a, -1, -61, -87, -26, 120, -7, -117, 70, Byte.MIN_VALUE, c.H, 56, -31, -72, -88, -32, c.f32107n, 35, 118, c.G, 37, 36, 5, -15, 110, -108, 40, -102, -124, -24, -93, 79, 119, -45, -123, -30, 82, -14, -126, 80, 122, 47, 116, 83, -77, 97, -81, 57, 53, -34, -51, c.I, -103, -84, -83, 114, 44, -35, -48, -121, -66, 94, -90, -20, 4, -58, 3, 52, -5, -37, 89, -74, -62, 1, -16, 90, -19, -89, 102, 33, Byte.MAX_VALUE, -118, 39, -57, -64, 41, -41};
    private static final byte[] S2 = {-109, -39, -102, -75, -104, 34, 69, -4, -70, 106, -33, 2, -97, -36, 81, 89, 74, c.A, 43, -62, -108, -12, a.f13999j, -93, 98, -28, 113, -44, -51, 112, c.f32119z, -31, 73, 60, -64, -40, 92, -101, -83, -123, 83, -95, 122, -56, 45, -32, -47, 114, -90, 44, -60, -29, 118, 120, -73, -76, 9, 59, c.f32109p, 65, 76, -34, -78, -112, 37, -91, -41, 3, 17, 0, -61, 46, -110, a.f13998i, 78, c.f32114u, -99, 125, -53, 53, 16, -43, 79, -98, 77, -87, 85, -58, -48, 123, c.B, -105, -45, 54, -26, 72, 86, -127, -113, 119, -52, -100, -71, -30, -84, -72, 47, c.f32118y, -92, 124, -38, 56, c.H, c.f32106m, 5, -42, c.f32117x, 110, 108, 126, 102, -3, -79, -27, 96, -81, 94, 51, -121, -55, -16, 93, 109, Utf8.REPLACEMENT_BYTE, -120, -115, -57, -9, c.G, -23, -20, -19, Byte.MIN_VALUE, 41, 39, -49, -103, -88, 80, c.f32110q, 55, 36, 40, 48, -107, -46, 62, 91, k.f34876a, -125, -77, 105, 87, c.I, 7, c.F, -118, PSSSigner.TRAILER_IMPLICIT, 32, -21, -50, -114, -85, -18, 49, -94, 115, -7, -54, 58, c.D, -5, c.f32108o, -63, -2, -6, -14, 111, -67, -106, -35, 67, 82, -74, 8, -13, -82, -66, c.C, -119, 50, 38, -80, -22, 75, 100, -124, -126, 107, -11, 121, a.f14000k, 1, 95, 117, 99, c.E, 35, 61, 104, 42, 101, -24, -111, -10, -1, 19, 88, -15, 71, 10, Byte.MAX_VALUE, -59, -89, -25, 97, 90, 6, 70, 68, 66, 4, -96, -37, 57, -122, 84, -86, -116, 52, 33, -117, -8, c.f32107n, 116, 103};
    private static final byte[] S3 = {104, -115, -54, 77, 115, 75, 78, 42, -44, 82, 38, -77, 84, c.H, c.C, c.I, 34, 3, 70, 61, 45, 74, 83, -125, 19, -118, -73, -43, 37, 121, -11, -67, 88, 47, c.f32108o, 2, -19, 81, -98, 17, -14, 62, 85, 94, -47, c.f32119z, 60, 102, 112, 93, -13, 69, k.f34876a, -52, -24, -108, 86, 8, -50, c.D, 58, -46, -31, -33, -75, 56, 110, c.f32109p, -27, -12, -7, -122, -23, 79, -42, -123, 35, -49, 50, -103, 49, c.f32117x, -82, -18, -56, 72, -45, 48, -95, -110, 65, -79, c.B, -60, 44, 113, 114, 68, c.f32118y, -3, 55, -66, 95, -86, -101, -120, -40, -85, -119, -100, -6, 96, -22, PSSSigner.TRAILER_IMPLICIT, 98, c.f32107n, 36, -90, -88, -20, 103, 32, -37, 124, 40, -35, -84, 91, 52, 126, 16, -15, 123, -113, 99, -96, 5, -102, 67, 119, 33, a.f14000k, 39, 9, -61, -97, -74, -41, 41, -62, -21, -64, -92, -117, -116, c.G, -5, -1, -63, -78, -105, 46, -8, 101, -10, 117, 7, 4, 73, 51, -28, -39, -71, -48, 66, -57, 108, -112, 0, -114, 111, 80, 1, -59, -38, 71, Utf8.REPLACEMENT_BYTE, -51, 105, -94, -30, 122, -89, -58, -109, c.f32110q, 10, 6, -26, 43, -106, -93, c.F, -81, 106, c.f32114u, -124, 57, -25, -80, -126, -9, -2, -99, -121, 92, -127, 53, -34, -76, -91, -4, Byte.MIN_VALUE, a.f13998i, -53, a.f13999j, 107, 118, -70, 90, 125, 120, c.f32106m, -107, -29, -83, 116, -104, 59, 54, 100, 109, -36, -16, 89, -87, 76, c.A, Byte.MAX_VALUE, -111, -72, -55, 87, c.E, -32, 97};
    private static final byte[] T0 = {-92, -94, -87, -59, 78, -55, 3, -39, 126, c.f32110q, -46, -83, -25, -45, 39, 91, -29, -95, -24, -26, 124, 42, 85, c.f32107n, -122, 57, -41, -115, -72, c.f32114u, 111, 40, -51, -118, 112, 86, 114, -7, a.f14000k, 79, 115, -23, -9, 87, c.f32119z, -84, 80, -64, -99, -73, 71, 113, 96, -60, 116, 67, 108, c.I, -109, 119, -36, -50, 32, -116, -103, 95, 68, 1, -11, c.H, -121, 94, 97, 44, 75, c.G, -127, c.f32118y, -12, 35, -42, -22, -31, 103, -15, Byte.MAX_VALUE, -2, -38, 60, 7, 83, 106, -124, -100, -53, 2, -125, 51, -35, 53, -30, 89, 90, -104, -91, -110, 100, 4, 6, 16, 77, c.F, -105, 8, 49, -18, -85, 5, -81, 121, -96, c.B, 70, 109, -4, -119, -44, -57, -1, -16, -49, 66, -111, -8, 104, 10, 101, -114, -74, -3, -61, a.f13998i, 120, 76, -52, -98, 48, 46, PSSSigner.TRAILER_IMPLICIT, c.f32106m, 84, c.D, -90, a.f13999j, 38, Byte.MIN_VALUE, 72, -108, 50, 125, -89, Utf8.REPLACEMENT_BYTE, -82, 34, 61, 102, -86, -10, 0, 93, -67, 74, -32, 59, -76, c.A, -117, -97, 118, -80, 36, -102, 37, 99, -37, -21, 122, 62, 92, -77, -79, 41, -14, -54, 88, 110, -40, -88, 47, 117, -33, c.f32117x, -5, 19, 73, -120, -78, -20, -28, 52, 45, -106, -58, 58, -19, -107, c.f32109p, -27, -123, 107, k.f34876a, 33, -101, 9, c.C, 43, 82, -34, 69, -93, -6, 81, -62, -75, -47, -112, -71, -13, 55, -63, c.f32108o, -70, 65, 17, 56, 123, -66, -48, -43, 105, 54, -56, 98, c.E, -126, -113};
    private static final byte[] T1 = {-125, -14, 42, -21, -23, a.f14000k, 123, -100, 52, -106, -115, -104, -71, 105, -116, 41, 61, -120, 104, 6, 57, 17, 76, c.f32109p, -96, 86, k.f34876a, -110, c.f32118y, PSSSigner.TRAILER_IMPLICIT, -77, -36, 111, -8, 38, -70, -66, -67, 49, -5, -61, -2, Byte.MIN_VALUE, 97, -31, 122, 50, -46, 112, 32, -95, 69, -20, -39, c.D, 93, -76, -40, 9, -91, 85, -114, 55, 118, -87, 103, 16, c.A, 54, 101, -79, -107, 98, 89, 116, -93, 80, 47, 75, -56, -48, -113, -51, -44, 60, -122, c.f32114u, c.G, 35, a.f13998i, -12, 83, c.C, 53, -26, Byte.MAX_VALUE, 94, -42, 121, 81, 34, c.f32117x, -9, c.H, 74, 66, -101, 65, 115, 45, -63, 92, -90, -94, -32, 46, -45, 40, a.f13999j, -55, -82, 106, -47, 90, 48, -112, -124, -7, -78, 88, -49, 126, -59, -53, -105, -28, c.f32119z, 108, -6, -80, 109, c.I, 82, -103, c.f32108o, 78, 3, -111, -62, 77, 100, 119, -97, -35, -60, 73, -118, -102, 36, 56, -89, 87, -123, -57, 124, 125, -25, -10, -73, -84, 39, 70, -34, -33, 59, -41, -98, 43, c.f32106m, -43, 19, 117, -16, 114, -74, -99, c.E, 1, Utf8.REPLACEMENT_BYTE, 68, -27, -121, -3, 7, -15, -85, -108, c.B, -22, -4, 58, -126, 95, 5, 84, -37, 0, -117, -29, 72, c.f32107n, -54, 120, -119, 10, -1, 62, 91, -127, -18, 113, -30, -38, 44, -72, -75, -52, 110, -88, 107, -83, 96, -58, 8, 4, 2, -24, -11, 79, -92, -13, -64, -50, 67, 37, c.F, 33, 51, c.f32110q, -81, 71, -19, 102, 99, -109, -86};
    private static final byte[] T2 = {69, -44, c.f32106m, 67, -15, 114, -19, -92, -62, 56, -26, 113, -3, -74, 58, -107, 80, 68, 75, -30, 116, 107, c.H, 17, 90, -58, -76, -40, -91, -118, 112, -93, -88, -6, 5, -39, -105, k.f34876a, -55, -112, -104, -113, -36, c.f32114u, 49, 44, 71, 106, -103, -82, -56, Byte.MAX_VALUE, -7, 79, 93, -106, 111, -12, -77, 57, 33, -38, -100, -123, -98, 59, -16, a.f14000k, a.f13998i, 6, -18, -27, 95, 32, 16, -52, 60, 84, 74, 82, -108, c.f32109p, -64, 40, -10, 86, 96, -94, -29, c.f32110q, -20, -99, 36, -125, 126, -43, 124, -21, c.B, -41, -51, -35, 120, -1, -37, -95, 9, -48, 118, -124, 117, a.f13999j, c.G, c.D, 47, -80, -2, -42, 52, 99, 53, -46, 42, 89, 109, 77, 119, -25, -114, 97, -49, -97, -50, 39, -11, Byte.MIN_VALUE, -122, -57, -90, -5, -8, -121, -85, 98, Utf8.REPLACEMENT_BYTE, -33, 72, 0, c.f32117x, -102, -67, 91, 4, -110, 2, 37, 101, 76, 83, c.f32107n, -14, 41, -81, c.A, 108, 65, 48, -23, -109, 85, -9, -84, 104, 38, -60, 125, -54, 122, 62, -96, 55, 3, -63, 54, 105, 102, 8, c.f32119z, -89, PSSSigner.TRAILER_IMPLICIT, -59, -45, 34, -73, 19, 70, 50, -24, 87, -120, 43, -127, -78, 78, 100, c.F, -86, -111, 88, 46, -101, 92, c.E, 81, 115, 66, 35, 1, 110, -13, c.f32108o, -66, 61, 10, 45, c.I, 103, 51, c.C, 123, 94, -22, -34, -117, -53, -87, -116, -115, -83, 73, -126, -28, -70, -61, c.f32118y, -47, -32, -119, -4, -79, -71, -75, 7, 121, -72, -31};
    private static final byte[] T3 = {-78, -74, 35, 17, -89, -120, -59, -90, 57, -113, -60, -24, 115, 34, 67, -61, -126, 39, -51, c.B, 81, 98, 45, -9, 92, c.f32109p, 59, -3, -54, -101, c.f32108o, c.f32110q, 121, -116, 16, 76, 116, c.F, 10, -114, 124, -108, 7, -57, 94, c.f32117x, -95, 33, 87, 80, 78, -87, Byte.MIN_VALUE, -39, a.f13998i, 100, 65, -49, 60, -18, 46, 19, 41, -70, 52, 90, -82, -118, 97, 51, c.f32114u, -71, 85, -88, c.f32118y, 5, -10, 3, 6, 73, -75, 37, 9, c.f32119z, c.f32107n, 42, 56, -4, 32, -12, -27, Byte.MAX_VALUE, -41, 49, 43, 102, 111, -1, 114, -122, -16, -93, 47, 120, 0, PSSSigner.TRAILER_IMPLICIT, -52, -30, -80, -15, 66, -76, 48, 95, 96, 4, -20, -91, -29, -117, -25, c.G, a.f14000k, -124, 123, -26, -127, -8, -34, -40, -46, c.A, -50, 75, 71, -42, 105, 108, c.C, -103, -102, 1, -77, -123, -79, -7, 89, -62, 55, -23, -56, -96, -19, 79, -119, 104, 109, -43, 38, -111, -121, 88, -67, -55, -104, -36, 117, -64, 118, -11, 103, 107, 126, -21, 82, -53, -47, 91, -97, c.f32106m, -37, k.f34876a, -110, c.D, -6, -84, -28, -31, 113, c.I, 101, -115, -105, -98, -107, -112, 93, -73, -63, -81, 84, -5, 2, -32, 53, a.f13999j, 58, 77, -83, 44, 61, 86, 8, c.E, 74, -109, 106, -85, -72, 122, -14, 125, -38, Utf8.REPLACEMENT_BYTE, -2, 62, -66, -22, -86, 68, -58, -48, 54, 72, 112, -106, 119, 36, 83, -33, -13, -125, 40, 50, 69, c.H, -92, -45, -94, 70, 110, -100, -35, 99, -44, -99};
    private boolean forEncryption;
    private long[] internalState;
    private long[][] roundKeys;
    private int roundsAmount;
    private int wordsInBlock;
    private int wordsInKey;
    private long[] workingKey;

    public DSTU7624Engine(int i4) throws IllegalArgumentException {
        if (i4 != 128 && i4 != 256 && i4 != 512) {
            throw new IllegalArgumentException("unsupported block length: only 128/256/512 are allowed");
        }
        int i10 = i4 >>> 6;
        this.wordsInBlock = i10;
        this.internalState = new long[i10];
    }

    private void addRoundKey(int i4) {
        long[] jArr = this.roundKeys[i4];
        for (int i10 = 0; i10 < this.wordsInBlock; i10++) {
            long[] jArr2 = this.internalState;
            jArr2[i10] = jArr2[i10] + jArr[i10];
        }
    }

    private void decryptBlock_128(byte[] bArr, int i4, byte[] bArr2, int i10) {
        long littleEndianToLong = Pack.littleEndianToLong(bArr, i4);
        long littleEndianToLong2 = Pack.littleEndianToLong(bArr, i4 + 8);
        long[][] jArr = this.roundKeys;
        int i11 = this.roundsAmount;
        long[] jArr2 = jArr[i11];
        long j4 = littleEndianToLong - jArr2[0];
        long j10 = littleEndianToLong2 - jArr2[1];
        while (true) {
            long mixColumnInv = mixColumnInv(j4);
            long mixColumnInv2 = mixColumnInv(j10);
            int i12 = (int) mixColumnInv;
            int i13 = (int) (mixColumnInv >>> 32);
            int i14 = (int) mixColumnInv2;
            int i15 = (int) (mixColumnInv2 >>> 32);
            byte[] bArr3 = T0;
            byte b10 = bArr3[i12 & 255];
            byte[] bArr4 = T1;
            byte b11 = bArr4[(i12 >>> 8) & 255];
            byte[] bArr5 = T2;
            byte b12 = bArr5[(i12 >>> 16) & 255];
            byte[] bArr6 = T3;
            int i16 = (bArr6[i12 >>> 24] << c.B) | ((b12 & 255) << 16) | (b10 & 255) | ((b11 & 255) << 8);
            byte b13 = bArr3[i15 & 255];
            byte b14 = bArr4[(i15 >>> 8) & 255];
            byte b15 = bArr5[(i15 >>> 16) & 255];
            long j11 = (((bArr6[i15 >>> 24] << c.B) | (((b13 & 255) | ((b14 & 255) << 8)) | ((b15 & 255) << 16))) << 32) | (i16 & 4294967295L);
            int i17 = (bArr6[i14 >>> 24] << c.B) | (bArr3[i14 & 255] & 255) | ((bArr4[(i14 >>> 8) & 255] & 255) << 8) | ((bArr5[(i14 >>> 16) & 255] & 255) << 16);
            byte b16 = bArr3[i13 & 255];
            byte b17 = bArr4[(i13 >>> 8) & 255];
            byte b18 = bArr5[(i13 >>> 16) & 255];
            long j12 = (((bArr6[i13 >>> 24] << c.B) | (((b16 & 255) | ((b17 & 255) << 8)) | ((b18 & 255) << 16))) << 32) | (i17 & 4294967295L);
            i11--;
            if (i11 == 0) {
                long[] jArr3 = this.roundKeys[0];
                Pack.longToLittleEndian(j11 - jArr3[0], bArr2, i10);
                Pack.longToLittleEndian(j12 - jArr3[1], bArr2, i10 + 8);
                return;
            }
            long[] jArr4 = this.roundKeys[i11];
            long j13 = j11 ^ jArr4[0];
            long j14 = j12 ^ jArr4[1];
            j4 = j13;
            j10 = j14;
        }
    }

    private void encryptBlock_128(byte[] bArr, int i4, byte[] bArr2, int i10) {
        long littleEndianToLong = Pack.littleEndianToLong(bArr, i4);
        long littleEndianToLong2 = Pack.littleEndianToLong(bArr, i4 + 8);
        long[] jArr = this.roundKeys[0];
        long j4 = littleEndianToLong + jArr[0];
        long j10 = littleEndianToLong2 + jArr[1];
        int i11 = 0;
        while (true) {
            int i12 = (int) j4;
            int i13 = (int) (j4 >>> 32);
            int i14 = (int) j10;
            int i15 = (int) (j10 >>> 32);
            byte[] bArr3 = S0;
            byte b10 = bArr3[i12 & 255];
            byte[] bArr4 = S1;
            byte b11 = bArr4[(i12 >>> 8) & 255];
            byte[] bArr5 = S2;
            byte b12 = bArr5[(i12 >>> 16) & 255];
            byte[] bArr6 = S3;
            int i16 = ((b12 & 255) << 16) | (b10 & 255) | ((b11 & 255) << 8) | (bArr6[i12 >>> 24] << c.B);
            byte b13 = bArr3[i15 & 255];
            byte b14 = bArr4[(i15 >>> 8) & 255];
            byte b15 = bArr5[(i15 >>> 16) & 255];
            long j11 = (((bArr6[i15 >>> 24] << c.B) | (((b13 & 255) | ((b14 & 255) << 8)) | ((b15 & 255) << 16))) << 32) | (i16 & 4294967295L);
            byte b16 = bArr3[i14 & 255];
            byte b17 = bArr4[(i14 >>> 8) & 255];
            byte b18 = bArr5[(i14 >>> 16) & 255];
            int i17 = (bArr6[i14 >>> 24] << c.B) | (b16 & 255) | ((b17 & 255) << 8) | ((b18 & 255) << 16);
            byte b19 = bArr3[i13 & 255];
            byte b20 = bArr4[(i13 >>> 8) & 255];
            byte b21 = bArr5[(i13 >>> 16) & 255];
            long mixColumn = mixColumn(j11);
            long mixColumn2 = mixColumn((((bArr6[i13 >>> 24] << c.B) | (((b19 & 255) | ((b20 & 255) << 8)) | ((b21 & 255) << 16))) << 32) | (i17 & 4294967295L));
            i11++;
            int i18 = this.roundsAmount;
            if (i11 == i18) {
                long[] jArr2 = this.roundKeys[i18];
                Pack.longToLittleEndian(mixColumn + jArr2[0], bArr2, i10);
                Pack.longToLittleEndian(mixColumn2 + jArr2[1], bArr2, i10 + 8);
                return;
            }
            long[] jArr3 = this.roundKeys[i11];
            long j12 = mixColumn ^ jArr3[0];
            j10 = mixColumn2 ^ jArr3[1];
            j4 = j12;
        }
    }

    private void invShiftRows() {
        int i4 = this.wordsInBlock;
        if (i4 == 2) {
            long[] jArr = this.internalState;
            long j4 = jArr[0];
            long j10 = jArr[1];
            long j11 = (-4294967296L) & (j4 ^ j10);
            jArr[0] = j4 ^ j11;
            jArr[1] = j11 ^ j10;
        } else if (i4 == 4) {
            long[] jArr2 = this.internalState;
            long j12 = jArr2[0];
            long j13 = jArr2[1];
            long j14 = jArr2[2];
            long j15 = jArr2[3];
            long j16 = (j12 ^ j13) & (-281470681808896L);
            long j17 = j12 ^ j16;
            long j18 = j13 ^ j16;
            long j19 = (j14 ^ j15) & (-281470681808896L);
            long j20 = j14 ^ j19;
            long j21 = j15 ^ j19;
            long j22 = (j17 ^ j20) & (-4294967296L);
            long j23 = j17 ^ j22;
            long j24 = (j18 ^ j21) & 281474976645120L;
            jArr2[0] = j23;
            jArr2[1] = j18 ^ j24;
            jArr2[2] = j20 ^ j22;
            jArr2[3] = j24 ^ j21;
        } else if (i4 != 8) {
            throw new IllegalStateException("unsupported block length: only 128/256/512 are allowed");
        } else {
            long[] jArr3 = this.internalState;
            long j25 = jArr3[0];
            long j26 = jArr3[1];
            long j27 = jArr3[2];
            long j28 = jArr3[3];
            long j29 = jArr3[4];
            long j30 = jArr3[5];
            long j31 = jArr3[6];
            long j32 = jArr3[7];
            long j33 = (j25 ^ j26) & (-71777214294589696L);
            long j34 = j25 ^ j33;
            long j35 = j26 ^ j33;
            long j36 = (j27 ^ j28) & (-71777214294589696L);
            long j37 = j27 ^ j36;
            long j38 = j28 ^ j36;
            long j39 = (j29 ^ j30) & (-71777214294589696L);
            long j40 = j29 ^ j39;
            long j41 = j30 ^ j39;
            long j42 = (j31 ^ j32) & (-71777214294589696L);
            long j43 = j31 ^ j42;
            long j44 = j32 ^ j42;
            long j45 = (j34 ^ j37) & (-281470681808896L);
            long j46 = j34 ^ j45;
            long j47 = j37 ^ j45;
            long j48 = (j35 ^ j38) & 72056494543077120L;
            long j49 = j35 ^ j48;
            long j50 = j38 ^ j48;
            long j51 = (j40 ^ j43) & (-281470681808896L);
            long j52 = j40 ^ j51;
            long j53 = j43 ^ j51;
            long j54 = (j41 ^ j44) & 72056494543077120L;
            long j55 = j41 ^ j54;
            long j56 = j44 ^ j54;
            long j57 = (j46 ^ j52) & (-4294967296L);
            long j58 = j46 ^ j57;
            long j59 = j52 ^ j57;
            long j60 = (j49 ^ j55) & 72057594021150720L;
            long j61 = j49 ^ j60;
            long j62 = (j47 ^ j53) & 281474976645120L;
            long j63 = j47 ^ j62;
            long j64 = j62 ^ j53;
            long j65 = (j50 ^ j56) & 1099511627520L;
            jArr3[0] = j58;
            jArr3[1] = j61;
            jArr3[2] = j63;
            jArr3[3] = j50 ^ j65;
            jArr3[4] = j59;
            jArr3[5] = j55 ^ j60;
            jArr3[6] = j64;
            jArr3[7] = j56 ^ j65;
        }
    }

    private void invSubBytes() {
        for (int i4 = 0; i4 < this.wordsInBlock; i4++) {
            long[] jArr = this.internalState;
            long j4 = jArr[i4];
            int i10 = (int) j4;
            int i11 = (int) (j4 >>> 32);
            byte[] bArr = T0;
            byte b10 = bArr[i10 & 255];
            byte[] bArr2 = T1;
            byte b11 = bArr2[(i10 >>> 8) & 255];
            byte[] bArr3 = T2;
            byte b12 = bArr3[(i10 >>> 16) & 255];
            byte[] bArr4 = T3;
            jArr[i4] = (((bArr4[i10 >>> 24] << c.B) | (b10 & 255) | ((b11 & 255) << 8) | ((b12 & 255) << 16)) & 4294967295L) | (((((bArr[i11 & 255] & 255) | ((bArr2[(i11 >>> 8) & 255] & 255) << 8)) | ((bArr3[(i11 >>> 16) & 255] & 255) << 16)) | (bArr4[i11 >>> 24] << c.B)) << 32);
        }
    }

    private static long mixColumn(long j4) {
        long mulX = mulX(j4);
        long rotate = rotate(8, j4) ^ j4;
        long rotate2 = (rotate ^ rotate(16, rotate)) ^ rotate(48, j4);
        return ((rotate(32, mulX2((j4 ^ rotate2) ^ mulX)) ^ rotate2) ^ rotate(40, mulX)) ^ rotate(48, mulX);
    }

    private static long mixColumnInv(long j4) {
        long rotate = rotate(8, j4) ^ j4;
        long rotate2 = (rotate ^ rotate(32, rotate)) ^ rotate(48, j4);
        long j10 = rotate2 ^ j4;
        long rotate3 = rotate(48, j4);
        long rotate4 = rotate(56, j4);
        long rotate5 = rotate(16, rotate2);
        return mulX(rotate(40, ((j4 ^ rotate(32, j10)) ^ rotate4) ^ mulX(((rotate3 ^ (rotate(24, j4) ^ j10)) ^ rotate4) ^ mulX(mulX(mulX(rotate(40, mulX(mulX(j10 ^ rotate4) ^ rotate(56, j10)) ^ j4) ^ (rotate(16, j10) ^ j4)) ^ (j10 ^ rotate3)) ^ rotate5)))) ^ rotate2;
    }

    private void mixColumns() {
        for (int i4 = 0; i4 < this.wordsInBlock; i4++) {
            long[] jArr = this.internalState;
            jArr[i4] = mixColumn(jArr[i4]);
        }
    }

    private void mixColumnsInv() {
        for (int i4 = 0; i4 < this.wordsInBlock; i4++) {
            long[] jArr = this.internalState;
            jArr[i4] = mixColumnInv(jArr[i4]);
        }
    }

    private static long mulX(long j4) {
        return (((j4 & (-9187201950435737472L)) >>> 7) * 29) ^ ((9187201950435737471L & j4) << 1);
    }

    private static long mulX2(long j4) {
        return (((j4 & 4629771061636907072L) >>> 6) * 29) ^ (((4557430888798830399L & j4) << 2) ^ ((((-9187201950435737472L) & j4) >>> 6) * 29));
    }

    private static long rotate(int i4, long j4) {
        return (j4 << (-i4)) | (j4 >>> i4);
    }

    private void rotateLeft(long[] jArr, long[] jArr2) {
        int i4 = this.wordsInBlock;
        if (i4 == 2) {
            long j4 = jArr[0];
            long j10 = jArr[1];
            jArr2[0] = (j4 >>> 56) | (j10 << 8);
            jArr2[1] = (j4 << 8) | (j10 >>> 56);
        } else if (i4 == 4) {
            long j11 = jArr[0];
            long j12 = jArr[1];
            long j13 = jArr[2];
            long j14 = jArr[3];
            jArr2[0] = (j12 >>> 24) | (j13 << 40);
            jArr2[1] = (j13 >>> 24) | (j14 << 40);
            jArr2[2] = (j14 >>> 24) | (j11 << 40);
            jArr2[3] = (j11 >>> 24) | (j12 << 40);
        } else if (i4 != 8) {
            throw new IllegalStateException("unsupported block length: only 128/256/512 are allowed");
        } else {
            long j15 = jArr[0];
            long j16 = jArr[1];
            long j17 = jArr[2];
            long j18 = jArr[3];
            long j19 = jArr[4];
            long j20 = jArr[5];
            long j21 = jArr[6];
            long j22 = jArr[7];
            jArr2[0] = (j17 >>> 24) | (j18 << 40);
            jArr2[1] = (j18 >>> 24) | (j19 << 40);
            jArr2[2] = (j19 >>> 24) | (j20 << 40);
            jArr2[3] = (j20 >>> 24) | (j21 << 40);
            jArr2[4] = (j21 >>> 24) | (j22 << 40);
            jArr2[5] = (j22 >>> 24) | (j15 << 40);
            jArr2[6] = (j15 >>> 24) | (j16 << 40);
            jArr2[7] = (j16 >>> 24) | (j17 << 40);
        }
    }

    private void shiftRows() {
        int i4 = this.wordsInBlock;
        if (i4 == 2) {
            long[] jArr = this.internalState;
            long j4 = jArr[0];
            long j10 = jArr[1];
            long j11 = (-4294967296L) & (j4 ^ j10);
            jArr[0] = j4 ^ j11;
            jArr[1] = j11 ^ j10;
        } else if (i4 == 4) {
            long[] jArr2 = this.internalState;
            long j12 = jArr2[0];
            long j13 = jArr2[1];
            long j14 = jArr2[2];
            long j15 = jArr2[3];
            long j16 = (j12 ^ j14) & (-4294967296L);
            long j17 = j12 ^ j16;
            long j18 = j14 ^ j16;
            long j19 = (j13 ^ j15) & 281474976645120L;
            long j20 = j13 ^ j19;
            long j21 = j15 ^ j19;
            long j22 = (j17 ^ j20) & (-281470681808896L);
            long j23 = (j18 ^ j21) & (-281470681808896L);
            jArr2[0] = j17 ^ j22;
            jArr2[1] = j20 ^ j22;
            jArr2[2] = j18 ^ j23;
            jArr2[3] = j21 ^ j23;
        } else if (i4 != 8) {
            throw new IllegalStateException("unsupported block length: only 128/256/512 are allowed");
        } else {
            long[] jArr3 = this.internalState;
            long j24 = jArr3[0];
            long j25 = jArr3[1];
            long j26 = jArr3[2];
            long j27 = jArr3[3];
            long j28 = jArr3[4];
            long j29 = jArr3[5];
            long j30 = jArr3[6];
            long j31 = jArr3[7];
            long j32 = (j24 ^ j28) & (-4294967296L);
            long j33 = j24 ^ j32;
            long j34 = j28 ^ j32;
            long j35 = (j25 ^ j29) & 72057594021150720L;
            long j36 = j25 ^ j35;
            long j37 = j29 ^ j35;
            long j38 = (j26 ^ j30) & 281474976645120L;
            long j39 = j26 ^ j38;
            long j40 = j30 ^ j38;
            long j41 = (j27 ^ j31) & 1099511627520L;
            long j42 = j27 ^ j41;
            long j43 = j31 ^ j41;
            long j44 = (j33 ^ j39) & (-281470681808896L);
            long j45 = j33 ^ j44;
            long j46 = j39 ^ j44;
            long j47 = (j36 ^ j42) & 72056494543077120L;
            long j48 = j36 ^ j47;
            long j49 = j42 ^ j47;
            long j50 = (j34 ^ j40) & (-281470681808896L);
            long j51 = j34 ^ j50;
            long j52 = j40 ^ j50;
            long j53 = (j37 ^ j43) & 72056494543077120L;
            long j54 = j37 ^ j53;
            long j55 = j43 ^ j53;
            long j56 = (j45 ^ j48) & (-71777214294589696L);
            long j57 = j45 ^ j56;
            long j58 = j48 ^ j56;
            long j59 = (j46 ^ j49) & (-71777214294589696L);
            long j60 = j46 ^ j59;
            long j61 = j49 ^ j59;
            long j62 = (j51 ^ j54) & (-71777214294589696L);
            long j63 = j51 ^ j62;
            long j64 = j54 ^ j62;
            long j65 = (j52 ^ j55) & (-71777214294589696L);
            jArr3[0] = j57;
            jArr3[1] = j58;
            jArr3[2] = j60;
            jArr3[3] = j61;
            jArr3[4] = j63;
            jArr3[5] = j64;
            jArr3[6] = j52 ^ j65;
            jArr3[7] = j55 ^ j65;
        }
    }

    private void subBytes() {
        for (int i4 = 0; i4 < this.wordsInBlock; i4++) {
            long[] jArr = this.internalState;
            long j4 = jArr[i4];
            int i10 = (int) j4;
            int i11 = (int) (j4 >>> 32);
            byte[] bArr = S0;
            byte b10 = bArr[i10 & 255];
            byte[] bArr2 = S1;
            byte b11 = bArr2[(i10 >>> 8) & 255];
            byte[] bArr3 = S2;
            byte b12 = bArr3[(i10 >>> 16) & 255];
            byte[] bArr4 = S3;
            jArr[i4] = (((bArr4[i10 >>> 24] << c.B) | (b10 & 255) | ((b11 & 255) << 8) | ((b12 & 255) << 16)) & 4294967295L) | (((((bArr[i11 & 255] & 255) | ((bArr2[(i11 >>> 8) & 255] & 255) << 8)) | ((bArr3[(i11 >>> 16) & 255] & 255) << 16)) | (bArr4[i11 >>> 24] << c.B)) << 32);
        }
    }

    private void subRoundKey(int i4) {
        long[] jArr = this.roundKeys[i4];
        for (int i10 = 0; i10 < this.wordsInBlock; i10++) {
            long[] jArr2 = this.internalState;
            jArr2[i10] = jArr2[i10] - jArr[i10];
        }
    }

    private void workingKeyExpandEven(long[] jArr, long[] jArr2) {
        int i4;
        int i10;
        int i11 = this.wordsInKey;
        long[] jArr3 = new long[i11];
        long[] jArr4 = new long[this.wordsInBlock];
        System.arraycopy(jArr, 0, jArr3, 0, i11);
        long j4 = 281479271743489L;
        int i12 = 0;
        while (true) {
            for (int i13 = 0; i13 < this.wordsInBlock; i13++) {
                jArr4[i13] = jArr2[i13] + j4;
            }
            for (int i14 = 0; i14 < this.wordsInBlock; i14++) {
                this.internalState[i14] = jArr3[i14] + jArr4[i14];
            }
            subBytes();
            shiftRows();
            mixColumns();
            for (int i15 = 0; i15 < this.wordsInBlock; i15++) {
                long[] jArr5 = this.internalState;
                jArr5[i15] = jArr5[i15] ^ jArr4[i15];
            }
            subBytes();
            shiftRows();
            mixColumns();
            int i16 = 0;
            while (true) {
                i4 = this.wordsInBlock;
                if (i16 >= i4) {
                    break;
                }
                long[] jArr6 = this.internalState;
                jArr6[i16] = jArr6[i16] + jArr4[i16];
                i16++;
            }
            System.arraycopy(this.internalState, 0, this.roundKeys[i12], 0, i4);
            if (this.roundsAmount == i12) {
                return;
            }
            if (this.wordsInBlock != this.wordsInKey) {
                i12 += 2;
                j4 <<= 1;
                for (int i17 = 0; i17 < this.wordsInBlock; i17++) {
                    jArr4[i17] = jArr2[i17] + j4;
                }
                int i18 = 0;
                while (true) {
                    int i19 = this.wordsInBlock;
                    if (i18 >= i19) {
                        break;
                    }
                    this.internalState[i18] = jArr3[i19 + i18] + jArr4[i18];
                    i18++;
                }
                subBytes();
                shiftRows();
                mixColumns();
                for (int i20 = 0; i20 < this.wordsInBlock; i20++) {
                    long[] jArr7 = this.internalState;
                    jArr7[i20] = jArr7[i20] ^ jArr4[i20];
                }
                subBytes();
                shiftRows();
                mixColumns();
                int i21 = 0;
                while (true) {
                    i10 = this.wordsInBlock;
                    if (i21 >= i10) {
                        break;
                    }
                    long[] jArr8 = this.internalState;
                    jArr8[i21] = jArr8[i21] + jArr4[i21];
                    i21++;
                }
                System.arraycopy(this.internalState, 0, this.roundKeys[i12], 0, i10);
                if (this.roundsAmount == i12) {
                    return;
                }
            }
            i12 += 2;
            j4 <<= 1;
            long j10 = jArr3[0];
            for (int i22 = 1; i22 < i11; i22++) {
                jArr3[i22 - 1] = jArr3[i22];
            }
            jArr3[i11 - 1] = j10;
        }
    }

    private void workingKeyExpandKT(long[] jArr, long[] jArr2) {
        int i4 = this.wordsInBlock;
        long[] jArr3 = new long[i4];
        long[] jArr4 = new long[i4];
        long[] jArr5 = new long[i4];
        this.internalState = jArr5;
        long j4 = jArr5[0];
        int i10 = this.wordsInKey;
        jArr5[0] = j4 + i4 + i10 + 1;
        System.arraycopy(jArr, 0, jArr3, 0, i4);
        if (i4 == i10) {
            System.arraycopy(jArr, 0, jArr4, 0, i4);
        } else {
            int i11 = this.wordsInBlock;
            System.arraycopy(jArr, i11, jArr4, 0, i11);
        }
        int i12 = 0;
        while (true) {
            long[] jArr6 = this.internalState;
            if (i12 >= jArr6.length) {
                break;
            }
            jArr6[i12] = jArr6[i12] + jArr3[i12];
            i12++;
        }
        subBytes();
        shiftRows();
        mixColumns();
        int i13 = 0;
        while (true) {
            long[] jArr7 = this.internalState;
            if (i13 >= jArr7.length) {
                break;
            }
            jArr7[i13] = jArr7[i13] ^ jArr4[i13];
            i13++;
        }
        subBytes();
        shiftRows();
        mixColumns();
        int i14 = 0;
        while (true) {
            long[] jArr8 = this.internalState;
            if (i14 >= jArr8.length) {
                subBytes();
                shiftRows();
                mixColumns();
                System.arraycopy(this.internalState, 0, jArr2, 0, this.wordsInBlock);
                return;
            }
            jArr8[i14] = jArr8[i14] + jArr3[i14];
            i14++;
        }
    }

    private void workingKeyExpandOdd() {
        for (int i4 = 1; i4 < this.roundsAmount; i4 += 2) {
            long[][] jArr = this.roundKeys;
            rotateLeft(jArr[i4 - 1], jArr[i4]);
        }
    }

    private void xorRoundKey(int i4) {
        long[] jArr = this.roundKeys[i4];
        for (int i10 = 0; i10 < this.wordsInBlock; i10++) {
            long[] jArr2 = this.internalState;
            jArr2[i10] = jArr2[i10] ^ jArr[i10];
        }
    }

    @Override // org.bouncycastle.crypto.BlockCipher
    public String getAlgorithmName() {
        return "DSTU7624";
    }

    @Override // org.bouncycastle.crypto.BlockCipher
    public int getBlockSize() {
        return this.wordsInBlock << 3;
    }

    /* JADX WARN: Removed duplicated region for block: B:28:0x005b A[LOOP:0: B:26:0x0056->B:28:0x005b, LOOP_END] */
    /* JADX WARN: Removed duplicated region for block: B:31:0x006f  */
    /* JADX WARN: Removed duplicated region for block: B:33:0x0084  */
    /* JADX WARN: Removed duplicated region for block: B:37:0x0064 A[EDGE_INSN: B:37:0x0064->B:29:0x0064 ?: BREAK  , SYNTHETIC] */
    @Override // org.bouncycastle.crypto.BlockCipher
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public void init(boolean r5, org.bouncycastle.crypto.CipherParameters r6) throws java.lang.IllegalArgumentException {
        /*
            r4 = this;
            boolean r0 = r6 instanceof org.bouncycastle.crypto.params.KeyParameter
            if (r0 == 0) goto L8c
            r4.forEncryption = r5
            org.bouncycastle.crypto.params.KeyParameter r6 = (org.bouncycastle.crypto.params.KeyParameter) r6
            byte[] r5 = r6.getKey()
            int r6 = r5.length
            int r6 = r6 << 3
            int r0 = r4.wordsInBlock
            int r0 = r0 << 6
            r1 = 512(0x200, float:7.175E-43)
            r2 = 256(0x100, float:3.59E-43)
            r3 = 128(0x80, float:1.794E-43)
            if (r6 == r3) goto L28
            if (r6 == r2) goto L28
            if (r6 != r1) goto L20
            goto L28
        L20:
            java.lang.IllegalArgumentException r5 = new java.lang.IllegalArgumentException
            java.lang.String r6 = "unsupported key length: only 128/256/512 are allowed"
            r5.<init>(r6)
            throw r5
        L28:
            if (r6 == r0) goto L37
            int r0 = r0 * 2
            if (r6 != r0) goto L2f
            goto L37
        L2f:
            java.lang.IllegalArgumentException r5 = new java.lang.IllegalArgumentException
            java.lang.String r6 = "Unsupported key length"
            r5.<init>(r6)
            throw r5
        L37:
            if (r6 == r3) goto L44
            if (r6 == r2) goto L41
            if (r6 == r1) goto L3e
            goto L48
        L3e:
            r0 = 18
            goto L46
        L41:
            r0 = 14
            goto L46
        L44:
            r0 = 10
        L46:
            r4.roundsAmount = r0
        L48:
            int r0 = r6 >>> 6
            r4.wordsInKey = r0
            int r0 = r4.roundsAmount
            int r0 = r0 + 1
            long[][] r0 = new long[r0]
            r4.roundKeys = r0
            r0 = 0
            r1 = 0
        L56:
            long[][] r2 = r4.roundKeys
            int r3 = r2.length
            if (r1 >= r3) goto L64
            int r3 = r4.wordsInBlock
            long[] r3 = new long[r3]
            r2[r1] = r3
            int r1 = r1 + 1
            goto L56
        L64:
            int r1 = r4.wordsInKey
            long[] r1 = new long[r1]
            r4.workingKey = r1
            int r2 = r5.length
            int r6 = r6 >>> 3
            if (r2 != r6) goto L84
            org.bouncycastle.util.Pack.littleEndianToLong(r5, r0, r1)
            int r5 = r4.wordsInBlock
            long[] r5 = new long[r5]
            long[] r6 = r4.workingKey
            r4.workingKeyExpandKT(r6, r5)
            long[] r6 = r4.workingKey
            r4.workingKeyExpandEven(r6, r5)
            r4.workingKeyExpandOdd()
            return
        L84:
            java.lang.IllegalArgumentException r5 = new java.lang.IllegalArgumentException
            java.lang.String r6 = "Invalid key parameter passed to DSTU7624Engine init"
            r5.<init>(r6)
            throw r5
        L8c:
            java.lang.IllegalArgumentException r5 = new java.lang.IllegalArgumentException
            java.lang.String r6 = "Invalid parameter passed to DSTU7624Engine init"
            r5.<init>(r6)
            throw r5
        */
        throw new UnsupportedOperationException("Method not decompiled: org.bouncycastle.crypto.engines.DSTU7624Engine.init(boolean, org.bouncycastle.crypto.CipherParameters):void");
    }

    @Override // org.bouncycastle.crypto.BlockCipher
    public int processBlock(byte[] bArr, int i4, byte[] bArr2, int i10) throws DataLengthException, IllegalStateException {
        int i11;
        if (this.workingKey != null) {
            if (getBlockSize() + i4 <= bArr.length) {
                if (getBlockSize() + i10 <= bArr2.length) {
                    int i12 = 0;
                    if (this.forEncryption) {
                        if (this.wordsInBlock != 2) {
                            Pack.littleEndianToLong(bArr, i4, this.internalState);
                            addRoundKey(0);
                            while (true) {
                                subBytes();
                                shiftRows();
                                mixColumns();
                                i12++;
                                i11 = this.roundsAmount;
                                if (i12 == i11) {
                                    break;
                                }
                                xorRoundKey(i12);
                            }
                            addRoundKey(i11);
                            Pack.longToLittleEndian(this.internalState, bArr2, i10);
                        } else {
                            encryptBlock_128(bArr, i4, bArr2, i10);
                        }
                    } else if (this.wordsInBlock != 2) {
                        Pack.littleEndianToLong(bArr, i4, this.internalState);
                        subRoundKey(this.roundsAmount);
                        int i13 = this.roundsAmount;
                        while (true) {
                            mixColumnsInv();
                            invShiftRows();
                            invSubBytes();
                            i13--;
                            if (i13 == 0) {
                                break;
                            }
                            xorRoundKey(i13);
                        }
                        subRoundKey(0);
                        Pack.longToLittleEndian(this.internalState, bArr2, i10);
                    } else {
                        decryptBlock_128(bArr, i4, bArr2, i10);
                    }
                    return getBlockSize();
                }
                throw new OutputLengthException("Output buffer too short");
            }
            throw new DataLengthException("Input buffer too short");
        }
        throw new IllegalStateException("DSTU7624Engine not initialised");
    }

    @Override // org.bouncycastle.crypto.BlockCipher
    public void reset() {
        Arrays.fill(this.internalState, 0L);
    }
}
