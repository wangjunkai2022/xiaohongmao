.class final Lio/reactivex/rxjava3/internal/operators/flowable/g3$c;
.super Ljava/util/concurrent/atomic/AtomicLong;
.source "FlowableReplay.java"

# interfaces
.implements Lorg/reactivestreams/e;
.implements Lio/reactivex/rxjava3/disposables/f;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/reactivex/rxjava3/internal/operators/flowable/g3;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "c"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/concurrent/atomic/AtomicLong;",
        "Lorg/reactivestreams/e;",
        "Lio/reactivex/rxjava3/disposables/f;"
    }
.end annotation


# static fields
.field private static final g:J = -0x3dcf6c3b2e70d8baL

.field static final h:J = -0x8000000000000000L


# instance fields
.field final a:Lio/reactivex/rxjava3/internal/operators/flowable/g3$i;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/rxjava3/internal/operators/flowable/g3$i<",
            "TT;>;"
        }
    .end annotation
.end field

.field final b:Lorg/reactivestreams/d;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/reactivestreams/d<",
            "-TT;>;"
        }
    .end annotation
.end field

.field c:Ljava/lang/Object;

.field final d:Ljava/util/concurrent/atomic/AtomicLong;

.field e:Z

.field f:Z


# direct methods
.method constructor <init>(Lio/reactivex/rxjava3/internal/operators/flowable/g3$i;Lorg/reactivestreams/d;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "parent",
            "child"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/rxjava3/internal/operators/flowable/g3$i<",
            "TT;>;",
            "Lorg/reactivestreams/d<",
            "-TT;>;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/util/concurrent/atomic/AtomicLong;-><init>()V

    .line 2
    iput-object p1, p0, Lio/reactivex/rxjava3/internal/operators/flowable/g3$c;->a:Lio/reactivex/rxjava3/internal/operators/flowable/g3$i;

    .line 3
    iput-object p2, p0, Lio/reactivex/rxjava3/internal/operators/flowable/g3$c;->b:Lorg/reactivestreams/d;

    .line 4
    new-instance p1, Ljava/util/concurrent/atomic/AtomicLong;

    invoke-direct {p1}, Ljava/util/concurrent/atomic/AtomicLong;-><init>()V

    iput-object p1, p0, Lio/reactivex/rxjava3/internal/operators/flowable/g3$c;->d:Ljava/util/concurrent/atomic/AtomicLong;

    return-void
.end method


# virtual methods
.method a()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<U:",
            "Ljava/lang/Object;",
            ">()TU;"
        }
    .end annotation

    iget-object v0, p0, Lio/reactivex/rxjava3/internal/operators/flowable/g3$c;->c:Ljava/lang/Object;

    return-object v0
.end method

.method public b(J)J
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "n"
        }
    .end annotation

    invoke-static {p0, p1, p2}, Lio/reactivex/rxjava3/internal/util/b;->f(Ljava/util/concurrent/atomic/AtomicLong;J)J

    move-result-wide p1

    return-wide p1
.end method

.method public cancel()V
    .locals 0

    invoke-virtual {p0}, Lio/reactivex/rxjava3/internal/operators/flowable/g3$c;->dispose()V

    return-void
.end method

.method public dispose()V
    .locals 5

    const-wide/high16 v0, -0x8000000000000000L

    .line 1
    invoke-virtual {p0, v0, v1}, Ljava/util/concurrent/atomic/AtomicLong;->getAndSet(J)J

    move-result-wide v2

    cmp-long v4, v2, v0

    if-eqz v4, :cond_0

    .line 2
    iget-object v0, p0, Lio/reactivex/rxjava3/internal/operators/flowable/g3$c;->a:Lio/reactivex/rxjava3/internal/operators/flowable/g3$i;

    invoke-virtual {v0, p0}, Lio/reactivex/rxjava3/internal/operators/flowable/g3$i;->c(Lio/reactivex/rxjava3/internal/operators/flowable/g3$c;)V

    .line 3
    iget-object v0, p0, Lio/reactivex/rxjava3/internal/operators/flowable/g3$c;->a:Lio/reactivex/rxjava3/internal/operators/flowable/g3$i;

    invoke-virtual {v0}, Lio/reactivex/rxjava3/internal/operators/flowable/g3$i;->b()V

    const/4 v0, 0x0

    .line 4
    iput-object v0, p0, Lio/reactivex/rxjava3/internal/operators/flowable/g3$c;->c:Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method public isDisposed()Z
    .locals 5

    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v0

    const-wide/high16 v2, -0x8000000000000000L

    cmp-long v4, v0, v2

    if-nez v4, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public request(J)V
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "n"
        }
    .end annotation

    .line 1
    invoke-static {p1, p2}, Lio/reactivex/rxjava3/internal/subscriptions/SubscriptionHelper;->validate(J)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    invoke-static {p0, p1, p2}, Lio/reactivex/rxjava3/internal/util/b;->b(Ljava/util/concurrent/atomic/AtomicLong;J)J

    move-result-wide v0

    const-wide/high16 v2, -0x8000000000000000L

    cmp-long v4, v0, v2

    if-eqz v4, :cond_0

    .line 3
    iget-object v0, p0, Lio/reactivex/rxjava3/internal/operators/flowable/g3$c;->d:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-static {v0, p1, p2}, Lio/reactivex/rxjava3/internal/util/b;->a(Ljava/util/concurrent/atomic/AtomicLong;J)J

    .line 4
    iget-object p1, p0, Lio/reactivex/rxjava3/internal/operators/flowable/g3$c;->a:Lio/reactivex/rxjava3/internal/operators/flowable/g3$i;

    invoke-virtual {p1}, Lio/reactivex/rxjava3/internal/operators/flowable/g3$i;->b()V

    .line 5
    iget-object p1, p0, Lio/reactivex/rxjava3/internal/operators/flowable/g3$c;->a:Lio/reactivex/rxjava3/internal/operators/flowable/g3$i;

    iget-object p1, p1, Lio/reactivex/rxjava3/internal/operators/flowable/g3$i;->a:Lio/reactivex/rxjava3/internal/operators/flowable/g3$f;

    invoke-interface {p1, p0}, Lio/reactivex/rxjava3/internal/operators/flowable/g3$f;->c(Lio/reactivex/rxjava3/internal/operators/flowable/g3$c;)V

    :cond_0
    return-void
.end method
