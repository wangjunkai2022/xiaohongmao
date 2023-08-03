.class public final Lio/reactivex/internal/operators/single/t0;
.super Lio/reactivex/i0;
.source "SingleTimer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/reactivex/internal/operators/single/t0$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lio/reactivex/i0<",
        "Ljava/lang/Long;",
        ">;"
    }
.end annotation


# instance fields
.field final a:J

.field final b:Ljava/util/concurrent/TimeUnit;

.field final c:Lio/reactivex/h0;


# direct methods
.method public constructor <init>(JLjava/util/concurrent/TimeUnit;Lio/reactivex/h0;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lio/reactivex/i0;-><init>()V

    .line 2
    iput-wide p1, p0, Lio/reactivex/internal/operators/single/t0;->a:J

    .line 3
    iput-object p3, p0, Lio/reactivex/internal/operators/single/t0;->b:Ljava/util/concurrent/TimeUnit;

    .line 4
    iput-object p4, p0, Lio/reactivex/internal/operators/single/t0;->c:Lio/reactivex/h0;

    return-void
.end method


# virtual methods
.method protected b1(Lio/reactivex/l0;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/l0<",
            "-",
            "Ljava/lang/Long;",
            ">;)V"
        }
    .end annotation

    .line 1
    new-instance v0, Lio/reactivex/internal/operators/single/t0$a;

    invoke-direct {v0, p1}, Lio/reactivex/internal/operators/single/t0$a;-><init>(Lio/reactivex/l0;)V

    .line 2
    invoke-interface {p1, v0}, Lio/reactivex/l0;->onSubscribe(Lio/reactivex/disposables/c;)V

    .line 3
    iget-object p1, p0, Lio/reactivex/internal/operators/single/t0;->c:Lio/reactivex/h0;

    iget-wide v1, p0, Lio/reactivex/internal/operators/single/t0;->a:J

    iget-object v3, p0, Lio/reactivex/internal/operators/single/t0;->b:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {p1, v0, v1, v2, v3}, Lio/reactivex/h0;->g(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Lio/reactivex/disposables/c;

    move-result-object p1

    invoke-virtual {v0, p1}, Lio/reactivex/internal/operators/single/t0$a;->a(Lio/reactivex/disposables/c;)V

    return-void
.end method
