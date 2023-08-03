.class final Lio/sentry/android/ndk/f;
.super Ljava/lang/Object;
.source "SentryNdkUtil.java"


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static a(Lio/sentry/protocol/l;)V
    .locals 2
    .param p0    # Lio/sentry/protocol/l;
        .annotation build Lm8/h;
        .end annotation
    .end param

    if-nez p0, :cond_0

    return-void

    :cond_0
    const-string v0, "maven:io.sentry:sentry-android-ndk"

    const-string v1, "6.13.0"

    invoke-virtual {p0, v0, v1}, Lio/sentry/protocol/l;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
