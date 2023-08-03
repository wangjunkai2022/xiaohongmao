.class final Lio/reactivex/internal/operators/observable/w0$a;
.super Ljava/util/concurrent/atomic/AtomicReference;
.source "ObservableFlatMap.java"

# interfaces
.implements Lio/reactivex/g0;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/reactivex/internal/operators/observable/w0;
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
        "Ljava/util/concurrent/atomic/AtomicReference<",
        "Lio/reactivex/disposables/c;",
        ">;",
        "Lio/reactivex/g0<",
        "TU;>;"
    }
.end annotation


# static fields
.field private static final f:J = -0x3fec6c572fe7d027L


# instance fields
.field final a:J

.field final b:Lio/reactivex/internal/operators/observable/w0$b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/internal/operators/observable/w0$b<",
            "TT;TU;>;"
        }
    .end annotation
.end field

.field volatile c:Z

.field volatile d:Lo7/o;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo7/o<",
            "TU;>;"
        }
    .end annotation
.end field

.field e:I


# direct methods
.method constructor <init>(Lio/reactivex/internal/operators/observable/w0$b;J)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/internal/operators/observable/w0$b<",
            "TT;TU;>;J)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    .line 2
    iput-wide p2, p0, Lio/reactivex/internal/operators/observable/w0$a;->a:J

    .line 3
    iput-object p1, p0, Lio/reactivex/internal/operators/observable/w0$a;->b:Lio/reactivex/internal/operators/observable/w0$b;

    return-void
.end method


# virtual methods
.method public a()V
    .locals 0

    invoke-static {p0}, Lio/reactivex/internal/disposables/DisposableHelper;->dispose(Ljava/util/concurrent/atomic/AtomicReference;)Z

    return-void
.end method

.method public onComplete()V
    .locals 1

    const/4 v0, 0x1

    .line 1
    iput-boolean v0, p0, Lio/reactivex/internal/operators/observable/w0$a;->c:Z

    .line 2
    iget-object v0, p0, Lio/reactivex/internal/operators/observable/w0$a;->b:Lio/reactivex/internal/operators/observable/w0$b;

    invoke-virtual {v0}, Lio/reactivex/internal/operators/observable/w0$b;->d()V

    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lio/reactivex/internal/operators/observable/w0$a;->b:Lio/reactivex/internal/operators/observable/w0$b;

    iget-object v0, v0, Lio/reactivex/internal/operators/observable/w0$b;->h:Lio/reactivex/internal/util/AtomicThrowable;

    invoke-virtual {v0, p1}, Lio/reactivex/internal/util/AtomicThrowable;->addThrowable(Ljava/lang/Throwable;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2
    iget-object p1, p0, Lio/reactivex/internal/operators/observable/w0$a;->b:Lio/reactivex/internal/operators/observable/w0$b;

    iget-boolean v0, p1, Lio/reactivex/internal/operators/observable/w0$b;->c:Z

    if-nez v0, :cond_0

    .line 3
    invoke-virtual {p1}, Lio/reactivex/internal/operators/observable/w0$b;->c()Z

    :cond_0
    const/4 p1, 0x1

    .line 4
    iput-boolean p1, p0, Lio/reactivex/internal/operators/observable/w0$a;->c:Z

    .line 5
    iget-object p1, p0, Lio/reactivex/internal/operators/observable/w0$a;->b:Lio/reactivex/internal/operators/observable/w0$b;

    invoke-virtual {p1}, Lio/reactivex/internal/operators/observable/w0$b;->d()V

    goto :goto_0

    .line 6
    :cond_1
    invoke-static {p1}, Lio/reactivex/plugins/a;->Y(Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method public onNext(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TU;)V"
        }
    .end annotation

    .line 1
    iget v0, p0, Lio/reactivex/internal/operators/observable/w0$a;->e:I

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Lio/reactivex/internal/operators/observable/w0$a;->b:Lio/reactivex/internal/operators/observable/w0$b;

    invoke-virtual {v0, p1, p0}, Lio/reactivex/internal/operators/observable/w0$b;->k(Ljava/lang/Object;Lio/reactivex/internal/operators/observable/w0$a;)V

    goto :goto_0

    .line 3
    :cond_0
    iget-object p1, p0, Lio/reactivex/internal/operators/observable/w0$a;->b:Lio/reactivex/internal/operators/observable/w0$b;

    invoke-virtual {p1}, Lio/reactivex/internal/operators/observable/w0$b;->d()V

    :goto_0
    return-void
.end method

.method public onSubscribe(Lio/reactivex/disposables/c;)V
    .locals 2

    .line 1
    invoke-static {p0, p1}, Lio/reactivex/internal/disposables/DisposableHelper;->setOnce(Ljava/util/concurrent/atomic/AtomicReference;Lio/reactivex/disposables/c;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2
    instance-of v0, p1, Lo7/j;

    if-eqz v0, :cond_1

    .line 3
    check-cast p1, Lo7/j;

    const/4 v0, 0x7

    .line 4
    invoke-interface {p1, v0}, Lo7/k;->requestFusion(I)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 5
    iput v0, p0, Lio/reactivex/internal/operators/observable/w0$a;->e:I

    .line 6
    iput-object p1, p0, Lio/reactivex/internal/operators/observable/w0$a;->d:Lo7/o;

    .line 7
    iput-boolean v1, p0, Lio/reactivex/internal/operators/observable/w0$a;->c:Z

    .line 8
    iget-object p1, p0, Lio/reactivex/internal/operators/observable/w0$a;->b:Lio/reactivex/internal/operators/observable/w0$b;

    invoke-virtual {p1}, Lio/reactivex/internal/operators/observable/w0$b;->d()V

    return-void

    :cond_0
    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    .line 9
    iput v0, p0, Lio/reactivex/internal/operators/observable/w0$a;->e:I

    .line 10
    iput-object p1, p0, Lio/reactivex/internal/operators/observable/w0$a;->d:Lo7/o;

    :cond_1
    return-void
.end method
