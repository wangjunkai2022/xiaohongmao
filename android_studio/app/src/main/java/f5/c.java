package f5;

import android.app.DownloadManager;
import android.content.Context;
import dagger.internal.p;
import dagger.internal.r;
import dagger.internal.s;

/* compiled from: AppUpdateModule_ProvideDownloadManagerFactory.java */
@r({"dagger.hilt.android.qualifiers.ApplicationContext"})
@dagger.internal.e
@s("javax.inject.Singleton")
/* loaded from: classes3.dex */
public final class c implements dagger.internal.h<DownloadManager> {

    /* renamed from: a  reason: collision with root package name */
    private final a f65898a;

    /* renamed from: b  reason: collision with root package name */
    private final u7.c<Context> f65899b;

    public c(a aVar, u7.c<Context> cVar) {
        this.f65898a = aVar;
        this.f65899b = cVar;
    }

    public static c a(a aVar, u7.c<Context> cVar) {
        return new c(aVar, cVar);
    }

    public static DownloadManager c(a aVar, Context context) {
        return (DownloadManager) p.f(aVar.b(context));
    }

    @Override // u7.c
    /* renamed from: b */
    public DownloadManager get() {
        return c(this.f65898a, this.f65899b.get());
    }
}
