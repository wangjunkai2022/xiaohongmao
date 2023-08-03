package com.giphy.sdk.ui.utils;

import com.google.android.exoplayer2.upstream.cache.Cache;
import com.koushikdutta.async.http.cache.ResponseCacheMiddleware;
import kotlin.Metadata;
import kotlin.jvm.internal.MutablePropertyReference0Impl;

/* compiled from: VideoCache.kt */
@Metadata(bv = {1, 0, 3}, k = 3, mv = {1, 4, 1})
/* loaded from: classes2.dex */
final /* synthetic */ class i extends MutablePropertyReference0Impl {
    i(j jVar) {
        super(jVar, j.class, ResponseCacheMiddleware.f44810o, "getCache()Lcom/google/android/exoplayer2/upstream/cache/Cache;", 0);
    }

    @Override // kotlin.jvm.internal.MutablePropertyReference0Impl, kotlin.reflect.KProperty0
    @m8.h
    public Object get() {
        return ((j) this.receiver).b();
    }

    @Override // kotlin.jvm.internal.MutablePropertyReference0Impl, kotlin.reflect.KMutableProperty0
    public void set(@m8.h Object obj) {
        ((j) this.receiver).i((Cache) obj);
    }
}
