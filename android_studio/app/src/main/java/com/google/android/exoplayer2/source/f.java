package com.google.android.exoplayer2.source;

/* compiled from: CompositeSequenceableLoader.java */
/* loaded from: classes2.dex */
public class f implements y0 {

    /* renamed from: a  reason: collision with root package name */
    protected final y0[] f24927a;

    public f(y0[] y0VarArr) {
        this.f24927a = y0VarArr;
    }

    @Override // com.google.android.exoplayer2.source.y0
    public boolean b() {
        for (y0 y0Var : this.f24927a) {
            if (y0Var.b()) {
                return true;
            }
        }
        return false;
    }

    @Override // com.google.android.exoplayer2.source.y0
    public final long c() {
        long j4 = Long.MAX_VALUE;
        for (y0 y0Var : this.f24927a) {
            long c10 = y0Var.c();
            if (c10 != Long.MIN_VALUE) {
                j4 = Math.min(j4, c10);
            }
        }
        if (j4 == Long.MAX_VALUE) {
            return Long.MIN_VALUE;
        }
        return j4;
    }

    @Override // com.google.android.exoplayer2.source.y0
    public boolean e(long j4) {
        y0[] y0VarArr;
        boolean z9;
        boolean z10 = false;
        do {
            long c10 = c();
            if (c10 == Long.MIN_VALUE) {
                break;
            }
            z9 = false;
            for (y0 y0Var : this.f24927a) {
                long c11 = y0Var.c();
                boolean z11 = c11 != Long.MIN_VALUE && c11 <= j4;
                if (c11 == c10 || z11) {
                    z9 |= y0Var.e(j4);
                }
            }
            z10 |= z9;
        } while (z9);
        return z10;
    }

    @Override // com.google.android.exoplayer2.source.y0
    public final long g() {
        long j4 = Long.MAX_VALUE;
        for (y0 y0Var : this.f24927a) {
            long g4 = y0Var.g();
            if (g4 != Long.MIN_VALUE) {
                j4 = Math.min(j4, g4);
            }
        }
        if (j4 == Long.MAX_VALUE) {
            return Long.MIN_VALUE;
        }
        return j4;
    }

    @Override // com.google.android.exoplayer2.source.y0
    public final void h(long j4) {
        for (y0 y0Var : this.f24927a) {
            y0Var.h(j4);
        }
    }
}
