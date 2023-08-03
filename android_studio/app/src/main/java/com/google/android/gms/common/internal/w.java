package com.google.android.gms.common.internal;

import androidx.annotation.NonNull;
import androidx.annotation.Nullable;

/* compiled from: com.google.android.gms:play-services-basement@@18.0.1 */
@u2.a
/* loaded from: classes2.dex */
public final class w {
    @Nullable

    /* renamed from: b  reason: collision with root package name */
    private static w f29205b;

    /* renamed from: c  reason: collision with root package name */
    private static final RootTelemetryConfiguration f29206c = new RootTelemetryConfiguration(0, false, false, 0, 0);
    @Nullable

    /* renamed from: a  reason: collision with root package name */
    private RootTelemetryConfiguration f29207a;

    private w() {
    }

    @NonNull
    @u2.a
    public static synchronized w b() {
        w wVar;
        synchronized (w.class) {
            if (f29205b == null) {
                f29205b = new w();
            }
            wVar = f29205b;
        }
        return wVar;
    }

    @Nullable
    @u2.a
    public RootTelemetryConfiguration a() {
        return this.f29207a;
    }

    @y2.d0
    public final synchronized void c(@Nullable RootTelemetryConfiguration rootTelemetryConfiguration) {
        if (rootTelemetryConfiguration == null) {
            this.f29207a = f29206c;
            return;
        }
        RootTelemetryConfiguration rootTelemetryConfiguration2 = this.f29207a;
        if (rootTelemetryConfiguration2 == null || rootTelemetryConfiguration2.getVersion() < rootTelemetryConfiguration.getVersion()) {
            this.f29207a = rootTelemetryConfiguration;
        }
    }
}
