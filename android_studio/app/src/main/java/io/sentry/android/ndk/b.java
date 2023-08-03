package io.sentry.android.ndk;

import io.sentry.SentryLevel;
import io.sentry.SentryOptions;
import io.sentry.android.core.SentryAndroidOptions;
import io.sentry.android.core.v0;
import io.sentry.protocol.DebugImage;
import io.sentry.util.l;
import java.util.Arrays;
import java.util.List;
import m8.g;
import m8.h;
import m8.n;

/* compiled from: DebugImagesLoader.java */
/* loaded from: classes4.dex */
final class b implements v0 {
    @h

    /* renamed from: c  reason: collision with root package name */
    private static List<DebugImage> f82786c;
    @g

    /* renamed from: d  reason: collision with root package name */
    private static final Object f82787d = new Object();
    @g

    /* renamed from: a  reason: collision with root package name */
    private final SentryOptions f82788a;
    @g

    /* renamed from: b  reason: collision with root package name */
    private final NativeModuleListLoader f82789b;

    /* JADX INFO: Access modifiers changed from: package-private */
    public b(@g SentryAndroidOptions sentryAndroidOptions, @g NativeModuleListLoader nativeModuleListLoader) {
        this.f82788a = (SentryOptions) l.c(sentryAndroidOptions, "The SentryAndroidOptions is required.");
        this.f82789b = (NativeModuleListLoader) l.c(nativeModuleListLoader, "The NativeModuleListLoader is required.");
    }

    @Override // io.sentry.android.core.v0
    @h
    public List<DebugImage> a() {
        DebugImage[] b10;
        synchronized (f82787d) {
            if (f82786c == null && (b10 = this.f82789b.b()) != null) {
                f82786c = Arrays.asList(b10);
                this.f82788a.getLogger().c(SentryLevel.DEBUG, "Debug images loaded: %d", Integer.valueOf(f82786c.size()));
            }
        }
        return f82786c;
    }

    @Override // io.sentry.android.core.v0
    public void b() {
        synchronized (f82787d) {
            try {
                this.f82789b.a();
                this.f82788a.getLogger().c(SentryLevel.INFO, "Debug images cleared.", new Object[0]);
                f82786c = null;
            }
        }
    }

    @h
    @n
    List<DebugImage> c() {
        return f82786c;
    }
}
