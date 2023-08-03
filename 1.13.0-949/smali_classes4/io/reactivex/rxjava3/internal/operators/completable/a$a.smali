.class final Lio/reactivex/rxjava3/internal/operators/completable/a$a;
.super Ljava/lang/Object;
.source "CompletableAmb.java"

# interfaces
.implements Lio/reactivex/rxjava3/core/d;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/reactivex/rxjava3/internal/operators/completable/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "a"
.end annotation


# instance fields
.field final a:Ljava/util/concurrent/atomic/AtomicBoolean;

.field final b:Lio/reactivex/rxjava3/disposables/c;

.field final c:Lio/reactivex/rxjava3/core/d;

.field d:Lio/reactivex/rxjava3/disposables/f;


# direct methods
.method constructor <init>(Ljava/util/concurrent/atomic/AtomicBoolean;Lio/reactivex/rxjava3/disposables/c;Lio/reactivex/rxjava3/core/d;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "once",
            "set",
            "observer"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lio/reactivex/rxjava3/internal/operators/completable/a$a;->a:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 3
    iput-object p2, p0, Lio/reactivex/rxjava3/internal/operators/completable/a$a;->b:Lio/reactivex/rxjava3/disposables/c;

    .line 4
    iput-object p3, p0, Lio/reactivex/rxjava3/internal/operators/completable/a$a;->c:Lio/reactivex/rxjava3/core/d;

    return-void
.end method


# virtual methods
.method public onComplete()V
    .locals 3

    .line 1
    iget-object v0, p0, Lio/reactivex/rxjava3/internal/operators/completable/a$a;->a:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lio/reactivex/rxjava3/internal/operators/completable/a$a;->b:Lio/reactivex/rxjava3/disposables/c;

    iget-object v1, p0, Lio/reactivex/rxjava3/internal/operators/completable/a$a;->d:Lio/reactivex/rxjava3/disposables/f;

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/disposables/c;->c(Lio/reactivex/rxjava3/disposables/f;)Z

    .line 3
    iget-object v0, p0, Lio/reactivex/rxjava3/internal/operators/completable/a$a;->b:Lio/reactivex/rxjava3/disposables/c;

    invoke-virtual {v0}, Lio/reactivex/rxjava3/disposables/c;->dispose()V

    .line 4
    iget-object v0, p0, Lio/reactivex/rxjava3/internal/operators/completable/a$a;->c:Lio/reactivex/rxjava3/core/d;

    invoke-interface {v0}, Lio/reactivex/rxjava3/core/d;->onComplete()V

    :cond_0
    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "e"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lio/reactivex/rxjava3/internal/operators/completable/a$a;->a:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lio/reactivex/rxjava3/internal/operators/completable/a$a;->b:Lio/reactivex/rxjava3/disposables/c;

    iget-object v1, p0, Lio/reactivex/rxjava3/internal/operators/completable/a$a;->d:Lio/reactivex/rxjava3/disposables/f;

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/disposables/c;->c(Lio/reactivex/rxjava3/disposables/f;)Z

    .line 3
    iget-object v0, p0, Lio/reactivex/rxjava3/internal/operators/completable/a$a;->b:Lio/reactivex/rxjava3/disposables/c;

    invoke-virtual {v0}, Lio/reactivex/rxjava3/disposables/c;->dispose()V

    .line 4
    iget-object v0, p0, Lio/reactivex/rxjava3/internal/operators/completable/a$a;->c:Lio/reactivex/rxjava3/core/d;

    invoke-interface {v0, p1}, Lio/reactivex/rxjava3/core/d;->onError(Ljava/lang/Throwable;)V

    goto :goto_0

    .line 5
    :cond_0
    invoke-static {p1}, Lio/reactivex/rxjava3/plugins/a;->Y(Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method public onSubscribe(Lio/reactivex/rxjava3/disposables/f;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "d"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lio/reactivex/rxjava3/internal/operators/completable/a$a;->d:Lio/reactivex/rxjava3/disposables/f;

    .line 2
    iget-object v0, p0, Lio/reactivex/rxjava3/internal/operators/completable/a$a;->b:Lio/reactivex/rxjava3/disposables/c;

    invoke-virtual {v0, p1}, Lio/reactivex/rxjava3/disposables/c;->b(Lio/reactivex/rxjava3/disposables/f;)Z

    return-void
.end method
