.class public final Lio/reactivex/internal/operators/single/f;
.super Lio/reactivex/i0;
.source "SingleDelay.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/reactivex/internal/operators/single/f$a;
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
            "+TT;>;"
        }
    .end annotation
.end field

.field final b:J

.field final c:Ljava/util/concurrent/TimeUnit;

.field final d:Lio/reactivex/h0;

.field final e:Z


# direct methods
.method public constructor <init>(Lio/reactivex/o0;JLjava/util/concurrent/TimeUnit;Lio/reactivex/h0;Z)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/o0<",
            "+TT;>;J",
            "Ljava/util/concurrent/TimeUnit;",
            "Lio/reactivex/h0;",
            "Z)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lio/reactivex/i0;-><init>()V

    .line 2
    iput-object p1, p0, Lio/reactivex/internal/operators/single/f;->a:Lio/reactivex/o0;

    .line 3
    iput-wide p2, p0, Lio/reactivex/internal/operators/single/f;->b:J

    .line 4
    iput-object p4, p0, Lio/reactivex/internal/operators/single/f;->c:Ljava/util/concurrent/TimeUnit;

    .line 5
    iput-object p5, p0, Lio/reactivex/internal/operators/single/f;->d:Lio/reactivex/h0;

    .line 6
    iput-boolean p6, p0, Lio/reactivex/internal/operators/single/f;->e:Z

    return-void
.end method


# virtual methods
.method protected b1(Lio/reactivex/l0;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/l0<",
            "-TT;>;)V"
        }
    .end annotation

    .line 1
    new-instance v0, Lio/reactivex/internal/disposables/SequentialDisposable;

    invoke-direct {v0}, Lio/reactivex/internal/disposables/SequentialDisposable;-><init>()V

    .line 2
    invoke-interface {p1, v0}, Lio/reactivex/l0;->onSubscribe(Lio/reactivex/disposables/c;)V

    .line 3
    iget-object v1, p0, Lio/reactivex/internal/operators/single/f;->a:Lio/reactivex/o0;

    new-instance v2, Lio/reactivex/internal/operators/single/f$a;

    invoke-direct {v2, p0, v0, p1}, Lio/reactivex/internal/operators/single/f$a;-><init>(Lio/reactivex/internal/operators/single/f;Lio/reactivex/internal/disposables/SequentialDisposable;Lio/reactivex/l0;)V

    invoke-interface {v1, v2}, Lio/reactivex/o0;->d(Lio/reactivex/l0;)V

    return-void
.end method
