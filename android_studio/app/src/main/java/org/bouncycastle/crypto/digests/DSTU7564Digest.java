package org.bouncycastle.crypto.digests;

import com.fasterxml.jackson.core.json.a;
import com.google.common.base.c;
import com.google.common.primitives.k;
import kotlinx.coroutines.internal.a0;
import okio.Utf8;
import org.bouncycastle.crypto.ExtendedDigest;
import org.bouncycastle.crypto.signers.PSSSigner;
import org.bouncycastle.util.Arrays;
import org.bouncycastle.util.Memoable;
import org.bouncycastle.util.Pack;

/* loaded from: classes4.dex */
public class DSTU7564Digest implements ExtendedDigest, Memoable {
    private static final int NB_1024 = 16;
    private static final int NB_512 = 8;
    private static final int NR_1024 = 14;
    private static final int NR_512 = 10;
    private static final byte[] S0 = {-88, 67, 95, 6, 107, 117, 108, 89, 113, -33, -121, -107, c.A, -16, -40, 9, 109, -13, c.G, -53, -55, 77, 44, -81, 121, -32, -105, -3, 111, 75, 69, 57, 62, -35, -93, 79, -76, -74, -102, c.f32109p, c.I, a.f14000k, c.f32118y, -31, 73, -46, -109, -58, -110, 114, -98, 97, -47, 99, -6, -18, -12, c.C, -43, -83, 88, -92, a.f13999j, -95, -36, -14, -125, 55, 66, -28, 122, 50, -100, -52, -85, 74, -113, 110, 4, 39, 46, -25, -30, 90, -106, c.f32119z, 35, 43, -62, 101, 102, c.f32110q, PSSSigner.TRAILER_IMPLICIT, -87, 71, 65, 52, 72, -4, -73, 106, -120, -91, 83, -122, -7, 91, -37, 56, 123, -61, c.H, 34, 51, 36, 40, 54, -57, -78, 59, -114, 119, -70, -11, c.f32117x, -97, 8, 85, -101, 76, -2, 96, 92, -38, c.B, 70, -51, 125, 33, -80, Utf8.REPLACEMENT_BYTE, c.E, -119, -1, -21, -124, 105, 58, -99, -41, -45, 112, 103, k.f34876a, -75, -34, 93, 48, -111, -79, 120, 17, 1, -27, 0, 104, -104, -96, -59, 2, -90, 116, 45, c.f32106m, -94, 118, -77, -66, -50, -67, -82, -23, -118, 49, c.F, -20, -15, -103, -108, -86, -10, 38, 47, a.f13998i, -24, -116, 53, 3, -44, Byte.MAX_VALUE, -5, 5, -63, 94, -112, 32, 61, -126, -9, -22, 10, c.f32108o, 126, -8, 80, c.D, -60, 7, 87, -72, 60, 98, -29, -56, -84, 82, 100, 16, -48, -39, 19, c.f32107n, c.f32114u, 41, 81, -71, -49, -42, 115, -115, -127, 84, -64, -19, 78, 68, -89, 42, -123, 37, -26, -54, 124, -117, 86, Byte.MIN_VALUE};
    private static final byte[] S1 = {-50, a.f13999j, -21, -110, -22, -53, 19, -63, -23, 58, -42, -78, -46, -112, c.A, -8, 66, c.f32118y, 86, -76, 101, c.F, -120, 67, -59, 92, 54, -70, -11, 87, 103, -115, 49, -10, 100, 88, -98, -12, 34, -86, 117, c.f32110q, 2, -79, -33, 109, 115, 77, 124, 38, 46, -9, 8, 93, 68, 62, -97, c.f32117x, -56, -82, 84, 16, -40, PSSSigner.TRAILER_IMPLICIT, c.D, 107, 105, -13, -67, 51, -85, -6, -47, -101, 104, 78, c.f32119z, -107, -111, -18, 76, 99, -114, 91, -52, 60, c.C, -95, -127, 73, 123, -39, 111, 55, 96, -54, -25, 43, 72, -3, -106, 69, -4, 65, c.f32114u, c.f32108o, 121, -27, -119, -116, -29, 32, 48, -36, -73, 108, 74, -75, Utf8.REPLACEMENT_BYTE, -105, -44, 98, 45, 6, -92, -91, -125, 95, 42, -38, -55, 0, 126, -94, 85, a.f14000k, 17, -43, -100, -49, c.f32109p, 10, 61, 81, 125, -109, c.E, -2, -60, 71, 9, -122, c.f32106m, -113, -99, 106, 7, -71, -80, -104, c.B, 50, 113, 75, a.f13998i, 59, 112, -96, -28, k.f34876a, -1, -61, -87, -26, 120, -7, -117, 70, Byte.MIN_VALUE, c.H, 56, -31, -72, -88, -32, c.f32107n, 35, 118, c.G, 37, 36, 5, -15, 110, -108, 40, -102, -124, -24, -93, 79, 119, -45, -123, -30, 82, -14, -126, 80, 122, 47, 116, 83, -77, 97, -81, 57, 53, -34, -51, c.I, -103, -84, -83, 114, 44, -35, -48, -121, -66, 94, -90, -20, 4, -58, 3, 52, -5, -37, 89, -74, -62, 1, -16, 90, -19, -89, 102, 33, Byte.MAX_VALUE, -118, 39, -57, -64, 41, -41};
    private static final byte[] S2 = {-109, -39, -102, -75, -104, 34, 69, -4, -70, 106, -33, 2, -97, -36, 81, 89, 74, c.A, 43, -62, -108, -12, a.f13999j, -93, 98, -28, 113, -44, -51, 112, c.f32119z, -31, 73, 60, -64, -40, 92, -101, -83, -123, 83, -95, 122, -56, 45, -32, -47, 114, -90, 44, -60, -29, 118, 120, -73, -76, 9, 59, c.f32109p, 65, 76, -34, -78, -112, 37, -91, -41, 3, 17, 0, -61, 46, -110, a.f13998i, 78, c.f32114u, -99, 125, -53, 53, 16, -43, 79, -98, 77, -87, 85, -58, -48, 123, c.B, -105, -45, 54, -26, 72, 86, -127, -113, 119, -52, -100, -71, -30, -84, -72, 47, c.f32118y, -92, 124, -38, 56, c.H, c.f32106m, 5, -42, c.f32117x, 110, 108, 126, 102, -3, -79, -27, 96, -81, 94, 51, -121, -55, -16, 93, 109, Utf8.REPLACEMENT_BYTE, -120, -115, -57, -9, c.G, -23, -20, -19, Byte.MIN_VALUE, 41, 39, -49, -103, -88, 80, c.f32110q, 55, 36, 40, 48, -107, -46, 62, 91, k.f34876a, -125, -77, 105, 87, c.I, 7, c.F, -118, PSSSigner.TRAILER_IMPLICIT, 32, -21, -50, -114, -85, -18, 49, -94, 115, -7, -54, 58, c.D, -5, c.f32108o, -63, -2, -6, -14, 111, -67, -106, -35, 67, 82, -74, 8, -13, -82, -66, c.C, -119, 50, 38, -80, -22, 75, 100, -124, -126, 107, -11, 121, a.f14000k, 1, 95, 117, 99, c.E, 35, 61, 104, 42, 101, -24, -111, -10, -1, 19, 88, -15, 71, 10, Byte.MAX_VALUE, -59, -89, -25, 97, 90, 6, 70, 68, 66, 4, -96, -37, 57, -122, 84, -86, -116, 52, 33, -117, -8, c.f32107n, 116, 103};
    private static final byte[] S3 = {104, -115, -54, 77, 115, 75, 78, 42, -44, 82, 38, -77, 84, c.H, c.C, c.I, 34, 3, 70, 61, 45, 74, 83, -125, 19, -118, -73, -43, 37, 121, -11, -67, 88, 47, c.f32108o, 2, -19, 81, -98, 17, -14, 62, 85, 94, -47, c.f32119z, 60, 102, 112, 93, -13, 69, k.f34876a, -52, -24, -108, 86, 8, -50, c.D, 58, -46, -31, -33, -75, 56, 110, c.f32109p, -27, -12, -7, -122, -23, 79, -42, -123, 35, -49, 50, -103, 49, c.f32117x, -82, -18, -56, 72, -45, 48, -95, -110, 65, -79, c.B, -60, 44, 113, 114, 68, c.f32118y, -3, 55, -66, 95, -86, -101, -120, -40, -85, -119, -100, -6, 96, -22, PSSSigner.TRAILER_IMPLICIT, 98, c.f32107n, 36, -90, -88, -20, 103, 32, -37, 124, 40, -35, -84, 91, 52, 126, 16, -15, 123, -113, 99, -96, 5, -102, 67, 119, 33, a.f14000k, 39, 9, -61, -97, -74, -41, 41, -62, -21, -64, -92, -117, -116, c.G, -5, -1, -63, -78, -105, 46, -8, 101, -10, 117, 7, 4, 73, 51, -28, -39, -71, -48, 66, -57, 108, -112, 0, -114, 111, 80, 1, -59, -38, 71, Utf8.REPLACEMENT_BYTE, -51, 105, -94, -30, 122, -89, -58, -109, c.f32110q, 10, 6, -26, 43, -106, -93, c.F, -81, 106, c.f32114u, -124, 57, -25, -80, -126, -9, -2, -99, -121, 92, -127, 53, -34, -76, -91, -4, Byte.MIN_VALUE, a.f13998i, -53, a.f13999j, 107, 118, -70, 90, 125, 120, c.f32106m, -107, -29, -83, 116, -104, 59, 54, 100, 109, -36, -16, 89, -87, 76, c.A, Byte.MAX_VALUE, -111, -72, -55, 87, c.E, -32, 97};
    private int blockSize;
    private byte[] buf;
    private int bufOff;
    private int columns;
    private int hashSize;
    private long inputBlocks;
    private int rounds;
    private long[] state;
    private long[] tempState1;
    private long[] tempState2;

