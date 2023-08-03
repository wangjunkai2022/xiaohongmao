package io.sentry;

import java.util.Date;

/* compiled from: SentryNanotimeDate.java */
/* loaded from: classes4.dex */
public final class n4 extends j3 {
    @m8.g

    /* renamed from: a  reason: collision with root package name */
    private final Date f83497a;

    /* renamed from: b  reason: collision with root package name */
    private final long f83498b;

    public n4() {
        this(k.c(), System.nanoTime());
    }

    private long e(@m8.g n4 n4Var, @m8.g n4 n4Var2) {
        return n4Var.d() + (n4Var2.f83498b - n4Var.f83498b);
    }

    @Override // io.sentry.j3, java.lang.Comparable
    /* renamed from: a */
    public int compareTo(@m8.g j3 j3Var) {
        if (j3Var instanceof n4) {
            n4 n4Var = (n4) j3Var;
            long time = this.f83497a.getTime();
            long time2 = n4Var.f83497a.getTime();
            if (time == time2) {
                return Long.valueOf(this.f83498b).compareTo(Long.valueOf(n4Var.f83498b));
            }
            return Long.valueOf(time).compareTo(Long.valueOf(time2));
        }
        return super.compareTo(j3Var);
    }

    @Override // io.sentry.j3
    public long b(@m8.g j3 j3Var) {
        if (j3Var instanceof n4) {
            return this.f83498b - ((n4) j3Var).f83498b;
        }
        return super.b(j3Var);
    }

    @Override // io.sentry.j3
    public long c(@m8.h j3 j3Var) {
        if (j3Var != null && (j3Var instanceof n4)) {
            n4 n4Var = (n4) j3Var;
            if (compareTo(j3Var) < 0) {
                return e(this, n4Var);
            }
            return e(n4Var, this);
        }
        return super.c(j3Var);
    }

    @Override // io.sentry.j3
    public long d() {
        return k.a(this.f83497a);
    }

    public n4(@m8.g Date date, long j4) {
        this.f83497a = date;
        this.f83498b = j4;
    }
}
