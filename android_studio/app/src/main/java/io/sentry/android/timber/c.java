package io.sentry.android.timber;

import kotlin.Metadata;
import kotlin.jvm.internal.MutablePropertyReference0Impl;
import m8.h;

/* compiled from: SentryTimberIntegration.kt */
@Metadata(bv = {1, 0, 3}, k = 3, mv = {1, 4, 3})
/* loaded from: classes4.dex */
final /* synthetic */ class c extends MutablePropertyReference0Impl {
    c(SentryTimberIntegration sentryTimberIntegration) {
        super(sentryTimberIntegration, SentryTimberIntegration.class, "tree", "getTree()Lio/sentry/android/timber/SentryTimberTree;", 0);
    }

    @Override // kotlin.jvm.internal.MutablePropertyReference0Impl, kotlin.reflect.KProperty0
    @h
    public Object get() {
        return SentryTimberIntegration.d((SentryTimberIntegration) this.receiver);
    }

    @Override // kotlin.jvm.internal.MutablePropertyReference0Impl, kotlin.reflect.KMutableProperty0
    public void set(@h Object obj) {
        ((SentryTimberIntegration) this.receiver).f83009a = (e) obj;
    }
}