    public DSTU7564Digest(int i4) {
        int i10;
        if (i4 != 256 && i4 != 384 && i4 != 512) {
            throw new IllegalArgumentException("Hash size is not recommended. Use 256/384/512 instead");
        }
        this.hashSize = i4 >>> 3;
        if (i4 > 256) {
            this.columns = 16;
            i10 = 14;
        } else {
            this.columns = 8;
            i10 = 10;
        }
        this.rounds = i10;
        int i11 = this.columns;
        int i12 = i11 << 3;
        this.blockSize = i12;
        long[] jArr = new long[i11];
        this.state = jArr;
        jArr[0] = i12;
        this.tempState1 = new long[i11];
        this.tempState2 = new long[i11];
        this.buf = new byte[i12];
    }

    public DSTU7564Digest(DSTU7564Digest dSTU7564Digest) {
        copyIn(dSTU7564Digest);
    }

    private void P(long[] jArr) {
        for (int i4 = 0; i4 < this.rounds; i4++) {
            long j4 = i4;
            for (int i10 = 0; i10 < this.columns; i10++) {
                jArr[i10] = jArr[i10] ^ j4;
                j4 += 16;
            }
            shiftRows(jArr);
            subBytes(jArr);
            mixColumns(jArr);
        }
    }

    private void Q(long[] jArr) {
        for (int i4 = 0; i4 < this.rounds; i4++) {
            long j4 = ((((this.columns - 1) << 4) ^ i4) << 56) | 67818912035696883L;
            for (int i10 = 0; i10 < this.columns; i10++) {
                jArr[i10] = jArr[i10] + j4;
                j4 -= a0.f86225p;
            }
            shiftRows(jArr);
            subBytes(jArr);
            mixColumns(jArr);
        }
    }

