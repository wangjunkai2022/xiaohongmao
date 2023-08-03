package io.sentry.android.core;

import android.os.SystemClock;
import io.sentry.j3;
import m8.a;

/* compiled from: AppStartState.java */
@a.c
/* loaded from: classes4.dex */
public final class i0 {
    @m8.g

    /* renamed from: e  reason: collision with root package name */
    private static i0 f82424e = new i0();

    /* renamed from: f  reason: collision with root package name */
    private static final int f82425f = 60000;
    @m8.h

    /* renamed from: a  reason: collision with root package name */
    private Long f82426a;
    @m8.h

    /* renamed from: b  reason: collision with root package name */
    private Long f82427b;
    @m8.h

    /* renamed from: c  reason: collision with root package name */
    private Boolean f82428c = null;
    @m8.h

    /* renamed from: d  reason: collision with root package name */
    private j3 f82429d;

    private i0() {
    }

    @m8.g
    public static i0 d() {
        return f82424e;
    }

    @m8.h
    public synchronized Long a() {
        Long l10;
        if (this.f82426a != null && (l10 = this.f82427b) != null && this.f82428c != null) {
            long longValue = l10.longValue() - this.f82426a.longValue();
            if (longValue >= com.google.android.exoplayer2.upstream.w.f27407d) {
                return null;
            }
            return Long.valueOf(longValue);
        }
        return null;
    }

    @m8.h
    public Long b() {
        return this.f82426a;
    }

    @m8.h
    public j3 c() {
        return this.f82429d;
    }

    @m8.h
    public Boolean e() {
        return this.f82428c;
    }

    @m8.k
    public synchronized void f() {
        this.f82429d = null;
        this.f82426a = null;
        this.f82427b = null;
    }

    @m8.k
    void g() {
        f82424e = new i0();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public synchronized void h() {
        i(SystemClock.uptimeMillis());
    }

    @m8.k
    void i(long j4) {
        this.f82427b = Long.valueOf(j4);
    }

    @m8.k
    public synchronized void j(long j4) {
        this.f82426a = Long.valueOf(j4);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public synchronized void k(long j4, @m8.g j3 j3Var) {
        if (this.f82429d == null || this.f82426a == null) {
            this.f82429d = j3Var;
            this.f82426a = Long.valueOf(j4);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public synchronized void l(boolean z9) {
        if (this.f82428c != null) {
            return;
        }
        this.f82428c = Boolean.valueOf(z9);
    }
}
