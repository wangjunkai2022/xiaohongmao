.class final Lio/reactivex/internal/operators/maybe/u$b;
.super Ljava/util/concurrent/atomic/AtomicReference;
.source "MaybeEqualSingle.java"

# interfaces
.implements Lio/reactivex/t;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/reactivex/internal/operators/maybe/u;
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
        "Lio/reactivex/disposables/c;",
        ">;",
        "Lio/reactivex/t<",
        "TT;>;"
    }
.end annotation


# static fields
.field private static final c:J = -0x2a13bcaec894a113L


# instance fields
.field final a:Lio/reactivex/internal/operators/maybe/u$a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/internal/operators/maybe/u$a<",
            "TT;>;"
        }
    .end annotation
.end field

.field b:Ljava/lang/Object;


# direct methods
.method constructor <init>(Lio/reactivex/internal/operators/maybe/u$a;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/internal/operators/maybe/u$a<",
            "TT;>;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    .line 2
    iput-object p1, p0, Lio/reactivex/internal/operators/maybe/u$b;->a:Lio/reactivex/internal/operators/maybe/u$a;

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

    iget-object v0, p0, Lio/reactivex/internal/operators/maybe/u$b;->a:Lio/reactivex/internal/operators/maybe/u$a;

    invoke-virtual {v0}, Lio/reactivex/internal/operators/maybe/u$a;->a()V

    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 1

    iget-object v0, p0, Lio/reactivex/internal/operators/maybe/u$b;->a:Lio/reactivex/internal/operators/maybe/u$a;

    invoke-virtual {v0, p0, p1}, Lio/reactivex/internal/operators/maybe/u$a;->b(Lio/reactivex/internal/operators/maybe/u$b;Ljava/lang/Throwable;)V

    return-void
.end method

.method public onSubscribe(Lio/reactivex/disposables/c;)V
    .locals 0

    invoke-static {p0, p1}, Lio/reactivex/internal/disposables/DisposableHelper;->setOnce(Ljava/util/concurrent/atomic/AtomicReference;Lio/reactivex/disposables/c;)Z

    return-void
.end method

.method public onSuccess(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lio/reactivex/internal/operators/maybe/u$b;->b:Ljava/lang/Object;

    .line 2
    iget-object p1, p0, Lio/reactivex/internal/operators/maybe/u$b;->a:Lio/reactivex/internal/operators/maybe/u$a;

    invoke-virtual {p1}, Lio/reactivex/internal/operators/maybe/u$a;->a()V

    return-void
.end method