    private void copyIn(DSTU7564Digest dSTU7564Digest) {
        this.hashSize = dSTU7564Digest.hashSize;
        this.blockSize = dSTU7564Digest.blockSize;
        this.rounds = dSTU7564Digest.rounds;
        int i4 = this.columns;
        if (i4 <= 0 || i4 != dSTU7564Digest.columns) {
            this.columns = dSTU7564Digest.columns;
            this.state = Arrays.clone(dSTU7564Digest.state);
            int i10 = this.columns;
            this.tempState1 = new long[i10];
            this.tempState2 = new long[i10];
            this.buf = Arrays.clone(dSTU7564Digest.buf);
        } else {
            System.arraycopy(dSTU7564Digest.state, 0, this.state, 0, i4);
            System.arraycopy(dSTU7564Digest.buf, 0, this.buf, 0, this.blockSize);
        }
        this.inputBlocks = dSTU7564Digest.inputBlocks;
        this.bufOff = dSTU7564Digest.bufOff;
    }

    private static long mixColumn(long j4) {
        long j10 = ((9187201950435737471L & j4) << 1) ^ (((j4 & (-9187201950435737472L)) >>> 7) * 29);
        long rotate = rotate(8, j4) ^ j4;
        long rotate2 = (rotate ^ rotate(16, rotate)) ^ rotate(48, j4);
        long j11 = (j4 ^ rotate2) ^ j10;
        long j12 = (((-9187201950435737472L) & j11) >>> 6) * 29;
        return ((rotate(32, (((j11 & 4629771061636907072L) >>> 6) * 29) ^ (j12 ^ ((4557430888798830399L & j11) << 2))) ^ rotate2) ^ rotate(40, j10)) ^ rotate(48, j10);
    }

