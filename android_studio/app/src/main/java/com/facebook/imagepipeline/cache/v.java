package com.facebook.imagepipeline.cache;

import com.facebook.infer.annotation.Nullsafe;
import java.util.concurrent.TimeUnit;

/* compiled from: MemoryCacheParams.java */
@Nullsafe(Nullsafe.Mode.STRICT)
/* loaded from: classes.dex */
public class v {

    /* renamed from: a  reason: collision with root package name */
    public final int f12157a;

    /* renamed from: b  reason: collision with root package name */
    public final int f12158b;

    /* renamed from: c  reason: collision with root package name */
    public final int f12159c;

    /* renamed from: d  reason: collision with root package name */
    public final int f12160d;

    /* renamed from: e  reason: collision with root package name */
    public final int f12161e;

    /* renamed from: f  reason: collision with root package name */
    public final long f12162f;

    public v(int maxCacheSize, int maxCacheEntries, int maxEvictionQueueSize, int maxEvictionQueueEntries, int maxCacheEntrySize) {
        this(maxCacheSize, maxCacheEntries, maxEvictionQueueSize, maxEvictionQueueEntries, maxCacheEntrySize, TimeUnit.MINUTES.toMillis(5L));
    }

    public v(int maxCacheSize, int maxCacheEntries, int maxEvictionQueueSize, int maxEvictionQueueEntries, int maxCacheEntrySize, long paramsCheckIntervalMs) {
        this.f12157a = maxCacheSize;
        this.f12158b = maxCacheEntries;
        this.f12159c = maxEvictionQueueSize;
        this.f12160d = maxEvictionQueueEntries;
        this.f12161e = maxCacheEntrySize;
        this.f12162f = paramsCheckIntervalMs;
    }
}
