.class public final Lio/reactivex/internal/operators/completable/m0;
.super Lio/reactivex/a;
.source "CompletableTimeout.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/reactivex/internal/operators/completable/m0$a;,
        Lio/reactivex/internal/operators/completable/m0$b;
    }
.end annotation


# instance fields
.field final a:Lio/reactivex/g;

.field final b:J

.field final c:Ljava/util/concurrent/TimeUnit;

.field final d:Lio/reactivex/h0;

.field final e:Lio/reactivex/g;


# direct methods
.method public constructor <init>(Lio/reactivex/g;JLjava/util/concurrent/TimeUnit;Lio/reactivex/h0;Lio/reactivex/g;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lio/reactivex/a;-><init>()V

    .line 2
    iput-object p1, p0, Lio/reactivex/internal/operators/completable/m0;->a:Lio/reactivex/g;

    .line 3
    iput-wide p2, p0, Lio/reactivex/internal/operators/completable/m0;->b:J

    .line 4
    iput-object p4, p0, Lio/reactivex/internal/operators/completable/m0;->c:Ljava/util/concurrent/TimeUnit;

    .line 5
    iput-object p5, p0, Lio/reactivex/internal/operators/completable/m0;->d:Lio/reactivex/h0;

    .line 6
    iput-object p6, p0, Lio/reactivex/internal/operators/completable/m0;->e:Lio/reactivex/g;

    return-void
.end method


# virtual methods
.method public I0(Lio/reactivex/d;)V
    .locals 7

    .line 1
    new-instance v0, Lio/reactivex/disposables/b;

    invoke-direct {v0}, Lio/reactivex/disposables/b;-><init>()V

    .line 2
    invoke-interface {p1, v0}, Lio/reactivex/d;->onSubscribe(Lio/reactivex/disposables/c;)V

    .line 3
    new-instance v1, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    .line 4
    iget-object v2, p0, Lio/reactivex/internal/operators/completable/m0;->d:Lio/reactivex/h0;

    new-instance v3, Lio/reactivex/internal/operators/completable/m0$a;

    invoke-direct {v3, p0, v1, v0, p1}, Lio/reactivex/internal/operators/completable/m0$a;-><init>(Lio/reactivex/internal/operators/completable/m0;Ljava/util/concurrent/atomic/AtomicBoolean;Lio/reactivex/disposables/b;Lio/reactivex/d;)V

    iget-wide v4, p0, Lio/reactivex/internal/operators/completable/m0;->b:J

    iget-object v6, p0, Lio/reactivex/internal/operators/completable/m0;->c:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v2, v3, v4, v5, v6}, Lio/reactivex/h0;->g(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Lio/reactivex/disposables/c;

    move-result-object v2

    .line 5
    invoke-virtual {v0, v2}, Lio/reactivex/disposables/b;->b(Lio/reactivex/disposables/c;)Z

    .line 6
    iget-object v2, p0, Lio/reactivex/internal/operators/completable/m0;->a:Lio/reactivex/g;

    new-instance v3, Lio/reactivex/internal/operators/completable/m0$b;

    invoke-direct {v3, v0, v1, p1}, Lio/reactivex/internal/operators/completable/m0$b;-><init>(Lio/reactivex/disposables/b;Ljava/util/concurrent/atomic/AtomicBoolean;Lio/reactivex/d;)V

    invoke-interface {v2, v3}, Lio/reactivex/g;->d(Lio/reactivex/d;)V

    return-void
.end method
