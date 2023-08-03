package io.sentry.android.ndk;

import io.sentry.protocol.DebugImage;
import m8.h;

/* loaded from: classes4.dex */
final class NativeModuleListLoader {
    public static native void nativeClearModuleList();

    public static native DebugImage[] nativeLoadModuleList();

    public void a() {
        nativeClearModuleList();
    }

    @h
    public DebugImage[] b() {
        return nativeLoadModuleList();
    }
}
