package com.qennnsad.aknkaksd.analytics.error;

import com.google.gson.JsonIOException;
import io.sentry.c3;
import io.sentry.protocol.w;
import java.io.IOException;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import m8.g;
import timber.log.Timber;

/* compiled from: SentryReporter.kt */
@Metadata(bv = {}, d1 = {"\u0000\u001c\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0003\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0006\bÆ\u0002\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\n\u0010\u000bJ\u0010\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002H\u0016J\u0010\u0010\b\u001a\u00020\u00042\u0006\u0010\u0007\u001a\u00020\u0006H\u0016J\b\u0010\t\u001a\u00020\u0004H\u0016¨\u0006\f"}, d2 = {"Lcom/qennnsad/aknkaksd/analytics/error/d;", "Lcom/qennnsad/aknkaksd/analytics/error/b;", "", "e", "", "b", "", "id", "a", "c", "<init>", "()V", "app_pron_playerRelease"}, k = 1, mv = {1, 7, 1})
/* loaded from: classes3.dex */
public final class d implements b {
    @g

    /* renamed from: b  reason: collision with root package name */
    public static final d f47682b = new d();

    private d() {
    }

    @Override // com.qennnsad.aknkaksd.analytics.error.b
    public void a(@g String id) {
        Intrinsics.checkNotNullParameter(id, "id");
        w wVar = new w();
        wVar.q(id);
        c3.c0(wVar);
    }

    @Override // com.qennnsad.aknkaksd.analytics.error.b
    public void b(@g Throwable e4) {
        Intrinsics.checkNotNullParameter(e4, "e");
        if (!(e4 instanceof IOException) || (e4 instanceof JsonIOException)) {
            Timber.f93860a.e(new LAControlledError(e4));
        }
    }

    @Override // com.qennnsad.aknkaksd.analytics.error.b
    public void c() {
        c3.A(0L);
    }
}
