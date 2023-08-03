.class final Lio/reactivex/internal/operators/observable/j4$b;
.super Ljava/lang/Object;
.source "ObservableWithLatestFrom.java"

# interfaces
.implements Lio/reactivex/g0;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/reactivex/internal/operators/observable/j4;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lio/reactivex/g0<",
        "TU;>;"
    }
.end annotation


# instance fields
.field private final a:Lio/reactivex/internal/operators/observable/j4$a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/internal/operators/observable/j4$a<",
            "TT;TU;TR;>;"
        }
    .end annotation
.end field

.field final synthetic b:Lio/reactivex/internal/operators/observable/j4;


# direct methods
.method constructor <init>(Lio/reactivex/internal/operators/observable/j4;Lio/reactivex/internal/operators/observable/j4$a;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/internal/operators/observable/j4$a<",
            "TT;TU;TR;>;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lio/reactivex/internal/operators/observable/j4$b;->b:Lio/reactivex/internal/operators/observable/j4;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p2, p0, Lio/reactivex/internal/operators/observable/j4$b;->a:Lio/reactivex/internal/operators/observable/j4$a;

    return-void
.end method


# virtual methods
.method public onComplete()V
    .locals 0

    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 1

    iget-object v0, p0, Lio/reactivex/internal/operators/observable/j4$b;->a:Lio/reactivex/internal/operators/observable/j4$a;

    invoke-virtual {v0, p1}, Lio/reactivex/internal/operators/observable/j4$a;->a(Ljava/lang/Throwable;)V

    return-void
.end method

.method public onNext(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TU;)V"
        }
    .end annotation

    iget-object v0, p0, Lio/reactivex/internal/operators/observable/j4$b;->a:Lio/reactivex/internal/operators/observable/j4$a;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/atomic/AtomicReference;->lazySet(Ljava/lang/Object;)V

    return-void
.end method

.method public onSubscribe(Lio/reactivex/disposables/c;)V
    .locals 1

    iget-object v0, p0, Lio/reactivex/internal/operators/observable/j4$b;->a:Lio/reactivex/internal/operators/observable/j4$a;

    invoke-virtual {v0, p1}, Lio/reactivex/internal/operators/observable/j4$a;->b(Lio/reactivex/disposables/c;)Z

    return-void
.end method
