package g5;

import com.google.gson.Gson;
import com.qennnsad.aknkaksd.data.repository.m;
import dagger.internal.r;
import dagger.internal.s;

/* compiled from: LoginManager_Factory.java */
@r
@dagger.internal.e
@s("javax.inject.Singleton")
/* loaded from: classes3.dex */
public final class g implements dagger.internal.h<f> {

    /* renamed from: a  reason: collision with root package name */
    private final u7.c<m> f67835a;

    /* renamed from: b  reason: collision with root package name */
    private final u7.c<Gson> f67836b;

    public g(u7.c<m> cVar, u7.c<Gson> cVar2) {
        this.f67835a = cVar;
        this.f67836b = cVar2;
    }

    public static g a(u7.c<m> cVar, u7.c<Gson> cVar2) {
        return new g(cVar, cVar2);
    }

    public static f c(m mVar, Gson gson) {
        return new f(mVar, gson);
    }

    @Override // u7.c
    /* renamed from: b */
    public f get() {
        return c(this.f67835a.get(), this.f67836b.get());
    }
}
