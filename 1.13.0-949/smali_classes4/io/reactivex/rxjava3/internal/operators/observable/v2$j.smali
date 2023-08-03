.class final Lio/reactivex/rxjava3/internal/operators/observable/v2$j;
.super Ljava/lang/Object;
.source "ObservableReplay.java"

# interfaces
.implements Lio/reactivex/rxjava3/core/l0;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/reactivex/rxjava3/internal/operators/observable/v2;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "j"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lio/reactivex/rxjava3/core/l0<",
        "TT;>;"
    }
.end annotation


# instance fields
.field private final a:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference<",
            "Lio/reactivex/rxjava3/internal/operators/observable/v2$i<",
            "TT;>;>;"
        }
    .end annotation
.end field

.field private final b:Lio/reactivex/rxjava3/internal/operators/observable/v2$b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/rxjava3/internal/operators/observable/v2$b<",
            "TT;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Ljava/util/concurrent/atomic/AtomicReference;Lio/reactivex/rxjava3/internal/operators/observable/v2$b;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "curr",
            "bufferFactory"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/atomic/AtomicReference<",
            "Lio/reactivex/rxjava3/internal/operators/observable/v2$i<",
            "TT;>;>;",
            "Lio/reactivex/rxjava3/internal/operators/observable/v2$b<",
            "TT;>;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lio/reactivex/rxjava3/internal/operators/observable/v2$j;->a:Ljava/util/concurrent/atomic/AtomicReference;

    .line 3
    iput-object p2, p0, Lio/reactivex/rxjava3/internal/operators/observable/v2$j;->b:Lio/reactivex/rxjava3/internal/operators/observable/v2$b;

    return-void
.end method


# virtual methods
.method public a(Lio/reactivex/rxjava3/core/n0;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "child"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/rxjava3/core/n0<",
            "-TT;>;)V"
        }
    .end annotation

    .line 1
    :goto_0
    iget-object v0, p0, Lio/reactivex/rxjava3/internal/operators/observable/v2$j;->a:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/reactivex/rxjava3/internal/operators/observable/v2$i;

    if-nez v0, :cond_1

    .line 2
    iget-object v0, p0, Lio/reactivex/rxjava3/internal/operators/observable/v2$j;->b:Lio/reactivex/rxjava3/internal/operators/observable/v2$b;

    invoke-interface {v0}, Lio/reactivex/rxjava3/internal/operators/observable/v2$b;->call()Lio/reactivex/rxjava3/internal/operators/observable/v2$g;

    move-result-object v0

    .line 3
    new-instance v1, Lio/reactivex/rxjava3/internal/operators/observable/v2$i;

    iget-object v2, p0, Lio/reactivex/rxjava3/internal/operators/observable/v2$j;->a:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v1, v0, v2}, Lio/reactivex/rxjava3/internal/operators/observable/v2$i;-><init>(Lio/reactivex/rxjava3/internal/operators/observable/v2$g;Ljava/util/concurrent/atomic/AtomicReference;)V

    .line 4
    iget-object v0, p0, Lio/reactivex/rxjava3/internal/operators/observable/v2$j;->a:Ljava/util/concurrent/atomic/AtomicReference;

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Ljava/util/concurrent/atomic/AtomicReference;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    move-object v0, v1

    .line 5
    :cond_1
    new-instance v1, Lio/reactivex/rxjava3/internal/operators/observable/v2$d;

    invoke-direct {v1, v0, p1}, Lio/reactivex/rxjava3/internal/operators/observable/v2$d;-><init>(Lio/reactivex/rxjava3/internal/operators/observable/v2$i;Lio/reactivex/rxjava3/core/n0;)V

    .line 6
    invoke-interface {p1, v1}, Lio/reactivex/rxjava3/core/n0;->onSubscribe(Lio/reactivex/rxjava3/disposables/f;)V

    .line 7
    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/internal/operators/observable/v2$i;->a(Lio/reactivex/rxjava3/internal/operators/observable/v2$d;)Z

    .line 8
    invoke-virtual {v1}, Lio/reactivex/rxjava3/internal/operators/observable/v2$d;->isDisposed()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 9
    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/internal/operators/observable/v2$i;->b(Lio/reactivex/rxjava3/internal/operators/observable/v2$d;)V

    return-void

    .line 10
    :cond_2
    iget-object p1, v0, Lio/reactivex/rxjava3/internal/operators/observable/v2$i;->a:Lio/reactivex/rxjava3/internal/operators/observable/v2$g;

    invoke-interface {p1, v1}, Lio/reactivex/rxjava3/internal/operators/observable/v2$g;->c(Lio/reactivex/rxjava3/internal/operators/observable/v2$d;)V

    return-void
.end method
