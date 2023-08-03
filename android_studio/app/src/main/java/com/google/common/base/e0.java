package com.google.common.base;

import com.google.common.base.d;
import java.util.BitSet;

/* compiled from: SmallCharMatcher.java */
@h3.c
/* loaded from: classes2.dex */
final class e0 extends d.v {

    /* renamed from: f  reason: collision with root package name */
    static final int f32194f = 1023;

    /* renamed from: g  reason: collision with root package name */
    private static final int f32195g = -862048943;

    /* renamed from: h  reason: collision with root package name */
    private static final int f32196h = 461845907;

    /* renamed from: i  reason: collision with root package name */
    private static final double f32197i = 0.5d;

    /* renamed from: c  reason: collision with root package name */
    private final char[] f32198c;

    /* renamed from: d  reason: collision with root package name */
    private final boolean f32199d;

    /* renamed from: e  reason: collision with root package name */
    private final long f32200e;

    private e0(char[] cArr, long j4, boolean z9, String str) {
        super(str);
        this.f32198c = cArr;
        this.f32200e = j4;
        this.f32199d = z9;
    }

    private boolean Y(int i4) {
        return 1 == ((this.f32200e >> i4) & 1);
    }

    @h3.d
    static int Z(int i4) {
        if (i4 == 1) {
            return 2;
        }
        int highestOneBit = Integer.highestOneBit(i4 - 1) << 1;
        while (highestOneBit * f32197i < i4) {
            highestOneBit <<= 1;
        }
        return highestOneBit;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static d a0(BitSet bitSet, String str) {
        int i4;
        int cardinality = bitSet.cardinality();
        boolean z9 = bitSet.get(0);
        int Z = Z(cardinality);
        char[] cArr = new char[Z];
        int i10 = Z - 1;
        int nextSetBit = bitSet.nextSetBit(0);
        long j4 = 0;
        while (nextSetBit != -1) {
            long j10 = (1 << nextSetBit) | j4;
            int b02 = b0(nextSetBit);
            while (true) {
                i4 = b02 & i10;
                if (cArr[i4] == 0) {
                    break;
                }
                b02 = i4 + 1;
            }
            cArr[i4] = (char) nextSetBit;
            nextSetBit = bitSet.nextSetBit(nextSetBit + 1);
            j4 = j10;
        }
        return new e0(cArr, j4, z9, str);
    }

    static int b0(int i4) {
        return Integer.rotateLeft(i4 * f32195g, 15) * f32196h;
    }

    @Override // com.google.common.base.d
    public boolean B(char c10) {
        if (c10 == 0) {
            return this.f32199d;
        }
        if (Y(c10)) {
            int length = this.f32198c.length - 1;
            int b02 = b0(c10) & length;
            int i4 = b02;
            do {
                char[] cArr = this.f32198c;
                if (cArr[i4] == 0) {
                    return false;
                }
                if (cArr[i4] == c10) {
                    return true;
                }
                i4 = (i4 + 1) & length;
            } while (i4 != b02);
            return false;
        }
        return false;
    }

    @Override // com.google.common.base.d
    void Q(BitSet bitSet) {
        char[] cArr;
        if (this.f32199d) {
            bitSet.set(0);
        }
        for (char c10 : this.f32198c) {
            if (c10 != 0) {
                bitSet.set(c10);
            }
        }
    }
}
