package com.google.android.exoplayer2.upstream;

import android.net.Uri;
import androidx.annotation.Nullable;
import com.google.android.exoplayer2.util.PriorityTaskManager;
import java.io.IOException;
import java.util.List;
import java.util.Map;

/* compiled from: PriorityDataSource.java */
/* loaded from: classes2.dex */
public final class i0 implements m {

    /* renamed from: b  reason: collision with root package name */
    private final m f27251b;

    /* renamed from: c  reason: collision with root package name */
    private final PriorityTaskManager f27252c;

    /* renamed from: d  reason: collision with root package name */
    private final int f27253d;

    public i0(m mVar, PriorityTaskManager priorityTaskManager, int i4) {
        this.f27251b = (m) com.google.android.exoplayer2.util.a.g(mVar);
        this.f27252c = (PriorityTaskManager) com.google.android.exoplayer2.util.a.g(priorityTaskManager);
        this.f27253d = i4;
    }

    @Override // com.google.android.exoplayer2.upstream.m
    public long a(o oVar) throws IOException {
        this.f27252c.d(this.f27253d);
        return this.f27251b.a(oVar);
    }

    @Override // com.google.android.exoplayer2.upstream.m
    public Map<String, List<String>> b() {
        return this.f27251b.b();
    }

    @Override // com.google.android.exoplayer2.upstream.m
    @Nullable
    public Uri c() {
        return this.f27251b.c();
    }

    @Override // com.google.android.exoplayer2.upstream.m
    public void close() throws IOException {
        this.f27251b.close();
    }

    @Override // com.google.android.exoplayer2.upstream.m
    public void e(p0 p0Var) {
        com.google.android.exoplayer2.util.a.g(p0Var);
        this.f27251b.e(p0Var);
    }

    @Override // com.google.android.exoplayer2.upstream.i
    public int read(byte[] bArr, int i4, int i10) throws IOException {
        this.f27252c.d(this.f27253d);
        return this.f27251b.read(bArr, i4, i10);
    }
}
