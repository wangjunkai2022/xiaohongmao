.class public final Lcom/qennnsad/aknkaksd/initializers/SentryInitializer;
.super Ljava/lang/Object;
.source "SentryInitializer.kt"

# interfaces
.implements Landroidx/startup/Initializer;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroidx/startup/Initializer<",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000 \n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010!\n\u0002\u0018\u0002\n\u0000\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00020\u0001B\u0005\u00a2\u0006\u0002\u0010\u0003J\u0010\u0010\u0004\u001a\u00020\u00022\u0006\u0010\u0005\u001a\u00020\u0006H\u0016J\u001a\u0010\u0007\u001a\u0014\u0012\u0010\u0012\u000e\u0012\n\u0008\u0001\u0012\u0006\u0012\u0002\u0008\u00030\u00010\t0\u0008H\u0016\u00a8\u0006\n"
    }
    d2 = {
        "Lcom/qennnsad/aknkaksd/initializers/SentryInitializer;",
        "Landroidx/startup/Initializer;",
        "",
        "()V",
        "create",
        "context",
        "Landroid/content/Context;",
        "dependencies",
        "",
        "Ljava/lang/Class;",
        "app_pron_playerRelease"
    }
    k = 0x1
    mv = {
        0x1,
        0x7,
        0x1
    }
    xi = 0x30
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic a(Ljava/lang/String;Lio/sentry/android/core/SentryAndroidOptions;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/qennnsad/aknkaksd/initializers/SentryInitializer;->c(Ljava/lang/String;Lio/sentry/android/core/SentryAndroidOptions;)V

    return-void
.end method

.method public static synthetic b(Ljava/lang/Thread$UncaughtExceptionHandler;Ljava/lang/Thread;Ljava/lang/Throwable;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/qennnsad/aknkaksd/initializers/SentryInitializer;->d(Ljava/lang/Thread$UncaughtExceptionHandler;Ljava/lang/Thread;Ljava/lang/Throwable;)V

    return-void
.end method

.method private static final c(Ljava/lang/String;Lio/sentry/android/core/SentryAndroidOptions;)V
    .locals 2

    const-string v0, "$env"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "options"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p1, p0}, Lio/sentry/SentryOptions;->setEnvironment(Ljava/lang/String;)V

    const/4 p0, 0x1

    .line 2
    invoke-virtual {p1, p0}, Lio/sentry/SentryOptions;->setSendDefaultPii(Z)V

    .line 3
    invoke-virtual {p1, p0}, Lio/sentry/SentryOptions;->setEnableUserInteractionTracing(Z)V

    .line 4
    invoke-virtual {p1, p0}, Lio/sentry/android/core/SentryAndroidOptions;->enableAllAutoBreadcrumbs(Z)V

    .line 5
    new-instance p0, Lio/sentry/android/timber/SentryTimberIntegration;

    .line 6
    sget-object v0, Lio/sentry/SentryLevel;->ERROR:Lio/sentry/SentryLevel;

    .line 7
    sget-object v1, Lio/sentry/SentryLevel;->INFO:Lio/sentry/SentryLevel;

    .line 8
    invoke-direct {p0, v0, v1}, Lio/sentry/android/timber/SentryTimberIntegration;-><init>(Lio/sentry/SentryLevel;Lio/sentry/SentryLevel;)V

    .line 9
    invoke-virtual {p1, p0}, Lio/sentry/SentryOptions;->addIntegration(Lio/sentry/z0;)V

    const-string p0, "im"

    const-string v0, "1.0.29-SNAPSHOT"

    .line 10
    invoke-virtual {p1, p0, v0}, Lio/sentry/SentryOptions;->setTag(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private static final d(Ljava/lang/Thread$UncaughtExceptionHandler;Ljava/lang/Thread;Ljava/lang/Throwable;)V
    .locals 3

    const-string v0, "thread"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz p2, :cond_0

    .line 1
    sget-object v0, Ltimber/log/Timber;->a:Ltimber/log/Timber$b;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p2, v1, v2

    const-string v2, "Uncaught Exception: "

    invoke-virtual {v0, v2, v1}, Ltimber/log/Timber$b;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    if-eqz p0, :cond_0

    .line 2
    invoke-interface {p0, p1, p2}, Ljava/lang/Thread$UncaughtExceptionHandler;->uncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public create(Landroid/content/Context;)Ljava/lang/Object;
    .locals 3
    .param p1    # Landroid/content/Context;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .annotation build Lm8/g;
    .end annotation

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    sget-object v0, Ltimber/log/Timber;->a:Ltimber/log/Timber$b;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "..."

    invoke-virtual {v0, v2, v1}, Ltimber/log/Timber$b;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2
    new-instance v0, Lcom/qennnsad/aknkaksd/initializers/c;

    const-string v1, "production"

    invoke-direct {v0, v1}, Lcom/qennnsad/aknkaksd/initializers/c;-><init>(Ljava/lang/String;)V

    invoke-static {p1, v0}, Lio/sentry/android/core/l1;->g(Landroid/content/Context;Lio/sentry/c3$a;)V

    .line 3
    sget-object p1, Lcom/qennnsad/aknkaksd/analytics/error/b;->a:Lcom/qennnsad/aknkaksd/analytics/error/b$a;

    invoke-virtual {p1}, Lcom/qennnsad/aknkaksd/analytics/error/b$a;->a()Lcom/qennnsad/aknkaksd/analytics/error/b;

    move-result-object p1

    invoke-interface {p1}, Lcom/qennnsad/aknkaksd/analytics/error/b;->c()V

    .line 4
    invoke-static {}, Ljava/lang/Thread;->getDefaultUncaughtExceptionHandler()Ljava/lang/Thread$UncaughtExceptionHandler;

    move-result-object p1

    .line 5
    new-instance v0, Lcom/qennnsad/aknkaksd/initializers/d;

    invoke-direct {v0, p1}, Lcom/qennnsad/aknkaksd/initializers/d;-><init>(Ljava/lang/Thread$UncaughtExceptionHandler;)V

    invoke-static {v0}, Ljava/lang/Thread;->setDefaultUncaughtExceptionHandler(Ljava/lang/Thread$UncaughtExceptionHandler;)V

    .line 6
    new-instance p1, Ljava/lang/Object;

    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    return-object p1
.end method

.method public dependencies()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Class<",
            "+",
            "Landroidx/startup/Initializer<",
            "*>;>;>;"
        }
    .end annotation

    .annotation build Lm8/g;
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    return-object v0
.end method
