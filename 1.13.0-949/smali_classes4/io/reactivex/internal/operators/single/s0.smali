.class public final Lio/reactivex/internal/operators/single/s0;
.super Lio/reactivex/i0;
.source "SingleTimeout.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/reactivex/internal/operators/single/s0$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lio/reactivex/i0<",
        "TT;>;"
    }
.end annotation


# instance fields
.field final a:Lio/reactivex/o0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/o0<",
            "TT;>;"
        }
    .end annotation
.end field

.field final b:J

.field final c:Ljava/util/concurrent/TimeUnit;

.field final d:Lio/reactivex/h0;

.field final e:Lio/reactivex/o0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/o0<",
            "+TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lio/reactivex/o0;JLjava/util/concurrent/TimeUnit;Lio/reactivex/h0;Lio/reactivex/o0;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/o0<",
            "TT;>;J",
            "Ljava/util/concurrent/TimeUnit;",
            "Lio/reactivex/h0;",
            "Lio/reactivex/o0<",
            "+TT;>;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lio/reactivex/i0;-><init>()V

    .line 2
    iput-object p1, p0, Lio/reactivex/internal/operators/single/s0;->a:Lio/reactivex/o0;

    .line 3
    iput-wide p2, p0, Lio/reactivex/internal/operators/single/s0;->b:J

    .line 4
    iput-object p4, p0, Lio/reactivex/internal/operators/single/s0;->c:Ljava/util/concurrent/TimeUnit;

    .line 5
    iput-object p5, p0, Lio/reactivex/internal/operators/single/s0;->d:Lio/reactivex/h0;

    .line 6
    iput-object p6, p0, Lio/reactivex/internal/operators/single/s0;->e:Lio/reactivex/o0;

    return-void
.end method


# virtual methods
.method protected b1(Lio/reactivex/l0;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/l0<",
            "-TT;>;)V"
        }
    .end annotation

    .line 1
    new-instance v6, Lio/reactivex/internal/operators/single/s0$a;

    iget-object v2, p0, Lio/reactivex/internal/operators/single/s0;->e:Lio/reactivex/o0;

    iget-wide v3, p0, Lio/reactivex/internal/operators/single/s0;->b:J

    iget-object v5, p0, Lio/reactivex/internal/operators/single/s0;->c:Ljava/util/concurrent/TimeUnit;

    move-object v0, v6

    move-object v1, p1

    invoke-direct/range {v0 .. v5}, Lio/reactivex/internal/operators/single/s0$a;-><init>(Lio/reactivex/l0;Lio/reactivex/o0;JLjava/util/concurrent/TimeUnit;)V

    .line 2
    invoke-interface {p1, v6}, Lio/reactivex/l0;->onSubscribe(Lio/reactivex/disposables/c;)V

    .line 3
    iget-object p1, v6, Lio/reactivex/internal/operators/single/s0$a;->b:Ljava/util/concurrent/atomic/AtomicReference;

    iget-object v0, p0, Lio/reactivex/internal/operators/single/s0;->d:Lio/reactivex/h0;

    iget-wide v1, p0, Lio/reactivex/internal/operators/single/s0;->b:J

    iget-object v3, p0, Lio/reactivex/internal/operators/single/s0;->c:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, v6, v1, v2, v3}, Lio/reactivex/h0;->g(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Lio/reactivex/disposables/c;

    move-result-object v0

    invoke-static {p1, v0}, Lio/reactivex/internal/disposables/DisposableHelper;->replace(Ljava/util/concurrent/atomic/AtomicReference;Lio/reactivex/disposables/c;)Z

    .line 4
    iget-object p1, p0, Lio/reactivex/internal/operators/single/s0;->a:Lio/reactivex/o0;

    invoke-interface {p1, v6}, Lio/reactivex/o0;->d(Lio/reactivex/l0;)V

    return-void
.end method
