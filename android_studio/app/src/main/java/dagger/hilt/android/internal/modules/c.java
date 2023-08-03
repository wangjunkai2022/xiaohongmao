package dagger.hilt.android.internal.modules;

import android.app.Application;
import android.content.Context;
import d6.h;
import d6.i;

/* compiled from: ApplicationContextModule.java */
@dagger.hilt.e({p6.a.class})
@h
/* loaded from: classes3.dex */
public final class c {

    /* renamed from: a  reason: collision with root package name */
    private final Context f62053a;

    public c(Context applicationContext) {
        this.f62053a = applicationContext;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @i
    public Application a() {
        return g6.a.a(this.f62053a);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @i
    @m6.b
    public Context b() {
        return this.f62053a;
    }
}
