.class public final Lio/sentry/android/core/g1;
.super Ljava/lang/Object;
.source "ScreenshotEventProcessor.java"

# interfaces
.implements Lio/sentry/z;


# annotations
.annotation build Lm8/a$c;
.end annotation


# instance fields
.field private final a:Lio/sentry/android/core/SentryAndroidOptions;
    .annotation build Lm8/g;
    .end annotation
.end field

.field private final b:Lio/sentry/android/core/m0;
    .annotation build Lm8/g;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lio/sentry/android/core/SentryAndroidOptions;Lio/sentry/android/core/m0;)V
    .locals 1
    .param p1    # Lio/sentry/android/core/SentryAndroidOptions;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .param p2    # Lio/sentry/android/core/m0;
        .annotation build Lm8/g;
        .end annotation
    .end param

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "SentryAndroidOptions is required"

    .line 2
    invoke-static {p1, v0}, Lio/sentry/util/l;->c(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/sentry/android/core/SentryAndroidOptions;

    iput-object p1, p0, Lio/sentry/android/core/g1;->a:Lio/sentry/android/core/SentryAndroidOptions;

    const-string p1, "BuildInfoProvider is required"

    .line 3
    invoke-static {p2, p1}, Lio/sentry/util/l;->c(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/sentry/android/core/m0;

    iput-object p1, p0, Lio/sentry/android/core/g1;->b:Lio/sentry/android/core/m0;

    return-void
.end method


# virtual methods
.method public a(Lio/sentry/h4;Lio/sentry/b0;)Lio/sentry/h4;
    .locals 3
    .param p1    # Lio/sentry/h4;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .param p2    # Lio/sentry/b0;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .annotation build Lm8/g;
    .end annotation

    .line 1
    invoke-virtual {p1}, Lio/sentry/h4;->H0()Z

    move-result v0

    if-nez v0, :cond_0

    return-object p1

    .line 2
    :cond_0
    iget-object v0, p0, Lio/sentry/android/core/g1;->a:Lio/sentry/android/core/SentryAndroidOptions;

    invoke-virtual {v0}, Lio/sentry/android/core/SentryAndroidOptions;->isAttachScreenshot()Z

    move-result v0

    if-nez v0, :cond_1

    .line 3
    iget-object p2, p0, Lio/sentry/android/core/g1;->a:Lio/sentry/android/core/SentryAndroidOptions;

    invoke-virtual {p2}, Lio/sentry/SentryOptions;->getLogger()Lio/sentry/o0;

    move-result-object p2

    sget-object v0, Lio/sentry/SentryLevel;->DEBUG:Lio/sentry/SentryLevel;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "attachScreenshot is disabled."

    invoke-interface {p2, v0, v2, v1}, Lio/sentry/o0;->c(Lio/sentry/SentryLevel;Ljava/lang/String;[Ljava/lang/Object;)V

    return-object p1

    .line 4
    :cond_1
    invoke-static {}, Lio/sentry/android/core/o0;->c()Lio/sentry/android/core/o0;

    move-result-object v0

    invoke-virtual {v0}, Lio/sentry/android/core/o0;->b()Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 5
    invoke-static {p2}, Lio/sentry/util/h;->h(Lio/sentry/b0;)Z

    move-result v1

    if-eqz v1, :cond_2

    goto :goto_0

    .line 6
    :cond_2
    iget-object v1, p0, Lio/sentry/android/core/g1;->a:Lio/sentry/android/core/SentryAndroidOptions;

    invoke-virtual {v1}, Lio/sentry/SentryOptions;->getLogger()Lio/sentry/o0;

    move-result-object v1

    iget-object v2, p0, Lio/sentry/android/core/g1;->b:Lio/sentry/android/core/m0;

    invoke-static {v0, v1, v2}, Lio/sentry/android/core/internal/util/k;->b(Landroid/app/Activity;Lio/sentry/o0;Lio/sentry/android/core/m0;)[B

    move-result-object v1

    if-nez v1, :cond_3

    return-object p1

    .line 7
    :cond_3
    invoke-static {v1}, Lio/sentry/b;->a([B)Lio/sentry/b;

    move-result-object v1

    invoke-virtual {p2, v1}, Lio/sentry/b0;->n(Lio/sentry/b;)V

    const-string v1, "android:activity"

    .line 8
    invoke-virtual {p2, v1, v0}, Lio/sentry/b0;->m(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_4
    :goto_0
    return-object p1
.end method

.method public synthetic b(Lio/sentry/protocol/u;Lio/sentry/b0;)Lio/sentry/protocol/u;
    .locals 0

    invoke-static {p0, p1, p2}, Lio/sentry/y;->b(Lio/sentry/z;Lio/sentry/protocol/u;Lio/sentry/b0;)Lio/sentry/protocol/u;

    move-result-object p1

    return-object p1
.end method
