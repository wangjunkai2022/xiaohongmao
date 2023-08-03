.class Lio/reactivex/rxjava3/internal/observers/o;
.super Lio/reactivex/rxjava3/internal/observers/m;
.source "QueueDrainObserver.java"


# instance fields
.field final p:Ljava/util/concurrent/atomic/AtomicInteger;


# direct methods
.method constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lio/reactivex/rxjava3/internal/observers/m;-><init>()V

    .line 2
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    iput-object v0, p0, Lio/reactivex/rxjava3/internal/observers/o;->p:Ljava/util/concurrent/atomic/AtomicInteger;

    return-void
.end method
