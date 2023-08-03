.class final Lio/reactivex/internal/operators/observable/s2$k;
.super Ljava/lang/Object;
.source "ObservableReplay.java"

# interfaces
.implements Lio/reactivex/e0;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/reactivex/internal/operators/observable/s2;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "k"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lio/reactivex/e0<",
        "TT;>;"
    }
.end annotation


# instance fields
.field private final a:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference<",
            "Lio/reactivex/internal/operators/observable/s2$j<",
            "TT;>;>;"
        }
    .end annotation
.end field

.field private final b:Lio/reactivex/internal/operators/observable/s2$b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/internal/operators/observable/s2$b<",
            "TT;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Ljava/util/concurrent/atomic/AtomicReference;Lio/reactivex/internal/operators/observable/s2$b;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/atomic/AtomicReference<",
            "Lio/reactivex/internal/operators/observable/s2$j<",
            "TT;>;>;",
            "Lio/reactivex/internal/operators/observable/s2$b<",
            "TT;>;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lio/reactivex/internal/operators/observable/s2$k;->a:Ljava/util/concurrent/atomic/AtomicReference;

    .line 3
    iput-object p2, p0, Lio/reactivex/internal/operators/observable/s2$k;->b:Lio/reactivex/internal/operators/observable/s2$b;

    return-void
.end method


# virtual methods
.method public subscribe(Lio/reactivex/g0;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/g0<",
            "-TT;>;)V"
        }
    .end annotation

    .line 1
    :goto_0
    iget-object v0, p0, Lio/reactivex/internal/operators/observable/s2$k;->a:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/reactivex/internal/operators/observable/s2$j;

    if-nez v0, :cond_1

    .line 2
    iget-object v0, p0, Lio/reactivex/internal/operators/observable/s2$k;->b:Lio/reactivex/internal/operators/observable/s2$b;

    invoke-interface {v0}, Lio/reactivex/internal/operators/observable/s2$b;->call()Lio/reactivex/internal/operators/observable/s2$h;

    move-result-object v0

    .line 3
    new-instance v1, Lio/reactivex/internal/operators/observable/s2$j;

    invoke-direct {v1, v0}, Lio/reactivex/internal/operators/observable/s2$j;-><init>(Lio/reactivex/internal/operators/observable/s2$h;)V

    .line 4
    iget-object v0, p0, Lio/reactivex/internal/operators/observable/s2$k;->a:Ljava/util/concurrent/atomic/AtomicReference;

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Ljava/util/concurrent/atomic/AtomicReference;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    move-object v0, v1

    .line 5
    :cond_1
    new-instance v1, Lio/reactivex/internal/operators/observable/s2$d;

    invoke-direct {v1, v0, p1}, Lio/reactivex/internal/operators/observable/s2$d;-><init>(Lio/reactivex/internal/operators/observable/s2$j;Lio/reactivex/g0;)V

    .line 6
    invoke-interface {p1, v1}, Lio/reactivex/g0;->onSubscribe(Lio/reactivex/disposables/c;)V

    .line 7
    invoke-virtual {v0, v1}, Lio/reactivex/internal/operators/observable/s2$j;->a(Lio/reactivex/internal/operators/observable/s2$d;)Z

    .line 8
    invoke-virtual {v1}, Lio/reactivex/internal/operators/observable/s2$d;->isDisposed()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 9
    invoke-virtual {v0, v1}, Lio/reactivex/internal/operators/observable/s2$j;->b(Lio/reactivex/internal/operators/observable/s2$d;)V

    return-void

    .line 10
    :cond_2
    iget-object p1, v0, Lio/reactivex/internal/operators/observable/s2$j;->a:Lio/reactivex/internal/operators/observable/s2$h;

    invoke-interface {p1, v1}, Lio/reactivex/internal/operators/observable/s2$h;->c(Lio/reactivex/internal/operators/observable/s2$d;)V

    return-void
.end method
