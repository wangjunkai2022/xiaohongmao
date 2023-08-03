package io.sentry.android.core.internal.util;

import io.sentry.protocol.Device;
import m8.a;

/* compiled from: DeviceOrientations.java */
@a.c
/* loaded from: classes4.dex */
public final class f {
    private f() {
    }

    @m8.h
    public static Device.DeviceOrientation a(int i4) {
        if (i4 != 1) {
            if (i4 != 2) {
                return null;
            }
            return Device.DeviceOrientation.LANDSCAPE;
        }
        return Device.DeviceOrientation.PORTRAIT;
    }
}
