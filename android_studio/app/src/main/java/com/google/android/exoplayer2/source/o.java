package com.google.android.exoplayer2.source;

import android.net.Uri;
import java.util.Collections;
import java.util.List;
import java.util.Map;
import java.util.concurrent.atomic.AtomicLong;

/* compiled from: LoadEventInfo.java */
/* loaded from: classes2.dex */
public final class o {

    /* renamed from: h  reason: collision with root package name */
    private static final AtomicLong f25053h = new AtomicLong();

    /* renamed from: a  reason: collision with root package name */
    public final long f25054a;

    /* renamed from: b  reason: collision with root package name */
    public final com.google.android.exoplayer2.upstream.o f25055b;

    /* renamed from: c  reason: collision with root package name */
    public final Uri f25056c;

    /* renamed from: d  reason: collision with root package name */
    public final Map<String, List<String>> f25057d;

    /* renamed from: e  reason: collision with root package name */
    public final long f25058e;

    /* renamed from: f  reason: collision with root package name */
    public final long f25059f;

    /* renamed from: g  reason: collision with root package name */
    public final long f25060g;

    public o(long j4, com.google.android.exoplayer2.upstream.o oVar, long j10) {
        this(j4, oVar, oVar.f27288a, Collections.emptyMap(), j10, 0L, 0L);
    }

    public static long a() {
        return f25053h.getAndIncrement();
    }

    public o(long j4, com.google.android.exoplayer2.upstream.o oVar, Uri uri, Map<String, List<String>> map, long j10, long j11, long j12) {
        this.f25054a = j4;
        this.f25055b = oVar;
        this.f25056c = uri;
        this.f25057d = map;
        this.f25058e = j10;
        this.f25059f = j11;
        this.f25060g = j12;
    }
}
