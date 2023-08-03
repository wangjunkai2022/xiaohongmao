.class final Lio/reactivex/rxjava3/subjects/j$a;
.super Lio/reactivex/rxjava3/internal/observers/BasicIntQueueDisposable;
.source "UnicastSubject.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/reactivex/rxjava3/subjects/j;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lio/reactivex/rxjava3/internal/observers/BasicIntQueueDisposable<",
        "TT;>;"
    }
.end annotation


# static fields
.field private static final c:J = 0x6e022e8b5b1c1e37L


# instance fields
.field final synthetic b:Lio/reactivex/rxjava3/subjects/j;


# direct methods
.method constructor <init>(Lio/reactivex/rxjava3/subjects/j;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$0"
        }
    .end annotation

    iput-object p1, p0, Lio/reactivex/rxjava3/subjects/j$a;->b:Lio/reactivex/rxjava3/subjects/j;

    invoke-direct {p0}, Lio/reactivex/rxjava3/internal/observers/BasicIntQueueDisposable;-><init>()V

    return-void
.end method


# virtual methods
.method public clear()V
    .locals 1

    iget-object v0, p0, Lio/reactivex/rxjava3/subjects/j$a;->b:Lio/reactivex/rxjava3/subjects/j;

    iget-object v0, v0, Lio/reactivex/rxjava3/subjects/j;->a:Lio/reactivex/rxjava3/internal/queue/b;

    invoke-virtual {v0}, Lio/reactivex/rxjava3/internal/queue/b;->clear()V

    return-void
.end method

.method public dispose()V
    .locals 2

    .line 1
    iget-object v0, p0, Lio/reactivex/rxjava3/subjects/j$a;->b:Lio/reactivex/rxjava3/subjects/j;

    iget-boolean v0, v0, Lio/reactivex/rxjava3/subjects/j;->e:Z

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Lio/reactivex/rxjava3/subjects/j$a;->b:Lio/reactivex/rxjava3/subjects/j;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lio/reactivex/rxjava3/subjects/j;->e:Z

    .line 3
    iget-object v0, p0, Lio/reactivex/rxjava3/subjects/j$a;->b:Lio/reactivex/rxjava3/subjects/j;

    invoke-virtual {v0}, Lio/reactivex/rxjava3/subjects/j;->K8()V

    .line 4
    iget-object v0, p0, Lio/reactivex/rxjava3/subjects/j$a;->b:Lio/reactivex/rxjava3/subjects/j;

    iget-object v0, v0, Lio/reactivex/rxjava3/subjects/j;->b:Ljava/util/concurrent/atomic/AtomicReference;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicReference;->lazySet(Ljava/lang/Object;)V

    .line 5
    iget-object v0, p0, Lio/reactivex/rxjava3/subjects/j$a;->b:Lio/reactivex/rxjava3/subjects/j;

    iget-object v0, v0, Lio/reactivex/rxjava3/subjects/j;->i:Lio/reactivex/rxjava3/internal/observers/BasicIntQueueDisposable;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    move-result v0

    if-nez v0, :cond_0

    .line 6
    iget-object v0, p0, Lio/reactivex/rxjava3/subjects/j$a;->b:Lio/reactivex/rxjava3/subjects/j;

    iget-object v0, v0, Lio/reactivex/rxjava3/subjects/j;->b:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicReference;->lazySet(Ljava/lang/Object;)V

    .line 7
    iget-object v0, p0, Lio/reactivex/rxjava3/subjects/j$a;->b:Lio/reactivex/rxjava3/subjects/j;

    iget-boolean v1, v0, Lio/reactivex/rxjava3/subjects/j;->j:Z

    if-nez v1, :cond_0

    .line 8
    iget-object v0, v0, Lio/reactivex/rxjava3/subjects/j;->a:Lio/reactivex/rxjava3/internal/queue/b;

    invoke-virtual {v0}, Lio/reactivex/rxjava3/internal/queue/b;->clear()V

    :cond_0
    return-void
.end method

.method public isDisposed()Z
    .locals 1

    iget-object v0, p0, Lio/reactivex/rxjava3/subjects/j$a;->b:Lio/reactivex/rxjava3/subjects/j;

    iget-boolean v0, v0, Lio/reactivex/rxjava3/subjects/j;->e:Z

    return v0
.end method

.method public isEmpty()Z
    .locals 1

    iget-object v0, p0, Lio/reactivex/rxjava3/subjects/j$a;->b:Lio/reactivex/rxjava3/subjects/j;

    iget-object v0, v0, Lio/reactivex/rxjava3/subjects/j;->a:Lio/reactivex/rxjava3/internal/queue/b;

    invoke-virtual {v0}, Lio/reactivex/rxjava3/internal/queue/b;->isEmpty()Z

    move-result v0

    return v0
.end method

.method public poll()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .annotation build Lp7/f;
    .end annotation

    iget-object v0, p0, Lio/reactivex/rxjava3/subjects/j$a;->b:Lio/reactivex/rxjava3/subjects/j;

    iget-object v0, v0, Lio/reactivex/rxjava3/subjects/j;->a:Lio/reactivex/rxjava3/internal/queue/b;

    invoke-virtual {v0}, Lio/reactivex/rxjava3/internal/queue/b;->poll()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public requestFusion(I)I
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "mode"
        }
    .end annotation

    const/4 v0, 0x2

    and-int/2addr p1, v0

    if-eqz p1, :cond_0

    iget-object p1, p0, Lio/reactivex/rxjava3/subjects/j$a;->b:Lio/reactivex/rxjava3/subjects/j;

    const/4 v1, 0x1

    iput-boolean v1, p1, Lio/reactivex/rxjava3/subjects/j;->j:Z

    return v0

    :cond_0
    const/4 p1, 0x0

    return p1
.end method
