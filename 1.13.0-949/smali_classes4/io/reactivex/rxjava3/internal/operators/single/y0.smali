.class public final Lio/reactivex/rxjava3/internal/operators/single/y0;
.super Lio/reactivex/rxjava3/core/p0;
.source "SingleTimeout.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/reactivex/rxjava3/internal/operators/single/y0$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lio/reactivex/rxjava3/core/p0<",
        "TT;>;"
    }
.end annotation


# instance fields
.field final a:Lio/reactivex/rxjava3/core/v0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/rxjava3/core/v0<",
            "TT;>;"
        }
    .end annotation
.end field

.field final b:J

.field final c:Ljava/util/concurrent/TimeUnit;

.field final d:Lio/reactivex/rxjava3/core/o0;

.field final e:Lio/reactivex/rxjava3/core/v0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/rxjava3/core/v0<",
            "+TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lio/reactivex/rxjava3/core/v0;JLjava/util/concurrent/TimeUnit;Lio/reactivex/rxjava3/core/o0;Lio/reactivex/rxjava3/core/v0;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "source",
            "timeout",
            "unit",
            "scheduler",
            "other"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/rxjava3/core/v0<",
            "TT;>;J",
            "Ljava/util/concurrent/TimeUnit;",
            "Lio/reactivex/rxjava3/core/o0;",
            "Lio/reactivex/rxjava3/core/v0<",
            "+TT;>;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lio/reactivex/rxjava3/core/p0;-><init>()V

    .line 2
    iput-object p1, p0, Lio/reactivex/rxjava3/internal/operators/single/y0;->a:Lio/reactivex/rxjava3/core/v0;

    .line 3
    iput-wide p2, p0, Lio/reactivex/rxjava3/internal/operators/single/y0;->b:J

    .line 4
    iput-object p4, p0, Lio/reactivex/rxjava3/internal/operators/single/y0;->c:Ljava/util/concurrent/TimeUnit;

    .line 5
    iput-object p5, p0, Lio/reactivex/rxjava3/internal/operators/single/y0;->d:Lio/reactivex/rxjava3/core/o0;

    .line 6
    iput-object p6, p0, Lio/reactivex/rxjava3/internal/operators/single/y0;->e:Lio/reactivex/rxjava3/core/v0;

    return-void
.end method


# virtual methods
.method protected M1(Lio/reactivex/rxjava3/core/s0;)V
    .locals 7
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "observer"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/rxjava3/core/s0<",
            "-TT;>;)V"
        }
    .end annotation

    .line 1
    new-instance v6, Lio/reactivex/rxjava3/internal/operators/single/y0$a;

    iget-object v2, p0, Lio/reactivex/rxjava3/internal/operators/single/y0;->e:Lio/reactivex/rxjava3/core/v0;

    iget-wide v3, p0, Lio/reactivex/rxjava3/internal/operators/single/y0;->b:J

    iget-object v5, p0, Lio/reactivex/rxjava3/internal/operators/single/y0;->c:Ljava/util/concurrent/TimeUnit;

    move-object v0, v6

    move-object v1, p1

    invoke-direct/range {v0 .. v5}, Lio/reactivex/rxjava3/internal/operators/single/y0$a;-><init>(Lio/reactivex/rxjava3/core/s0;Lio/reactivex/rxjava3/core/v0;JLjava/util/concurrent/TimeUnit;)V

    .line 2
    invoke-interface {p1, v6}, Lio/reactivex/rxjava3/core/s0;->onSubscribe(Lio/reactivex/rxjava3/disposables/f;)V

    .line 3
    iget-object p1, v6, Lio/reactivex/rxjava3/internal/operators/single/y0$a;->b:Ljava/util/concurrent/atomic/AtomicReference;

    iget-object v0, p0, Lio/reactivex/rxjava3/internal/operators/single/y0;->d:Lio/reactivex/rxjava3/core/o0;

    iget-wide v1, p0, Lio/reactivex/rxjava3/internal/operators/single/y0;->b:J

    iget-object v3, p0, Lio/reactivex/rxjava3/internal/operators/single/y0;->c:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, v6, v1, v2, v3}, Lio/reactivex/rxjava3/core/o0;->g(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Lio/reactivex/rxjava3/disposables/f;

    move-result-object v0

    invoke-static {p1, v0}, Lio/reactivex/rxjava3/internal/disposables/DisposableHelper;->replace(Ljava/util/concurrent/atomic/AtomicReference;Lio/reactivex/rxjava3/disposables/f;)Z

    .line 4
    iget-object p1, p0, Lio/reactivex/rxjava3/internal/operators/single/y0;->a:Lio/reactivex/rxjava3/core/v0;

    invoke-interface {p1, v6}, Lio/reactivex/rxjava3/core/v0;->d(Lio/reactivex/rxjava3/core/s0;)V

    return-void
.end method
