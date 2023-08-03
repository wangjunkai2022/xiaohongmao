package g5;

import com.qennnsad.aknkaksd.data.sharedpreference.PrefsHelper;
import dagger.internal.r;
import dagger.internal.s;

/* compiled from: LocalDataManager_Factory.java */
@r
@dagger.internal.e
@s("javax.inject.Singleton")
/* loaded from: classes3.dex */
public final class c implements dagger.internal.h<a> {

    /* renamed from: a  reason: collision with root package name */
    private final u7.c<PrefsHelper> f67827a;

    public c(u7.c<PrefsHelper> cVar) {
        this.f67827a = cVar;
    }

    public static c a(u7.c<PrefsHelper> cVar) {
        return new c(cVar);
    }

    public static a c(PrefsHelper prefsHelper) {
        return new a(prefsHelper);
    }

    @Override // u7.c
    /* renamed from: b */
    public a get() {
        return c(this.f67827a.get());
    }
}