    private void mixColumns(long[] jArr) {
        for (int i4 = 0; i4 < this.columns; i4++) {
            jArr[i4] = mixColumn(jArr[i4]);
        }
    }

    private void processBlock(byte[] bArr, int i4) {
        for (int i10 = 0; i10 < this.columns; i10++) {
            long littleEndianToLong = Pack.littleEndianToLong(bArr, i4);
            i4 += 8;
            this.tempState1[i10] = this.state[i10] ^ littleEndianToLong;
            this.tempState2[i10] = littleEndianToLong;
        }
        P(this.tempState1);
        Q(this.tempState2);
        for (int i11 = 0; i11 < this.columns; i11++) {
            long[] jArr = this.state;
            jArr[i11] = jArr[i11] ^ (this.tempState1[i11] ^ this.tempState2[i11]);
        }
    }

    private static long rotate(int i4, long j4) {
        return (j4 << (-i4)) | (j4 >>> i4);
    }

    private void shiftRows(long[] jArr) {
        int i4 = this.columns;
        if (i4 == 8) {
            long j4 = jArr[0];
            long j10 = jArr[1];
            long j11 = jArr[2];
            long j12 = jArr[3];
            long j13 = jArr[4];
            long j14 = jArr[5];
            long j15 = jArr[6];
            long j16 = jArr[7];
            long j17 = (j4 ^ j13) & (-4294967296L);
            long j18 = j4 ^ j17;
            long j19 = j13 ^ j17;
            long j20 = (j10 ^ j14) & 72057594021150720L;
            long j21 = j10 ^ j20;
            long j22 = j14 ^ j20;
            long j23 = (j11 ^ j15) & 281474976645120L;
            long j24 = j11 ^ j23;
            long j25 = j15 ^ j23;
            long j26 = (j12 ^ j16) & 1099511627520L;
            long j27 = j12 ^ j26;
            long j28 = j16 ^ j26;
            long j29 = (j18 ^ j24) & (-281470681808896L);
            long j30 = j18 ^ j29;
            long j31 = j24 ^ j29;
            long j32 = (j21 ^ j27) & 72056494543077120L;
            long j33 = j21 ^ j32;
            long j34 = j27 ^ j32;
            long j35 = (j19 ^ j25) & (-281470681808896L);
            long j36 = j19 ^ j35;
            long j37 = j25 ^ j35;
            long j38 = (j22 ^ j28) & 72056494543077120L;
            long j39 = j22 ^ j38;
            long j40 = j28 ^ j38;
            long j41 = (j30 ^ j33) & (-71777214294589696L);
            long j42 = j30 ^ j41;
            long j43 = j33 ^ j41;
            long j44 = (j31 ^ j34) & (-71777214294589696L);
            long j45 = j31 ^ j44;
            long j46 = j34 ^ j44;
            long j47 = (j36 ^ j39) & (-71777214294589696L);
            long j48 = (j37 ^ j40) & (-71777214294589696L);
            jArr[0] = j42;
            jArr[1] = j43;
            jArr[2] = j45;
            jArr[3] = j46;
            jArr[4] = j36 ^ j47;
            jArr[5] = j39 ^ j47;
            jArr[6] = j37 ^ j48;
            jArr[7] = j40 ^ j48;
        } else if (i4 != 16) {
            throw new IllegalStateException("unsupported state size: only 512/1024 are allowed");
        } else {
            long j49 = jArr[0];
            long j50 = jArr[1];
            long j51 = jArr[2];
            long j52 = jArr[3];
            long j53 = jArr[4];
            long j54 = jArr[5];
            long j55 = jArr[6];
            long j56 = jArr[7];
            long j57 = jArr[8];
            long j58 = jArr[9];
            long j59 = jArr[10];
            long j60 = jArr[11];
            long j61 = jArr[12];
            long j62 = jArr[13];
            long j63 = jArr[14];
            long j64 = jArr[15];
            long j65 = (j49 ^ j57) & (-72057594037927936L);
            long j66 = j49 ^ j65;
            long j67 = j57 ^ j65;
            long j68 = (j50 ^ j58) & (-72057594037927936L);
            long j69 = j50 ^ j68;
            long j70 = j58 ^ j68;
            long j71 = (j51 ^ j59) & (-281474976710656L);
            long j72 = j51 ^ j71;
            long j73 = j59 ^ j71;
            long j74 = (j52 ^ j60) & (-1099511627776L);
            long j75 = j52 ^ j74;
            long j76 = j60 ^ j74;
            long j77 = (j53 ^ j61) & (-4294967296L);
            long j78 = j53 ^ j77;
            long j79 = j61 ^ j77;
            long j80 = (j54 ^ j62) & 72057594021150720L;
            long j81 = j54 ^ j80;
            long j82 = j62 ^ j80;
            long j83 = (j55 ^ j63) & 72057594037862400L;
            long j84 = j55 ^ j83;
            long j85 = j63 ^ j83;
            long j86 = (j56 ^ j64) & 72057594037927680L;
            long j87 = j56 ^ j86;
            long j88 = j64 ^ j86;
            long j89 = (j66 ^ j78) & 72057589742960640L;
            long j90 = j66 ^ j89;
            long j91 = j78 ^ j89;
            long j92 = (j69 ^ j81) & (-16777216);
            long j93 = j69 ^ j92;
            long j94 = j81 ^ j92;
            long j95 = (j72 ^ j84) & (-71776119061282816L);
            long j96 = j72 ^ j95;
            long j97 = j84 ^ j95;
            long j98 = (j75 ^ j87) & (-72056494526300416L);
            long j99 = j75 ^ j98;
            long j100 = j87 ^ j98;
            long j101 = (j67 ^ j79) & 72057589742960640L;
            long j102 = j67 ^ j101;
            long j103 = j79 ^ j101;
            long j104 = (j70 ^ j82) & (-16777216);
            long j105 = j70 ^ j104;
            long j106 = j82 ^ j104;
            long j107 = (j73 ^ j85) & (-71776119061282816L);
            long j108 = j73 ^ j107;
            long j109 = j85 ^ j107;
            long j110 = (j76 ^ j88) & (-72056494526300416L);
            long j111 = j76 ^ j110;
            long j112 = j88 ^ j110;
            long j113 = (j90 ^ j96) & (-281470681808896L);
            long j114 = j90 ^ j113;
            long j115 = j96 ^ j113;
            long j116 = (j93 ^ j99) & 72056494543077120L;
            long j117 = j93 ^ j116;
            long j118 = j99 ^ j116;
            long j119 = (j91 ^ j97) & (-281470681808896L);
            long j120 = j91 ^ j119;
            long j121 = j97 ^ j119;
            long j122 = (j94 ^ j100) & 72056494543077120L;
            long j123 = j94 ^ j122;
            long j124 = j100 ^ j122;
            long j125 = (j102 ^ j108) & (-281470681808896L);
            long j126 = j102 ^ j125;
            long j127 = j108 ^ j125;
            long j128 = (j105 ^ j111) & 72056494543077120L;
            long j129 = j105 ^ j128;
            long j130 = j111 ^ j128;
            long j131 = (j103 ^ j109) & (-281470681808896L);
            long j132 = j103 ^ j131;
            long j133 = j109 ^ j131;
            long j134 = (j106 ^ j112) & 72056494543077120L;
            long j135 = j106 ^ j134;
            long j136 = j112 ^ j134;
            long j137 = (j114 ^ j117) & (-71777214294589696L);
            long j138 = j114 ^ j137;
            long j139 = j117 ^ j137;
            long j140 = (j115 ^ j118) & (-71777214294589696L);
            long j141 = j115 ^ j140;
            long j142 = j118 ^ j140;
            long j143 = (j120 ^ j123) & (-71777214294589696L);
            long j144 = j120 ^ j143;
            long j145 = j123 ^ j143;
            long j146 = (j121 ^ j124) & (-71777214294589696L);
            long j147 = j121 ^ j146;
            long j148 = j124 ^ j146;
            long j149 = (j126 ^ j129) & (-71777214294589696L);
            long j150 = j126 ^ j149;
            long j151 = j129 ^ j149;
            long j152 = (j127 ^ j130) & (-71777214294589696L);
            long j153 = j127 ^ j152;
            long j154 = j130 ^ j152;
            long j155 = (j132 ^ j135) & (-71777214294589696L);
            long j156 = (j133 ^ j136) & (-71777214294589696L);
            jArr[0] = j138;
            jArr[1] = j139;
            jArr[2] = j141;
            jArr[3] = j142;
            jArr[4] = j144;
            jArr[5] = j145;
            jArr[6] = j147;
            jArr[7] = j148;
            jArr[8] = j150;
            jArr[9] = j151;
            jArr[10] = j153;
            jArr[11] = j154;
            jArr[12] = j132 ^ j155;
            jArr[13] = j135 ^ j155;
            jArr[14] = j133 ^ j156;
            jArr[15] = j136 ^ j156;
        }
    }

