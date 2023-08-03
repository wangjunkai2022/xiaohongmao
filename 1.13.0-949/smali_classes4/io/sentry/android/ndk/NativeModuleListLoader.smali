.class final Lio/sentry/android/ndk/NativeModuleListLoader;
.super Ljava/lang/Object;
.source "NativeModuleListLoader.java"


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static native nativeClearModuleList()V
.end method

.method public static native nativeLoadModuleList()[Lio/sentry/protocol/DebugImage;
.end method


# virtual methods
.method public a()V
    .locals 0

    invoke-static {}, Lio/sentry/android/ndk/NativeModuleListLoader;->nativeClearModuleList()V

    return-void
.end method

.method public b()[Lio/sentry/protocol/DebugImage;
    .locals 1
    .annotation build Lm8/h;
    .end annotation

    invoke-static {}, Lio/sentry/android/ndk/NativeModuleListLoader;->nativeLoadModuleList()[Lio/sentry/protocol/DebugImage;

    move-result-object v0

    return-object v0
.end method
