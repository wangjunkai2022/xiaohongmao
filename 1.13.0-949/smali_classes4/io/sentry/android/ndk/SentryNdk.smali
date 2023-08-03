.class public final Lio/sentry/android/ndk/SentryNdk;
.super Ljava/lang/Object;
.source "SentryNdk.java"


# annotations
.annotation build Lm8/a$c;
.end annotation


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "log"

    .line 1
    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    const-string v0, "sentry"

    .line 2
    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    const-string v0, "sentry-android"

    .line 3
    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static close()V
    .locals 0

    invoke-static {}, Lio/sentry/android/ndk/SentryNdk;->shutdown()V

    return-void
.end method

.method public static init(Lio/sentry/android/core/SentryAndroidOptions;)V
    .locals 2
    .param p0    # Lio/sentry/android/core/SentryAndroidOptions;
        .annotation build Lm8/g;
        .end annotation
    .end param

    .line 1
    invoke-virtual {p0}, Lio/sentry/SentryOptions;->getSdkVersion()Lio/sentry/protocol/l;

    move-result-object v0

    invoke-static {v0}, Lio/sentry/android/ndk/f;->a(Lio/sentry/protocol/l;)V

    .line 2
    invoke-static {p0}, Lio/sentry/android/ndk/SentryNdk;->initSentryNative(Lio/sentry/android/core/SentryAndroidOptions;)V

    .line 3
    invoke-virtual {p0}, Lio/sentry/SentryOptions;->isEnableScopeSync()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4
    new-instance v0, Lio/sentry/android/ndk/d;

    invoke-direct {v0, p0}, Lio/sentry/android/ndk/d;-><init>(Lio/sentry/SentryOptions;)V

    invoke-virtual {p0, v0}, Lio/sentry/SentryOptions;->addScopeObserver(Lio/sentry/q0;)V

    .line 5
    :cond_0
    new-instance v0, Lio/sentry/android/ndk/b;

    new-instance v1, Lio/sentry/android/ndk/NativeModuleListLoader;

    invoke-direct {v1}, Lio/sentry/android/ndk/NativeModuleListLoader;-><init>()V

    invoke-direct {v0, p0, v1}, Lio/sentry/android/ndk/b;-><init>(Lio/sentry/android/core/SentryAndroidOptions;Lio/sentry/android/ndk/NativeModuleListLoader;)V

    invoke-virtual {p0, v0}, Lio/sentry/android/core/SentryAndroidOptions;->setDebugImagesLoader(Lio/sentry/android/core/v0;)V

    return-void
.end method

.method private static native initSentryNative(Lio/sentry/android/core/SentryAndroidOptions;)V
    .param p0    # Lio/sentry/android/core/SentryAndroidOptions;
        .annotation build Lm8/g;
        .end annotation
    .end param
.end method

.method private static native shutdown()V
.end method
