.class final Lio/reactivex/rxjava3/internal/operators/observable/n4$c;
.super Ljava/util/concurrent/atomic/AtomicReference;
.source "ObservableWithLatestFromMany.java"

# interfaces
.implements Lio/reactivex/rxjava3/core/n0;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/reactivex/rxjava3/internal/operators/observable/n4;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "c"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/concurrent/atomic/AtomicReference<",
        "Lio/reactivex/rxjava3/disposables/f;",
        ">;",
        "Lio/reactivex/rxjava3/core/n0<",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# static fields
.field private static final d:J = 0x2d3210de62c61a18L


# instance fields
.field final a:Lio/reactivex/rxjava3/internal/operators/observable/n4$b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/rxjava3/internal/operators/observable/n4$b<",
            "**>;"
        }
    .end annotation
.end field

.field final b:I

.field c:Z


# direct methods
.method constructor <init>(Lio/reactivex/rxjava3/internal/operators/observable/n4$b;I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "parent",
            "index"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/rxjava3/internal/operators/observable/n4$b<",
            "**>;I)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    .line 2
    iput-object p1, p0, Lio/reactivex/rxjava3/internal/operators/observable/n4$c;->a:Lio/reactivex/rxjava3/internal/operators/observable/n4$b;

    .line 3
    iput p2, p0, Lio/reactivex/rxjava3/internal/operators/observable/n4$c;->b:I

    return-void
.end method


# virtual methods
.method public a()V
    .locals 0

    invoke-static {p0}, Lio/reactivex/rxjava3/internal/disposables/DisposableHelper;->dispose(Ljava/util/concurrent/atomic/AtomicReference;)Z

    return-void
.end method

.method public onComplete()V
    .locals 3

    iget-object v0, p0, Lio/reactivex/rxjava3/internal/operators/observable/n4$c;->a:Lio/reactivex/rxjava3/internal/operators/observable/n4$b;

    iget v1, p0, Lio/reactivex/rxjava3/internal/operators/observable/n4$c;->b:I

    iget-boolean v2, p0, Lio/reactivex/rxjava3/internal/operators/observable/n4$c;->c:Z

    invoke-virtual {v0, v1, v2}, Lio/reactivex/rxjava3/internal/operators/observable/n4$b;->b(IZ)V

    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "t"
        }
    .end annotation

    iget-object v0, p0, Lio/reactivex/rxjava3/internal/operators/observable/n4$c;->a:Lio/reactivex/rxjava3/internal/operators/observable/n4$b;

    iget v1, p0, Lio/reactivex/rxjava3/internal/operators/observable/n4$c;->b:I

    invoke-virtual {v0, v1, p1}, Lio/reactivex/rxjava3/internal/operators/observable/n4$b;->c(ILjava/lang/Throwable;)V

    return-void
.end method

.method public onNext(Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "t"
        }
    .end annotation

    .line 1
    iget-boolean v0, p0, Lio/reactivex/rxjava3/internal/operators/observable/n4$c;->c:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lio/reactivex/rxjava3/internal/operators/observable/n4$c;->c:Z

    .line 3
    :cond_0
    iget-object v0, p0, Lio/reactivex/rxjava3/internal/operators/observable/n4$c;->a:Lio/reactivex/rxjava3/internal/operators/observable/n4$b;

    iget v1, p0, Lio/reactivex/rxjava3/internal/operators/observable/n4$c;->b:I

    invoke-virtual {v0, v1, p1}, Lio/reactivex/rxjava3/internal/operators/observable/n4$b;->d(ILjava/lang/Object;)V

    return-void
.end method

.method public onSubscribe(Lio/reactivex/rxjava3/disposables/f;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "d"
        }
    .end annotation

    invoke-static {p0, p1}, Lio/reactivex/rxjava3/internal/disposables/DisposableHelper;->setOnce(Ljava/util/concurrent/atomic/AtomicReference;Lio/reactivex/rxjava3/disposables/f;)Z

    return-void
.end method
