package f5;

import com.google.gson.Gson;
import dagger.internal.p;
import dagger.internal.r;
import dagger.internal.s;

/* compiled from: SdkModule_ProvideGsonFactory.java */
@r
@dagger.internal.e
@s("javax.inject.Singleton")
/* loaded from: classes3.dex */
public final class i implements dagger.internal.h<Gson> {

    /* renamed from: a  reason: collision with root package name */
    private final g f65919a;

    public i(g gVar) {
        this.f65919a = gVar;
    }

    public static i a(g gVar) {
        return new i(gVar);
    }

    public static Gson c(g gVar) {
        return (Gson) p.f(gVar.b());
    }

    @Override // u7.c
    /* renamed from: b */
    public Gson get() {
        return c(this.f65919a);
    }
}
