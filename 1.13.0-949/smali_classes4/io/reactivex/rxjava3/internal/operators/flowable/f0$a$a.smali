.class final Lio/reactivex/rxjava3/internal/operators/flowable/f0$a$a;
.super Lio/reactivex/rxjava3/subscribers/b;
.source "FlowableDebounce.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/reactivex/rxjava3/internal/operators/flowable/f0$a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "U:",
        "Ljava/lang/Object;",
        ">",
        "Lio/reactivex/rxjava3/subscribers/b<",
        "TU;>;"
    }
.end annotation


# instance fields
.field final b:Lio/reactivex/rxjava3/internal/operators/flowable/f0$a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/rxjava3/internal/operators/flowable/f0$a<",
            "TT;TU;>;"
        }
    .end annotation
.end field

.field final c:J

.field final d:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field e:Z

.field final f:Ljava/util/concurrent/atomic/AtomicBoolean;


# direct methods
.method constructor <init>(Lio/reactivex/rxjava3/internal/operators/flowable/f0$a;JLjava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "parent",
            "index",
            "value"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/rxjava3/internal/operators/flowable/f0$a<",
            "TT;TU;>;JTT;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lio/reactivex/rxjava3/subscribers/b;-><init>()V

    .line 2
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    iput-object v0, p0, Lio/reactivex/rxjava3/internal/operators/flowable/f0$a$a;->f:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 3
    iput-object p1, p0, Lio/reactivex/rxjava3/internal/operators/flowable/f0$a$a;->b:Lio/reactivex/rxjava3/internal/operators/flowable/f0$a;

    .line 4
    iput-wide p2, p0, Lio/reactivex/rxjava3/internal/operators/flowable/f0$a$a;->c:J

    .line 5
    iput-object p4, p0, Lio/reactivex/rxjava3/internal/operators/flowable/f0$a$a;->d:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method d()V
    .locals 4

    .line 1
    iget-object v0, p0, Lio/reactivex/rxjava3/internal/operators/flowable/f0$a$a;->f:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lio/reactivex/rxjava3/internal/operators/flowable/f0$a$a;->b:Lio/reactivex/rxjava3/internal/operators/flowable/f0$a;

    iget-wide v1, p0, Lio/reactivex/rxjava3/internal/operators/flowable/f0$a$a;->c:J

    iget-object v3, p0, Lio/reactivex/rxjava3/internal/operators/flowable/f0$a$a;->d:Ljava/lang/Object;

    invoke-virtual {v0, v1, v2, v3}, Lio/reactivex/rxjava3/internal/operators/flowable/f0$a;->a(JLjava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public onComplete()V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lio/reactivex/rxjava3/internal/operators/flowable/f0$a$a;->e:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lio/reactivex/rxjava3/internal/operators/flowable/f0$a$a;->e:Z

    .line 3
    invoke-virtual {p0}, Lio/reactivex/rxjava3/internal/operators/flowable/f0$a$a;->d()V

    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "t"
        }
    .end annotation

    .line 1
    iget-boolean v0, p0, Lio/reactivex/rxjava3/internal/operators/flowable/f0$a$a;->e:Z

    if-eqz v0, :cond_0

    .line 2
    invoke-static {p1}, Lio/reactivex/rxjava3/plugins/a;->Y(Ljava/lang/Throwable;)V

    return-void

    :cond_0
    const/4 v0, 0x1

    .line 3
    iput-boolean v0, p0, Lio/reactivex/rxjava3/internal/operators/flowable/f0$a$a;->e:Z

    .line 4
    iget-object v0, p0, Lio/reactivex/rxjava3/internal/operators/flowable/f0$a$a;->b:Lio/reactivex/rxjava3/internal/operators/flowable/f0$a;

    invoke-virtual {v0, p1}, Lio/reactivex/rxjava3/internal/operators/flowable/f0$a;->onError(Ljava/lang/Throwable;)V

    return-void
.end method

.method public onNext(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "t"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TU;)V"
        }
    .end annotation

    .line 1
    iget-boolean p1, p0, Lio/reactivex/rxjava3/internal/operators/flowable/f0$a$a;->e:Z

    if-eqz p1, :cond_0

    return-void

    :cond_0
    const/4 p1, 0x1

    .line 2
    iput-boolean p1, p0, Lio/reactivex/rxjava3/internal/operators/flowable/f0$a$a;->e:Z

    .line 3
    invoke-virtual {p0}, Lio/reactivex/rxjava3/subscribers/b;->a()V

    .line 4
    invoke-virtual {p0}, Lio/reactivex/rxjava3/internal/operators/flowable/f0$a$a;->d()V

    return-void
.end method
