package com.google.android.exoplayer2.drm;

import android.net.Uri;
import androidx.annotation.GuardedBy;
import androidx.annotation.Nullable;
import androidx.annotation.RequiresApi;
import com.google.android.exoplayer2.b1;
import com.google.android.exoplayer2.drm.DefaultDrmSessionManager;
import com.google.android.exoplayer2.upstream.HttpDataSource;
import com.google.android.exoplayer2.upstream.u;
import com.google.android.exoplayer2.util.z0;
import java.util.Map;

/* compiled from: DefaultDrmSessionManagerProvider.java */
/* loaded from: classes2.dex */
public final class j implements x {

    /* renamed from: a  reason: collision with root package name */
    private final Object f21785a = new Object();
    @GuardedBy(org.aspectj.lang.c.f91028k)

    /* renamed from: b  reason: collision with root package name */
    private b1.e f21786b;
    @GuardedBy(org.aspectj.lang.c.f91028k)

    /* renamed from: c  reason: collision with root package name */
    private u f21787c;
    @Nullable

    /* renamed from: d  reason: collision with root package name */
    private HttpDataSource.b f21788d;
    @Nullable

    /* renamed from: e  reason: collision with root package name */
    private String f21789e;

    @RequiresApi(18)
    private u b(b1.e eVar) {
        HttpDataSource.b bVar = this.f21788d;
        if (bVar == null) {
            bVar = new u.b().k(this.f21789e);
        }
        Uri uri = eVar.f21483b;
        i0 i0Var = new i0(uri == null ? null : uri.toString(), eVar.f21487f, bVar);
        for (Map.Entry<String, String> entry : eVar.f21484c.entrySet()) {
            i0Var.g(entry.getKey(), entry.getValue());
        }
        DefaultDrmSessionManager a10 = new DefaultDrmSessionManager.b().h(eVar.f21482a, h0.f21771k).d(eVar.f21485d).e(eVar.f21486e).g(com.google.common.primitives.f.B(eVar.f21488g)).a(i0Var);
        a10.D(0, eVar.a());
        return a10;
    }

    @Override // com.google.android.exoplayer2.drm.x
    public u a(b1 b1Var) {
        u uVar;
        com.google.android.exoplayer2.util.a.g(b1Var.f21439b);
        b1.e eVar = b1Var.f21439b.f21504c;
        if (eVar != null && z0.f27743a >= 18) {
            synchronized (this.f21785a) {
                if (!z0.c(eVar, this.f21786b)) {
                    this.f21786b = eVar;
                    this.f21787c = b(eVar);
                }
                uVar = (u) com.google.android.exoplayer2.util.a.g(this.f21787c);
            }
            return uVar;
        }
        return u.f21818a;
    }

    public void c(@Nullable HttpDataSource.b bVar) {
        this.f21788d = bVar;
    }

    public void d(@Nullable String str) {
        this.f21789e = str;
    }
}
