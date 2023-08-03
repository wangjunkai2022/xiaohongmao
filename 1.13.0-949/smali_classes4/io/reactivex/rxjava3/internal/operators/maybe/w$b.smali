.class final Lio/reactivex/rxjava3/internal/operators/maybe/w$b;
.super Ljava/util/concurrent/atomic/AtomicReference;
.source "MaybeEqualSingle.java"

# interfaces
.implements Lio/reactivex/rxjava3/core/y;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/reactivex/rxjava3/internal/operators/maybe/w;
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
        "Ljava/util/concurrent/atomic/AtomicReference<",
        "Lio/reactivex/rxjava3/disposables/f;",
        ">;",
        "Lio/reactivex/rxjava3/core/y<",
        "TT;>;"
    }
.end annotation


# static fields
.field private static final c:J = -0x2a13bcaec894a113L


# instance fields
.field final a:Lio/reactivex/rxjava3/internal/operators/maybe/w$a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/rxjava3/internal/operators/maybe/w$a<",
            "TT;>;"
        }
    .end annotation
.end field

.field b:Ljava/lang/Object;


# direct methods
.method constructor <init>(Lio/reactivex/rxjava3/internal/operators/maybe/w$a;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "parent"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/rxjava3/internal/operators/maybe/w$a<",
            "TT;>;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    .line 2
    iput-object p1, p0, Lio/reactivex/rxjava3/internal/operators/maybe/w$b;->a:Lio/reactivex/rxjava3/internal/operators/maybe/w$a;

    return-void
.end method


# virtual methods
.method public a()V
    .locals 0

    invoke-static {p0}, Lio/reactivex/rxjava3/internal/disposables/DisposableHelper;->dispose(Ljava/util/concurrent/atomic/AtomicReference;)Z

    return-void
.end method

.method public onComplete()V
    .locals 1

    iget-object v0, p0, Lio/reactivex/rxjava3/internal/operators/maybe/w$b;->a:Lio/reactivex/rxjava3/internal/operators/maybe/w$a;

    invoke-virtual {v0}, Lio/reactivex/rxjava3/internal/operators/maybe/w$a;->a()V

    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "e"
        }
    .end annotation

    iget-object v0, p0, Lio/reactivex/rxjava3/internal/operators/maybe/w$b;->a:Lio/reactivex/rxjava3/internal/operators/maybe/w$a;

    invoke-virtual {v0, p0, p1}, Lio/reactivex/rxjava3/internal/operators/maybe/w$a;->b(Lio/reactivex/rxjava3/internal/operators/maybe/w$b;Ljava/lang/Throwable;)V

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

.method public onSuccess(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lio/reactivex/rxjava3/internal/operators/maybe/w$b;->b:Ljava/lang/Object;

    .line 2
    iget-object p1, p0, Lio/reactivex/rxjava3/internal/operators/maybe/w$b;->a:Lio/reactivex/rxjava3/internal/operators/maybe/w$a;

    invoke-virtual {p1}, Lio/reactivex/rxjava3/internal/operators/maybe/w$a;->a()V

    return-void
.end method
