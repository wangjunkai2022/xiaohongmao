package com.qennnsad.aknkaksd.analytics.data.device;

import android.content.Context;
import dagger.internal.e;
import dagger.internal.h;
import dagger.internal.r;
import dagger.internal.s;
import u7.c;

@r({"dagger.hilt.android.qualifiers.ApplicationContext"})
@e
@s("javax.inject.Singleton")
/* loaded from: classes3.dex */
public final class DeviceInfo_Factory implements h<DeviceInfo> {
    private final c<Context> contextProvider;

    public DeviceInfo_Factory(c<Context> cVar) {
        this.contextProvider = cVar;
    }

    public static DeviceInfo_Factory create(c<Context> cVar) {
        return new DeviceInfo_Factory(cVar);
    }

    public static DeviceInfo newInstance(Context context) {
        return new DeviceInfo(context);
    }

    @Override // u7.c
    public DeviceInfo get() {
        return newInstance(this.contextProvider.get());
    }
}
