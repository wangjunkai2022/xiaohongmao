.class public final Lio/reactivex/rxjava3/internal/operators/completable/o0;
.super Lio/reactivex/rxjava3/core/a;
.source "CompletableTimeout.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/reactivex/rxjava3/internal/operators/completable/o0$a;,
        Lio/reactivex/rxjava3/internal/operators/completable/o0$b;
    }
.end annotation


# instance fields
.field final a:Lio/reactivex/rxjava3/core/g;

.field final b:J

.field final c:Ljava/util/concurrent/TimeUnit;

.field final d:Lio/reactivex/rxjava3/core/o0;

.field final e:Lio/reactivex/rxjava3/core/g;


# direct methods
.method public constructor <init>(Lio/reactivex/rxjava3/core/g;JLjava/util/concurrent/TimeUnit;Lio/reactivex/rxjava3/core/o0;Lio/reactivex/rxjava3/core/g;)V
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

    .line 1
    invoke-direct {p0}, Lio/reactivex/rxjava3/core/a;-><init>()V

    .line 2
    iput-object p1, p0, Lio/reactivex/rxjava3/internal/operators/completable/o0;->a:Lio/reactivex/rxjava3/core/g;

    .line 3
    iput-wide p2, p0, Lio/reactivex/rxjava3/internal/operators/completable/o0;->b:J

    .line 4
    iput-object p4, p0, Lio/reactivex/rxjava3/internal/operators/completable/o0;->c:Ljava/util/concurrent/TimeUnit;

    .line 5
    iput-object p5, p0, Lio/reactivex/rxjava3/internal/operators/completable/o0;->d:Lio/reactivex/rxjava3/core/o0;

    .line 6
    iput-object p6, p0, Lio/reactivex/rxjava3/internal/operators/completable/o0;->e:Lio/reactivex/rxjava3/core/g;

    return-void
.end method


# virtual methods
.method public Y0(Lio/reactivex/rxjava3/core/d;)V
    .locals 7
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "observer"
        }
    .end annotation

    .line 1
    new-instance v0, Lio/reactivex/rxjava3/disposables/c;

    invoke-direct {v0}, Lio/reactivex/rxjava3/disposables/c;-><init>()V

    .line 2
    invoke-interface {p1, v0}, Lio/reactivex/rxjava3/core/d;->onSubscribe(Lio/reactivex/rxjava3/disposables/f;)V

    .line 3
    new-instance v1, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    .line 4
    iget-object v2, p0, Lio/reactivex/rxjava3/internal/operators/completable/o0;->d:Lio/reactivex/rxjava3/core/o0;

    new-instance v3, Lio/reactivex/rxjava3/internal/operators/completable/o0$a;

    invoke-direct {v3, p0, v1, v0, p1}, Lio/reactivex/rxjava3/internal/operators/completable/o0$a;-><init>(Lio/reactivex/rxjava3/internal/operators/completable/o0;Ljava/util/concurrent/atomic/AtomicBoolean;Lio/reactivex/rxjava3/disposables/c;Lio/reactivex/rxjava3/core/d;)V

    iget-wide v4, p0, Lio/reactivex/rxjava3/internal/operators/completable/o0;->b:J

    iget-object v6, p0, Lio/reactivex/rxjava3/internal/operators/completable/o0;->c:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v2, v3, v4, v5, v6}, Lio/reactivex/rxjava3/core/o0;->g(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Lio/reactivex/rxjava3/disposables/f;

    move-result-object v2

    .line 5
    invoke-virtual {v0, v2}, Lio/reactivex/rxjava3/disposables/c;->b(Lio/reactivex/rxjava3/disposables/f;)Z

    .line 6
    iget-object v2, p0, Lio/reactivex/rxjava3/internal/operators/completable/o0;->a:Lio/reactivex/rxjava3/core/g;

    new-instance v3, Lio/reactivex/rxjava3/internal/operators/completable/o0$b;

    invoke-direct {v3, v0, v1, p1}, Lio/reactivex/rxjava3/internal/operators/completable/o0$b;-><init>(Lio/reactivex/rxjava3/disposables/c;Ljava/util/concurrent/atomic/AtomicBoolean;Lio/reactivex/rxjava3/core/d;)V

    invoke-interface {v2, v3}, Lio/reactivex/rxjava3/core/g;->d(Lio/reactivex/rxjava3/core/d;)V

    return-void
.end method
