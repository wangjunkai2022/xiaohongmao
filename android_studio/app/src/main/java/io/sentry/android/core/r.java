package io.sentry.android.core;

import android.util.Log;
import io.sentry.SentryLevel;
import m8.a;

/* compiled from: AndroidLogger.java */
@a.c
/* loaded from: classes4.dex */
public final class r implements io.sentry.o0 {
    @m8.g

    /* renamed from: a  reason: collision with root package name */
    private final String f82573a;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: AndroidLogger.java */
    /* loaded from: classes4.dex */
    public static /* synthetic */ class a {

        /* renamed from: a  reason: collision with root package name */
        static final /* synthetic */ int[] f82574a;

        static {
            int[] iArr = new int[SentryLevel.values().length];
            f82574a = iArr;
            try {
                iArr[SentryLevel.INFO.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f82574a[SentryLevel.WARNING.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                f82574a[SentryLevel.ERROR.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                f82574a[SentryLevel.FATAL.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                f82574a[SentryLevel.DEBUG.ordinal()] = 5;
            } catch (NoSuchFieldError unused5) {
            }
        }
    }

    public r() {
        this("Sentry");
    }

    private int e(@m8.g SentryLevel sentryLevel) {
        int i4 = a.f82574a[sentryLevel.ordinal()];
        if (i4 != 1) {
            if (i4 != 2) {
                return i4 != 4 ? 3 : 7;
            }
            return 5;
        }
        return 4;
    }

    @Override // io.sentry.o0
    public void a(@m8.g SentryLevel sentryLevel, @m8.h Throwable th, @m8.g String str, @m8.h Object... objArr) {
        b(sentryLevel, String.format(str, objArr), th);
    }

    @Override // io.sentry.o0
    public void b(@m8.g SentryLevel sentryLevel, @m8.g String str, @m8.h Throwable th) {
        int i4 = a.f82574a[sentryLevel.ordinal()];
        if (i4 == 1) {
            Log.i(this.f82573a, str, th);
        } else if (i4 == 2) {
            Log.w(this.f82573a, str, th);
        } else if (i4 == 3) {
            Log.e(this.f82573a, str, th);
        } else if (i4 != 4) {
            Log.d(this.f82573a, str, th);
        } else {
            Log.wtf(this.f82573a, str, th);
        }
    }

    @Override // io.sentry.o0
    public void c(@m8.g SentryLevel sentryLevel, @m8.g String str, @m8.h Object... objArr) {
        Log.println(e(sentryLevel), this.f82573a, String.format(str, objArr));
    }

    @Override // io.sentry.o0
    public boolean d(@m8.h SentryLevel sentryLevel) {
        return true;
    }

    public r(@m8.g String str) {
        this.f82573a = str;
    }
}
