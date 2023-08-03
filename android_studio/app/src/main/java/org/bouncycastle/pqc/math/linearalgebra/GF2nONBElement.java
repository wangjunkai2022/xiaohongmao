package org.bouncycastle.pqc.math.linearalgebra;

import android.support.v4.media.session.PlaybackStateCompat;
import com.google.android.exoplayer2.ext.mediasession.b;
import com.google.common.primitives.g;
import com.ksyun.media.player.KSYMediaMeta;
import java.math.BigInteger;
import java.security.SecureRandom;
import kotlin.time.DurationKt;
import kotlinx.coroutines.internal.a0;
import okhttp3.internal.ws.WebSocketProtocol;
import org.bouncycastle.util.Arrays;

/* loaded from: classes5.dex */
public class GF2nONBElement extends GF2nElement {
    private static final int MAXLONG = 64;
    private int mBit;
    private int mLength;
    private long[] mPol;
    private static final long[] mBitmask = {1, 2, 4, 8, 16, 32, 64, 128, 256, 512, 1024, 2048, 4096, 8192, 16384, 32768, 65536, 131072, PlaybackStateCompat.ACTION_SET_REPEAT_MODE, 524288, 1048576, PlaybackStateCompat.ACTION_SET_SHUFFLE_MODE, b.f21848u, 8388608, 16777216, 33554432, 67108864, 134217728, 268435456, KSYMediaMeta.AV_CH_STEREO_LEFT, KSYMediaMeta.AV_CH_STEREO_RIGHT, KSYMediaMeta.AV_CH_WIDE_LEFT, KSYMediaMeta.AV_CH_WIDE_RIGHT, KSYMediaMeta.AV_CH_SURROUND_DIRECT_LEFT, KSYMediaMeta.AV_CH_SURROUND_DIRECT_RIGHT, KSYMediaMeta.AV_CH_LOW_FREQUENCY_2, 68719476736L, 137438953472L, 274877906944L, 549755813888L, 1099511627776L, 2199023255552L, 4398046511104L, 8796093022208L, 17592186044416L, 35184372088832L, 70368744177664L, 140737488355328L, 281474976710656L, 562949953421312L, 1125899906842624L, 2251799813685248L, 4503599627370496L, 9007199254740992L, 18014398509481984L, 36028797018963968L, 72057594037927936L, 144115188075855872L, 288230376151711744L, 576460752303423488L, a0.f86225p, a0.f86227r, g.f34852b, Long.MIN_VALUE};
    private static final long[] mMaxmask = {1, 3, 7, 15, 31, 63, 127, 255, 511, 1023, 2047, 4095, 8191, 16383, 32767, WebSocketProtocol.PAYLOAD_SHORT_MAX, 131071, 262143, 524287, 1048575, 2097151, 4194303, 8388607, 16777215, 33554431, 67108863, 134217727, 268435455, 536870911, a0.f86221l, 2147483647L, 4294967295L, 8589934591L, 17179869183L, 34359738367L, 68719476735L, 137438953471L, 274877906943L, 549755813887L, 1099511627775L, 2199023255551L, 4398046511103L, 8796093022207L, 17592186044415L, 35184372088831L, 70368744177663L, 140737488355327L, 281474976710655L, 562949953421311L, 1125899906842623L, 2251799813685247L, 4503599627370495L, 9007199254740991L, 18014398509481983L, 36028797018963967L, 72057594037927935L, 144115188075855871L, 288230376151711743L, 576460752303423487L, 1152921504606846975L, 2305843009213693951L, DurationKt.MAX_MILLIS, Long.MAX_VALUE, -1};
    private static final int[] mIBY64 = {0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5};

    public GF2nONBElement(GF2nONBElement gF2nONBElement) {
        GF2nField gF2nField = gF2nONBElement.mField;
        this.mField = gF2nField;
        this.mDegree = gF2nField.getDegree();
        this.mLength = ((GF2nONBField) this.mField).getONBLength();
        this.mBit = ((GF2nONBField) this.mField).getONBBit();
        this.mPol = new long[this.mLength];
        assign(gF2nONBElement.getElement());
    }

    public GF2nONBElement(GF2nONBField gF2nONBField, BigInteger bigInteger) {
        this.mField = gF2nONBField;
        this.mDegree = gF2nONBField.getDegree();
        this.mLength = gF2nONBField.getONBLength();
        this.mBit = gF2nONBField.getONBBit();
        this.mPol = new long[this.mLength];
        assign(bigInteger);
    }

