package com.google.common.cache;

import com.google.common.base.a0;
import com.google.common.base.v;
import com.google.common.base.w;
import org.checkerframework.checker.nullness.compatqual.NullableDecl;

/* compiled from: CacheStats.java */
@h3.b
/* loaded from: classes2.dex */
public final class f {

    /* renamed from: a  reason: collision with root package name */
    private final long f32397a;

    /* renamed from: b  reason: collision with root package name */
    private final long f32398b;

    /* renamed from: c  reason: collision with root package name */
    private final long f32399c;

    /* renamed from: d  reason: collision with root package name */
    private final long f32400d;

    /* renamed from: e  reason: collision with root package name */
    private final long f32401e;

    /* renamed from: f  reason: collision with root package name */
    private final long f32402f;

    public f(long j4, long j10, long j11, long j12, long j13, long j14) {
        a0.d(j4 >= 0);
        a0.d(j10 >= 0);
        a0.d(j11 >= 0);
        a0.d(j12 >= 0);
        a0.d(j13 >= 0);
        a0.d(j14 >= 0);
        this.f32397a = j4;
        this.f32398b = j10;
        this.f32399c = j11;
        this.f32400d = j12;
        this.f32401e = j13;
        this.f32402f = j14;
    }

    public double a() {
        long j4 = this.f32399c + this.f32400d;
        if (j4 == 0) {
            return 0.0d;
        }
        return this.f32401e / j4;
    }

    public long b() {
        return this.f32402f;
    }

    public long c() {
        return this.f32397a;
    }

    public double d() {
        long m9 = m();
        if (m9 == 0) {
            return 1.0d;
        }
        return this.f32397a / m9;
    }

    public long e() {
        return this.f32399c + this.f32400d;
    }

    public boolean equals(@NullableDecl Object obj) {
        if (obj instanceof f) {
            f fVar = (f) obj;
            return this.f32397a == fVar.f32397a && this.f32398b == fVar.f32398b && this.f32399c == fVar.f32399c && this.f32400d == fVar.f32400d && this.f32401e == fVar.f32401e && this.f32402f == fVar.f32402f;
        }
        return false;
    }

    public long f() {
        return this.f32400d;
    }

    public double g() {
        long j4 = this.f32399c;
        long j10 = this.f32400d;
        long j11 = j4 + j10;
        if (j11 == 0) {
            return 0.0d;
        }
        return j10 / j11;
    }

    public long h() {
        return this.f32399c;
    }

    public int hashCode() {
        return w.b(Long.valueOf(this.f32397a), Long.valueOf(this.f32398b), Long.valueOf(this.f32399c), Long.valueOf(this.f32400d), Long.valueOf(this.f32401e), Long.valueOf(this.f32402f));
    }

    public f i(f fVar) {
        return new f(Math.max(0L, this.f32397a - fVar.f32397a), Math.max(0L, this.f32398b - fVar.f32398b), Math.max(0L, this.f32399c - fVar.f32399c), Math.max(0L, this.f32400d - fVar.f32400d), Math.max(0L, this.f32401e - fVar.f32401e), Math.max(0L, this.f32402f - fVar.f32402f));
    }

    public long j() {
        return this.f32398b;
    }

    public double k() {
        long m9 = m();
        if (m9 == 0) {
            return 0.0d;
        }
        return this.f32398b / m9;
    }

    public f l(f fVar) {
        return new f(this.f32397a + fVar.f32397a, this.f32398b + fVar.f32398b, this.f32399c + fVar.f32399c, this.f32400d + fVar.f32400d, this.f32401e + fVar.f32401e, this.f32402f + fVar.f32402f);
    }

    public long m() {
        return this.f32397a + this.f32398b;
    }

    public long n() {
        return this.f32401e;
    }

    public String toString() {
        return v.c(this).e("hitCount", this.f32397a).e("missCount", this.f32398b).e("loadSuccessCount", this.f32399c).e("loadExceptionCount", this.f32400d).e("totalLoadTime", this.f32401e).e("evictionCount", this.f32402f).toString();
    }
}
