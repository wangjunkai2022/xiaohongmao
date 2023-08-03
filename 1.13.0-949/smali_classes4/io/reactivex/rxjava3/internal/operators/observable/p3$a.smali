.class final Lio/reactivex/rxjava3/internal/operators/observable/p3$a;
.super Ljava/util/concurrent/atomic/AtomicReference;
.source "ObservableSwitchMap.java"

# interfaces
.implements Lio/reactivex/rxjava3/core/n0;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/reactivex/rxjava3/internal/operators/observable/p3;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "R:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/concurrent/atomic/AtomicReference<",
        "Lio/reactivex/rxjava3/disposables/f;",
        ">;",
        "Lio/reactivex/rxjava3/core/n0<",
        "TR;>;"
    }
.end annotation


# static fields
.field private static final f:J = 0x3540c639803a63b9L


# instance fields
.field final a:Lio/reactivex/rxjava3/internal/operators/observable/p3$b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/rxjava3/internal/operators/observable/p3$b<",
            "TT;TR;>;"
        }
    .end annotation
.end field

.field final b:J

.field final c:I

.field volatile d:Lio/reactivex/rxjava3/internal/fuseable/q;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/rxjava3/internal/fuseable/q<",
            "TR;>;"
        }
    .end annotation
.end field

.field volatile e:Z


# direct methods
.method constructor <init>(Lio/reactivex/rxjava3/internal/operators/observable/p3$b;JI)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "parent",
            "index",
            "bufferSize"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/rxjava3/internal/operators/observable/p3$b<",
            "TT;TR;>;JI)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    .line 2
    iput-object p1, p0, Lio/reactivex/rxjava3/internal/operators/observable/p3$a;->a:Lio/reactivex/rxjava3/internal/operators/observable/p3$b;

    .line 3
    iput-wide p2, p0, Lio/reactivex/rxjava3/internal/operators/observable/p3$a;->b:J

    .line 4
    iput p4, p0, Lio/reactivex/rxjava3/internal/operators/observable/p3$a;->c:I

    return-void
.end method


# virtual methods
.method public a()V
    .locals 0

    invoke-static {p0}, Lio/reactivex/rxjava3/internal/disposables/DisposableHelper;->dispose(Ljava/util/concurrent/atomic/AtomicReference;)Z

    return-void
.end method

.method public onComplete()V
    .locals 5

    .line 1
    iget-wide v0, p0, Lio/reactivex/rxjava3/internal/operators/observable/p3$a;->b:J

    iget-object v2, p0, Lio/reactivex/rxjava3/internal/operators/observable/p3$a;->a:Lio/reactivex/rxjava3/internal/operators/observable/p3$b;

    iget-wide v2, v2, Lio/reactivex/rxjava3/internal/operators/observable/p3$b;->j:J

    cmp-long v4, v0, v2

    if-nez v4, :cond_0

    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lio/reactivex/rxjava3/internal/operators/observable/p3$a;->e:Z

    .line 3
    iget-object v0, p0, Lio/reactivex/rxjava3/internal/operators/observable/p3$a;->a:Lio/reactivex/rxjava3/internal/operators/observable/p3$b;

    invoke-virtual {v0}, Lio/reactivex/rxjava3/internal/operators/observable/p3$b;->b()V

    :cond_0
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

    iget-object v0, p0, Lio/reactivex/rxjava3/internal/operators/observable/p3$a;->a:Lio/reactivex/rxjava3/internal/operators/observable/p3$b;

    invoke-virtual {v0, p0, p1}, Lio/reactivex/rxjava3/internal/operators/observable/p3$b;->c(Lio/reactivex/rxjava3/internal/operators/observable/p3$a;Ljava/lang/Throwable;)V

    return-void
.end method

.method public onNext(Ljava/lang/Object;)V
    .locals 5
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
            "(TR;)V"
        }
    .end annotation

    .line 1
    iget-wide v0, p0, Lio/reactivex/rxjava3/internal/operators/observable/p3$a;->b:J

    iget-object v2, p0, Lio/reactivex/rxjava3/internal/operators/observable/p3$a;->a:Lio/reactivex/rxjava3/internal/operators/observable/p3$b;

    iget-wide v2, v2, Lio/reactivex/rxjava3/internal/operators/observable/p3$b;->j:J

    cmp-long v4, v0, v2

    if-nez v4, :cond_1

    if-eqz p1, :cond_0

    .line 2
    iget-object v0, p0, Lio/reactivex/rxjava3/internal/operators/observable/p3$a;->d:Lio/reactivex/rxjava3/internal/fuseable/q;

    invoke-interface {v0, p1}, Lio/reactivex/rxjava3/internal/fuseable/q;->offer(Ljava/lang/Object;)Z

    .line 3
    :cond_0
    iget-object p1, p0, Lio/reactivex/rxjava3/internal/operators/observable/p3$a;->a:Lio/reactivex/rxjava3/internal/operators/observable/p3$b;

    invoke-virtual {p1}, Lio/reactivex/rxjava3/internal/operators/observable/p3$b;->b()V

    :cond_1
    return-void
.end method

.method public onSubscribe(Lio/reactivex/rxjava3/disposables/f;)V
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
    invoke-static {p0, p1}, Lio/reactivex/rxjava3/internal/disposables/DisposableHelper;->setOnce(Ljava/util/concurrent/atomic/AtomicReference;Lio/reactivex/rxjava3/disposables/f;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 2
    instance-of v0, p1, Lio/reactivex/rxjava3/internal/fuseable/l;

    if-eqz v0, :cond_1

    .line 3
    check-cast p1, Lio/reactivex/rxjava3/internal/fuseable/l;

    const/4 v0, 0x7

    .line 4
    invoke-interface {p1, v0}, Lio/reactivex/rxjava3/internal/fuseable/m;->requestFusion(I)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 5
    iput-object p1, p0, Lio/reactivex/rxjava3/internal/operators/observable/p3$a;->d:Lio/reactivex/rxjava3/internal/fuseable/q;

    .line 6
    iput-boolean v1, p0, Lio/reactivex/rxjava3/internal/operators/observable/p3$a;->e:Z

    .line 7
    iget-object p1, p0, Lio/reactivex/rxjava3/internal/operators/observable/p3$a;->a:Lio/reactivex/rxjava3/internal/operators/observable/p3$b;

    invoke-virtual {p1}, Lio/reactivex/rxjava3/internal/operators/observable/p3$b;->b()V

    return-void

    :cond_0
    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    .line 8
    iput-object p1, p0, Lio/reactivex/rxjava3/internal/operators/observable/p3$a;->d:Lio/reactivex/rxjava3/internal/fuseable/q;

    return-void

    .line 9
    :cond_1
    new-instance p1, Lio/reactivex/rxjava3/internal/queue/b;

    iget v0, p0, Lio/reactivex/rxjava3/internal/operators/observable/p3$a;->c:I

    invoke-direct {p1, v0}, Lio/reactivex/rxjava3/internal/queue/b;-><init>(I)V

    iput-object p1, p0, Lio/reactivex/rxjava3/internal/operators/observable/p3$a;->d:Lio/reactivex/rxjava3/internal/fuseable/q;

    :cond_2
    return-void
.end method
