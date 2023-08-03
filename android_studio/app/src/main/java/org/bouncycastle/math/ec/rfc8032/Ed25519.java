package org.bouncycastle.math.ec.rfc8032;

import com.google.common.base.c;
import com.google.common.primitives.k;
import java.security.SecureRandom;
import java.util.Objects;
import org.bouncycastle.crypto.Digest;
import org.bouncycastle.crypto.digests.SHA512Digest;
import org.bouncycastle.math.ec.rfc7748.X25519;
import org.bouncycastle.math.ec.rfc7748.X25519Field;
import org.bouncycastle.math.raw.Interleave;
import org.bouncycastle.math.raw.Nat;
import org.bouncycastle.math.raw.Nat256;
import org.bouncycastle.util.Arrays;

/* loaded from: classes5.dex */
public abstract class Ed25519 {
    private static final int COORD_INTS = 8;
    private static final int L0 = -50998291;
    private static final int L1 = 19280294;
    private static final int L2 = 127719000;
    private static final int L3 = -6428113;
    private static final int L4 = 5343;
    private static final long M08L = 255;
    private static final long M28L = 268435455;
    private static final long M32L = 4294967295L;
    private static final int POINT_BYTES = 32;
    private static final int PRECOMP_BLOCKS = 8;
    private static final int PRECOMP_MASK = 7;
    private static final int PRECOMP_POINTS = 8;
    private static final int PRECOMP_SPACING = 8;
    private static final int PRECOMP_TEETH = 4;
    public static final int PREHASH_SIZE = 64;
    public static final int PUBLIC_KEY_SIZE = 32;
    private static final int SCALAR_BYTES = 32;
    private static final int SCALAR_INTS = 8;
    public static final int SECRET_KEY_SIZE = 32;
    public static final int SIGNATURE_SIZE = 64;
    private static final int WNAF_WIDTH_BASE = 7;
    private static final byte[] DOM2_PREFIX = {83, 105, 103, 69, 100, 50, 53, 53, 49, 57, 32, 110, 111, 32, 69, 100, 50, 53, 53, 49, 57, 32, 99, 111, 108, 108, 105, 115, 105, 111, 110, 115};
    private static final int[] P = {-19, -1, -1, -1, -1, -1, -1, Integer.MAX_VALUE};
    private static final int[] L = {1559614445, 1477600026, -1560830762, 350157278, 0, 0, 0, 268435456};
    private static final int[] B_x = {52811034, 25909283, 8072341, 50637101, 13785486, 30858332, 20483199, 20966410, 43936626, 4379245};
    private static final int[] B_y = {40265304, 26843545, 6710886, 53687091, 13421772, 40265318, 26843545, 6710886, 53687091, 13421772};
    private static final int[] C_d = {56195235, 47411844, 25868126, 40503822, 57364, 58321048, 30416477, 31930572, 57760639, 10749657};
    private static final int[] C_d2 = {45281625, 27714825, 18181821, 13898781, 114729, 49533232, 60832955, 30306712, 48412415, 4722099};
    private static final int[] C_d4 = {23454386, 55429651, 2809210, 27797563, 229458, 31957600, 54557047, 27058993, 29715967, 9444199};
    private static final Object precompLock = new Object();
    private static PointExt[] precompBaseTable = null;
    private static int[] precompBase = null;

    /* loaded from: classes5.dex */
    public static final class Algorithm {
        public static final int Ed25519 = 0;
        public static final int Ed25519ctx = 1;
        public static final int Ed25519ph = 2;
    }

