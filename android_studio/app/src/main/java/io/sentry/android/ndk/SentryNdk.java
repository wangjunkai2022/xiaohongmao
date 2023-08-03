package io.sentry.android.ndk;

import com.ksy.statlibrary.db.DBConstant;
import io.sentry.android.core.SentryAndroidOptions;
import m8.a;
import m8.g;

@a.c
/* loaded from: classes4.dex */
public final class SentryNdk {
    static {
        System.loadLibrary(DBConstant.TABLE_NAME_LOG);
        System.loadLibrary("sentry");
        System.loadLibrary("sentry-android");
    }

    private SentryNdk() {
    }

    public static void close() {
        shutdown();
    }

    public static void init(@g SentryAndroidOptions sentryAndroidOptions) {
        f.a(sentryAndroidOptions.getSdkVersion());
        initSentryNative(sentryAndroidOptions);
        if (sentryAndroidOptions.isEnableScopeSync()) {
            sentryAndroidOptions.addScopeObserver(new d(sentryAndroidOptions));
        }
        sentryAndroidOptions.setDebugImagesLoader(new b(sentryAndroidOptions, new NativeModuleListLoader()));
    }

    private static native void initSentryNative(@g SentryAndroidOptions sentryAndroidOptions);

    private static native void shutdown();
}
