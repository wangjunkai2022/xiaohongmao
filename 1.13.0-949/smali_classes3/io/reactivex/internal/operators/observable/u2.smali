.class public final Lio/reactivex/internal/operators/observable/u2;
.super Lio/reactivex/internal/operators/observable/a;
.source "ObservableRetryPredicate.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/reactivex/internal/operators/observable/u2$a;
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
.field final b:Ln7/r;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ln7/r<",
            "-",
            "Ljava/lang/Throwable;",
            ">;"
        }
    .end annotation
.end field

.field final c:J


# direct methods
.method public constructor <init>(Lio/reactivex/z;JLn7/r;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/z<",
            "TT;>;J",
            "Ln7/r<",
            "-",
            "Ljava/lang/Throwable;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1}, Lio/reactivex/internal/operators/observable/a;-><init>(Lio/reactivex/e0;)V

    .line 2
    iput-object p4, p0, Lio/reactivex/internal/operators/observable/u2;->b:Ln7/r;

    .line 3
    iput-wide p2, p0, Lio/reactivex/internal/operators/observable/u2;->c:J

    return-void
.end method


# virtual methods
.method public subscribeActual(Lio/reactivex/g0;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/g0<",
            "-TT;>;)V"
        }
    .end annotation

    .line 1
    new-instance v5, Lio/reactivex/internal/disposables/SequentialDisposable;

    invoke-direct {v5}, Lio/reactivex/internal/disposables/SequentialDisposable;-><init>()V

    .line 2
    invoke-interface {p1, v5}, Lio/reactivex/g0;->onSubscribe(Lio/reactivex/disposables/c;)V

    .line 3
    new-instance v7, Lio/reactivex/internal/operators/observable/u2$a;

    iget-wide v2, p0, Lio/reactivex/internal/operators/observable/u2;->c:J

    iget-object v4, p0, Lio/reactivex/internal/operators/observable/u2;->b:Ln7/r;

    iget-object v6, p0, Lio/reactivex/internal/operators/observable/a;->a:Lio/reactivex/e0;

    move-object v0, v7

    move-object v1, p1

    invoke-direct/range {v0 .. v6}, Lio/reactivex/internal/operators/observable/u2$a;-><init>(Lio/reactivex/g0;JLn7/r;Lio/reactivex/internal/disposables/SequentialDisposable;Lio/reactivex/e0;)V

    .line 4
    invoke-virtual {v7}, Lio/reactivex/internal/operators/observable/u2$a;->a()V

    return-void
.end method
