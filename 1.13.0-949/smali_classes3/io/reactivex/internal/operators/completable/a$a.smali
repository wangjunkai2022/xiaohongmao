.class final Lio/reactivex/internal/operators/completable/a$a;
.super Ljava/lang/Object;
.source "CompletableAmb.java"

# interfaces
.implements Lio/reactivex/d;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/reactivex/internal/operators/completable/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "a"
.end annotation


# instance fields
.field final a:Ljava/util/concurrent/atomic/AtomicBoolean;

.field final b:Lio/reactivex/disposables/b;

.field final c:Lio/reactivex/d;

.field d:Lio/reactivex/disposables/c;


# direct methods
.method constructor <init>(Ljava/util/concurrent/atomic/AtomicBoolean;Lio/reactivex/disposables/b;Lio/reactivex/d;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lio/reactivex/internal/operators/completable/a$a;->a:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 3
    iput-object p2, p0, Lio/reactivex/internal/operators/completable/a$a;->b:Lio/reactivex/disposables/b;

    .line 4
    iput-object p3, p0, Lio/reactivex/internal/operators/completable/a$a;->c:Lio/reactivex/d;

    return-void
.end method


# virtual methods
.method public onComplete()V
    .locals 3

    .line 1
    iget-object v0, p0, Lio/reactivex/internal/operators/completable/a$a;->a:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lio/reactivex/internal/operators/completable/a$a;->b:Lio/reactivex/disposables/b;

    iget-object v1, p0, Lio/reactivex/internal/operators/completable/a$a;->d:Lio/reactivex/disposables/c;

    invoke-virtual {v0, v1}, Lio/reactivex/disposables/b;->c(Lio/reactivex/disposables/c;)Z

    .line 3
    iget-object v0, p0, Lio/reactivex/internal/operators/completable/a$a;->b:Lio/reactivex/disposables/b;

    invoke-virtual {v0}, Lio/reactivex/disposables/b;->dispose()V

    .line 4
    iget-object v0, p0, Lio/reactivex/internal/operators/completable/a$a;->c:Lio/reactivex/d;

    invoke-interface {v0}, Lio/reactivex/d;->onComplete()V

    :cond_0
    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lio/reactivex/internal/operators/completable/a$a;->a:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lio/reactivex/internal/operators/completable/a$a;->b:Lio/reactivex/disposables/b;

    iget-object v1, p0, Lio/reactivex/internal/operators/completable/a$a;->d:Lio/reactivex/disposables/c;

    invoke-virtual {v0, v1}, Lio/reactivex/disposables/b;->c(Lio/reactivex/disposables/c;)Z

    .line 3
    iget-object v0, p0, Lio/reactivex/internal/operators/completable/a$a;->b:Lio/reactivex/disposables/b;

    invoke-virtual {v0}, Lio/reactivex/disposables/b;->dispose()V

    .line 4
    iget-object v0, p0, Lio/reactivex/internal/operators/completable/a$a;->c:Lio/reactivex/d;

    invoke-interface {v0, p1}, Lio/reactivex/d;->onError(Ljava/lang/Throwable;)V

    goto :goto_0

    .line 5
    :cond_0
    invoke-static {p1}, Lio/reactivex/plugins/a;->Y(Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method public onSubscribe(Lio/reactivex/disposables/c;)V
    .locals 1

    .line 1
    iput-object p1, p0, Lio/reactivex/internal/operators/completable/a$a;->d:Lio/reactivex/disposables/c;

    .line 2
    iget-object v0, p0, Lio/reactivex/internal/operators/completable/a$a;->b:Lio/reactivex/disposables/b;

    invoke-virtual {v0, p1}, Lio/reactivex/disposables/b;->b(Lio/reactivex/disposables/c;)Z

    return-void
.end method
