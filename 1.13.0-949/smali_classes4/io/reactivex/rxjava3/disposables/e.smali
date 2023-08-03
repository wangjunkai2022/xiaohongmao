.class public final synthetic Lio/reactivex/rxjava3/disposables/e;
.super Ljava/lang/Object;
.source "Disposable.java"


# direct methods
.method public static a()Lio/reactivex/rxjava3/disposables/f;
    .locals 1
    .annotation build Lp7/e;
    .end annotation

    sget-object v0, Lio/reactivex/rxjava3/internal/disposables/EmptyDisposable;->INSTANCE:Lio/reactivex/rxjava3/internal/disposables/EmptyDisposable;

    return-object v0
.end method

.method public static b()Lio/reactivex/rxjava3/disposables/f;
    .locals 1
    .annotation build Lp7/e;
    .end annotation

    sget-object v0, Lio/reactivex/rxjava3/internal/functions/a;->b:Ljava/lang/Runnable;

    invoke-static {v0}, Lio/reactivex/rxjava3/disposables/e;->g(Ljava/lang/Runnable;)Lio/reactivex/rxjava3/disposables/f;

    move-result-object v0

    return-object v0
.end method

.method public static c(Lq7/a;)Lio/reactivex/rxjava3/disposables/f;
    .locals 1
    .param p0    # Lq7/a;
        .annotation build Lp7/e;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "action"
        }
    .end annotation

    .annotation build Lp7/e;
    .end annotation

    const-string v0, "action is null"

    .line 1
    invoke-static {p0, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 2
    new-instance v0, Lio/reactivex/rxjava3/disposables/a;

    invoke-direct {v0, p0}, Lio/reactivex/rxjava3/disposables/a;-><init>(Lq7/a;)V

    return-object v0
.end method

.method public static d(Ljava/lang/AutoCloseable;)Lio/reactivex/rxjava3/disposables/f;
    .locals 1
    .param p0    # Ljava/lang/AutoCloseable;
        .annotation build Lp7/e;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "autoCloseable"
        }
    .end annotation

    .annotation build Lp7/e;
    .end annotation

    const-string v0, "autoCloseable is null"

    .line 1
    invoke-static {p0, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 2
    new-instance v0, Lio/reactivex/rxjava3/disposables/b;

    invoke-direct {v0, p0}, Lio/reactivex/rxjava3/disposables/b;-><init>(Ljava/lang/AutoCloseable;)V

    return-object v0
.end method

.method public static e(Ljava/util/concurrent/Future;)Lio/reactivex/rxjava3/disposables/f;
    .locals 1
    .param p0    # Ljava/util/concurrent/Future;
        .annotation build Lp7/e;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "future"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/Future<",
            "*>;)",
            "Lio/reactivex/rxjava3/disposables/f;"
        }
    .end annotation

    .annotation build Lp7/e;
    .end annotation

    const-string v0, "future is null"

    .line 1
    invoke-static {p0, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const/4 v0, 0x1

    .line 2
    invoke-static {p0, v0}, Lio/reactivex/rxjava3/disposables/e;->f(Ljava/util/concurrent/Future;Z)Lio/reactivex/rxjava3/disposables/f;

    move-result-object p0

    return-object p0
.end method

.method public static f(Ljava/util/concurrent/Future;Z)Lio/reactivex/rxjava3/disposables/f;
    .locals 1
    .param p0    # Ljava/util/concurrent/Future;
        .annotation build Lp7/e;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "future",
            "allowInterrupt"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/Future<",
            "*>;Z)",
            "Lio/reactivex/rxjava3/disposables/f;"
        }
    .end annotation

    .annotation build Lp7/e;
    .end annotation

    const-string v0, "future is null"

    .line 1
    invoke-static {p0, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 2
    new-instance v0, Lio/reactivex/rxjava3/disposables/h;

    invoke-direct {v0, p0, p1}, Lio/reactivex/rxjava3/disposables/h;-><init>(Ljava/util/concurrent/Future;Z)V

    return-object v0
.end method

.method public static g(Ljava/lang/Runnable;)Lio/reactivex/rxjava3/disposables/f;
    .locals 1
    .param p0    # Ljava/lang/Runnable;
        .annotation build Lp7/e;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "run"
        }
    .end annotation

    .annotation build Lp7/e;
    .end annotation

    const-string v0, "run is null"

    .line 1
    invoke-static {p0, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 2
    new-instance v0, Lio/reactivex/rxjava3/disposables/j;

    invoke-direct {v0, p0}, Lio/reactivex/rxjava3/disposables/j;-><init>(Ljava/lang/Runnable;)V

    return-object v0
.end method

.method public static h(Lorg/reactivestreams/e;)Lio/reactivex/rxjava3/disposables/f;
    .locals 1
    .param p0    # Lorg/reactivestreams/e;
        .annotation build Lp7/e;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "subscription"
        }
    .end annotation

    .annotation build Lp7/e;
    .end annotation

    const-string v0, "subscription is null"

    .line 1
    invoke-static {p0, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 2
    new-instance v0, Lio/reactivex/rxjava3/disposables/l;

    invoke-direct {v0, p0}, Lio/reactivex/rxjava3/disposables/l;-><init>(Lorg/reactivestreams/e;)V

    return-object v0
.end method

.method public static i(Lio/reactivex/rxjava3/disposables/f;)Ljava/lang/AutoCloseable;
    .locals 1
    .param p0    # Lio/reactivex/rxjava3/disposables/f;
        .annotation build Lp7/e;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "disposable"
        }
    .end annotation

    .annotation build Lp7/e;
    .end annotation

    const-string v0, "disposable is null"

    .line 1
    invoke-static {p0, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 2
    new-instance v0, Lio/reactivex/rxjava3/disposables/d;

    invoke-direct {v0, p0}, Lio/reactivex/rxjava3/disposables/d;-><init>(Lio/reactivex/rxjava3/disposables/f;)V

    return-object v0
.end method
