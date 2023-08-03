package org.bouncycastle.math.ec.rfc8032;

import com.google.common.base.c;
import com.qennnsad.aknkaksd.util.a1;
import java.security.SecureRandom;
import java.util.Objects;
import kotlinx.coroutines.internal.a0;
import org.bouncycastle.crypto.Xof;
import org.bouncycastle.crypto.digests.SHAKEDigest;
import org.bouncycastle.math.ec.rfc7748.X448;
import org.bouncycastle.math.ec.rfc7748.X448Field;
import org.bouncycastle.math.raw.Nat;
import org.bouncycastle.util.Arrays;

/* loaded from: classes5.dex */
public abstract class Ed448 {
    private static final int COORD_INTS = 14;
    private static final int C_d = -39081;
    private static final int L4_0 = 43969588;
    private static final int L4_1 = 30366549;
    private static final int L4_2 = 163752818;
    private static final int L4_3 = 258169998;
    private static final int L4_4 = 96434764;
    private static final int L4_5 = 227822194;
    private static final int L4_6 = 149865618;
    private static final int L4_7 = 550336261;
    private static final int L_0 = 78101261;
    private static final int L_1 = 141809365;
    private static final int L_2 = 175155932;
    private static final int L_3 = 64542499;
    private static final int L_4 = 158326419;
    private static final int L_5 = 191173276;
    private static final int L_6 = 104575268;
    private static final int L_7 = 137584065;
    private static final long M26L = 67108863;
    private static final long M28L = 268435455;
    private static final long M32L = 4294967295L;
    private static final int POINT_BYTES = 57;
    private static final int PRECOMP_BLOCKS = 5;
    private static final int PRECOMP_MASK = 15;
    private static final int PRECOMP_POINTS = 16;
    private static final int PRECOMP_SPACING = 18;
    private static final int PRECOMP_TEETH = 5;
    public static final int PREHASH_SIZE = 64;
    public static final int PUBLIC_KEY_SIZE = 57;
    private static final int SCALAR_BYTES = 57;
    private static final int SCALAR_INTS = 14;
    public static final int SECRET_KEY_SIZE = 57;
    public static final int SIGNATURE_SIZE = 114;
    private static final int WNAF_WIDTH_BASE = 7;
    private static final byte[] DOM4_PREFIX = {83, 105, 103, 69, 100, 52, 52, 56};
    private static final int[] P = {-1, -1, -1, -1, -1, -1, -1, -2, -1, -1, -1, -1, -1, -1};
    private static final int[] L = {-1420278541, 595116690, -1916432555, 560775794, -1361693040, -1001465015, 2093622249, -1, -1, -1, -1, -1, -1, a0.f86219j};
    private static final int[] B_x = {118276190, 40534716, 9670182, 135141552, 85017403, 259173222, 68333082, 171784774, 174973732, 15824510, 73756743, 57518561, 94773951, 248652241, 107736333, 82941708};
    private static final int[] B_y = {36764180, 8885695, 130592152, 20104429, 163904957, 30304195, 121295871, 5901357, 125344798, 171541512, 175338348, 209069246, 3626697, 38307682, 24032956, 110359655};
    private static final Object precompLock = new Object();
    private static PointExt[] precompBaseTable = null;
    private static int[] precompBase = null;

    /* loaded from: classes5.dex */
    public static final class Algorithm {
        public static final int Ed448 = 0;
        public static final int Ed448ph = 1;
    }

