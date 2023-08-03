package g5;

import com.qennnsad.aknkaksd.analytics.data.device.DeviceInfo;
import com.qennnsad.aknkaksd.data.sharedpreference.PrefsHelper;
import dagger.internal.r;
import dagger.internal.s;

/* compiled from: LocalIDManager_Factory.java */
@r
@dagger.internal.e
@s("javax.inject.Singleton")
/* loaded from: classes3.dex */
public final class e implements dagger.internal.h<d> {

    /* renamed from: a  reason: collision with root package name */
    private final u7.c<PrefsHelper> f67831a;

    /* renamed from: b  reason: collision with root package name */
    private final u7.c<DeviceInfo> f67832b;

    public e(u7.c<PrefsHelper> cVar, u7.c<DeviceInfo> cVar2) {
        this.f67831a = cVar;
        this.f67832b = cVar2;
    }

    public static e a(u7.c<PrefsHelper> cVar, u7.c<DeviceInfo> cVar2) {
        return new e(cVar, cVar2);
    }

    public static d c(PrefsHelper prefsHelper, DeviceInfo deviceInfo) {
        return new d(prefsHelper, deviceInfo);
    }

    @Override // u7.c
    /* renamed from: b */
    public d get() {
        return c(this.f67831a.get(), this.f67832b.get());
    }
}
