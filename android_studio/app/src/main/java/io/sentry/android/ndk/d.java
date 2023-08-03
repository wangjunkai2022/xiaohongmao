package io.sentry.android.ndk;

import io.sentry.SentryLevel;
import io.sentry.SentryOptions;
import io.sentry.k;
import io.sentry.protocol.w;
import io.sentry.q0;
import io.sentry.util.l;
import java.util.Locale;
import java.util.Map;
import m8.a;
import m8.g;
import m8.h;

/* compiled from: NdkScopeObserver.java */
@a.c
/* loaded from: classes4.dex */
public final class d implements q0 {
    @g

    /* renamed from: a  reason: collision with root package name */
    private final SentryOptions f82790a;
    @g

    /* renamed from: b  reason: collision with root package name */
    private final c f82791b;

    public d(@g SentryOptions sentryOptions) {
        this(sentryOptions, new NativeScope());
    }

    @Override // io.sentry.q0
    public void a(@g String str, @g String str2) {
        try {
            this.f82791b.a(str, str2);
        } catch (Throwable th) {
            this.f82790a.getLogger().a(SentryLevel.ERROR, th, "Scope sync setTag(%s) has an error.", str);
        }
    }

    @Override // io.sentry.q0
    public void b(@g String str) {
        try {
            this.f82791b.b(str);
        } catch (Throwable th) {
            this.f82790a.getLogger().a(SentryLevel.ERROR, th, "Scope sync removeExtra(%s) has an error.", str);
        }
    }

    @Override // io.sentry.q0
    public void c(@g String str) {
        try {
            this.f82791b.c(str);
        } catch (Throwable th) {
            this.f82790a.getLogger().a(SentryLevel.ERROR, th, "Scope sync removeTag(%s) has an error.", str);
        }
    }

    @Override // io.sentry.q0
    public void d(@g String str, @g String str2) {
        try {
            this.f82791b.d(str, str2);
        } catch (Throwable th) {
            this.f82790a.getLogger().a(SentryLevel.ERROR, th, "Scope sync setExtra(%s) has an error.", str);
        }
    }

    @Override // io.sentry.q0
    public void f(@h w wVar) {
        try {
            if (wVar == null) {
                this.f82791b.f();
            } else {
                this.f82791b.g(wVar.j(), wVar.i(), wVar.k(), wVar.n());
            }
        } catch (Throwable th) {
            this.f82790a.getLogger().a(SentryLevel.ERROR, th, "Scope sync setUser has an error.", new Object[0]);
        }
    }

    @Override // io.sentry.q0
    public void g(@g io.sentry.f fVar) {
        try {
            String lowerCase = fVar.k() != null ? fVar.k().name().toLowerCase(Locale.ROOT) : null;
            String g4 = k.g(fVar.m());
            Map<String, Object> j4 = fVar.j();
            this.f82791b.e(lowerCase, fVar.l(), fVar.h(), fVar.n(), g4, j4.isEmpty() ? null : this.f82790a.getSerializer().e(j4));
        } catch (Throwable th) {
            this.f82790a.getLogger().a(SentryLevel.ERROR, th, "Scope sync addBreadcrumb has an error.", new Object[0]);
        }
    }

    d(@g SentryOptions sentryOptions, @g c cVar) {
        this.f82790a = (SentryOptions) l.c(sentryOptions, "The SentryOptions object is required.");
        this.f82791b = (c) l.c(cVar, "The NativeScope object is required.");
    }
}