    public GF2nONBElement(GF2nONBField gF2nONBField, SecureRandom secureRandom) {
        this.mField = gF2nONBField;
        this.mDegree = gF2nONBField.getDegree();
        this.mLength = gF2nONBField.getONBLength();
        this.mBit = gF2nONBField.getONBBit();
        int i4 = this.mLength;
        long[] jArr = new long[i4];
        this.mPol = jArr;
        if (i4 <= 1) {
            jArr[0] = secureRandom.nextLong();
            long[] jArr2 = this.mPol;
            jArr2[0] = jArr2[0] >>> (64 - this.mBit);
            return;
        }
        for (int i10 = 0; i10 < this.mLength - 1; i10++) {
            this.mPol[i10] = secureRandom.nextLong();
        }
        this.mPol[this.mLength - 1] = secureRandom.nextLong() >>> (64 - this.mBit);
    }

    public GF2nONBElement(GF2nONBField gF2nONBField, byte[] bArr) {
        this.mField = gF2nONBField;
        this.mDegree = gF2nONBField.getDegree();
        this.mLength = gF2nONBField.getONBLength();
        this.mBit = gF2nONBField.getONBBit();
        this.mPol = new long[this.mLength];
        assign(bArr);
    }

    private GF2nONBElement(GF2nONBField gF2nONBField, long[] jArr) {
        this.mField = gF2nONBField;
        this.mDegree = gF2nONBField.getDegree();
        this.mLength = gF2nONBField.getONBLength();
        this.mBit = gF2nONBField.getONBBit();
        this.mPol = jArr;
    }

    public static GF2nONBElement ONE(GF2nONBField gF2nONBField) {
        int oNBLength = gF2nONBField.getONBLength();
        long[] jArr = new long[oNBLength];
        int i4 = 0;
        while (true) {
            int i10 = oNBLength - 1;
            if (i4 >= i10) {
                jArr[i10] = mMaxmask[gF2nONBField.getONBBit() - 1];
                return new GF2nONBElement(gF2nONBField, jArr);
            }
            jArr[i4] = -1;
            i4++;
        }
    }

    public static GF2nONBElement ZERO(GF2nONBField gF2nONBField) {
        return new GF2nONBElement(gF2nONBField, new long[gF2nONBField.getONBLength()]);
    }

    private void assign(BigInteger bigInteger) {
        assign(bigInteger.toByteArray());
    }

    private void assign(byte[] bArr) {
        this.mPol = new long[this.mLength];
        for (int i4 = 0; i4 < bArr.length; i4++) {
            long[] jArr = this.mPol;
            int i10 = i4 >>> 3;
            jArr[i10] = jArr[i10] | ((bArr[(bArr.length - 1) - i4] & 255) << ((i4 & 7) << 3));
        }
    }

    private void assign(long[] jArr) {
        System.arraycopy(jArr, 0, this.mPol, 0, this.mLength);
    }

    private long[] getElement() {
        long[] jArr = this.mPol;
        long[] jArr2 = new long[jArr.length];
        System.arraycopy(jArr, 0, jArr2, 0, jArr.length);
        return jArr2;
    }

    private long[] getElementReverseOrder() {
        long[] jArr = new long[this.mPol.length];
        int i4 = 0;
        while (true) {
            int i10 = this.mDegree;
            if (i4 >= i10) {
                return jArr;
            }
            if (testBit((i10 - i4) - 1)) {
                int i11 = i4 >>> 6;
                jArr[i11] = jArr[i11] | mBitmask[i4 & 63];
            }
            i4++;
        }
    }

    @Override // org.bouncycastle.pqc.math.linearalgebra.GFElement
    public GFElement add(GFElement gFElement) throws RuntimeException {
        GF2nONBElement gF2nONBElement = new GF2nONBElement(this);
        gF2nONBElement.addToThis(gFElement);
        return gF2nONBElement;
    }

