package com.google.android.exoplayer2.source;

import android.net.Uri;
import androidx.annotation.Nullable;
import com.google.android.exoplayer2.b1;
import com.google.android.exoplayer2.s2;

/* compiled from: SinglePeriodTimeline.java */
/* loaded from: classes2.dex */
public final class b1 extends s2 {

    /* renamed from: s  reason: collision with root package name */
    private static final Object f24736s = new Object();

    /* renamed from: t  reason: collision with root package name */
    private static final com.google.android.exoplayer2.b1 f24737t = new b1.c().z("SinglePeriodTimeline").F(Uri.EMPTY).a();

    /* renamed from: f  reason: collision with root package name */
    private final long f24738f;

    /* renamed from: g  reason: collision with root package name */
    private final long f24739g;

    /* renamed from: h  reason: collision with root package name */
    private final long f24740h;

    /* renamed from: i  reason: collision with root package name */
    private final long f24741i;

    /* renamed from: j  reason: collision with root package name */
    private final long f24742j;

    /* renamed from: k  reason: collision with root package name */
    private final long f24743k;

    /* renamed from: l  reason: collision with root package name */
    private final long f24744l;

    /* renamed from: m  reason: collision with root package name */
    private final boolean f24745m;

    /* renamed from: n  reason: collision with root package name */
    private final boolean f24746n;

    /* renamed from: o  reason: collision with root package name */
    private final boolean f24747o;
    @Nullable

    /* renamed from: p  reason: collision with root package name */
    private final Object f24748p;
    @Nullable

    /* renamed from: q  reason: collision with root package name */
    private final com.google.android.exoplayer2.b1 f24749q;
    @Nullable

    /* renamed from: r  reason: collision with root package name */
    private final b1.f f24750r;

    @Deprecated
    public b1(long j4, boolean z9, boolean z10, boolean z11, @Nullable Object obj, @Nullable Object obj2) {
        this(j4, j4, 0L, 0L, z9, z10, z11, obj, obj2);
    }

    @Override // com.google.android.exoplayer2.s2
    public int f(Object obj) {
        return f24736s.equals(obj) ? 0 : -1;
    }

    @Override // com.google.android.exoplayer2.s2
    public s2.b k(int i4, s2.b bVar, boolean z9) {
        com.google.android.exoplayer2.util.a.c(i4, 0, 1);
        return bVar.t(null, z9 ? f24736s : null, 0, this.f24741i, -this.f24743k);
    }

    @Override // com.google.android.exoplayer2.s2
    public int m() {
        return 1;
    }

    @Override // com.google.android.exoplayer2.s2
    public Object q(int i4) {
        com.google.android.exoplayer2.util.a.c(i4, 0, 1);
        return f24736s;
    }