    private void subBytes(long[] jArr) {
        for (int i4 = 0; i4 < this.columns; i4++) {
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

    @Override // org.bouncycastle.util.Memoable
    public Memoable copy() {
        return new DSTU7564Digest(this);
    }

    @Override // org.bouncycastle.crypto.Digest
    public int doFinal(byte[] bArr, int i4) {
        int i10;
        int i11;
        int i12 = this.bufOff;
        byte[] bArr2 = this.buf;
        int i13 = i12 + 1;
        this.bufOff = i13;
        bArr2[i12] = Byte.MIN_VALUE;
        int i14 = this.blockSize - 12;
        int i15 = 0;
        if (i13 > i14) {
            while (true) {
                int i16 = this.bufOff;
                if (i16 >= this.blockSize) {
                    break;
                }
                byte[] bArr3 = this.buf;
                this.bufOff = i16 + 1;
                bArr3[i16] = 0;
            }
            this.bufOff = 0;
            processBlock(this.buf, 0);
        }
        while (true) {
            i10 = this.bufOff;
            if (i10 >= i14) {
                break;
            }
            byte[] bArr4 = this.buf;
            this.bufOff = i10 + 1;
            bArr4[i10] = 0;
        }
        long j4 = (((this.inputBlocks & 4294967295L) * this.blockSize) + i12) << 3;
        Pack.intToLittleEndian((int) j4, this.buf, i10);
        int i17 = this.bufOff + 4;
        this.bufOff = i17;
        Pack.longToLittleEndian((j4 >>> 32) + (((this.inputBlocks >>> 32) * this.blockSize) << 3), this.buf, i17);
        processBlock(this.buf, 0);
        System.arraycopy(this.state, 0, this.tempState1, 0, this.columns);
        P(this.tempState1);
        while (true) {
            i11 = this.columns;
            if (i15 >= i11) {
                break;
            }
            long[] jArr = this.state;
            jArr[i15] = jArr[i15] ^ this.tempState1[i15];
            i15++;
        }
        for (int i18 = i11 - (this.hashSize >>> 3); i18 < this.columns; i18++) {
            Pack.longToLittleEndian(this.state[i18], bArr, i4);
            i4 += 8;
        }
        reset();
        return this.hashSize;
    }

    @Override // org.bouncycastle.crypto.Digest
    public String getAlgorithmName() {
        return "DSTU7564";
    }

    @Override // org.bouncycastle.crypto.ExtendedDigest
    public int getByteLength() {
        return this.blockSize;
    }

    @Override // org.bouncycastle.crypto.Digest
    public int getDigestSize() {
        return this.hashSize;
    }

    @Override // org.bouncycastle.crypto.Digest
    public void reset() {
        Arrays.fill(this.state, 0L);
        this.state[0] = this.blockSize;
        this.inputBlocks = 0L;
        this.bufOff = 0;
    }

    @Override // org.bouncycastle.util.Memoable
    public void reset(Memoable memoable) {
        copyIn((DSTU7564Digest) memoable);
    }

    @Override // org.bouncycastle.crypto.Digest
    public void update(byte b10) {
        byte[] bArr = this.buf;
        int i4 = this.bufOff;
        int i10 = i4 + 1;
        this.bufOff = i10;
        bArr[i4] = b10;
        if (i10 == this.blockSize) {
            processBlock(bArr, 0);
            this.bufOff = 0;
            this.inputBlocks++;
        }
    }

    @Override // org.bouncycastle.crypto.Digest
    public void update(byte[] bArr, int i4, int i10) {
        while (this.bufOff != 0 && i10 > 0) {
            update(bArr[i4]);
            i10--;
            i4++;
        }
        if (i10 > 0) {
            while (i10 >= this.blockSize) {
                processBlock(bArr, i4);
                int i11 = this.blockSize;
                i4 += i11;
                i10 -= i11;
                this.inputBlocks++;
            }
            while (i10 > 0) {
                update(bArr[i4]);
                i10--;
                i4++;
            }
        }
    }
}