    /* loaded from: classes5.dex */
    private static class F extends X25519Field {
        private F() {
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes5.dex */
    public static class PointAccum {

        /* renamed from: u  reason: collision with root package name */
        int[] f91466u;

        /* renamed from: v  reason: collision with root package name */
        int[] f91467v;

        /* renamed from: x  reason: collision with root package name */
        int[] f91468x;

        /* renamed from: y  reason: collision with root package name */
        int[] f91469y;

        /* renamed from: z  reason: collision with root package name */
        int[] f91470z;

        private PointAccum() {
            this.f91468x = X25519Field.create();
            this.f91469y = X25519Field.create();
            this.f91470z = X25519Field.create();
            this.f91466u = X25519Field.create();
            this.f91467v = X25519Field.create();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes5.dex */
    public static class PointAffine {

        /* renamed from: x  reason: collision with root package name */
        int[] f91471x;

        /* renamed from: y  reason: collision with root package name */
        int[] f91472y;

        private PointAffine() {
            this.f91471x = X25519Field.create();
            this.f91472y = X25519Field.create();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes5.dex */
    public static class PointExt {

        /* renamed from: t  reason: collision with root package name */
        int[] f91473t;

        /* renamed from: x  reason: collision with root package name */
        int[] f91474x;

        /* renamed from: y  reason: collision with root package name */
        int[] f91475y;

        /* renamed from: z  reason: collision with root package name */
        int[] f91476z;

        private PointExt() {
            this.f91474x = X25519Field.create();
            this.f91475y = X25519Field.create();
            this.f91476z = X25519Field.create();
            this.f91473t = X25519Field.create();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes5.dex */
    public static class PointPrecomp {
        int[] xyd;
        int[] ymx_h;
        int[] ypx_h;

        private PointPrecomp() {
            this.ypx_h = X25519Field.create();
            this.ymx_h = X25519Field.create();
            this.xyd = X25519Field.create();
        }
    }

    private static byte[] calculateS(byte[] bArr, byte[] bArr2, byte[] bArr3) {
        int[] iArr = new int[16];
        decodeScalar(bArr, 0, iArr);
        int[] iArr2 = new int[8];
        decodeScalar(bArr2, 0, iArr2);
        int[] iArr3 = new int[8];
        decodeScalar(bArr3, 0, iArr3);
        Nat256.mulAddTo(iArr2, iArr3, iArr);
        byte[] bArr4 = new byte[64];
        for (int i4 = 0; i4 < 16; i4++) {
            encode32(iArr[i4], bArr4, i4 * 4);
        }
        return reduceScalar(bArr4);
    }

    private static boolean checkContextVar(byte[] bArr, byte b10) {
        return (bArr == null && b10 == 0) || (bArr != null && bArr.length < 256);
    }

    private static int checkPoint(int[] iArr, int[] iArr2) {
        int[] create = X25519Field.create();
        int[] create2 = X25519Field.create();
        int[] create3 = X25519Field.create();
        X25519Field.sqr(iArr, create2);
        X25519Field.sqr(iArr2, create3);
        X25519Field.mul(create2, create3, create);
        X25519Field.sub(create3, create2, create3);
        X25519Field.mul(create, C_d, create);
        X25519Field.addOne(create);
        X25519Field.sub(create, create3, create);
        X25519Field.normalize(create);
        return X25519Field.isZero(create);
    }

    private static int checkPoint(int[] iArr, int[] iArr2, int[] iArr3) {
        int[] create = X25519Field.create();
        int[] create2 = X25519Field.create();
        int[] create3 = X25519Field.create();
        int[] create4 = X25519Field.create();
        X25519Field.sqr(iArr, create2);
        X25519Field.sqr(iArr2, create3);
        X25519Field.sqr(iArr3, create4);
        X25519Field.mul(create2, create3, create);
        X25519Field.sub(create3, create2, create3);
        X25519Field.mul(create3, create4, create3);
        X25519Field.sqr(create4, create4);
        X25519Field.mul(create, C_d, create);
        X25519Field.add(create, create4, create);
        X25519Field.sub(create, create3, create);
        X25519Field.normalize(create);
        return X25519Field.isZero(create);
    }

    private static boolean checkPointVar(byte[] bArr) {
        int[] iArr = new int[8];
        decode32(bArr, 0, iArr, 0, 8);
        iArr[7] = iArr[7] & Integer.MAX_VALUE;
        return !Nat256.gte(iArr, P);
    }

    private static boolean checkScalarVar(byte[] bArr, int[] iArr) {
        decodeScalar(bArr, 0, iArr);
        return !Nat256.gte(iArr, L);
    }

    private static byte[] copy(byte[] bArr, int i4, int i10) {
        byte[] bArr2 = new byte[i10];
        System.arraycopy(bArr, i4, bArr2, 0, i10);
        return bArr2;
    }

    private static Digest createDigest() {
        return new SHA512Digest();
    }

    public static Digest createPrehash() {
        return createDigest();
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

    private static boolean decodePointVar(byte[] bArr, int i4, boolean z9, PointAffine pointAffine) {
        byte[] copy = copy(bArr, i4, 32);
        if (checkPointVar(copy)) {
            int i10 = (copy[31] & 128) >>> 7;
            copy[31] = (byte) (copy[31] & Byte.MAX_VALUE);
            X25519Field.decode(copy, 0, pointAffine.f91472y);
            int[] create = X25519Field.create();
            int[] create2 = X25519Field.create();
            X25519Field.sqr(pointAffine.f91472y, create);
            X25519Field.mul(C_d, create, create2);
            X25519Field.subOne(create);
            X25519Field.addOne(create2);
            if (X25519Field.sqrtRatioVar(create, create2, pointAffine.f91471x)) {
                X25519Field.normalize(pointAffine.f91471x);
                if (i10 == 1 && X25519Field.isZeroVar(pointAffine.f91471x)) {
                    return false;
                }
                int[] iArr = pointAffine.f91471x;
                if (z9 ^ (i10 != (iArr[0] & 1))) {
                    X25519Field.negate(iArr, iArr);
                }
                return true;
            }
            return false;
        }
        return false;
    }

    private static void decodeScalar(byte[] bArr, int i4, int[] iArr) {
        decode32(bArr, i4, iArr, 0, 8);
    }

    private static void dom2(Digest digest, byte b10, byte[] bArr) {
        if (bArr != null) {
            byte[] bArr2 = DOM2_PREFIX;
            int length = bArr2.length;
            int i4 = length + 2;
            int length2 = bArr.length + i4;
            byte[] bArr3 = new byte[length2];
            System.arraycopy(bArr2, 0, bArr3, 0, length);
            bArr3[length] = b10;
            bArr3[length + 1] = (byte) bArr.length;
            System.arraycopy(bArr, 0, bArr3, i4, bArr.length);
            digest.update(bArr3, 0, length2);
        }
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

    private static int encodePoint(PointAccum pointAccum, byte[] bArr, int i4) {
        int[] create = X25519Field.create();
        int[] create2 = X25519Field.create();
        X25519Field.inv(pointAccum.f91470z, create2);
        X25519Field.mul(pointAccum.f91468x, create2, create);
        X25519Field.mul(pointAccum.f91469y, create2, create2);
        X25519Field.normalize(create);
        X25519Field.normalize(create2);
        int checkPoint = checkPoint(create, create2);
        X25519Field.encode(create2, bArr, i4);
        int i10 = (i4 + 32) - 1;
        bArr[i10] = (byte) (((create[0] & 1) << 7) | bArr[i10]);
        return checkPoint;
    }

    public static void generatePrivateKey(SecureRandom secureRandom, byte[] bArr) {
        secureRandom.nextBytes(bArr);
    }

    public static void generatePublicKey(byte[] bArr, int i4, byte[] bArr2, int i10) {
        Digest createDigest = createDigest();
        byte[] bArr3 = new byte[createDigest.getDigestSize()];
        createDigest.update(bArr, i4, 32);
        createDigest.doFinal(bArr3, 0);
        byte[] bArr4 = new byte[32];
        pruneScalar(bArr3, 0, bArr4);
        scalarMultBaseEncoded(bArr4, bArr2, i10);
    }

    private static int getWindow4(int[] iArr, int i4) {
        return (iArr[i4 >>> 3] >>> ((i4 & 7) << 2)) & 15;
    }

    private static byte[] getWnafVar(int[] iArr, int i4) {
        int[] iArr2 = new int[16];
        int i10 = 0;
        int i11 = 8;
        int i12 = 16;
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
        byte[] bArr = new byte[253];
        int i16 = 32 - i4;
        int i17 = 0;
        int i18 = 0;
        while (i10 < 16) {
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

    private static void implSign(Digest digest, byte[] bArr, byte[] bArr2, byte[] bArr3, int i4, byte[] bArr4, byte b10, byte[] bArr5, int i10, int i11, byte[] bArr6, int i12) {
        dom2(digest, b10, bArr4);
        digest.update(bArr, 32, 32);
        digest.update(bArr5, i10, i11);
        digest.doFinal(bArr, 0);
        byte[] reduceScalar = reduceScalar(bArr);
        byte[] bArr7 = new byte[32];
        scalarMultBaseEncoded(reduceScalar, bArr7, 0);
        dom2(digest, b10, bArr4);
        digest.update(bArr7, 0, 32);
        digest.update(bArr3, i4, 32);
        digest.update(bArr5, i10, i11);
        digest.doFinal(bArr, 0);
        byte[] calculateS = calculateS(reduceScalar, reduceScalar(bArr), bArr2);
        System.arraycopy(bArr7, 0, bArr6, i12, 32);
        System.arraycopy(calculateS, 0, bArr6, i12 + 32, 32);
    }

    private static void implSign(byte[] bArr, int i4, byte[] bArr2, byte b10, byte[] bArr3, int i10, int i11, byte[] bArr4, int i12) {
        if (!checkContextVar(bArr2, b10)) {
            throw new IllegalArgumentException("ctx");
        }
        Digest createDigest = createDigest();
        byte[] bArr5 = new byte[createDigest.getDigestSize()];
        createDigest.update(bArr, i4, 32);
        createDigest.doFinal(bArr5, 0);
        byte[] bArr6 = new byte[32];
        pruneScalar(bArr5, 0, bArr6);
        byte[] bArr7 = new byte[32];
        scalarMultBaseEncoded(bArr6, bArr7, 0);
        implSign(createDigest, bArr5, bArr6, bArr7, 0, bArr2, b10, bArr3, i10, i11, bArr4, i12);
    }

    private static void implSign(byte[] bArr, int i4, byte[] bArr2, int i10, byte[] bArr3, byte b10, byte[] bArr4, int i11, int i12, byte[] bArr5, int i13) {
        if (!checkContextVar(bArr3, b10)) {
            throw new IllegalArgumentException("ctx");
        }
        Digest createDigest = createDigest();
        byte[] bArr6 = new byte[createDigest.getDigestSize()];
        createDigest.update(bArr, i4, 32);
        createDigest.doFinal(bArr6, 0);
        byte[] bArr7 = new byte[32];
        pruneScalar(bArr6, 0, bArr7);
        implSign(createDigest, bArr6, bArr7, bArr2, i10, bArr3, b10, bArr4, i11, i12, bArr5, i13);
    }

    private static boolean implVerify(byte[] bArr, int i4, byte[] bArr2, int i10, byte[] bArr3, byte b10, byte[] bArr4, int i11, int i12) {
        if (checkContextVar(bArr3, b10)) {
            byte[] copy = copy(bArr, i4, 32);
            byte[] copy2 = copy(bArr, i4 + 32, 32);
            if (checkPointVar(copy)) {
                int[] iArr = new int[8];
                if (checkScalarVar(copy2, iArr)) {
                    PointAffine pointAffine = new PointAffine();
                    if (decodePointVar(bArr2, i10, true, pointAffine)) {
                        Digest createDigest = createDigest();
                        byte[] bArr5 = new byte[createDigest.getDigestSize()];
                        dom2(createDigest, b10, bArr3);
                        createDigest.update(copy, 0, 32);
                        createDigest.update(bArr2, i10, 32);
                        createDigest.update(bArr4, i11, i12);
                        createDigest.doFinal(bArr5, 0);
                        int[] iArr2 = new int[8];
                        decodeScalar(reduceScalar(bArr5), 0, iArr2);
                        PointAccum pointAccum = new PointAccum();
                        scalarMultStrausVar(iArr, iArr2, pointAffine, pointAccum);
                        byte[] bArr6 = new byte[32];
                        return encodePoint(pointAccum, bArr6, 0) != 0 && Arrays.areEqual(bArr6, copy);
                    }
                    return false;
                }
                return false;
            }
            return false;
        }
        throw new IllegalArgumentException("ctx");
    }

    private static boolean isNeutralElementVar(int[] iArr, int[] iArr2) {
        return X25519Field.isZeroVar(iArr) && X25519Field.isOneVar(iArr2);
    }

    private static boolean isNeutralElementVar(int[] iArr, int[] iArr2, int[] iArr3) {
        return X25519Field.isZeroVar(iArr) && X25519Field.areEqualVar(iArr2, iArr3);
    }

    private static void pointAdd(PointExt pointExt, PointAccum pointAccum) {
        int[] create = X25519Field.create();
        int[] create2 = X25519Field.create();
        int[] create3 = X25519Field.create();
        int[] create4 = X25519Field.create();
        int[] iArr = pointAccum.f91466u;
        int[] create5 = X25519Field.create();
        int[] create6 = X25519Field.create();
        int[] iArr2 = pointAccum.f91467v;
        X25519Field.apm(pointAccum.f91469y, pointAccum.f91468x, create2, create);
        X25519Field.apm(pointExt.f91475y, pointExt.f91474x, create4, create3);
        X25519Field.mul(create, create3, create);
        X25519Field.mul(create2, create4, create2);
        X25519Field.mul(pointAccum.f91466u, pointAccum.f91467v, create3);
        X25519Field.mul(create3, pointExt.f91473t, create3);
        X25519Field.mul(create3, C_d2, create3);
        X25519Field.mul(pointAccum.f91470z, pointExt.f91476z, create4);
        X25519Field.add(create4, create4, create4);
        X25519Field.apm(create2, create, iArr2, iArr);
        X25519Field.apm(create4, create3, create6, create5);
        X25519Field.carry(create6);
        X25519Field.mul(iArr, create5, pointAccum.f91468x);
        X25519Field.mul(create6, iArr2, pointAccum.f91469y);
        X25519Field.mul(create5, create6, pointAccum.f91470z);
    }

    private static void pointAdd(PointExt pointExt, PointExt pointExt2) {
        int[] create = X25519Field.create();
        int[] create2 = X25519Field.create();
        int[] create3 = X25519Field.create();
        int[] create4 = X25519Field.create();
        int[] create5 = X25519Field.create();
        int[] create6 = X25519Field.create();
        int[] create7 = X25519Field.create();
        int[] create8 = X25519Field.create();
        X25519Field.apm(pointExt.f91475y, pointExt.f91474x, create2, create);
        X25519Field.apm(pointExt2.f91475y, pointExt2.f91474x, create4, create3);
        X25519Field.mul(create, create3, create);
        X25519Field.mul(create2, create4, create2);
        X25519Field.mul(pointExt.f91473t, pointExt2.f91473t, create3);
        X25519Field.mul(create3, C_d2, create3);
        X25519Field.mul(pointExt.f91476z, pointExt2.f91476z, create4);
        X25519Field.add(create4, create4, create4);
        X25519Field.apm(create2, create, create8, create5);
        X25519Field.apm(create4, create3, create7, create6);
        X25519Field.carry(create7);
        X25519Field.mul(create5, create6, pointExt2.f91474x);
        X25519Field.mul(create7, create8, pointExt2.f91475y);
        X25519Field.mul(create6, create7, pointExt2.f91476z);
        X25519Field.mul(create5, create8, pointExt2.f91473t);
    }

    private static void pointAddPrecomp(PointPrecomp pointPrecomp, PointAccum pointAccum) {
        int[] create = X25519Field.create();
        int[] create2 = X25519Field.create();
        int[] create3 = X25519Field.create();
        int[] iArr = pointAccum.f91466u;
        int[] create4 = X25519Field.create();
        int[] create5 = X25519Field.create();
        int[] iArr2 = pointAccum.f91467v;
        X25519Field.apm(pointAccum.f91469y, pointAccum.f91468x, create2, create);
        X25519Field.mul(create, pointPrecomp.ymx_h, create);
        X25519Field.mul(create2, pointPrecomp.ypx_h, create2);
        X25519Field.mul(pointAccum.f91466u, pointAccum.f91467v, create3);
        X25519Field.mul(create3, pointPrecomp.xyd, create3);
        X25519Field.apm(create2, create, iArr2, iArr);
        X25519Field.apm(pointAccum.f91470z, create3, create5, create4);
        X25519Field.carry(create5);
        X25519Field.mul(iArr, create4, pointAccum.f91468x);
        X25519Field.mul(create5, iArr2, pointAccum.f91469y);
        X25519Field.mul(create4, create5, pointAccum.f91470z);
    }

    private static void pointAddVar(boolean z9, PointExt pointExt, PointAccum pointAccum) {
        int[] iArr;
        int[] iArr2;
        int[] iArr3;
        int[] iArr4;
        int[] create = X25519Field.create();
        int[] create2 = X25519Field.create();
        int[] create3 = X25519Field.create();
        int[] create4 = X25519Field.create();
        int[] iArr5 = pointAccum.f91466u;
        int[] create5 = X25519Field.create();
        int[] create6 = X25519Field.create();
        int[] iArr6 = pointAccum.f91467v;
        if (z9) {
            iArr2 = create3;
            iArr = create4;
            iArr4 = create5;
            iArr3 = create6;
        } else {
            iArr = create3;
            iArr2 = create4;
            iArr3 = create5;
            iArr4 = create6;
        }
        X25519Field.apm(pointAccum.f91469y, pointAccum.f91468x, create2, create);
        X25519Field.apm(pointExt.f91475y, pointExt.f91474x, iArr2, iArr);
        X25519Field.mul(create, create3, create);
        X25519Field.mul(create2, create4, create2);
        X25519Field.mul(pointAccum.f91466u, pointAccum.f91467v, create3);
        X25519Field.mul(create3, pointExt.f91473t, create3);
        X25519Field.mul(create3, C_d2, create3);
        X25519Field.mul(pointAccum.f91470z, pointExt.f91476z, create4);
        X25519Field.add(create4, create4, create4);
        X25519Field.apm(create2, create, iArr6, iArr5);
        X25519Field.apm(create4, create3, iArr4, iArr3);
        X25519Field.carry(iArr4);
        X25519Field.mul(iArr5, create5, pointAccum.f91468x);
        X25519Field.mul(create6, iArr6, pointAccum.f91469y);
        X25519Field.mul(create5, create6, pointAccum.f91470z);
    }

    private static void pointAddVar(boolean z9, PointExt pointExt, PointExt pointExt2, PointExt pointExt3) {
        int[] iArr;
        int[] iArr2;
        int[] iArr3;
        int[] iArr4;
        int[] create = X25519Field.create();
        int[] create2 = X25519Field.create();
        int[] create3 = X25519Field.create();
        int[] create4 = X25519Field.create();
        int[] create5 = X25519Field.create();
        int[] create6 = X25519Field.create();
        int[] create7 = X25519Field.create();
        int[] create8 = X25519Field.create();
        if (z9) {
            iArr2 = create3;
            iArr = create4;
            iArr4 = create6;
            iArr3 = create7;
        } else {
            iArr = create3;
            iArr2 = create4;
            iArr3 = create6;
            iArr4 = create7;
        }
        X25519Field.apm(pointExt.f91475y, pointExt.f91474x, create2, create);
        X25519Field.apm(pointExt2.f91475y, pointExt2.f91474x, iArr2, iArr);
        X25519Field.mul(create, create3, create);
        X25519Field.mul(create2, create4, create2);
        X25519Field.mul(pointExt.f91473t, pointExt2.f91473t, create3);
        X25519Field.mul(create3, C_d2, create3);
        X25519Field.mul(pointExt.f91476z, pointExt2.f91476z, create4);
        X25519Field.add(create4, create4, create4);
        X25519Field.apm(create2, create, create8, create5);
        X25519Field.apm(create4, create3, iArr4, iArr3);
        X25519Field.carry(iArr4);
        X25519Field.mul(create5, create6, pointExt3.f91474x);
        X25519Field.mul(create7, create8, pointExt3.f91475y);
        X25519Field.mul(create6, create7, pointExt3.f91476z);
        X25519Field.mul(create5, create8, pointExt3.f91473t);
    }

    private static PointExt pointCopy(PointAccum pointAccum) {
        PointExt pointExt = new PointExt();
        X25519Field.copy(pointAccum.f91468x, 0, pointExt.f91474x, 0);
        X25519Field.copy(pointAccum.f91469y, 0, pointExt.f91475y, 0);
        X25519Field.copy(pointAccum.f91470z, 0, pointExt.f91476z, 0);
        X25519Field.mul(pointAccum.f91466u, pointAccum.f91467v, pointExt.f91473t);
        return pointExt;
    }

    private static PointExt pointCopy(PointAffine pointAffine) {
        PointExt pointExt = new PointExt();
        X25519Field.copy(pointAffine.f91471x, 0, pointExt.f91474x, 0);
        X25519Field.copy(pointAffine.f91472y, 0, pointExt.f91475y, 0);
        pointExtendXY(pointExt);
        return pointExt;
    }

    private static PointExt pointCopy(PointExt pointExt) {
        PointExt pointExt2 = new PointExt();
        pointCopy(pointExt, pointExt2);
        return pointExt2;
    }

    private static void pointCopy(PointAffine pointAffine, PointAccum pointAccum) {
        X25519Field.copy(pointAffine.f91471x, 0, pointAccum.f91468x, 0);
        X25519Field.copy(pointAffine.f91472y, 0, pointAccum.f91469y, 0);
        pointExtendXY(pointAccum);
    }

    private static void pointCopy(PointExt pointExt, PointExt pointExt2) {
        X25519Field.copy(pointExt.f91474x, 0, pointExt2.f91474x, 0);
        X25519Field.copy(pointExt.f91475y, 0, pointExt2.f91475y, 0);
        X25519Field.copy(pointExt.f91476z, 0, pointExt2.f91476z, 0);
        X25519Field.copy(pointExt.f91473t, 0, pointExt2.f91473t, 0);
    }

    private static void pointDouble(PointAccum pointAccum) {
        int[] create = X25519Field.create();
        int[] create2 = X25519Field.create();
        int[] create3 = X25519Field.create();
        int[] iArr = pointAccum.f91466u;
        int[] create4 = X25519Field.create();
        int[] create5 = X25519Field.create();
        int[] iArr2 = pointAccum.f91467v;
        X25519Field.sqr(pointAccum.f91468x, create);
        X25519Field.sqr(pointAccum.f91469y, create2);
        X25519Field.sqr(pointAccum.f91470z, create3);
        X25519Field.add(create3, create3, create3);
        X25519Field.apm(create, create2, iArr2, create5);
        X25519Field.add(pointAccum.f91468x, pointAccum.f91469y, iArr);
        X25519Field.sqr(iArr, iArr);
        X25519Field.sub(iArr2, iArr, iArr);
        X25519Field.add(create3, create5, create4);
        X25519Field.carry(create4);
        X25519Field.mul(iArr, create4, pointAccum.f91468x);
        X25519Field.mul(create5, iArr2, pointAccum.f91469y);
        X25519Field.mul(create4, create5, pointAccum.f91470z);
    }

    private static void pointExtendXY(PointAccum pointAccum) {
        X25519Field.one(pointAccum.f91470z);
        X25519Field.copy(pointAccum.f91468x, 0, pointAccum.f91466u, 0);
        X25519Field.copy(pointAccum.f91469y, 0, pointAccum.f91467v, 0);
    }

    private static void pointExtendXY(PointExt pointExt) {
        X25519Field.one(pointExt.f91476z);
        X25519Field.mul(pointExt.f91474x, pointExt.f91475y, pointExt.f91473t);
    }

    private static void pointLookup(int i4, int i10, PointPrecomp pointPrecomp) {
        int i11 = i4 * 8 * 3 * 10;
        for (int i12 = 0; i12 < 8; i12++) {
            int i13 = ((i12 ^ i10) - 1) >> 31;
            X25519Field.cmov(i13, precompBase, i11, pointPrecomp.ypx_h, 0);
            int i14 = i11 + 10;
            X25519Field.cmov(i13, precompBase, i14, pointPrecomp.ymx_h, 0);
            int i15 = i14 + 10;
            X25519Field.cmov(i13, precompBase, i15, pointPrecomp.xyd, 0);
            i11 = i15 + 10;
        }
    }

    private static void pointLookup(int[] iArr, int i4, PointExt pointExt) {
        int i10 = i4 * 40;
        X25519Field.copy(iArr, i10, pointExt.f91474x, 0);
        int i11 = i10 + 10;
        X25519Field.copy(iArr, i11, pointExt.f91475y, 0);
        int i12 = i11 + 10;
        X25519Field.copy(iArr, i12, pointExt.f91476z, 0);
        X25519Field.copy(iArr, i12 + 10, pointExt.f91473t, 0);
    }

    private static void pointLookup(int[] iArr, int i4, int[] iArr2, PointExt pointExt) {
        int window4 = getWindow4(iArr, i4);
        int i10 = (window4 >>> 3) ^ 1;
        int i11 = (window4 ^ (-i10)) & 7;
        int i12 = 0;
        for (int i13 = 0; i13 < 8; i13++) {
            int i14 = ((i13 ^ i11) - 1) >> 31;
            X25519Field.cmov(i14, iArr2, i12, pointExt.f91474x, 0);
            int i15 = i12 + 10;
            X25519Field.cmov(i14, iArr2, i15, pointExt.f91475y, 0);
            int i16 = i15 + 10;
            X25519Field.cmov(i14, iArr2, i16, pointExt.f91476z, 0);
            int i17 = i16 + 10;
            X25519Field.cmov(i14, iArr2, i17, pointExt.f91473t, 0);
            i12 = i17 + 10;
        }
        X25519Field.cnegate(i10, pointExt.f91474x);
        X25519Field.cnegate(i10, pointExt.f91473t);
    }

    private static int[] pointPrecompute(PointAffine pointAffine, int i4) {
        PointExt pointCopy = pointCopy(pointAffine);
        PointExt pointCopy2 = pointCopy(pointCopy);
        pointAdd(pointCopy, pointCopy2);
        int[] createTable = X25519Field.createTable(i4 * 4);
        int i10 = 0;
        int i11 = 0;
        while (true) {
            X25519Field.copy(pointCopy.f91474x, 0, createTable, i10);
            int i12 = i10 + 10;
            X25519Field.copy(pointCopy.f91475y, 0, createTable, i12);
            int i13 = i12 + 10;
            X25519Field.copy(pointCopy.f91476z, 0, createTable, i13);
            int i14 = i13 + 10;
            X25519Field.copy(pointCopy.f91473t, 0, createTable, i14);
            i10 = i14 + 10;
            i11++;
            if (i11 == i4) {
                return createTable;
            }
            pointAdd(pointCopy2, pointCopy);
        }
    }

    private static PointExt[] pointPrecomputeVar(PointExt pointExt, int i4) {
        PointExt pointExt2 = new PointExt();
        pointAddVar(false, pointExt, pointExt, pointExt2);
        PointExt[] pointExtArr = new PointExt[i4];
        pointExtArr[0] = pointCopy(pointExt);
        for (int i10 = 1; i10 < i4; i10++) {
            PointExt pointExt3 = pointExtArr[i10 - 1];
            PointExt pointExt4 = new PointExt();
            pointExtArr[i10] = pointExt4;
            pointAddVar(false, pointExt3, pointExt2, pointExt4);
        }
        return pointExtArr;
    }

    private static void pointSetNeutral(PointAccum pointAccum) {
        X25519Field.zero(pointAccum.f91468x);
        X25519Field.one(pointAccum.f91469y);
        X25519Field.one(pointAccum.f91470z);
        X25519Field.zero(pointAccum.f91466u);
        X25519Field.one(pointAccum.f91467v);
    }

    private static void pointSetNeutral(PointExt pointExt) {
        X25519Field.zero(pointExt.f91474x);
        X25519Field.one(pointExt.f91475y);
        X25519Field.one(pointExt.f91476z);
        X25519Field.zero(pointExt.f91473t);
    }

    public static void precompute() {
        int i4;
        synchronized (precompLock) {
            if (precompBase != null) {
                return;
            }
            PointExt pointExt = new PointExt();
            int[] iArr = B_x;
            X25519Field.copy(iArr, 0, pointExt.f91474x, 0);
            int[] iArr2 = B_y;
            X25519Field.copy(iArr2, 0, pointExt.f91475y, 0);
            pointExtendXY(pointExt);
            precompBaseTable = pointPrecomputeVar(pointExt, 32);
            PointAccum pointAccum = new PointAccum();
            X25519Field.copy(iArr, 0, pointAccum.f91468x, 0);
            X25519Field.copy(iArr2, 0, pointAccum.f91469y, 0);
            pointExtendXY(pointAccum);
            precompBase = X25519Field.createTable(192);
            int i10 = 0;
            for (int i11 = 0; i11 < 8; i11++) {
                PointExt[] pointExtArr = new PointExt[4];
                PointExt pointExt2 = new PointExt();
                pointSetNeutral(pointExt2);
                int i12 = 0;
                while (true) {
                    i4 = 1;
                    if (i12 >= 4) {
                        break;
                    }
                    pointAddVar(true, pointExt2, pointCopy(pointAccum), pointExt2);
                    pointDouble(pointAccum);
                    pointExtArr[i12] = pointCopy(pointAccum);
                    if (i11 + i12 != 10) {
                        while (i4 < 8) {
                            pointDouble(pointAccum);
                            i4++;
                        }
                    }
                    i12++;
                }
                PointExt[] pointExtArr2 = new PointExt[8];
                pointExtArr2[0] = pointExt2;
                int i13 = 0;
                int i14 = 1;
                while (i13 < 3) {
                    int i15 = i4 << i13;
                    int i16 = 0;
                    while (i16 < i15) {
                        PointExt pointExt3 = pointExtArr2[i14 - i15];
                        PointExt pointExt4 = pointExtArr[i13];
                        PointExt pointExt5 = new PointExt();
                        pointExtArr2[i14] = pointExt5;
                        pointAddVar(false, pointExt3, pointExt4, pointExt5);
                        i16++;
                        i14++;
                    }
                    i13++;
                    i4 = 1;
                }
                int[] createTable = X25519Field.createTable(8);
                int[] create = X25519Field.create();
                X25519Field.copy(pointExtArr2[0].f91476z, 0, create, 0);
                X25519Field.copy(create, 0, createTable, 0);
                int i17 = 0;
                while (true) {
                    i17++;
                    if (i17 >= 8) {
                        break;
                    }
                    X25519Field.mul(create, pointExtArr2[i17].f91476z, create);
                    X25519Field.copy(create, 0, createTable, i17 * 10);
                }
                X25519Field.add(create, create, create);
                X25519Field.invVar(create, create);
                int i18 = i17 - 1;
                int[] create2 = X25519Field.create();
                while (i18 > 0) {
                    int i19 = i18 - 1;
                    X25519Field.copy(createTable, i19 * 10, create2, 0);
                    X25519Field.mul(create2, create, create2);
                    X25519Field.copy(create2, 0, createTable, i18 * 10);
                    X25519Field.mul(create, pointExtArr2[i18].f91476z, create);
                    i18 = i19;
                }
                X25519Field.copy(create, 0, createTable, 0);
                for (int i20 = 0; i20 < 8; i20++) {
                    PointExt pointExt6 = pointExtArr2[i20];
                    int[] create3 = X25519Field.create();
                    int[] create4 = X25519Field.create();
                    X25519Field.copy(createTable, i20 * 10, create4, 0);
                    X25519Field.mul(pointExt6.f91474x, create4, create3);
                    X25519Field.mul(pointExt6.f91475y, create4, create4);
                    PointPrecomp pointPrecomp = new PointPrecomp();
                    X25519Field.apm(create4, create3, pointPrecomp.ypx_h, pointPrecomp.ymx_h);
                    X25519Field.mul(create3, create4, pointPrecomp.xyd);
                    int[] iArr3 = pointPrecomp.xyd;
                    X25519Field.mul(iArr3, C_d4, iArr3);
                    X25519Field.normalize(pointPrecomp.ypx_h);
                    X25519Field.normalize(pointPrecomp.ymx_h);
                    X25519Field.copy(pointPrecomp.ypx_h, 0, precompBase, i10);
                    int i21 = i10 + 10;
                    X25519Field.copy(pointPrecomp.ymx_h, 0, precompBase, i21);
                    int i22 = i21 + 10;
                    X25519Field.copy(pointPrecomp.xyd, 0, precompBase, i22);
                    i10 = i22 + 10;
                }
            }
        }
    }

    private static void pruneScalar(byte[] bArr, int i4, byte[] bArr2) {
        System.arraycopy(bArr, i4, bArr2, 0, 32);
        bArr2[0] = (byte) (bArr2[0] & 248);
        bArr2[31] = (byte) (bArr2[31] & Byte.MAX_VALUE);
        bArr2[31] = (byte) (bArr2[31] | k.f34876a);
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
        long j4 = bArr[63] & 255;
        long j10 = decode249 + (decode329 >> 28);
        long j11 = decode329 & M28L;
        long j12 = (decode327 - (j4 * (-6428113))) - (j10 * 5343);
        long j13 = ((decode246 - (j4 * 127719000)) - (j10 * (-6428113))) - (j11 * 5343);
        long j14 = decode248 + (decode328 >> 28);
        long j15 = decode328 & M28L;
        long j16 = (((decode326 - (j4 * 19280294)) - (j10 * 127719000)) - (j11 * (-6428113))) - (j14 * 5343);
        long j17 = ((((decode245 - (j4 * (-50998291))) - (j10 * 19280294)) - (j11 * 127719000)) - (j14 * (-6428113))) - (j15 * 5343);
        long j18 = (decode247 - (j4 * 5343)) + (j12 >> 28);
        long j19 = (j12 & M28L) + (j13 >> 28);
        long j20 = (decode323 - (j18 * (-50998291))) - (j19 * 19280294);
        long j21 = ((decode243 - (j15 * (-50998291))) - (j18 * 19280294)) - (j19 * 127719000);
        long j22 = ((((decode244 - (j11 * (-50998291))) - (j14 * 19280294)) - (j15 * 127719000)) - (j18 * (-6428113))) - (j19 * 5343);
        long j23 = (j13 & M28L) + (j16 >> 28);
        long j24 = (decode242 - (j19 * (-50998291))) - (j23 * 19280294);
        long j25 = j20 - (j23 * 127719000);
        long j26 = ((((decode324 - (j14 * (-50998291))) - (j15 * 19280294)) - (j18 * 127719000)) - (j19 * (-6428113))) - (j23 * 5343);
        long j27 = (j16 & M28L) + (j17 >> 28);
        long j28 = j17 & M28L;
        long j29 = decode24 - (j27 * (-50998291));
        long j30 = (decode322 - (j23 * (-50998291))) - (j27 * 19280294);
        long j31 = j24 - (j27 * 127719000);
        long j32 = j25 - (j27 * (-6428113));
        long j33 = (j21 - (j23 * (-6428113))) - (j27 * 5343);
        long j34 = (((((decode325 - (j10 * (-50998291))) - (j11 * 19280294)) - (j14 * 127719000)) - (j15 * (-6428113))) - (j18 * 5343)) + (j22 >> 28);
        long j35 = j22 & M28L;
        long j36 = j34 & M28L;
        long j37 = j36 >>> 27;
        long j38 = j28 + (j34 >> 28) + j37;
        long j39 = decode32 - (j38 * (-50998291));
        long j40 = (j29 - (j38 * 19280294)) + (j39 >> 28);
        long j41 = j39 & M28L;
        long j42 = (j30 - (j38 * 127719000)) + (j40 >> 28);
        long j43 = j40 & M28L;
        long j44 = (j31 - (j38 * (-6428113))) + (j42 >> 28);
        long j45 = j42 & M28L;
        long j46 = (j32 - (j38 * 5343)) + (j44 >> 28);
        long j47 = j44 & M28L;
        long j48 = j33 + (j46 >> 28);
        long j49 = j46 & M28L;
        long j50 = j26 + (j48 >> 28);
        long j51 = j48 & M28L;
        long j52 = j35 + (j50 >> 28);
        long j53 = j50 & M28L;
        long j54 = j36 + (j52 >> 28);
        long j55 = j52 & M28L;
        long j56 = j54 >> 28;
        long j57 = j54 & M28L;
        long j58 = j56 - j37;
        long j59 = j41 + (j58 & (-50998291));
        long j60 = j43 + (j58 & 19280294) + (j59 >> 28);
        long j61 = j59 & M28L;
        long j62 = j45 + (j58 & 127719000) + (j60 >> 28);
        long j63 = j60 & M28L;
        long j64 = j47 + (j58 & (-6428113)) + (j62 >> 28);
        long j65 = j62 & M28L;
        long j66 = j49 + (j58 & 5343) + (j64 >> 28);
        long j67 = j64 & M28L;
        long j68 = j51 + (j66 >> 28);
        long j69 = j66 & M28L;
        long j70 = j53 + (j68 >> 28);
        long j71 = j68 & M28L;
        long j72 = j55 + (j70 >> 28);
        long j73 = j70 & M28L;
        long j74 = j72 & M28L;
        byte[] bArr2 = new byte[32];
        encode56(j61 | (j63 << 28), bArr2, 0);
        encode56((j67 << 28) | j65, bArr2, 7);
        encode56(j69 | (j71 << 28), bArr2, 14);
        encode56(j73 | (j74 << 28), bArr2, 21);
        encode32((int) (j57 + (j72 >> 28)), bArr2, 28);
        return bArr2;
    }

    private static void scalarMult(byte[] bArr, PointAffine pointAffine, PointAccum pointAccum) {
        int[] iArr = new int[8];
        decodeScalar(bArr, 0, iArr);
        Nat.shiftDownBits(8, iArr, 3, 1);
        Nat.cadd(8, (~iArr[0]) & 1, iArr, L, iArr);
        Nat.shiftDownBit(8, iArr, 0);
        int[] pointPrecompute = pointPrecompute(pointAffine, 8);
        PointExt pointExt = new PointExt();
        pointCopy(pointAffine, pointAccum);
        pointLookup(pointPrecompute, 7, pointExt);
        pointAdd(pointExt, pointAccum);
        int i4 = 62;
        while (true) {
            pointLookup(iArr, i4, pointPrecompute, pointExt);
            pointAdd(pointExt, pointAccum);
            pointDouble(pointAccum);
            pointDouble(pointAccum);
            pointDouble(pointAccum);
            i4--;
            if (i4 < 0) {
                return;
            }
            pointDouble(pointAccum);
        }
    }

    private static void scalarMultBase(byte[] bArr, PointAccum pointAccum) {
        precompute();
        int[] iArr = new int[8];
        decodeScalar(bArr, 0, iArr);
        Nat.cadd(8, (~iArr[0]) & 1, iArr, L, iArr);
        Nat.shiftDownBit(8, iArr, 1);
        for (int i4 = 0; i4 < 8; i4++) {
            iArr[i4] = Interleave.shuffle2(iArr[i4]);
        }
        PointPrecomp pointPrecomp = new PointPrecomp();
        pointSetNeutral(pointAccum);
        int i10 = 28;
        while (true) {
            for (int i11 = 0; i11 < 8; i11++) {
                int i12 = iArr[i11] >>> i10;
                int i13 = (i12 >>> 3) & 1;
                pointLookup(i11, (i12 ^ (-i13)) & 7, pointPrecomp);
                X25519Field.cswap(i13, pointPrecomp.ypx_h, pointPrecomp.ymx_h);
                X25519Field.cnegate(i13, pointPrecomp.xyd);
                pointAddPrecomp(pointPrecomp, pointAccum);
            }
            i10 -= 4;
            if (i10 < 0) {
                return;
            }
            pointDouble(pointAccum);
        }
    }

    private static void scalarMultBaseEncoded(byte[] bArr, byte[] bArr2, int i4) {
        PointAccum pointAccum = new PointAccum();
        scalarMultBase(bArr, pointAccum);
        if (encodePoint(pointAccum, bArr2, i4) == 0) {
            throw new IllegalStateException();
        }
    }

    public static void scalarMultBaseYZ(X25519.Friend friend, byte[] bArr, int i4, int[] iArr, int[] iArr2) {
        Objects.requireNonNull(friend, "This method is only for use by X25519");
        byte[] bArr2 = new byte[32];
        pruneScalar(bArr, i4, bArr2);
        PointAccum pointAccum = new PointAccum();
        scalarMultBase(bArr2, pointAccum);
        if (checkPoint(pointAccum.f91468x, pointAccum.f91469y, pointAccum.f91470z) == 0) {
            throw new IllegalStateException();
        }
        X25519Field.copy(pointAccum.f91469y, 0, iArr, 0);
        X25519Field.copy(pointAccum.f91470z, 0, iArr2, 0);
    }

    private static void scalarMultOrderVar(PointAffine pointAffine, PointAccum pointAccum) {
        byte[] wnafVar = getWnafVar(L, 5);
        PointExt[] pointPrecomputeVar = pointPrecomputeVar(pointCopy(pointAffine), 8);
        pointSetNeutral(pointAccum);
        int i4 = 252;
        while (true) {
            byte b10 = wnafVar[i4];
            if (b10 != 0) {
                int i10 = b10 >> c.I;
                pointAddVar(i10 != 0, pointPrecomputeVar[(b10 ^ i10) >>> 1], pointAccum);
            }
            i4--;
            if (i4 < 0) {
                return;
            }
            pointDouble(pointAccum);
        }
    }

    private static void scalarMultStrausVar(int[] iArr, int[] iArr2, PointAffine pointAffine, PointAccum pointAccum) {
        precompute();
        byte[] wnafVar = getWnafVar(iArr, 7);
        byte[] wnafVar2 = getWnafVar(iArr2, 5);
        PointExt[] pointPrecomputeVar = pointPrecomputeVar(pointCopy(pointAffine), 8);
        pointSetNeutral(pointAccum);
        int i4 = 252;
        while (true) {
            byte b10 = wnafVar[i4];
            if (b10 != 0) {
                int i10 = b10 >> c.I;
                pointAddVar(i10 != 0, precompBaseTable[(b10 ^ i10) >>> 1], pointAccum);
            }
            byte b11 = wnafVar2[i4];
            if (b11 != 0) {
                int i11 = b11 >> c.I;
                pointAddVar(i11 != 0, pointPrecomputeVar[(b11 ^ i11) >>> 1], pointAccum);
            }
            i4--;
            if (i4 < 0) {
                return;
            }
            pointDouble(pointAccum);
        }
    }

    public static void sign(byte[] bArr, int i4, byte[] bArr2, int i10, int i11, byte[] bArr3, int i12) {
        implSign(bArr, i4, null, (byte) 0, bArr2, i10, i11, bArr3, i12);
    }

    public static void sign(byte[] bArr, int i4, byte[] bArr2, int i10, byte[] bArr3, int i11, int i12, byte[] bArr4, int i13) {
        implSign(bArr, i4, bArr2, i10, null, (byte) 0, bArr3, i11, i12, bArr4, i13);
    }

    public static void sign(byte[] bArr, int i4, byte[] bArr2, int i10, byte[] bArr3, byte[] bArr4, int i11, int i12, byte[] bArr5, int i13) {
        implSign(bArr, i4, bArr2, i10, bArr3, (byte) 0, bArr4, i11, i12, bArr5, i13);
    }

    public static void sign(byte[] bArr, int i4, byte[] bArr2, byte[] bArr3, int i10, int i11, byte[] bArr4, int i12) {
        implSign(bArr, i4, bArr2, (byte) 0, bArr3, i10, i11, bArr4, i12);
    }

    public static void signPrehash(byte[] bArr, int i4, byte[] bArr2, int i10, byte[] bArr3, Digest digest, byte[] bArr4, int i11) {
        byte[] bArr5 = new byte[64];
        if (64 != digest.doFinal(bArr5, 0)) {
            throw new IllegalArgumentException("ph");
        }
        implSign(bArr, i4, bArr2, i10, bArr3, (byte) 1, bArr5, 0, 64, bArr4, i11);
    }

    public static void signPrehash(byte[] bArr, int i4, byte[] bArr2, int i10, byte[] bArr3, byte[] bArr4, int i11, byte[] bArr5, int i12) {
        implSign(bArr, i4, bArr2, i10, bArr3, (byte) 1, bArr4, i11, 64, bArr5, i12);
    }

    public static void signPrehash(byte[] bArr, int i4, byte[] bArr2, Digest digest, byte[] bArr3, int i10) {
        byte[] bArr4 = new byte[64];
        if (64 != digest.doFinal(bArr4, 0)) {
            throw new IllegalArgumentException("ph");
        }
        implSign(bArr, i4, bArr2, (byte) 1, bArr4, 0, 64, bArr3, i10);
    }

    public static void signPrehash(byte[] bArr, int i4, byte[] bArr2, byte[] bArr3, int i10, byte[] bArr4, int i11) {
        implSign(bArr, i4, bArr2, (byte) 1, bArr3, i10, 64, bArr4, i11);
    }

    public static boolean validatePublicKeyFull(byte[] bArr, int i4) {
        PointAffine pointAffine = new PointAffine();
        if (decodePointVar(bArr, i4, false, pointAffine)) {
            X25519Field.normalize(pointAffine.f91471x);
            X25519Field.normalize(pointAffine.f91472y);
            if (isNeutralElementVar(pointAffine.f91471x, pointAffine.f91472y)) {
                return false;
            }
            PointAccum pointAccum = new PointAccum();
            scalarMultOrderVar(pointAffine, pointAccum);
            X25519Field.normalize(pointAccum.f91468x);
            X25519Field.normalize(pointAccum.f91469y);
            X25519Field.normalize(pointAccum.f91470z);
            return isNeutralElementVar(pointAccum.f91468x, pointAccum.f91469y, pointAccum.f91470z);
        }
        return false;
    }

    public static boolean validatePublicKeyPartial(byte[] bArr, int i4) {
        return decodePointVar(bArr, i4, false, new PointAffine());
    }

    public static boolean verify(byte[] bArr, int i4, byte[] bArr2, int i10, byte[] bArr3, int i11, int i12) {
        return implVerify(bArr, i4, bArr2, i10, null, (byte) 0, bArr3, i11, i12);
    }

    public static boolean verify(byte[] bArr, int i4, byte[] bArr2, int i10, byte[] bArr3, byte[] bArr4, int i11, int i12) {
        return implVerify(bArr, i4, bArr2, i10, bArr3, (byte) 0, bArr4, i11, i12);
    }

    public static boolean verifyPrehash(byte[] bArr, int i4, byte[] bArr2, int i10, byte[] bArr3, Digest digest) {
        byte[] bArr4 = new byte[64];
        if (64 == digest.doFinal(bArr4, 0)) {
            return implVerify(bArr, i4, bArr2, i10, bArr3, (byte) 1, bArr4, 0, 64);
        }
        throw new IllegalArgumentException("ph");
    }

    public static boolean verifyPrehash(byte[] bArr, int i4, byte[] bArr2, int i10, byte[] bArr3, byte[] bArr4, int i11) {
        return implVerify(bArr, i4, bArr2, i10, bArr3, (byte) 1, bArr4, i11, 64);
    }
}
