.class public abstract Lio/reactivex/observers/j;
.super Ljava/lang/Object;
.source "ResourceSingleObserver.java"

# interfaces
.implements Lio/reactivex/l0;
.implements Lio/reactivex/disposables/c;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lio/reactivex/l0<",
        "TT;>;",
        "Lio/reactivex/disposables/c;"
    }
.end annotation


# instance fields
.field private final a:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference<",
            "Lio/reactivex/disposables/c;",
            ">;"
        }
    .end annotation
.end field

.field private final b:Lio/reactivex/internal/disposables/b;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    iput-object v0, p0, Lio/reactivex/observers/j;->a:Ljava/util/concurrent/atomic/AtomicReference;

    .line 3
    new-instance v0, Lio/reactivex/internal/disposables/b;

    invoke-direct {v0}, Lio/reactivex/internal/disposables/b;-><init>()V

    iput-object v0, p0, Lio/reactivex/observers/j;->b:Lio/reactivex/internal/disposables/b;

    return-void
.end method


# virtual methods
.method public final a(Lio/reactivex/disposables/c;)V
    .locals 1
    .param p1    # Lio/reactivex/disposables/c;
        .annotation build Lm7/e;
        .end annotation
    .end param

    const-string v0, "resource is null"

    .line 1
    invoke-static {p1, v0}, Lio/reactivex/internal/functions/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 2
    iget-object v0, p0, Lio/reactivex/observers/j;->b:Lio/reactivex/internal/disposables/b;

    invoke-virtual {v0, p1}, Lio/reactivex/internal/disposables/b;->b(Lio/reactivex/disposables/c;)Z

    return-void
.end method

.method protected b()V
    .locals 0

    return-void
.end method

.method public final dispose()V
    .locals 1

    .line 1
    iget-object v0, p0, Lio/reactivex/observers/j;->a:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-static {v0}, Lio/reactivex/internal/disposables/DisposableHelper;->dispose(Ljava/util/concurrent/atomic/AtomicReference;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lio/reactivex/observers/j;->b:Lio/reactivex/internal/disposables/b;

    invoke-virtual {v0}, Lio/reactivex/internal/disposables/b;->dispose()V

    :cond_0
    return-void
.end method

.method public final isDisposed()Z
    .locals 1

    iget-object v0, p0, Lio/reactivex/observers/j;->a:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/reactivex/disposables/c;

    invoke-static {v0}, Lio/reactivex/internal/disposables/DisposableHelper;->isDisposed(Lio/reactivex/disposables/c;)Z

    move-result v0

    return v0
.end method

.method public final onSubscribe(Lio/reactivex/disposables/c;)V
    .locals 2
    .param p1    # Lio/reactivex/disposables/c;
        .annotation build Lm7/e;
        .end annotation
    .end param

    .line 1
    iget-object v0, p0, Lio/reactivex/observers/j;->a:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-static {v0, p1, v1}, Lio/reactivex/internal/util/f;->c(Ljava/util/concurrent/atomic/AtomicReference;Lio/reactivex/disposables/c;Ljava/lang/Class;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 2
    invoke-virtual {p0}, Lio/reactivex/observers/j;->b()V

    :cond_0
    return-void
.end method