    @Override // org.bouncycastle.pqc.math.linearalgebra.GFElement
    public void addToThis(GFElement gFElement) throws RuntimeException {
        if (!(gFElement instanceof GF2nONBElement)) {
            throw new RuntimeException();
        }
        GF2nONBElement gF2nONBElement = (GF2nONBElement) gFElement;
        if (!this.mField.equals(gF2nONBElement.mField)) {
            throw new RuntimeException();
        }
        for (int i4 = 0; i4 < this.mLength; i4++) {
            long[] jArr = this.mPol;
            jArr[i4] = jArr[i4] ^ gF2nONBElement.mPol[i4];
        }
    }

    @Override // org.bouncycastle.pqc.math.linearalgebra.GF2nElement
    void assignOne() {
        int i4 = 0;
        while (true) {
            int i10 = this.mLength;
            if (i4 >= i10 - 1) {
                this.mPol[i10 - 1] = mMaxmask[this.mBit - 1];
                return;
            } else {
                this.mPol[i4] = -1;
                i4++;
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // org.bouncycastle.pqc.math.linearalgebra.GF2nElement
    public void assignZero() {
        this.mPol = new long[this.mLength];
    }

    @Override // org.bouncycastle.pqc.math.linearalgebra.GF2nElement, org.bouncycastle.pqc.math.linearalgebra.GFElement
    public Object clone() {
        return new GF2nONBElement(this);
    }

    @Override // org.bouncycastle.pqc.math.linearalgebra.GFElement
    public boolean equals(Object obj) {
        if (obj == null || !(obj instanceof GF2nONBElement)) {
            return false;
        }
        GF2nONBElement gF2nONBElement = (GF2nONBElement) obj;
        for (int i4 = 0; i4 < this.mLength; i4++) {
            if (this.mPol[i4] != gF2nONBElement.mPol[i4]) {
                return false;
            }
        }
        return true;
    }

    @Override // org.bouncycastle.pqc.math.linearalgebra.GFElement
    public int hashCode() {
        return Arrays.hashCode(this.mPol);
    }

    @Override // org.bouncycastle.pqc.math.linearalgebra.GF2nElement
    public GF2nElement increase() {
        GF2nONBElement gF2nONBElement = new GF2nONBElement(this);
        gF2nONBElement.increaseThis();
        return gF2nONBElement;
    }

    @Override // org.bouncycastle.pqc.math.linearalgebra.GF2nElement
    public void increaseThis() {
        addToThis(ONE((GF2nONBField) this.mField));
    }

    @Override // org.bouncycastle.pqc.math.linearalgebra.GFElement
    public GFElement invert() throws ArithmeticException {
        GF2nONBElement gF2nONBElement = new GF2nONBElement(this);
        gF2nONBElement.invertThis();
        return gF2nONBElement;
    }

    public void invertThis() throws ArithmeticException {
        if (isZero()) {
            throw new ArithmeticException();
        }
        int i4 = 31;
        boolean z9 = false;
        while (!z9 && i4 >= 0) {
            if (((this.mDegree - 1) & mBitmask[i4]) != 0) {
                z9 = true;
            }
            i4--;
        }
        ZERO((GF2nONBField) this.mField);
        GF2nONBElement gF2nONBElement = new GF2nONBElement(this);
        int i10 = 1;
        for (int i11 = (i4 + 1) - 1; i11 >= 0; i11--) {
            GF2nElement gF2nElement = (GF2nElement) gF2nONBElement.clone();
            for (int i12 = 1; i12 <= i10; i12++) {
                gF2nElement.squareThis();
            }
            gF2nONBElement.multiplyThisBy(gF2nElement);
            i10 <<= 1;
            if (((this.mDegree - 1) & mBitmask[i11]) != 0) {
                gF2nONBElement.squareThis();
                gF2nONBElement.multiplyThisBy(this);
                i10++;
            }
        }
        gF2nONBElement.squareThis();
    }

    @Override // org.bouncycastle.pqc.math.linearalgebra.GFElement
    public boolean isOne() {
        int i4;
        boolean z9 = false;
        int i10 = 0;
        boolean z10 = true;
        while (true) {
            i4 = this.mLength;
            if (i10 >= i4 - 1 || !z10) {
                break;
            }
            z10 = z10 && (this.mPol[i10] & (-1)) == -1;
            i10++;
        }
        if (z10) {
            if (z10) {
                long j4 = this.mPol[i4 - 1];
                long[] jArr = mMaxmask;
                int i11 = this.mBit;
                if ((j4 & jArr[i11 - 1]) == jArr[i11 - 1]) {
                    z9 = true;
                }
            }
            return z9;
        }
        return z10;
    }

    @Override // org.bouncycastle.pqc.math.linearalgebra.GFElement
    public boolean isZero() {
        boolean z9 = true;
        for (int i4 = 0; i4 < this.mLength && z9; i4++) {
            z9 = z9 && (this.mPol[i4] & (-1)) == 0;
        }
        return z9;
    }

    @Override // org.bouncycastle.pqc.math.linearalgebra.GFElement
    public GFElement multiply(GFElement gFElement) throws RuntimeException {
        GF2nONBElement gF2nONBElement = new GF2nONBElement(this);
        gF2nONBElement.multiplyThisBy(gFElement);
        return gF2nONBElement;
    }

    @Override // org.bouncycastle.pqc.math.linearalgebra.GFElement
    public void multiplyThisBy(GFElement gFElement) throws RuntimeException {
        if (!(gFElement instanceof GF2nONBElement)) {
            throw new RuntimeException("The elements have different representation: not yet implemented");
        }
        GF2nONBElement gF2nONBElement = (GF2nONBElement) gFElement;
        if (!this.mField.equals(gF2nONBElement.mField)) {
            throw new RuntimeException();
        }
        if (equals(gFElement)) {
            squareThis();
            return;
        }
        long[] jArr = this.mPol;
        long[] jArr2 = gF2nONBElement.mPol;
        int i4 = this.mLength;
        long[] jArr3 = new long[i4];
        int[][] iArr = ((GF2nONBField) this.mField).mMult;
        int i10 = i4 - 1;
        long[] jArr4 = mBitmask;
        long j4 = jArr4[63];
        long j10 = jArr4[this.mBit - 1];
        char c10 = 0;
        int i11 = 0;
        while (i11 < this.mDegree) {
            int i12 = 0;
            boolean z9 = false;
            while (i12 < this.mDegree) {
                int[] iArr2 = mIBY64;
                int i13 = iArr2[i12];
                int i14 = iArr2[iArr[i12][c10]];
                int i15 = iArr[i12][c10] & 63;
                long j11 = jArr[i13];
                long[] jArr5 = mBitmask;
                if ((j11 & jArr5[i12 & 63]) != 0) {
                    if ((jArr2[i14] & jArr5[i15]) != 0) {
                        z9 = !z9;
                    }
                    if (iArr[i12][1] != -1) {
                        if ((jArr2[iArr2[iArr[i12][1]]] & jArr5[iArr[i12][1] & 63]) != 0) {
                            z9 = !z9;
                        }
                        i12++;
                        c10 = 0;
                    }
                }
                i12++;
                c10 = 0;
            }
            int i16 = mIBY64[i11];
            int i17 = i11 & 63;
            if (z9) {
                jArr3[i16] = jArr3[i16] ^ mBitmask[i17];
            }
            if (this.mLength > 1) {
                boolean z10 = (jArr[i10] & 1) == 1;
                int i18 = i10 - 1;
                int i19 = i18;
                while (i19 >= 0) {
                    boolean z11 = (jArr[i19] & 1) != 0;
                    jArr[i19] = jArr[i19] >>> 1;
                    if (z10) {
                        jArr[i19] = jArr[i19] ^ j4;
                    }
                    i19--;
                    z10 = z11;
                }
                jArr[i10] = jArr[i10] >>> 1;
                if (z10) {
                    jArr[i10] = jArr[i10] ^ j10;
                }
                boolean z12 = (jArr2[i10] & 1) == 1;
                while (i18 >= 0) {
                    boolean z13 = (jArr2[i18] & 1) != 0;
                    jArr2[i18] = jArr2[i18] >>> 1;
                    if (z12) {
                        jArr2[i18] = jArr2[i18] ^ j4;
                    }
                    i18--;
                    z12 = z13;
                }
                jArr2[i10] = jArr2[i10] >>> 1;
                if (z12) {
                    jArr2[i10] = jArr2[i10] ^ j10;
                }
            } else {
                boolean z14 = (jArr[0] & 1) == 1;
                jArr[0] = jArr[0] >>> 1;
                if (z14) {
                    jArr[0] = jArr[0] ^ j10;
                }
                boolean z15 = (jArr2[0] & 1) == 1;
                jArr2[0] = jArr2[0] >>> 1;
                if (z15) {
                    jArr2[0] = jArr2[0] ^ j10;
                }
            }
            i11++;
            c10 = 0;
        }
        assign(jArr3);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void reverseOrder() {
        this.mPol = getElementReverseOrder();
    }

    @Override // org.bouncycastle.pqc.math.linearalgebra.GF2nElement
    public GF2nElement solveQuadraticEquation() throws RuntimeException {
        int i4;
        if (trace() != 1) {
            long j4 = mBitmask[63];
            long[] jArr = new long[this.mLength];
            int i10 = 0;
            long j10 = 0;
            while (true) {
                i4 = this.mLength;
                if (i10 >= i4 - 1) {
                    break;
                }
                for (int i11 = 1; i11 < 64; i11++) {
                    long[] jArr2 = mBitmask;
                    long j11 = jArr2[i11];
                    long[] jArr3 = this.mPol;
                    if (((j11 & jArr3[i10]) == 0 || (jArr2[i11 - 1] & j10) == 0) && ((jArr3[i10] & jArr2[i11]) != 0 || (jArr2[i11 - 1] & j10) != 0)) {
                        j10 ^= jArr2[i11];
                    }
                }
                jArr[i10] = j10;
                int i12 = ((j10 & j4) > 0L ? 1 : ((j10 & j4) == 0L ? 0 : -1));
                j10 = ((i12 == 0 || (1 & this.mPol[i10 + 1]) != 1) && !(i12 == 0 && (this.mPol[i10 + 1] & 1) == 0)) ? 1L : 0L;
                i10++;
            }
            int i13 = this.mDegree & 63;
            long j12 = this.mPol[i4 - 1];
            for (int i14 = 1; i14 < i13; i14++) {
                long[] jArr4 = mBitmask;
                if (((jArr4[i14] & j12) == 0 || (jArr4[i14 - 1] & j10) == 0) && ((jArr4[i14] & j12) != 0 || (jArr4[i14 - 1] & j10) != 0)) {
                    j10 ^= jArr4[i14];
                }
            }
            jArr[this.mLength - 1] = j10;
            return new GF2nONBElement((GF2nONBField) this.mField, jArr);
        }
        throw new RuntimeException();
    }

    @Override // org.bouncycastle.pqc.math.linearalgebra.GF2nElement
    public GF2nElement square() {
        GF2nONBElement gF2nONBElement = new GF2nONBElement(this);
        gF2nONBElement.squareThis();
        return gF2nONBElement;
    }

    @Override // org.bouncycastle.pqc.math.linearalgebra.GF2nElement
    public GF2nElement squareRoot() {
        GF2nONBElement gF2nONBElement = new GF2nONBElement(this);
        gF2nONBElement.squareRootThis();
        return gF2nONBElement;
    }

    @Override // org.bouncycastle.pqc.math.linearalgebra.GF2nElement
    public void squareRootThis() {
        long[] element = getElement();
        int i4 = this.mLength - 1;
        int i10 = this.mBit - 1;
        long j4 = mBitmask[63];
        boolean z9 = (element[0] & 1) != 0;
        int i11 = i4;
        while (i11 >= 0) {
            boolean z10 = (element[i11] & 1) != 0;
            element[i11] = element[i11] >>> 1;
            if (z9) {
                if (i11 == i4) {
                    element[i11] = element[i11] ^ mBitmask[i10];
                } else {
                    element[i11] = element[i11] ^ j4;
                }
            }
            i11--;
            z9 = z10;
        }
        assign(element);
    }

    @Override // org.bouncycastle.pqc.math.linearalgebra.GF2nElement
    public void squareThis() {
        long[] element = getElement();
        int i4 = this.mLength - 1;
        int i10 = this.mBit - 1;
        long[] jArr = mBitmask;
        long j4 = jArr[63];
        boolean z9 = (element[i4] & jArr[i10]) != 0;
        int i11 = 0;
        while (i11 < i4) {
            boolean z10 = (element[i11] & j4) != 0;
            element[i11] = element[i11] << 1;
            if (z9) {
                element[i11] = 1 ^ element[i11];
            }
            i11++;
            z9 = z10;
        }
        long j10 = element[i4];
        long[] jArr2 = mBitmask;
        boolean z11 = (j10 & jArr2[i10]) != 0;
        element[i4] = element[i4] << 1;
        if (z9) {
            element[i4] = element[i4] ^ 1;
        }
        if (z11) {
            element[i4] = jArr2[i10 + 1] ^ element[i4];
        }
        assign(element);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // org.bouncycastle.pqc.math.linearalgebra.GF2nElement
    public boolean testBit(int i4) {
        return i4 >= 0 && i4 <= this.mDegree && (this.mPol[i4 >>> 6] & mBitmask[i4 & 63]) != 0;
    }

    @Override // org.bouncycastle.pqc.math.linearalgebra.GF2nElement
    public boolean testRightmostBit() {
        return (this.mPol[this.mLength - 1] & mBitmask[this.mBit - 1]) != 0;
    }

    @Override // org.bouncycastle.pqc.math.linearalgebra.GFElement
    public byte[] toByteArray() {
        int i4 = ((this.mDegree - 1) >> 3) + 1;
        byte[] bArr = new byte[i4];
        for (int i10 = 0; i10 < i4; i10++) {
            int i11 = (i10 & 7) << 3;
            bArr[(i4 - i10) - 1] = (byte) ((this.mPol[i10 >>> 3] & (255 << i11)) >>> i11);
        }
        return bArr;
    }

    @Override // org.bouncycastle.pqc.math.linearalgebra.GFElement
    public BigInteger toFlexiBigInt() {
        return new BigInteger(1, toByteArray());
    }

    @Override // org.bouncycastle.pqc.math.linearalgebra.GFElement
    public String toString() {
        return toString(16);
    }

    @Override // org.bouncycastle.pqc.math.linearalgebra.GFElement
    public String toString(int i4) {
        StringBuilder sb;
        long[] element = getElement();
        int i10 = this.mBit;
        String str = "";
        if (i4 == 2) {
            while (true) {
                i10--;
                if (i10 < 0) {
                    break;
                }
                str = (element[element.length - 1] & (1 << i10)) == 0 ? str + "0" : str + "1";
            }
            for (int length = element.length - 2; length >= 0; length--) {
                for (int i11 = 63; i11 >= 0; i11--) {
                    if ((element[length] & mBitmask[i11]) == 0) {
                        sb = new StringBuilder();
                        sb.append(str);
                        sb.append("0");
                    } else {
                        sb = new StringBuilder();
                        sb.append(str);
                        sb.append("1");
                    }
                    str = sb.toString();
                }
            }
        } else if (i4 == 16) {
            char[] cArr = {'0', '1', '2', '3', '4', '5', '6', '7', '8', '9', 'a', 'b', 'c', 'd', 'e', 'f'};
            for (int length2 = element.length - 1; length2 >= 0; length2--) {
                str = ((((((((((((((((str + cArr[((int) (element[length2] >>> 60)) & 15]) + cArr[((int) (element[length2] >>> 56)) & 15]) + cArr[((int) (element[length2] >>> 52)) & 15]) + cArr[((int) (element[length2] >>> 48)) & 15]) + cArr[((int) (element[length2] >>> 44)) & 15]) + cArr[((int) (element[length2] >>> 40)) & 15]) + cArr[((int) (element[length2] >>> 36)) & 15]) + cArr[((int) (element[length2] >>> 32)) & 15]) + cArr[((int) (element[length2] >>> 28)) & 15]) + cArr[((int) (element[length2] >>> 24)) & 15]) + cArr[((int) (element[length2] >>> 20)) & 15]) + cArr[((int) (element[length2] >>> 16)) & 15]) + cArr[((int) (element[length2] >>> 12)) & 15]) + cArr[((int) (element[length2] >>> 8)) & 15]) + cArr[((int) (element[length2] >>> 4)) & 15]) + cArr[((int) element[length2]) & 15]) + " ";
            }
        }
        return str;
    }

    @Override // org.bouncycastle.pqc.math.linearalgebra.GF2nElement
    public int trace() {
        int i4 = this.mLength - 1;
        int i10 = 0;
        for (int i11 = 0; i11 < i4; i11++) {
            for (int i12 = 0; i12 < 64; i12++) {
                if ((this.mPol[i11] & mBitmask[i12]) != 0) {
                    i10 ^= 1;
                }
            }
        }
        int i13 = this.mBit;
        for (int i14 = 0; i14 < i13; i14++) {
            if ((this.mPol[i4] & mBitmask[i14]) != 0) {
                i10 ^= 1;
            }
        }
        return i10;
    }
}
