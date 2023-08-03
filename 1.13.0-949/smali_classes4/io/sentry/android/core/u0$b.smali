.class final Lio/sentry/android/core/u0$b;
.super Lio/sentry/android/core/u0;
.source "EnvelopeFileObserverIntegration.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/sentry/android/core/u0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "b"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lio/sentry/android/core/u0;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lio/sentry/android/core/u0$a;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Lio/sentry/android/core/u0$b;-><init>()V

    return-void
.end method


# virtual methods
.method protected d(Lio/sentry/SentryOptions;)Ljava/lang/String;
    .locals 0
    .param p1    # Lio/sentry/SentryOptions;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .annotation build Lm8/h;
    .end annotation

    invoke-virtual {p1}, Lio/sentry/SentryOptions;->getOutboxPath()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method
