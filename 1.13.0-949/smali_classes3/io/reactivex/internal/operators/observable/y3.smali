.class public final Lio/reactivex/internal/operators/observable/y3;
.super Lio/reactivex/internal/operators/observable/a;
.source "ObservableTimeoutTimed.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/reactivex/internal/operators/observable/y3$d;,
        Lio/reactivex/internal/operators/observable/y3$a;,
        Lio/reactivex/internal/operators/observable/y3$b;,
        Lio/reactivex/internal/operators/observable/y3$e;,
        Lio/reactivex/internal/operators/observable/y3$c;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lio/reactivex/internal/operators/observable/a<",
        "TT;TT;>;"
    }
.end annotation


# instance fields
.field final b:J

.field final c:Ljava/util/concurrent/TimeUnit;

.field final d:Lio/reactivex/h0;

.field final e:Lio/reactivex/e0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/e0<",
            "+TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lio/reactivex/z;JLjava/util/concurrent/TimeUnit;Lio/reactivex/h0;Lio/reactivex/e0;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/z<",
            "TT;>;J",
            "Ljava/util/concurrent/TimeUnit;",
            "Lio/reactivex/h0;",
            "Lio/reactivex/e0<",
            "+TT;>;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1}, Lio/reactivex/internal/operators/observable/a;-><init>(Lio/reactivex/e0;)V

    .line 2
    iput-wide p2, p0, Lio/reactivex/internal/operators/observable/y3;->b:J

    .line 3
    iput-object p4, p0, Lio/reactivex/internal/operators/observable/y3;->c:Ljava/util/concurrent/TimeUnit;

    .line 4
    iput-object p5, p0, Lio/reactivex/internal/operators/observable/y3;->d:Lio/reactivex/h0;

    .line 5
    iput-object p6, p0, Lio/reactivex/internal/operators/observable/y3;->e:Lio/reactivex/e0;

    return-void
.end method


# virtual methods
.method protected subscribeActual(Lio/reactivex/g0;)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/g0<",
            "-TT;>;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lio/reactivex/internal/operators/observable/y3;->e:Lio/reactivex/e0;

    const-wide/16 v1, 0x0

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Lio/reactivex/internal/operators/observable/y3$c;

    iget-wide v5, p0, Lio/reactivex/internal/operators/observable/y3;->b:J

    iget-object v7, p0, Lio/reactivex/internal/operators/observable/y3;->c:Ljava/util/concurrent/TimeUnit;

    iget-object v3, p0, Lio/reactivex/internal/operators/observable/y3;->d:Lio/reactivex/h0;

    invoke-virtual {v3}, Lio/reactivex/h0;->d()Lio/reactivex/h0$c;

    move-result-object v8

    move-object v3, v0

    move-object v4, p1

    invoke-direct/range {v3 .. v8}, Lio/reactivex/internal/operators/observable/y3$c;-><init>(Lio/reactivex/g0;JLjava/util/concurrent/TimeUnit;Lio/reactivex/h0$c;)V

    .line 3
    invoke-interface {p1, v0}, Lio/reactivex/g0;->onSubscribe(Lio/reactivex/disposables/c;)V

    .line 4
    invoke-virtual {v0, v1, v2}, Lio/reactivex/internal/operators/observable/y3$c;->c(J)V

    .line 5
    iget-object p1, p0, Lio/reactivex/internal/operators/observable/a;->a:Lio/reactivex/e0;

    invoke-interface {p1, v0}, Lio/reactivex/e0;->subscribe(Lio/reactivex/g0;)V

    goto :goto_0

    .line 6
    :cond_0
    new-instance v0, Lio/reactivex/internal/operators/observable/y3$b;

    iget-wide v5, p0, Lio/reactivex/internal/operators/observable/y3;->b:J

    iget-object v7, p0, Lio/reactivex/internal/operators/observable/y3;->c:Ljava/util/concurrent/TimeUnit;

    iget-object v3, p0, Lio/reactivex/internal/operators/observable/y3;->d:Lio/reactivex/h0;

    invoke-virtual {v3}, Lio/reactivex/h0;->d()Lio/reactivex/h0$c;

    move-result-object v8

    iget-object v9, p0, Lio/reactivex/internal/operators/observable/y3;->e:Lio/reactivex/e0;

    move-object v3, v0

    move-object v4, p1

    invoke-direct/range {v3 .. v9}, Lio/reactivex/internal/operators/observable/y3$b;-><init>(Lio/reactivex/g0;JLjava/util/concurrent/TimeUnit;Lio/reactivex/h0$c;Lio/reactivex/e0;)V

    .line 7
    invoke-interface {p1, v0}, Lio/reactivex/g0;->onSubscribe(Lio/reactivex/disposables/c;)V

    .line 8
    invoke-virtual {v0, v1, v2}, Lio/reactivex/internal/operators/observable/y3$b;->c(J)V

    .line 9
    iget-object p1, p0, Lio/reactivex/internal/operators/observable/a;->a:Lio/reactivex/e0;

    invoke-interface {p1, v0}, Lio/reactivex/e0;->subscribe(Lio/reactivex/g0;)V

    :goto_0
    return-void
.end method
