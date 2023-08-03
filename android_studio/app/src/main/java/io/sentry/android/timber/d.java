package io.sentry.android.timber;

import io.sentry.h4;
import io.sentry.o0;
import kotlin.Metadata;
import kotlin.jvm.internal.MutablePropertyReference0Impl;
import m8.h;

/* compiled from: SentryTimberIntegration.kt */
@Metadata(bv = {1, 0, 3}, k = 3, mv = {1, 4, 3})
/* loaded from: classes4.dex */
final /* synthetic */ class d extends MutablePropertyReference0Impl {
    d(SentryTimberIntegration sentryTimberIntegration) {
        super(sentryTimberIntegration, SentryTimberIntegration.class, h4.b.f83285c, "getLogger()Lio/sentry/ILogger;", 0);
    }

    @Override // kotlin.jvm.internal.MutablePropertyReference0Impl, kotlin.reflect.KProperty0
    @h
    public Object get() {
        return SentryTimberIntegration.b((SentryTimberIntegration) this.receiver);
    }

    @Override // kotlin.jvm.internal.MutablePropertyReference0Impl, kotlin.reflect.KMutableProperty0
    public void set(@h Object obj) {
        ((SentryTimberIntegration) this.receiver).f83010b = (o0) obj;
    }
}
