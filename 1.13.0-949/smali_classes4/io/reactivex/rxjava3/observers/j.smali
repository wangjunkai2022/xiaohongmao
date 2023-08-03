.class public abstract Lio/reactivex/rxjava3/observers/j;
.super Ljava/lang/Object;
.source "ResourceObserver.java"

# interfaces
.implements Lio/reactivex/rxjava3/core/n0;
.implements Lio/reactivex/rxjava3/disposables/f;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lio/reactivex/rxjava3/core/n0<",
        "TT;>;",
        "Lio/reactivex/rxjava3/disposables/f;"
    }
.end annotation


# instance fields
.field private final a:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference<",
            "Lio/reactivex/rxjava3/disposables/f;",
            ">;"
        }
    .end annotation
.end field

.field private final b:Lio/reactivex/rxjava3/internal/disposables/a;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    iput-object v0, p0, Lio/reactivex/rxjava3/observers/j;->a:Ljava/util/concurrent/atomic/AtomicReference;

    .line 3
    new-instance v0, Lio/reactivex/rxjava3/internal/disposables/a;

    invoke-direct {v0}, Lio/reactivex/rxjava3/internal/disposables/a;-><init>()V

    iput-object v0, p0, Lio/reactivex/rxjava3/observers/j;->b:Lio/reactivex/rxjava3/internal/disposables/a;

    return-void
.end method


# virtual methods
.method public final a(Lio/reactivex/rxjava3/disposables/f;)V
    .locals 1
    .param p1    # Lio/reactivex/rxjava3/disposables/f;
        .annotation build Lp7/e;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "resource"
        }
    .end annotation

    const-string v0, "resource is null"

    .line 1
    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 2
    iget-object v0, p0, Lio/reactivex/rxjava3/observers/j;->b:Lio/reactivex/rxjava3/internal/disposables/a;

    invoke-virtual {v0, p1}, Lio/reactivex/rxjava3/internal/disposables/a;->b(Lio/reactivex/rxjava3/disposables/f;)Z

    return-void
.end method

.method protected b()V
    .locals 0

    return-void
.end method

.method public final dispose()V
    .locals 1

    .line 1
    iget-object v0, p0, Lio/reactivex/rxjava3/observers/j;->a:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-static {v0}, Lio/reactivex/rxjava3/internal/disposables/DisposableHelper;->dispose(Ljava/util/concurrent/atomic/AtomicReference;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lio/reactivex/rxjava3/observers/j;->b:Lio/reactivex/rxjava3/internal/disposables/a;

    invoke-virtual {v0}, Lio/reactivex/rxjava3/internal/disposables/a;->dispose()V

    :cond_0
    return-void
.end method

.method public final isDisposed()Z
    .locals 1

    iget-object v0, p0, Lio/reactivex/rxjava3/observers/j;->a:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/reactivex/rxjava3/disposables/f;

    invoke-static {v0}, Lio/reactivex/rxjava3/internal/disposables/DisposableHelper;->isDisposed(Lio/reactivex/rxjava3/disposables/f;)Z

    move-result v0

    return v0
.end method

.method public final onSubscribe(Lio/reactivex/rxjava3/disposables/f;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "d"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lio/reactivex/rxjava3/observers/j;->a:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-static {v0, p1, v1}, Lio/reactivex/rxjava3/internal/util/f;->c(Ljava/util/concurrent/atomic/AtomicReference;Lio/reactivex/rxjava3/disposables/f;Ljava/lang/Class;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 2
    invoke-virtual {p0}, Lio/reactivex/rxjava3/observers/j;->b()V

    :cond_0
    return-void
.end method
