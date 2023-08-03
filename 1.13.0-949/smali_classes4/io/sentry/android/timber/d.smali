.class final synthetic Lio/sentry/android/timber/d;
.super Lkotlin/jvm/internal/MutablePropertyReference0Impl;
.source "SentryTimberIntegration.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    k = 0x3
    mv = {
        0x1,
        0x4,
        0x3
    }
.end annotation


# direct methods
.method constructor <init>(Lio/sentry/android/timber/SentryTimberIntegration;)V
    .locals 6

    const-class v2, Lio/sentry/android/timber/SentryTimberIntegration;

    const-string v3, "logger"

    const-string v4, "getLogger()Lio/sentry/ILogger;"

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v5}, Lkotlin/jvm/internal/MutablePropertyReference0Impl;-><init>(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    return-void
.end method


# virtual methods
.method public get()Ljava/lang/Object;
    .locals 1
    .annotation build Lm8/h;
    .end annotation

    iget-object v0, p0, Lkotlin/jvm/internal/CallableReference;->receiver:Ljava/lang/Object;

    check-cast v0, Lio/sentry/android/timber/SentryTimberIntegration;

    invoke-static {v0}, Lio/sentry/android/timber/SentryTimberIntegration;->b(Lio/sentry/android/timber/SentryTimberIntegration;)Lio/sentry/o0;

    move-result-object v0

    return-object v0
.end method

.method public set(Ljava/lang/Object;)V
    .locals 1
    .param p1    # Ljava/lang/Object;
        .annotation build Lm8/h;
        .end annotation
    .end param

    iget-object v0, p0, Lkotlin/jvm/internal/CallableReference;->receiver:Ljava/lang/Object;

    check-cast v0, Lio/sentry/android/timber/SentryTimberIntegration;

    check-cast p1, Lio/sentry/o0;

    invoke-static {v0, p1}, Lio/sentry/android/timber/SentryTimberIntegration;->h(Lio/sentry/android/timber/SentryTimberIntegration;Lio/sentry/o0;)V

    return-void
.end method
