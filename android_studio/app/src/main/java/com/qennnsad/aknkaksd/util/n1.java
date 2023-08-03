package com.qennnsad.aknkaksd.util;

import android.app.DownloadManager;
import android.content.Context;

/* compiled from: UpdateUtil_Factory.java */
@dagger.internal.r
@dagger.internal.e
@dagger.internal.s("javax.inject.Singleton")
/* loaded from: classes3.dex */
public final class n1 implements dagger.internal.h<m1> {

    /* renamed from: a  reason: collision with root package name */
    private final u7.c<Context> f54865a;

    /* renamed from: b  reason: collision with root package name */
    private final u7.c<g5.a> f54866b;

    /* renamed from: c  reason: collision with root package name */
    private final u7.c<DownloadManager> f54867c;

    public n1(u7.c<Context> cVar, u7.c<g5.a> cVar2, u7.c<DownloadManager> cVar3) {
        this.f54865a = cVar;
        this.f54866b = cVar2;
        this.f54867c = cVar3;
    }

    public static n1 a(u7.c<Context> cVar, u7.c<g5.a> cVar2, u7.c<DownloadManager> cVar3) {
        return new n1(cVar, cVar2, cVar3);
    }

    public static m1 c(Context context, g5.a aVar, DownloadManager downloadManager) {
        return new m1(context, aVar, downloadManager);
    }

    @Override // u7.c
    /* renamed from: b */
    public m1 get() {
        return c(this.f54865a.get(), this.f54866b.get(), this.f54867c.get());
    }
}
