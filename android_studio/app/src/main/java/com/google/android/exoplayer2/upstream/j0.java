package com.google.android.exoplayer2.upstream;

import com.google.android.exoplayer2.upstream.m;
import com.google.android.exoplayer2.util.PriorityTaskManager;

/* compiled from: PriorityDataSourceFactory.java */
/* loaded from: classes2.dex */
public final class j0 implements m.a {

    /* renamed from: a  reason: collision with root package name */
    private final m.a f27259a;

    /* renamed from: b  reason: collision with root package name */
    private final PriorityTaskManager f27260b;

    /* renamed from: c  reason: collision with root package name */
    private final int f27261c;

    public j0(m.a aVar, PriorityTaskManager priorityTaskManager, int i4) {
        this.f27259a = aVar;
        this.f27260b = priorityTaskManager;
        this.f27261c = i4;
    }

    @Override // com.google.android.exoplayer2.upstream.m.a
    /* renamed from: d */
    public i0 a() {
        return new i0(this.f27259a.a(), this.f27260b, this.f27261c);
    }
}
