.class public final Lio/reactivex/disposables/d;
.super Ljava/lang/Object;
.source "Disposables.java"


# direct methods
.method private constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "No instances!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static a()Lio/reactivex/disposables/c;
    .locals 1
    .annotation build Lm7/e;
    .end annotation

    sget-object v0, Lio/reactivex/internal/disposables/EmptyDisposable;->INSTANCE:Lio/reactivex/internal/disposables/EmptyDisposable;

    return-object v0
.end method

.method public static b()Lio/reactivex/disposables/c;
    .locals 1
    .annotation build Lm7/e;
    .end annotation

    sget-object v0, Lio/reactivex/internal/functions/a;->b:Ljava/lang/Runnable;

    invoke-static {v0}, Lio/reactivex/disposables/d;->f(Ljava/lang/Runnable;)Lio/reactivex/disposables/c;

    move-result-object v0

    return-object v0
.end method

.method public static c(Ln7/a;)Lio/reactivex/disposables/c;
    .locals 1
    .param p0    # Ln7/a;
        .annotation build Lm7/e;
        .end annotation
    .end param
    .annotation build Lm7/e;
    .end annotation

    const-string v0, "run is null"

    .line 1
    invoke-static {p0, v0}, Lio/reactivex/internal/functions/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 2
    new-instance v0, Lio/reactivex/disposables/a;

    invoke-direct {v0, p0}, Lio/reactivex/disposables/a;-><init>(Ln7/a;)V

    return-object v0
.end method

.method public static d(Ljava/util/concurrent/Future;)Lio/reactivex/disposables/c;
    .locals 1
    .param p0    # Ljava/util/concurrent/Future;
        .annotation build Lm7/e;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/Future<",
            "*>;)",
            "Lio/reactivex/disposables/c;"
        }
    .end annotation

    .annotation build Lm7/e;
    .end annotation

    const-string v0, "future is null"

    .line 1
    invoke-static {p0, v0}, Lio/reactivex/internal/functions/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const/4 v0, 0x1

    .line 2
    invoke-static {p0, v0}, Lio/reactivex/disposables/d;->e(Ljava/util/concurrent/Future;Z)Lio/reactivex/disposables/c;

    move-result-object p0

    return-object p0
.end method

.method public static e(Ljava/util/concurrent/Future;Z)Lio/reactivex/disposables/c;
    .locals 1
    .param p0    # Ljava/util/concurrent/Future;
        .annotation build Lm7/e;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/Future<",
            "*>;Z)",
            "Lio/reactivex/disposables/c;"
        }
    .end annotation

    .annotation build Lm7/e;
    .end annotation

    const-string v0, "future is null"

    .line 1
    invoke-static {p0, v0}, Lio/reactivex/internal/functions/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 2
    new-instance v0, Lio/reactivex/disposables/e;

    invoke-direct {v0, p0, p1}, Lio/reactivex/disposables/e;-><init>(Ljava/util/concurrent/Future;Z)V

    return-object v0
.end method

.method public static f(Ljava/lang/Runnable;)Lio/reactivex/disposables/c;
    .locals 1
    .param p0    # Ljava/lang/Runnable;
        .annotation build Lm7/e;
        .end annotation
    .end param
    .annotation build Lm7/e;
    .end annotation

    const-string v0, "run is null"

    .line 1
    invoke-static {p0, v0}, Lio/reactivex/internal/functions/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 2
    new-instance v0, Lio/reactivex/disposables/g;

    invoke-direct {v0, p0}, Lio/reactivex/disposables/g;-><init>(Ljava/lang/Runnable;)V

    return-object v0
.end method

.method public static g(Lorg/reactivestreams/e;)Lio/reactivex/disposables/c;
    .locals 1
    .param p0    # Lorg/reactivestreams/e;
        .annotation build Lm7/e;
        .end annotation
    .end param
    .annotation build Lm7/e;
    .end annotation

    const-string v0, "subscription is null"

    .line 1
    invoke-static {p0, v0}, Lio/reactivex/internal/functions/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 2
    new-instance v0, Lio/reactivex/disposables/i;

    invoke-direct {v0, p0}, Lio/reactivex/disposables/i;-><init>(Lorg/reactivestreams/e;)V

    return-object v0
.end method