    /* loaded from: classes5.dex */
    private static class F extends X448Field {
        private F() {
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes5.dex */
    public static class PointExt {

        /* renamed from: x  reason: collision with root package name */
        int[] f91477x;

        /* renamed from: y  reason: collision with root package name */
        int[] f91478y;

        /* renamed from: z  reason: collision with root package name */
        int[] f91479z;

        private PointExt() {
            this.f91477x = X448Field.create();
            this.f91478y = X448Field.create();
            this.f91479z = X448Field.create();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes5.dex */
    public static class PointPrecomp {

        /* renamed from: x  reason: collision with root package name */
        int[] f91480x;

        /* renamed from: y  reason: collision with root package name */
        int[] f91481y;

        private PointPrecomp() {
            this.f91480x = X448Field.create();
            this.f91481y = X448Field.create();
        }
    }

    private static byte[] calculateS(byte[] bArr, byte[] bArr2, byte[] bArr3) {
        int[] iArr = new int[28];
        decodeScalar(bArr, 0, iArr);
        int[] iArr2 = new int[14];
        decodeScalar(bArr2, 0, iArr2);
        int[] iArr3 = new int[14];
        decodeScalar(bArr3, 0, iArr3);
        Nat.mulAddTo(14, iArr2, iArr3, iArr);
        byte[] bArr4 = new byte[114];
        for (int i4 = 0; i4 < 28; i4++) {
            encode32(iArr[i4], bArr4, i4 * 4);
        }
        return reduceScalar(bArr4);
    }

    private static boolean checkContextVar(byte[] bArr) {
        return bArr != null && bArr.length < 256;
    }

    private static int checkPoint(int[] iArr, int[] iArr2) {
        int[] create = X448Field.create();
        int[] create2 = X448Field.create();
        int[] create3 = X448Field.create();
        X448Field.sqr(iArr, create2);
        X448Field.sqr(iArr2, create3);
        X448Field.mul(create2, create3, create);
        X448Field.add(create2, create3, create2);
        X448Field.mul(create, 39081, create);
        X448Field.subOne(create);
        X448Field.add(create, create2, create);
        X448Field.normalize(create);
        return X448Field.isZero(create);
    }

    private static int checkPoint(int[] iArr, int[] iArr2, int[] iArr3) {
        int[] create = X448Field.create();
        int[] create2 = X448Field.create();
        int[] create3 = X448Field.create();
        int[] create4 = X448Field.create();
        X448Field.sqr(iArr, create2);
        X448Field.sqr(iArr2, create3);
        X448Field.sqr(iArr3, create4);
        X448Field.mul(create2, create3, create);
        X448Field.add(create2, create3, create2);
        X448Field.mul(create2, create4, create2);
        X448Field.sqr(create4, create4);
        X448Field.mul(create, 39081, create);
        X448Field.sub(create, create4, create);
        X448Field.add(create, create2, create);
        X448Field.normalize(create);
        return X448Field.isZero(create);
    }

    private static boolean checkPointVar(byte[] bArr) {
        if ((bArr[56] & Byte.MAX_VALUE) != 0) {
            return false;
        }
        int[] iArr = new int[14];
        decode32(bArr, 0, iArr, 0, 14);
        return !Nat.gte(14, iArr, P);
    }

    private static boolean checkScalarVar(byte[] bArr, int[] iArr) {
        if (bArr[56] != 0) {
            return false;
        }
        decodeScalar(bArr, 0, iArr);
        return !Nat.gte(14, iArr, L);
    }

    private static byte[] copy(byte[] bArr, int i4, int i10) {
        byte[] bArr2 = new byte[i10];
        System.arraycopy(bArr, i4, bArr2, 0, i10);
        return bArr2;
    }

    public static Xof createPrehash() {
        return createXof();
    }

    private static Xof createXof() {
        return new SHAKEDigest(256);
    }

    private static int decode16(byte[] bArr, int i4) {
        return ((bArr[i4 + 1] & 255) << 8) | (bArr[i4] & 255);
    }

    private static int decode24(byte[] bArr, int i4) {
        int i10 = i4 + 1;
        return ((bArr[i10 + 1] & 255) << 16) | (bArr[i4] & 255) | ((bArr[i10] & 255) << 8);
    }

    private static int decode32(byte[] bArr, int i4) {
        int i10 = i4 + 1;
        int i11 = i10 + 1;
        return (bArr[i11 + 1] << c.B) | (bArr[i4] & 255) | ((bArr[i10] & 255) << 8) | ((bArr[i11] & 255) << 16);
    }

    private static void decode32(byte[] bArr, int i4, int[] iArr, int i10, int i11) {
        for (int i12 = 0; i12 < i11; i12++) {
            iArr[i10 + i12] = decode32(bArr, (i12 * 4) + i4);
        }
    }

    private static boolean decodePointVar(byte[] bArr, int i4, boolean z9, PointExt pointExt) {
        byte[] copy = copy(bArr, i4, 57);
        if (checkPointVar(copy)) {
            int i10 = (copy[56] & 128) >>> 7;
            copy[56] = (byte) (copy[56] & Byte.MAX_VALUE);
            X448Field.decode(copy, 0, pointExt.f91478y);
            int[] create = X448Field.create();
            int[] create2 = X448Field.create();
            X448Field.sqr(pointExt.f91478y, create);
            X448Field.mul(create, 39081, create2);
            X448Field.negate(create, create);
            X448Field.addOne(create);
            X448Field.addOne(create2);
            if (X448Field.sqrtRatioVar(create, create2, pointExt.f91477x)) {
                X448Field.normalize(pointExt.f91477x);
                if (i10 == 1 && X448Field.isZeroVar(pointExt.f91477x)) {
                    return false;
                }
                int[] iArr = pointExt.f91477x;
                if (z9 ^ (i10 != (iArr[0] & 1))) {
                    X448Field.negate(iArr, iArr);
                }
                pointExtendXY(pointExt);
                return true;
            }
            return false;
        }
        return false;
    }

    private static void decodeScalar(byte[] bArr, int i4, int[] iArr) {
        decode32(bArr, i4, iArr, 0, 14);
    }

    private static void dom4(Xof xof, byte b10, byte[] bArr) {
        byte[] bArr2 = DOM4_PREFIX;
        int length = bArr2.length;
        int i4 = length + 2;
        int length2 = bArr.length + i4;
        byte[] bArr3 = new byte[length2];
        System.arraycopy(bArr2, 0, bArr3, 0, length);
        bArr3[length] = b10;
        bArr3[length + 1] = (byte) bArr.length;
        System.arraycopy(bArr, 0, bArr3, i4, bArr.length);
        xof.update(bArr3, 0, length2);
    }

    private static void encode24(int i4, byte[] bArr, int i10) {
        bArr[i10] = (byte) i4;
        int i11 = i10 + 1;
        bArr[i11] = (byte) (i4 >>> 8);
        bArr[i11 + 1] = (byte) (i4 >>> 16);
    }

    private static void encode32(int i4, byte[] bArr, int i10) {
        bArr[i10] = (byte) i4;
        int i11 = i10 + 1;
        bArr[i11] = (byte) (i4 >>> 8);
        int i12 = i11 + 1;
        bArr[i12] = (byte) (i4 >>> 16);
        bArr[i12 + 1] = (byte) (i4 >>> 24);
    }

    private static void encode56(long j4, byte[] bArr, int i4) {
        encode32((int) j4, bArr, i4);
        encode24((int) (j4 >>> 32), bArr, i4 + 4);
    }

    private static int encodePoint(PointExt pointExt, byte[] bArr, int i4) {
        int[] create = X448Field.create();
        int[] create2 = X448Field.create();
        X448Field.inv(pointExt.f91479z, create2);
        X448Field.mul(pointExt.f91477x, create2, create);
        X448Field.mul(pointExt.f91478y, create2, create2);
        X448Field.normalize(create);
        X448Field.normalize(create2);
        int checkPoint = checkPoint(create, create2);
        X448Field.encode(create2, bArr, i4);
        bArr[(i4 + 57) - 1] = (byte) ((create[0] & 1) << 7);
        return checkPoint;
    }

    public static void generatePrivateKey(SecureRandom secureRandom, byte[] bArr) {
        secureRandom.nextBytes(bArr);
    }

    public static void generatePublicKey(byte[] bArr, int i4, byte[] bArr2, int i10) {
        Xof createXof = createXof();
        byte[] bArr3 = new byte[114];
        createXof.update(bArr, i4, 57);
        createXof.doFinal(bArr3, 0, 114);
        byte[] bArr4 = new byte[57];
        pruneScalar(bArr3, 0, bArr4);
        scalarMultBaseEncoded(bArr4, bArr2, i10);
    }

    private static int getWindow4(int[] iArr, int i4) {
        return (iArr[i4 >>> 3] >>> ((i4 & 7) << 2)) & 15;
    }

    private static byte[] getWnafVar(int[] iArr, int i4) {
        int[] iArr2 = new int[28];
        int i10 = 0;
        int i11 = 14;
        int i12 = 28;
        int i13 = 0;
        while (true) {
            i11--;
            if (i11 < 0) {
                break;
            }
            int i14 = iArr[i11];
            int i15 = i12 - 1;
            iArr2[i15] = (i13 << 16) | (i14 >>> 16);
            i12 = i15 - 1;
            iArr2[i12] = i14;
            i13 = i14;
        }
        byte[] bArr = new byte[447];
        int i16 = 32 - i4;
        int i17 = 0;
        int i18 = 0;
        while (i10 < 28) {
            int i19 = iArr2[i10];
            while (i17 < 16) {
                int i20 = i19 >>> i17;
                if ((i20 & 1) == i18) {
                    i17++;
                } else {
                    int i21 = (i20 | 1) << i16;
                    bArr[(i10 << 4) + i17] = (byte) (i21 >> i16);
                    i17 += i4;
                    i18 = i21 >>> 31;
                }
            }
            i10++;
            i17 -= 16;
        }
        return bArr;
    }

    private static void implSign(Xof xof, byte[] bArr, byte[] bArr2, byte[] bArr3, int i4, byte[] bArr4, byte b10, byte[] bArr5, int i10, int i11, byte[] bArr6, int i12) {
        dom4(xof, b10, bArr4);
        xof.update(bArr, 57, 57);
        xof.update(bArr5, i10, i11);
        xof.doFinal(bArr, 0, bArr.length);
        byte[] reduceScalar = reduceScalar(bArr);
        byte[] bArr7 = new byte[57];
        scalarMultBaseEncoded(reduceScalar, bArr7, 0);
        dom4(xof, b10, bArr4);
        xof.update(bArr7, 0, 57);
        xof.update(bArr3, i4, 57);
        xof.update(bArr5, i10, i11);
        xof.doFinal(bArr, 0, bArr.length);
        byte[] calculateS = calculateS(reduceScalar, reduceScalar(bArr), bArr2);
        System.arraycopy(bArr7, 0, bArr6, i12, 57);
        System.arraycopy(calculateS, 0, bArr6, i12 + 57, 57);
    }

    private static void implSign(byte[] bArr, int i4, byte[] bArr2, byte b10, byte[] bArr3, int i10, int i11, byte[] bArr4, int i12) {
        if (!checkContextVar(bArr2)) {
            throw new IllegalArgumentException("ctx");
        }
        Xof createXof = createXof();
        byte[] bArr5 = new byte[114];
        createXof.update(bArr, i4, 57);
        createXof.doFinal(bArr5, 0, 114);
        byte[] bArr6 = new byte[57];
        pruneScalar(bArr5, 0, bArr6);
        byte[] bArr7 = new byte[57];
        scalarMultBaseEncoded(bArr6, bArr7, 0);
        implSign(createXof, bArr5, bArr6, bArr7, 0, bArr2, b10, bArr3, i10, i11, bArr4, i12);
    }

    private static void implSign(byte[] bArr, int i4, byte[] bArr2, int i10, byte[] bArr3, byte b10, byte[] bArr4, int i11, int i12, byte[] bArr5, int i13) {
        if (!checkContextVar(bArr3)) {
            throw new IllegalArgumentException("ctx");
        }
        Xof createXof = createXof();
        byte[] bArr6 = new byte[114];
        createXof.update(bArr, i4, 57);
        createXof.doFinal(bArr6, 0, 114);
        byte[] bArr7 = new byte[57];
        pruneScalar(bArr6, 0, bArr7);
        implSign(createXof, bArr6, bArr7, bArr2, i10, bArr3, b10, bArr4, i11, i12, bArr5, i13);
    }

    private static boolean implVerify(byte[] bArr, int i4, byte[] bArr2, int i10, byte[] bArr3, byte b10, byte[] bArr4, int i11, int i12) {
        if (checkContextVar(bArr3)) {
            byte[] copy = copy(bArr, i4, 57);
            byte[] copy2 = copy(bArr, i4 + 57, 57);
            if (checkPointVar(copy)) {
                int[] iArr = new int[14];
                if (checkScalarVar(copy2, iArr)) {
                    PointExt pointExt = new PointExt();
                    if (decodePointVar(bArr2, i10, true, pointExt)) {
                        Xof createXof = createXof();
                        byte[] bArr5 = new byte[114];
                        dom4(createXof, b10, bArr3);
                        createXof.update(copy, 0, 57);
                        createXof.update(bArr2, i10, 57);
                        createXof.update(bArr4, i11, i12);
                        createXof.doFinal(bArr5, 0, 114);
                        int[] iArr2 = new int[14];
                        decodeScalar(reduceScalar(bArr5), 0, iArr2);
                        PointExt pointExt2 = new PointExt();
                        scalarMultStrausVar(iArr, iArr2, pointExt, pointExt2);
                        byte[] bArr6 = new byte[57];
                        return encodePoint(pointExt2, bArr6, 0) != 0 && Arrays.areEqual(bArr6, copy);
                    }
                    return false;
                }
                return false;
            }
            return false;
        }
        throw new IllegalArgumentException("ctx");
    }

    private static boolean isNeutralElementVar(int[] iArr, int[] iArr2, int[] iArr3) {
        return X448Field.isZeroVar(iArr) && X448Field.areEqualVar(iArr2, iArr3);
    }

    private static void pointAdd(PointExt pointExt, PointExt pointExt2) {
        int[] create = X448Field.create();
        int[] create2 = X448Field.create();
        int[] create3 = X448Field.create();
        int[] create4 = X448Field.create();
        int[] create5 = X448Field.create();
        int[] create6 = X448Field.create();
        int[] create7 = X448Field.create();
        int[] create8 = X448Field.create();
        X448Field.mul(pointExt.f91479z, pointExt2.f91479z, create);
        X448Field.sqr(create, create2);
        X448Field.mul(pointExt.f91477x, pointExt2.f91477x, create3);
        X448Field.mul(pointExt.f91478y, pointExt2.f91478y, create4);
        X448Field.mul(create3, create4, create5);
        X448Field.mul(create5, 39081, create5);
        X448Field.add(create2, create5, create6);
        X448Field.sub(create2, create5, create7);
        X448Field.add(pointExt.f91477x, pointExt.f91478y, create2);
        X448Field.add(pointExt2.f91477x, pointExt2.f91478y, create5);
        X448Field.mul(create2, create5, create8);
        X448Field.add(create4, create3, create2);
        X448Field.sub(create4, create3, create5);
        X448Field.carry(create2);
        X448Field.sub(create8, create2, create8);
        X448Field.mul(create8, create, create8);
        X448Field.mul(create5, create, create5);
        X448Field.mul(create6, create8, pointExt2.f91477x);
        X448Field.mul(create5, create7, pointExt2.f91478y);
        X448Field.mul(create6, create7, pointExt2.f91479z);
    }

    private static void pointAddPrecomp(PointPrecomp pointPrecomp, PointExt pointExt) {
        int[] create = X448Field.create();
        int[] create2 = X448Field.create();
        int[] create3 = X448Field.create();
        int[] create4 = X448Field.create();
        int[] create5 = X448Field.create();
        int[] create6 = X448Field.create();
        int[] create7 = X448Field.create();
        X448Field.sqr(pointExt.f91479z, create);
        X448Field.mul(pointPrecomp.f91480x, pointExt.f91477x, create2);
        X448Field.mul(pointPrecomp.f91481y, pointExt.f91478y, create3);
        X448Field.mul(create2, create3, create4);
        X448Field.mul(create4, 39081, create4);
        X448Field.add(create, create4, create5);
        X448Field.sub(create, create4, create6);
        X448Field.add(pointPrecomp.f91480x, pointPrecomp.f91481y, create);
        X448Field.add(pointExt.f91477x, pointExt.f91478y, create4);
        X448Field.mul(create, create4, create7);
        X448Field.add(create3, create2, create);
        X448Field.sub(create3, create2, create4);
        X448Field.carry(create);
        X448Field.sub(create7, create, create7);
        X448Field.mul(create7, pointExt.f91479z, create7);
        X448Field.mul(create4, pointExt.f91479z, create4);
        X448Field.mul(create5, create7, pointExt.f91477x);
        X448Field.mul(create4, create6, pointExt.f91478y);
        X448Field.mul(create5, create6, pointExt.f91479z);
    }

    private static void pointAddVar(boolean z9, PointExt pointExt, PointExt pointExt2) {
        int[] iArr;
        int[] iArr2;
        int[] iArr3;
        int[] iArr4;
        int[] create = X448Field.create();
        int[] create2 = X448Field.create();
        int[] create3 = X448Field.create();
        int[] create4 = X448Field.create();
        int[] create5 = X448Field.create();
        int[] create6 = X448Field.create();
        int[] create7 = X448Field.create();
        int[] create8 = X448Field.create();
        if (z9) {
            X448Field.sub(pointExt.f91478y, pointExt.f91477x, create8);
            iArr2 = create2;
            iArr = create5;
            iArr4 = create6;
            iArr3 = create7;
        } else {
            X448Field.add(pointExt.f91478y, pointExt.f91477x, create8);
            iArr = create2;
            iArr2 = create5;
            iArr3 = create6;
            iArr4 = create7;
        }
        X448Field.mul(pointExt.f91479z, pointExt2.f91479z, create);
        X448Field.sqr(create, create2);
        X448Field.mul(pointExt.f91477x, pointExt2.f91477x, create3);
        X448Field.mul(pointExt.f91478y, pointExt2.f91478y, create4);
        X448Field.mul(create3, create4, create5);
        X448Field.mul(create5, 39081, create5);
        X448Field.add(create2, create5, iArr3);
        X448Field.sub(create2, create5, iArr4);
        X448Field.add(pointExt2.f91477x, pointExt2.f91478y, create5);
        X448Field.mul(create8, create5, create8);
        X448Field.add(create4, create3, iArr);
        X448Field.sub(create4, create3, iArr2);
        X448Field.carry(iArr);
        X448Field.sub(create8, create2, create8);
        X448Field.mul(create8, create, create8);
        X448Field.mul(create5, create, create5);
        X448Field.mul(create6, create8, pointExt2.f91477x);
        X448Field.mul(create5, create7, pointExt2.f91478y);
        X448Field.mul(create6, create7, pointExt2.f91479z);
    }

    private static PointExt pointCopy(PointExt pointExt) {
        PointExt pointExt2 = new PointExt();
        pointCopy(pointExt, pointExt2);
        return pointExt2;
    }

    private static void pointCopy(PointExt pointExt, PointExt pointExt2) {
        X448Field.copy(pointExt.f91477x, 0, pointExt2.f91477x, 0);
        X448Field.copy(pointExt.f91478y, 0, pointExt2.f91478y, 0);
        X448Field.copy(pointExt.f91479z, 0, pointExt2.f91479z, 0);
    }

    private static void pointDouble(PointExt pointExt) {
        int[] create = X448Field.create();
        int[] create2 = X448Field.create();
        int[] create3 = X448Field.create();
        int[] create4 = X448Field.create();
        int[] create5 = X448Field.create();
        int[] create6 = X448Field.create();
        X448Field.add(pointExt.f91477x, pointExt.f91478y, create);
        X448Field.sqr(create, create);
        X448Field.sqr(pointExt.f91477x, create2);
        X448Field.sqr(pointExt.f91478y, create3);
        X448Field.add(create2, create3, create4);
        X448Field.carry(create4);
        X448Field.sqr(pointExt.f91479z, create5);
        X448Field.add(create5, create5, create5);
        X448Field.carry(create5);
        X448Field.sub(create4, create5, create6);
        X448Field.sub(create, create4, create);
        X448Field.sub(create2, create3, create2);
        X448Field.mul(create, create6, pointExt.f91477x);
        X448Field.mul(create4, create2, pointExt.f91478y);
        X448Field.mul(create4, create6, pointExt.f91479z);
    }

    private static void pointExtendXY(PointExt pointExt) {
        X448Field.one(pointExt.f91479z);
    }

    private static void pointLookup(int i4, int i10, PointPrecomp pointPrecomp) {
        int i11 = i4 * 16 * 2 * 16;
        for (int i12 = 0; i12 < 16; i12++) {
            int i13 = ((i12 ^ i10) - 1) >> 31;
            X448Field.cmov(i13, precompBase, i11, pointPrecomp.f91480x, 0);
            int i14 = i11 + 16;
            X448Field.cmov(i13, precompBase, i14, pointPrecomp.f91481y, 0);
            i11 = i14 + 16;
        }
    }

    private static void pointLookup(int[] iArr, int i4, int[] iArr2, PointExt pointExt) {
        int window4 = getWindow4(iArr, i4);
        int i10 = (window4 >>> 3) ^ 1;
        int i11 = (window4 ^ (-i10)) & 7;
        int i12 = 0;
        for (int i13 = 0; i13 < 8; i13++) {
            int i14 = ((i13 ^ i11) - 1) >> 31;
            X448Field.cmov(i14, iArr2, i12, pointExt.f91477x, 0);
            int i15 = i12 + 16;
            X448Field.cmov(i14, iArr2, i15, pointExt.f91478y, 0);
            int i16 = i15 + 16;
            X448Field.cmov(i14, iArr2, i16, pointExt.f91479z, 0);
            i12 = i16 + 16;
        }
        X448Field.cnegate(i10, pointExt.f91477x);
    }

    private static int[] pointPrecompute(PointExt pointExt, int i4) {
        PointExt pointCopy = pointCopy(pointExt);
        PointExt pointCopy2 = pointCopy(pointCopy);
        pointDouble(pointCopy2);
        int[] createTable = X448Field.createTable(i4 * 3);
        int i10 = 0;
        int i11 = 0;
        while (true) {
            X448Field.copy(pointCopy.f91477x, 0, createTable, i10);
            int i12 = i10 + 16;
            X448Field.copy(pointCopy.f91478y, 0, createTable, i12);
            int i13 = i12 + 16;
            X448Field.copy(pointCopy.f91479z, 0, createTable, i13);
            i10 = i13 + 16;
            i11++;
            if (i11 == i4) {
                return createTable;
            }
            pointAdd(pointCopy2, pointCopy);
        }
    }

    private static PointExt[] pointPrecomputeVar(PointExt pointExt, int i4) {
        PointExt pointCopy = pointCopy(pointExt);
        pointDouble(pointCopy);
        PointExt[] pointExtArr = new PointExt[i4];
        pointExtArr[0] = pointCopy(pointExt);
        for (int i10 = 1; i10 < i4; i10++) {
            pointExtArr[i10] = pointCopy(pointExtArr[i10 - 1]);
            pointAddVar(false, pointCopy, pointExtArr[i10]);
        }
        return pointExtArr;
    }

    private static void pointSetNeutral(PointExt pointExt) {
        X448Field.zero(pointExt.f91477x);
        X448Field.one(pointExt.f91478y);
        X448Field.one(pointExt.f91479z);
    }

    public static void precompute() {
        synchronized (precompLock) {
            if (precompBase != null) {
                return;
            }
            PointExt pointExt = new PointExt();
            X448Field.copy(B_x, 0, pointExt.f91477x, 0);
            X448Field.copy(B_y, 0, pointExt.f91478y, 0);
            pointExtendXY(pointExt);
            precompBaseTable = pointPrecomputeVar(pointExt, 32);
            precompBase = X448Field.createTable(a1.f54532a);
            int i4 = 0;
            for (int i10 = 0; i10 < 5; i10++) {
                PointExt[] pointExtArr = new PointExt[5];
                PointExt pointExt2 = new PointExt();
                pointSetNeutral(pointExt2);
                int i11 = 0;
                while (true) {
                    if (i11 >= 5) {
                        break;
                    }
                    pointAddVar(true, pointExt, pointExt2);
                    pointDouble(pointExt);
                    pointExtArr[i11] = pointCopy(pointExt);
                    if (i10 + i11 != 8) {
                        for (int i12 = 1; i12 < 18; i12++) {
                            pointDouble(pointExt);
                        }
                    }
                    i11++;
                }
                PointExt[] pointExtArr2 = new PointExt[16];
                pointExtArr2[0] = pointExt2;
                int i13 = 1;
                for (int i14 = 0; i14 < 4; i14++) {
                    int i15 = 1 << i14;
                    int i16 = 0;
                    while (i16 < i15) {
                        pointExtArr2[i13] = pointCopy(pointExtArr2[i13 - i15]);
                        pointAddVar(false, pointExtArr[i14], pointExtArr2[i13]);
                        i16++;
                        i13++;
                    }
                }
                int[] createTable = X448Field.createTable(16);
                int[] create = X448Field.create();
                X448Field.copy(pointExtArr2[0].f91479z, 0, create, 0);
                X448Field.copy(create, 0, createTable, 0);
                int i17 = 0;
                while (true) {
                    i17++;
                    if (i17 >= 16) {
                        break;
                    }
                    X448Field.mul(create, pointExtArr2[i17].f91479z, create);
                    X448Field.copy(create, 0, createTable, i17 * 16);
                }
                X448Field.invVar(create, create);
                int i18 = i17 - 1;
                int[] create2 = X448Field.create();
                while (i18 > 0) {
                    int i19 = i18 - 1;
                    X448Field.copy(createTable, i19 * 16, create2, 0);
                    X448Field.mul(create2, create, create2);
                    X448Field.copy(create2, 0, createTable, i18 * 16);
                    X448Field.mul(create, pointExtArr2[i18].f91479z, create);
                    i18 = i19;
                }
                X448Field.copy(create, 0, createTable, 0);
                for (int i20 = 0; i20 < 16; i20++) {
                    PointExt pointExt3 = pointExtArr2[i20];
                    X448Field.copy(createTable, i20 * 16, pointExt3.f91479z, 0);
                    int[] iArr = pointExt3.f91477x;
                    X448Field.mul(iArr, pointExt3.f91479z, iArr);
                    int[] iArr2 = pointExt3.f91478y;
                    X448Field.mul(iArr2, pointExt3.f91479z, iArr2);
                    X448Field.copy(pointExt3.f91477x, 0, precompBase, i4);
                    int i21 = i4 + 16;
                    X448Field.copy(pointExt3.f91478y, 0, precompBase, i21);
                    i4 = i21 + 16;
                }
            }
        }
    }

    private static void pruneScalar(byte[] bArr, int i4, byte[] bArr2) {
        System.arraycopy(bArr, i4, bArr2, 0, 56);
        bArr2[0] = (byte) (bArr2[0] & 252);
        bArr2[55] = (byte) (bArr2[55] | 128);
        bArr2[56] = 0;
    }

    private static byte[] reduceScalar(byte[] bArr) {
        long decode32 = decode32(bArr, 0) & M32L;
        long decode24 = (decode24(bArr, 4) << 4) & M32L;
        long decode322 = decode32(bArr, 7) & M32L;
        long decode242 = (decode24(bArr, 11) << 4) & M32L;
        long decode323 = decode32(bArr, 14) & M32L;
        long decode243 = (decode24(bArr, 18) << 4) & M32L;
        long decode324 = decode32(bArr, 21) & M32L;
        long decode244 = (decode24(bArr, 25) << 4) & M32L;
        long decode325 = decode32(bArr, 28) & M32L;
        long decode245 = (decode24(bArr, 32) << 4) & M32L;
        long decode326 = decode32(bArr, 35) & M32L;
        long decode246 = (decode24(bArr, 39) << 4) & M32L;
        long decode327 = decode32(bArr, 42) & M32L;
        long decode247 = (decode24(bArr, 46) << 4) & M32L;
        long decode328 = decode32(bArr, 49) & M32L;
        long decode248 = (decode24(bArr, 53) << 4) & M32L;
        long decode329 = decode32(bArr, 56) & M32L;
        long decode249 = (decode24(bArr, 60) << 4) & M32L;
        long decode3210 = decode32(bArr, 63) & M32L;
        long decode2410 = (decode24(bArr, 67) << 4) & M32L;
        long decode3211 = decode32(bArr, 70) & M32L;
        long decode2411 = (decode24(bArr, 74) << 4) & M32L;
        long decode3212 = decode32(bArr, 77) & M32L;
        long decode2412 = (decode24(bArr, 81) << 4) & M32L;
        long decode3213 = decode32(bArr, 84) & M32L;
        long decode2413 = (decode24(bArr, 88) << 4) & M32L;
        long decode3214 = decode32(bArr, 91) & M32L;
        long decode2414 = (decode24(bArr, 95) << 4) & M32L;
        long decode3215 = decode32(bArr, 98) & M32L;
        long decode2415 = (decode24(bArr, 102) << 4) & M32L;
        long decode3216 = decode32(bArr, 105) & M32L;
        long decode2416 = (decode24(bArr, 109) << 4) & M32L;
        long decode16 = decode16(bArr, 112) & M32L;
        long j4 = decode2416 + (decode3216 >>> 28);
        long j10 = decode3216 & M28L;
        long j11 = decode3212 + (decode16 * 149865618) + (j4 * 550336261);
        long j12 = decode328 + (j10 * 43969588);
        long j13 = decode2415 + (decode3215 >>> 28);
        long j14 = decode3215 & M28L;
        long j15 = decode3211 + (decode16 * 96434764) + (j4 * 227822194) + (j10 * 149865618) + (j13 * 550336261);
        long j16 = decode327 + (j14 * 43969588);
        long j17 = decode2414 + (decode3214 >>> 28);
        long j18 = decode3214 & M28L;
        long j19 = decode3210 + (decode16 * 163752818) + (j4 * 258169998) + (j10 * 96434764) + (j13 * 227822194) + (j14 * 149865618) + (j17 * 550336261);
        long j20 = decode326 + (j18 * 43969588);
        long j21 = decode249 + (decode16 * 30366549) + (j4 * 163752818) + (j10 * 258169998) + (j13 * 96434764) + (j14 * 227822194) + (j17 * 149865618) + (j18 * 550336261);
        long j22 = decode2413 + (decode3213 >>> 28);
        long j23 = decode3213 & M28L;
        long j24 = decode2411 + (decode16 * 227822194) + (j4 * 149865618) + (j10 * 550336261) + (j15 >>> 28);
        long j25 = j15 & M28L;
        long j26 = j11 + (j24 >>> 28);
        long j27 = j24 & M28L;
        long j28 = decode2412 + (decode16 * 550336261) + (j26 >>> 28);
        long j29 = j26 & M28L;
        long j30 = j23 + (j28 >>> 28);
        long j31 = j28 & M28L;
        long j32 = decode244 + (j31 * 43969588);
        long j33 = decode325 + (j30 * 43969588) + (j31 * 30366549);
        long j34 = decode245 + (j22 * 43969588) + (j30 * 30366549) + (j31 * 163752818);
        long j35 = j20 + (j22 * 30366549) + (j30 * 163752818) + (j31 * 258169998);
        long j36 = decode246 + (j17 * 43969588) + (j18 * 30366549) + (j22 * 163752818) + (j30 * 258169998) + (j31 * 96434764);
        long j37 = j16 + (j17 * 30366549) + (j18 * 163752818) + (j22 * 258169998) + (j30 * 96434764) + (j31 * 227822194);
        long j38 = j12 + (j13 * 30366549) + (j14 * 163752818) + (j17 * 258169998) + (j18 * 96434764) + (j22 * 227822194) + (j30 * 149865618) + (j31 * 550336261);
        long j39 = decode324 + (j29 * 43969588);
        long j40 = j19 + (j21 >>> 28);
        long j41 = j21 & M28L;
        long j42 = decode2410 + (decode16 * 258169998) + (j4 * 96434764) + (j10 * 227822194) + (j13 * 149865618) + (j14 * 550336261) + (j40 >>> 28);
        long j43 = j40 & M28L;
        long j44 = j25 + (j42 >>> 28);
        long j45 = j42 & M28L;
        long j46 = j27 + (j44 >>> 28);
        long j47 = j44 & M28L;
        long j48 = j36 + (j29 * 227822194) + (j46 * 149865618) + (j47 * 550336261);
        long j49 = decode323 + (j47 * 43969588) + (j45 * 30366549);
        long j50 = decode243 + (j46 * 43969588) + (j47 * 30366549) + (j45 * 163752818);
        long j51 = j39 + (j46 * 30366549) + (j47 * 163752818) + (j45 * 258169998);
        long j52 = j32 + (j29 * 30366549) + (j46 * 163752818) + (j47 * 258169998) + (j45 * 96434764);
        long j53 = j33 + (j29 * 163752818) + (j46 * 258169998) + (j47 * 96434764) + (j45 * 227822194);
        long j54 = j34 + (j29 * 258169998) + (j46 * 96434764) + (j47 * 227822194) + (j45 * 149865618);
        long j55 = j35 + (j29 * 96434764) + (j46 * 227822194) + (j47 * 149865618) + (j45 * 550336261);
        long j56 = decode248 + (j4 * 43969588) + (j10 * 30366549) + (j13 * 163752818) + (j14 * 258169998) + (j17 * 96434764) + (j18 * 227822194) + (j22 * 149865618) + (j30 * 550336261) + (j38 >>> 28);
        long j57 = j38 & M28L;
        long j58 = decode329 + (decode16 * 43969588) + (j4 * 30366549) + (j10 * 163752818) + (j13 * 258169998) + (j14 * 96434764) + (j17 * 227822194) + (j18 * 149865618) + (j22 * 550336261) + (j56 >>> 28);
        long j59 = j56 & M28L;
        long j60 = j41 + (j58 >>> 28);
        long j61 = j58 & M28L;
        long j62 = j43 + (j60 >>> 28);
        long j63 = j60 & M28L;
        long j64 = decode322 + (j62 * 43969588);
        long j65 = decode242 + (j45 * 43969588) + (j62 * 30366549);
        long j66 = j49 + (j62 * 163752818);
        long j67 = j50 + (j62 * 258169998);
        long j68 = j51 + (j62 * 96434764);
        long j69 = j52 + (j62 * 227822194);
        long j70 = j54 + (j62 * 550336261);
        long j71 = j59 & M26L;
        long j72 = (j61 * 4) + (j59 >>> 26) + 1;
        long j73 = decode32 + (78101261 * j72);
        long j74 = j64 + (30366549 * j63) + (175155932 * j72);
        long j75 = j65 + (163752818 * j63) + (64542499 * j72);
        long j76 = j66 + (258169998 * j63) + (158326419 * j72);
        long j77 = j67 + (96434764 * j63) + (191173276 * j72);
        long j78 = j69 + (149865618 * j63) + (j72 * 137584065);
        long j79 = decode24 + (43969588 * j63) + (141809365 * j72) + (j73 >>> 28);
        long j80 = j73 & M28L;
        long j81 = j74 + (j79 >>> 28);
        long j82 = j79 & M28L;
        long j83 = j75 + (j81 >>> 28);
        long j84 = j81 & M28L;
        long j85 = j76 + (j83 >>> 28);
        long j86 = j83 & M28L;
        long j87 = j77 + (j85 >>> 28);
        long j88 = j85 & M28L;
        long j89 = j68 + (227822194 * j63) + (104575268 * j72) + (j87 >>> 28);
        long j90 = j87 & M28L;
        long j91 = j78 + (j89 >>> 28);
        long j92 = j89 & M28L;
        long j93 = j53 + (j62 * 149865618) + (j63 * 550336261) + (j91 >>> 28);
        long j94 = j91 & M28L;
        long j95 = j70 + (j93 >>> 28);
        long j96 = j93 & M28L;
        long j97 = j55 + (j95 >>> 28);
        long j98 = j95 & M28L;
        long j99 = j48 + (j97 >>> 28);
        long j100 = j97 & M28L;
        long j101 = j37 + (j29 * 149865618) + (j46 * 550336261) + (j99 >>> 28);
        long j102 = j99 & M28L;
        long j103 = decode247 + (j13 * 43969588) + (j14 * 30366549) + (j17 * 163752818) + (j18 * 258169998) + (j22 * 96434764) + (j30 * 227822194) + (j31 * 149865618) + (j29 * 550336261) + (j101 >>> 28);
        long j104 = j101 & M28L;
        long j105 = j57 + (j103 >>> 28);
        long j106 = j103 & M28L;
        long j107 = j71 + (j105 >>> 28);
        long j108 = j105 & M28L;
        long j109 = j107 & M26L;
        long j110 = (j107 >>> 26) - 1;
        long j111 = j80 - (j110 & 78101261);
        long j112 = (j82 - (j110 & 141809365)) + (j111 >> 28);
        long j113 = j111 & M28L;
        long j114 = (j84 - (j110 & 175155932)) + (j112 >> 28);
        long j115 = j112 & M28L;
        long j116 = (j86 - (j110 & 64542499)) + (j114 >> 28);
        long j117 = j114 & M28L;
        long j118 = (j88 - (j110 & 158326419)) + (j116 >> 28);
        long j119 = j116 & M28L;
        long j120 = (j90 - (j110 & 191173276)) + (j118 >> 28);
        long j121 = j118 & M28L;
        long j122 = (j92 - (j110 & 104575268)) + (j120 >> 28);
        long j123 = j120 & M28L;
        long j124 = (j94 - (j110 & 137584065)) + (j122 >> 28);
        long j125 = j122 & M28L;
        long j126 = j96 + (j124 >> 28);
        long j127 = j124 & M28L;
        long j128 = j98 + (j126 >> 28);
        long j129 = j126 & M28L;
        long j130 = j100 + (j128 >> 28);
        long j131 = j128 & M28L;
        long j132 = j102 + (j130 >> 28);
        long j133 = j130 & M28L;
        long j134 = j104 + (j132 >> 28);
        long j135 = j132 & M28L;
        long j136 = j106 + (j134 >> 28);
        long j137 = j134 & M28L;
        long j138 = j108 + (j136 >> 28);
        long j139 = j136 & M28L;
        long j140 = j138 & M28L;
        byte[] bArr2 = new byte[57];
        encode56((j115 << 28) | j113, bArr2, 0);
        encode56((j119 << 28) | j117, bArr2, 7);
        encode56(j121 | (j123 << 28), bArr2, 14);
        encode56(j125 | (j127 << 28), bArr2, 21);
        encode56(j129 | (j131 << 28), bArr2, 28);
        encode56(j133 | (j135 << 28), bArr2, 35);
        encode56(j137 | (j139 << 28), bArr2, 42);
        encode56(((j109 + (j138 >> 28)) << 28) | j140, bArr2, 49);
        return bArr2;
    }

    private static void scalarMult(byte[] bArr, PointExt pointExt, PointExt pointExt2) {
        int[] iArr = new int[14];
        decodeScalar(bArr, 0, iArr);
        Nat.shiftDownBits(14, iArr, 2, 0);
        Nat.cadd(14, (~iArr[0]) & 1, iArr, L, iArr);
        Nat.shiftDownBit(14, iArr, 1);
        int[] pointPrecompute = pointPrecompute(pointExt, 8);
        PointExt pointExt3 = new PointExt();
        pointLookup(iArr, 111, pointPrecompute, pointExt2);
        for (int i4 = 110; i4 >= 0; i4--) {
            for (int i10 = 0; i10 < 4; i10++) {
                pointDouble(pointExt2);
            }
            pointLookup(iArr, i4, pointPrecompute, pointExt3);
            pointAdd(pointExt3, pointExt2);
        }
        for (int i11 = 0; i11 < 2; i11++) {
            pointDouble(pointExt2);
        }
    }

    private static void scalarMultBase(byte[] bArr, PointExt pointExt) {
        precompute();
        int[] iArr = new int[15];
        decodeScalar(bArr, 0, iArr);
        iArr[14] = Nat.cadd(14, (~iArr[0]) & 1, iArr, L, iArr) + 4;
        Nat.shiftDownBit(15, iArr, 0);
        PointPrecomp pointPrecomp = new PointPrecomp();
        pointSetNeutral(pointExt);
        int i4 = 17;
        while (true) {
            int i10 = i4;
            for (int i11 = 0; i11 < 5; i11++) {
                int i12 = 0;
                for (int i13 = 0; i13 < 5; i13++) {
                    i12 = (i12 & (~(1 << i13))) ^ ((iArr[i10 >>> 5] >>> (i10 & 31)) << i13);
                    i10 += 18;
                }
                int i14 = (i12 >>> 4) & 1;
                pointLookup(i11, ((-i14) ^ i12) & 15, pointPrecomp);
                X448Field.cnegate(i14, pointPrecomp.f91480x);
                pointAddPrecomp(pointPrecomp, pointExt);
            }
            i4--;
            if (i4 < 0) {
                return;
            }
            pointDouble(pointExt);
        }
    }

    private static void scalarMultBaseEncoded(byte[] bArr, byte[] bArr2, int i4) {
        PointExt pointExt = new PointExt();
        scalarMultBase(bArr, pointExt);
        if (encodePoint(pointExt, bArr2, i4) == 0) {
            throw new IllegalStateException();
        }
    }

    public static void scalarMultBaseXY(X448.Friend friend, byte[] bArr, int i4, int[] iArr, int[] iArr2) {
        Objects.requireNonNull(friend, "This method is only for use by X448");
        byte[] bArr2 = new byte[57];
        pruneScalar(bArr, i4, bArr2);
        PointExt pointExt = new PointExt();
        scalarMultBase(bArr2, pointExt);
        if (checkPoint(pointExt.f91477x, pointExt.f91478y, pointExt.f91479z) == 0) {
            throw new IllegalStateException();
        }
        X448Field.copy(pointExt.f91477x, 0, iArr, 0);
        X448Field.copy(pointExt.f91478y, 0, iArr2, 0);
    }

    private static void scalarMultOrderVar(PointExt pointExt, PointExt pointExt2) {
        byte[] wnafVar = getWnafVar(L, 5);
        PointExt[] pointPrecomputeVar = pointPrecomputeVar(pointExt, 8);
        pointSetNeutral(pointExt2);
        int i4 = 446;
        while (true) {
            byte b10 = wnafVar[i4];
            if (b10 != 0) {
                int i10 = b10 >> c.I;
                pointAddVar(i10 != 0, pointPrecomputeVar[(b10 ^ i10) >>> 1], pointExt2);
            }
            i4--;
            if (i4 < 0) {
                return;
            }
            pointDouble(pointExt2);
        }
    }

    private static void scalarMultStrausVar(int[] iArr, int[] iArr2, PointExt pointExt, PointExt pointExt2) {
        precompute();
        byte[] wnafVar = getWnafVar(iArr, 7);
        byte[] wnafVar2 = getWnafVar(iArr2, 5);
        PointExt[] pointPrecomputeVar = pointPrecomputeVar(pointExt, 8);
        pointSetNeutral(pointExt2);
        int i4 = 446;
        while (true) {
            byte b10 = wnafVar[i4];
            if (b10 != 0) {
                int i10 = b10 >> c.I;
                pointAddVar(i10 != 0, precompBaseTable[(b10 ^ i10) >>> 1], pointExt2);
            }
            byte b11 = wnafVar2[i4];
            if (b11 != 0) {
                int i11 = b11 >> c.I;
                pointAddVar(i11 != 0, pointPrecomputeVar[(b11 ^ i11) >>> 1], pointExt2);
            }
            i4--;
            if (i4 < 0) {
                return;
            }
            pointDouble(pointExt2);
        }
    }

    public static void sign(byte[] bArr, int i4, byte[] bArr2, int i10, byte[] bArr3, byte[] bArr4, int i11, int i12, byte[] bArr5, int i13) {
        implSign(bArr, i4, bArr2, i10, bArr3, (byte) 0, bArr4, i11, i12, bArr5, i13);
    }

    public static void sign(byte[] bArr, int i4, byte[] bArr2, byte[] bArr3, int i10, int i11, byte[] bArr4, int i12) {
        implSign(bArr, i4, bArr2, (byte) 0, bArr3, i10, i11, bArr4, i12);
    }

    public static void signPrehash(byte[] bArr, int i4, byte[] bArr2, int i10, byte[] bArr3, Xof xof, byte[] bArr4, int i11) {
        byte[] bArr5 = new byte[64];
        if (64 != xof.doFinal(bArr5, 0, 64)) {
            throw new IllegalArgumentException("ph");
        }
        implSign(bArr, i4, bArr2, i10, bArr3, (byte) 1, bArr5, 0, 64, bArr4, i11);
    }

    public static void signPrehash(byte[] bArr, int i4, byte[] bArr2, int i10, byte[] bArr3, byte[] bArr4, int i11, byte[] bArr5, int i12) {
        implSign(bArr, i4, bArr2, i10, bArr3, (byte) 1, bArr4, i11, 64, bArr5, i12);
    }

    public static void signPrehash(byte[] bArr, int i4, byte[] bArr2, Xof xof, byte[] bArr3, int i10) {
        byte[] bArr4 = new byte[64];
        if (64 != xof.doFinal(bArr4, 0, 64)) {
            throw new IllegalArgumentException("ph");
        }
        implSign(bArr, i4, bArr2, (byte) 1, bArr4, 0, 64, bArr3, i10);
    }

    public static void signPrehash(byte[] bArr, int i4, byte[] bArr2, byte[] bArr3, int i10, byte[] bArr4, int i11) {
        implSign(bArr, i4, bArr2, (byte) 1, bArr3, i10, 64, bArr4, i11);
    }

    public static boolean validatePublicKeyFull(byte[] bArr, int i4) {
        PointExt pointExt = new PointExt();
        if (decodePointVar(bArr, i4, false, pointExt)) {
            X448Field.normalize(pointExt.f91477x);
            X448Field.normalize(pointExt.f91478y);
            X448Field.normalize(pointExt.f91479z);
            if (isNeutralElementVar(pointExt.f91477x, pointExt.f91478y, pointExt.f91479z)) {
                return false;
            }
            PointExt pointExt2 = new PointExt();
            scalarMultOrderVar(pointExt, pointExt2);
            X448Field.normalize(pointExt2.f91477x);
            X448Field.normalize(pointExt2.f91478y);
            X448Field.normalize(pointExt2.f91479z);
            return isNeutralElementVar(pointExt2.f91477x, pointExt2.f91478y, pointExt2.f91479z);
        }
        return false;
    }

    public static boolean validatePublicKeyPartial(byte[] bArr, int i4) {
        return decodePointVar(bArr, i4, false, new PointExt());
    }

    public static boolean verify(byte[] bArr, int i4, byte[] bArr2, int i10, byte[] bArr3, byte[] bArr4, int i11, int i12) {
        return implVerify(bArr, i4, bArr2, i10, bArr3, (byte) 0, bArr4, i11, i12);
    }

    public static boolean verifyPrehash(byte[] bArr, int i4, byte[] bArr2, int i10, byte[] bArr3, Xof xof) {
        byte[] bArr4 = new byte[64];
        if (64 == xof.doFinal(bArr4, 0, 64)) {
            return implVerify(bArr, i4, bArr2, i10, bArr3, (byte) 1, bArr4, 0, 64);
        }
        throw new IllegalArgumentException("ph");
    }

    public static boolean verifyPrehash(byte[] bArr, int i4, byte[] bArr2, int i10, byte[] bArr3, byte[] bArr4, int i11) {
        return implVerify(bArr, i4, bArr2, i10, bArr3, (byte) 1, bArr4, i11, 64);
    }
}
