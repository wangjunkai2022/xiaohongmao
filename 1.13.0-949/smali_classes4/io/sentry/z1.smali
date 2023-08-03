.class final Lio/sentry/z1;
.super Ljava/lang/Object;
.source "NoOpSentryExecutorService.java"

# interfaces
.implements Lio/sentry/t0;


# static fields
.field private static final a:Lio/sentry/z1;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lio/sentry/z1;

    invoke-direct {v0}, Lio/sentry/z1;-><init>()V

    sput-object v0, Lio/sentry/z1;->a:Lio/sentry/z1;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic c()Ljava/lang/Object;
    .locals 1

    invoke-static {}, Lio/sentry/z1;->g()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public static synthetic d()Ljava/lang/Object;
    .locals 1

    invoke-static {}, Lio/sentry/z1;->i()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public static synthetic e()Ljava/lang/Object;
    .locals 1

    invoke-static {}, Lio/sentry/z1;->h()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public static f()Lio/sentry/t0;
    .locals 1
    .annotation build Lm8/g;
    .end annotation

    sget-object v0, Lio/sentry/z1;->a:Lio/sentry/z1;

    return-object v0
.end method

.method private static synthetic g()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const/4 v0, 0x0

    return-object v0
.end method

.method private static synthetic h()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const/4 v0, 0x0

    return-object v0
.end method

.method private static synthetic i()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const/4 v0, 0x0

    return-object v0
.end method


# virtual methods
.method public a(J)V
    .locals 0

    return-void
.end method

.method public b(Ljava/lang/Runnable;J)Ljava/util/concurrent/Future;
    .locals 0
    .param p1    # Ljava/lang/Runnable;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Runnable;",
            "J)",
            "Ljava/util/concurrent/Future<",
            "*>;"
        }
    .end annotation

    .annotation build Lm8/g;
    .end annotation

    new-instance p1, Ljava/util/concurrent/FutureTask;

    sget-object p2, Lio/sentry/w1;->a:Lio/sentry/w1;

    invoke-direct {p1, p2}, Ljava/util/concurrent/FutureTask;-><init>(Ljava/util/concurrent/Callable;)V

    return-object p1
.end method

.method public submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;
    .locals 1
    .param p1    # Ljava/lang/Runnable;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Runnable;",
            ")",
            "Ljava/util/concurrent/Future<",
            "*>;"
        }
    .end annotation

    .annotation build Lm8/g;
    .end annotation

    .line 1
    new-instance p1, Ljava/util/concurrent/FutureTask;

    sget-object v0, Lio/sentry/y1;->a:Lio/sentry/y1;

    invoke-direct {p1, v0}, Ljava/util/concurrent/FutureTask;-><init>(Ljava/util/concurrent/Callable;)V

    return-object p1
.end method

.method public submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;
    .locals 1
    .param p1    # Ljava/util/concurrent/Callable;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/concurrent/Callable<",
            "TT;>;)",
            "Ljava/util/concurrent/Future<",
            "TT;>;"
        }
    .end annotation

    .annotation build Lm8/g;
    .end annotation

    .line 2
    new-instance p1, Ljava/util/concurrent/FutureTask;

    sget-object v0, Lio/sentry/x1;->a:Lio/sentry/x1;

    invoke-direct {p1, v0}, Ljava/util/concurrent/FutureTask;-><init>(Ljava/util/concurrent/Callable;)V

    return-object p1
.end method
