.class public final Lio/reactivex/rxjava3/internal/operators/observable/s1;
.super Lio/reactivex/rxjava3/core/g0;
.source "ObservableInterval.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/reactivex/rxjava3/internal/operators/observable/s1$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lio/reactivex/rxjava3/core/g0<",
        "Ljava/lang/Long;",
        ">;"
    }
.end annotation


# instance fields
.field final a:Lio/reactivex/rxjava3/core/o0;

.field final b:J

.field final c:J

.field final d:Ljava/util/concurrent/TimeUnit;


# direct methods
.method public constructor <init>(JJLjava/util/concurrent/TimeUnit;Lio/reactivex/rxjava3/core/o0;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "initialDelay",
            "period",
            "unit",
            "scheduler"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lio/reactivex/rxjava3/core/g0;-><init>()V

    .line 2
    iput-wide p1, p0, Lio/reactivex/rxjava3/internal/operators/observable/s1;->b:J

    .line 3
    iput-wide p3, p0, Lio/reactivex/rxjava3/internal/operators/observable/s1;->c:J

    .line 4
    iput-object p5, p0, Lio/reactivex/rxjava3/internal/operators/observable/s1;->d:Ljava/util/concurrent/TimeUnit;

    .line 5
    iput-object p6, p0, Lio/reactivex/rxjava3/internal/operators/observable/s1;->a:Lio/reactivex/rxjava3/core/o0;

    return-void
.end method


# virtual methods
.method public d6(Lio/reactivex/rxjava3/core/n0;)V
    .locals 8
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "observer"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/rxjava3/core/n0<",
            "-",
            "Ljava/lang/Long;",
            ">;)V"
        }
    .end annotation

    .line 1
    new-instance v7, Lio/reactivex/rxjava3/internal/operators/observable/s1$a;

    invoke-direct {v7, p1}, Lio/reactivex/rxjava3/internal/operators/observable/s1$a;-><init>(Lio/reactivex/rxjava3/core/n0;)V

    .line 2
    invoke-interface {p1, v7}, Lio/reactivex/rxjava3/core/n0;->onSubscribe(Lio/reactivex/rxjava3/disposables/f;)V

    .line 3
    iget-object v0, p0, Lio/reactivex/rxjava3/internal/operators/observable/s1;->a:Lio/reactivex/rxjava3/core/o0;

    .line 4
    instance-of p1, v0, Lio/reactivex/rxjava3/internal/schedulers/o;

    if-eqz p1, :cond_0

    .line 5
    invoke-virtual {v0}, Lio/reactivex/rxjava3/core/o0;->d()Lio/reactivex/rxjava3/core/o0$c;

    move-result-object v0

    .line 6
    invoke-virtual {v7, v0}, Lio/reactivex/rxjava3/internal/operators/observable/s1$a;->a(Lio/reactivex/rxjava3/disposables/f;)V

    .line 7
    iget-wide v2, p0, Lio/reactivex/rxjava3/internal/operators/observable/s1;->b:J

    iget-wide v4, p0, Lio/reactivex/rxjava3/internal/operators/observable/s1;->c:J

    iget-object v6, p0, Lio/reactivex/rxjava3/internal/operators/observable/s1;->d:Ljava/util/concurrent/TimeUnit;

    move-object v1, v7

    invoke-virtual/range {v0 .. v6}, Lio/reactivex/rxjava3/core/o0$c;->d(Ljava/lang/Runnable;JJLjava/util/concurrent/TimeUnit;)Lio/reactivex/rxjava3/disposables/f;

    goto :goto_0

    .line 8
    :cond_0
    iget-wide v2, p0, Lio/reactivex/rxjava3/internal/operators/observable/s1;->b:J

    iget-wide v4, p0, Lio/reactivex/rxjava3/internal/operators/observable/s1;->c:J

    iget-object v6, p0, Lio/reactivex/rxjava3/internal/operators/observable/s1;->d:Ljava/util/concurrent/TimeUnit;

    move-object v1, v7

    invoke-virtual/range {v0 .. v6}, Lio/reactivex/rxjava3/core/o0;->h(Ljava/lang/Runnable;JJLjava/util/concurrent/TimeUnit;)Lio/reactivex/rxjava3/disposables/f;

    move-result-object p1

    .line 9
    invoke-virtual {v7, p1}, Lio/reactivex/rxjava3/internal/operators/observable/s1$a;->a(Lio/reactivex/rxjava3/disposables/f;)V

    :goto_0
    return-void
.end method
