.class public final Lio/reactivex/rxjava3/internal/operators/maybe/k;
.super Lio/reactivex/rxjava3/internal/operators/maybe/a;
.source "MaybeDelay.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/reactivex/rxjava3/internal/operators/maybe/k$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lio/reactivex/rxjava3/internal/operators/maybe/a<",
        "TT;TT;>;"
    }
.end annotation


# instance fields
.field final b:J

.field final c:Ljava/util/concurrent/TimeUnit;

.field final d:Lio/reactivex/rxjava3/core/o0;

.field final e:Z


# direct methods
.method public constructor <init>(Lio/reactivex/rxjava3/core/b0;JLjava/util/concurrent/TimeUnit;Lio/reactivex/rxjava3/core/o0;Z)V
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
            "delay",
            "unit",
            "scheduler",
            "delayError"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/rxjava3/core/b0<",
            "TT;>;J",
            "Ljava/util/concurrent/TimeUnit;",
            "Lio/reactivex/rxjava3/core/o0;",
            "Z)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1}, Lio/reactivex/rxjava3/internal/operators/maybe/a;-><init>(Lio/reactivex/rxjava3/core/b0;)V

    .line 2
    iput-wide p2, p0, Lio/reactivex/rxjava3/internal/operators/maybe/k;->b:J

    .line 3
    iput-object p4, p0, Lio/reactivex/rxjava3/internal/operators/maybe/k;->c:Ljava/util/concurrent/TimeUnit;

    .line 4
    iput-object p5, p0, Lio/reactivex/rxjava3/internal/operators/maybe/k;->d:Lio/reactivex/rxjava3/core/o0;

    .line 5
    iput-boolean p6, p0, Lio/reactivex/rxjava3/internal/operators/maybe/k;->e:Z

    return-void
.end method


# virtual methods
.method protected U1(Lio/reactivex/rxjava3/core/y;)V
    .locals 9
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
            "Lio/reactivex/rxjava3/core/y<",
            "-TT;>;)V"
        }
    .end annotation

    iget-object v0, p0, Lio/reactivex/rxjava3/internal/operators/maybe/a;->a:Lio/reactivex/rxjava3/core/b0;

    new-instance v8, Lio/reactivex/rxjava3/internal/operators/maybe/k$a;

    iget-wide v3, p0, Lio/reactivex/rxjava3/internal/operators/maybe/k;->b:J

    iget-object v5, p0, Lio/reactivex/rxjava3/internal/operators/maybe/k;->c:Ljava/util/concurrent/TimeUnit;

    iget-object v6, p0, Lio/reactivex/rxjava3/internal/operators/maybe/k;->d:Lio/reactivex/rxjava3/core/o0;

    iget-boolean v7, p0, Lio/reactivex/rxjava3/internal/operators/maybe/k;->e:Z

    move-object v1, v8

    move-object v2, p1

    invoke-direct/range {v1 .. v7}, Lio/reactivex/rxjava3/internal/operators/maybe/k$a;-><init>(Lio/reactivex/rxjava3/core/y;JLjava/util/concurrent/TimeUnit;Lio/reactivex/rxjava3/core/o0;Z)V

    invoke-interface {v0, v8}, Lio/reactivex/rxjava3/core/b0;->b(Lio/reactivex/rxjava3/core/y;)V

    return-void
.end method