    /* JADX WARN: Code restructure failed: missing block: B:12:0x002b, code lost:
        if (r1 > r5) goto L9;
     */
    @Override // com.google.android.exoplayer2.s2
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public com.google.android.exoplayer2.s2.d s(int r25, com.google.android.exoplayer2.s2.d r26, long r27) {
        /*
            r24 = this;
            r0 = r24
            r1 = 0
            r2 = 1
            r3 = r25
            com.google.android.exoplayer2.util.a.c(r3, r1, r2)
            long r1 = r0.f24744l
            boolean r14 = r0.f24746n
            r3 = -9223372036854775807(0x8000000000000001, double:-4.9E-324)
            if (r14 == 0) goto L2e
            boolean r5 = r0.f24747o
            if (r5 != 0) goto L2e
            r5 = 0
            int r7 = (r27 > r5 ? 1 : (r27 == r5 ? 0 : -1))
            if (r7 == 0) goto L2e
            long r5 = r0.f24742j
            int r7 = (r5 > r3 ? 1 : (r5 == r3 ? 0 : -1))
            if (r7 != 0) goto L27
        L24:
            r16 = r3
            goto L30
        L27:
            long r1 = r1 + r27
            int r7 = (r1 > r5 ? 1 : (r1 == r5 ? 0 : -1))
            if (r7 <= 0) goto L2e
            goto L24
        L2e:
            r16 = r1
        L30:
            java.lang.Object r4 = com.google.android.exoplayer2.s2.d.f24564r
            com.google.android.exoplayer2.b1 r5 = r0.f24749q
            java.lang.Object r6 = r0.f24748p
            long r7 = r0.f24738f
            long r9 = r0.f24739g
            long r11 = r0.f24740h
            boolean r13 = r0.f24745m
            com.google.android.exoplayer2.b1$f r15 = r0.f24750r
            long r1 = r0.f24742j
            r18 = r1
            r20 = 0
            r21 = 0
            long r1 = r0.f24743k
            r22 = r1
            r3 = r26
            com.google.android.exoplayer2.s2$d r1 = r3.l(r4, r5, r6, r7, r9, r11, r13, r14, r15, r16, r18, r20, r21, r22)
            return r1
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.exoplayer2.source.b1.s(int, com.google.android.exoplayer2.s2$d, long):com.google.android.exoplayer2.s2$d");
    }

    @Override // com.google.android.exoplayer2.s2
    public int u() {
        return 1;
    }

    public b1(long j4, boolean z9, boolean z10, boolean z11, @Nullable Object obj, com.google.android.exoplayer2.b1 b1Var) {
        this(j4, j4, 0L, 0L, z9, z10, z11, obj, b1Var);
    }

    @Deprecated
    public b1(long j4, long j10, long j11, long j12, boolean z9, boolean z10, boolean z11, @Nullable Object obj, @Nullable Object obj2) {
        this((long) com.google.android.exoplayer2.i.f23649b, (long) com.google.android.exoplayer2.i.f23649b, (long) com.google.android.exoplayer2.i.f23649b, j4, j10, j11, j12, z9, z10, z11, obj, obj2);
    }

    public b1(long j4, long j10, long j11, long j12, boolean z9, boolean z10, boolean z11, @Nullable Object obj, com.google.android.exoplayer2.b1 b1Var) {
        this(com.google.android.exoplayer2.i.f23649b, com.google.android.exoplayer2.i.f23649b, com.google.android.exoplayer2.i.f23649b, j4, j10, j11, j12, z9, z10, false, obj, b1Var, z11 ? b1Var.f21440c : null);
    }

    /* JADX WARN: Illegal instructions before constructor call */
    @java.lang.Deprecated
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public b1(long r24, long r26, long r28, long r30, long r32, long r34, long r36, boolean r38, boolean r39, boolean r40, @androidx.annotation.Nullable java.lang.Object r41, @androidx.annotation.Nullable java.lang.Object r42) {
        /*
            r23 = this;
            com.google.android.exoplayer2.b1 r0 = com.google.android.exoplayer2.source.b1.f24737t
            com.google.android.exoplayer2.b1$c r1 = r0.b()
            r2 = r42
            com.google.android.exoplayer2.b1$c r1 = r1.E(r2)
            com.google.android.exoplayer2.b1 r21 = r1.a()
            if (r40 == 0) goto L15
            com.google.android.exoplayer2.b1$f r0 = r0.f21440c
            goto L16
        L15:
            r0 = 0
        L16:
            r22 = r0
            r19 = 0
            r2 = r23
            r3 = r24
            r5 = r26
            r7 = r28
            r9 = r30
            r11 = r32
            r13 = r34
            r15 = r36
            r17 = r38
            r18 = r39
            r20 = r41
            r2.<init>(r3, r5, r7, r9, r11, r13, r15, r17, r18, r19, r20, r21, r22)
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.exoplayer2.source.b1.<init>(long, long, long, long, long, long, long, boolean, boolean, boolean, java.lang.Object, java.lang.Object):void");
    }

    @Deprecated
    public b1(long j4, long j10, long j11, long j12, long j13, long j14, long j15, boolean z9, boolean z10, @Nullable Object obj, com.google.android.exoplayer2.b1 b1Var, @Nullable b1.f fVar) {
        this(j4, j10, j11, j12, j13, j14, j15, z9, z10, false, obj, b1Var, fVar);
    }

    public b1(long j4, long j10, long j11, long j12, long j13, long j14, long j15, boolean z9, boolean z10, boolean z11, @Nullable Object obj, com.google.android.exoplayer2.b1 b1Var, @Nullable b1.f fVar) {
        this.f24738f = j4;
        this.f24739g = j10;
        this.f24740h = j11;
        this.f24741i = j12;
        this.f24742j = j13;
        this.f24743k = j14;
        this.f24744l = j15;
        this.f24745m = z9;
        this.f24746n = z10;
        this.f24747o = z11;
        this.f24748p = obj;
        this.f24749q = (com.google.android.exoplayer2.b1) com.google.android.exoplayer2.util.a.g(b1Var);
        this.f24750r = fVar;
    }
}
