package x4;

import com.qennnsad.aknkaksd.analytics.data.device.DeviceInfo;
import com.qennnsad.aknkaksd.data.sharedpreference.PrefsHelper;
import dagger.internal.e;
import dagger.internal.h;
import dagger.internal.r;
import dagger.internal.s;

/* compiled from: Analytics_Factory.java */
@r
@e
@s("javax.inject.Singleton")
/* loaded from: classes3.dex */
public final class c implements h<a> {

    /* renamed from: a  reason: collision with root package name */
    private final u7.c<g5.a> f94667a;

    /* renamed from: b  reason: collision with root package name */
    private final u7.c<DeviceInfo> f94668b;

    /* renamed from: c  reason: collision with root package name */
    private final u7.c<PrefsHelper> f94669c;

    /* renamed from: d  reason: collision with root package name */
    private final u7.c<y4.e> f94670d;

    public c(u7.c<g5.a> cVar, u7.c<DeviceInfo> cVar2, u7.c<PrefsHelper> cVar3, u7.c<y4.e> cVar4) {
        this.f94667a = cVar;
        this.f94668b = cVar2;
        this.f94669c = cVar3;
        this.f94670d = cVar4;
    }

    public static c a(u7.c<g5.a> cVar, u7.c<DeviceInfo> cVar2, u7.c<PrefsHelper> cVar3, u7.c<y4.e> cVar4) {
        return new c(cVar, cVar2, cVar3, cVar4);
    }

    public static a c(g5.a aVar, DeviceInfo deviceInfo, PrefsHelper prefsHelper, y4.e eVar) {
        return new a(aVar, deviceInfo, prefsHelper, eVar);
    }

    @Override // u7.c
    /* renamed from: b */
    public a get() {
        return c(this.f94667a.get(), this.f94668b.get(), this.f94669c.get(), this.f94670d.get());
    }
}
