.class final Lio/reactivex/rxjava3/internal/operators/observable/e3$b;
.super Ljava/lang/Object;
.source "ObservableSequenceEqualSingle.java"

# interfaces
.implements Lio/reactivex/rxjava3/core/n0;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/reactivex/rxjava3/internal/operators/observable/e3;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lio/reactivex/rxjava3/core/n0<",
        "TT;>;"
    }
.end annotation


# instance fields
.field final a:Lio/reactivex/rxjava3/internal/operators/observable/e3$a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/rxjava3/internal/operators/observable/e3$a<",
            "TT;>;"
        }
    .end annotation
.end field

.field final b:Lio/reactivex/rxjava3/internal/queue/b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/rxjava3/internal/queue/b<",
            "TT;>;"
        }
    .end annotation
.end field

.field final c:I

.field volatile d:Z

.field e:Ljava/lang/Throwable;


# direct methods
.method constructor <init>(Lio/reactivex/rxjava3/internal/operators/observable/e3$a;II)V
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
            "Lio/reactivex/rxjava3/internal/operators/observable/e3$a<",
            "TT;>;II)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lio/reactivex/rxjava3/internal/operators/observable/e3$b;->a:Lio/reactivex/rxjava3/internal/operators/observable/e3$a;

    .line 3
    iput p2, p0, Lio/reactivex/rxjava3/internal/operators/observable/e3$b;->c:I

    .line 4
    new-instance p1, Lio/reactivex/rxjava3/internal/queue/b;

    invoke-direct {p1, p3}, Lio/reactivex/rxjava3/internal/queue/b;-><init>(I)V

    iput-object p1, p0, Lio/reactivex/rxjava3/internal/operators/observable/e3$b;->b:Lio/reactivex/rxjava3/internal/queue/b;

    return-void
.end method


# virtual methods
.method public onComplete()V
    .locals 1

    const/4 v0, 0x1

    .line 1
    iput-boolean v0, p0, Lio/reactivex/rxjava3/internal/operators/observable/e3$b;->d:Z

    .line 2
    iget-object v0, p0, Lio/reactivex/rxjava3/internal/operators/observable/e3$b;->a:Lio/reactivex/rxjava3/internal/operators/observable/e3$a;

    invoke-virtual {v0}, Lio/reactivex/rxjava3/internal/operators/observable/e3$a;->b()V

    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "t"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lio/reactivex/rxjava3/internal/operators/observable/e3$b;->e:Ljava/lang/Throwable;

    const/4 p1, 0x1

    .line 2
    iput-boolean p1, p0, Lio/reactivex/rxjava3/internal/operators/observable/e3$b;->d:Z

    .line 3
    iget-object p1, p0, Lio/reactivex/rxjava3/internal/operators/observable/e3$b;->a:Lio/reactivex/rxjava3/internal/operators/observable/e3$a;

    invoke-virtual {p1}, Lio/reactivex/rxjava3/internal/operators/observable/e3$a;->b()V

    return-void
.end method

.method public onNext(Ljava/lang/Object;)V
    .locals 1
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
            "(TT;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lio/reactivex/rxjava3/internal/operators/observable/e3$b;->b:Lio/reactivex/rxjava3/internal/queue/b;

    invoke-virtual {v0, p1}, Lio/reactivex/rxjava3/internal/queue/b;->offer(Ljava/lang/Object;)Z

    .line 2
    iget-object p1, p0, Lio/reactivex/rxjava3/internal/operators/observable/e3$b;->a:Lio/reactivex/rxjava3/internal/operators/observable/e3$a;

    invoke-virtual {p1}, Lio/reactivex/rxjava3/internal/operators/observable/e3$a;->b()V

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

    iget-object v0, p0, Lio/reactivex/rxjava3/internal/operators/observable/e3$b;->a:Lio/reactivex/rxjava3/internal/operators/observable/e3$a;

    iget v1, p0, Lio/reactivex/rxjava3/internal/operators/observable/e3$b;->c:I

    invoke-virtual {v0, p1, v1}, Lio/reactivex/rxjava3/internal/operators/observable/e3$a;->c(Lio/reactivex/rxjava3/disposables/f;I)Z

    return-void
.end method
