.class public final Lio/reactivex/rxjava3/internal/operators/single/x0;
.super Lio/reactivex/rxjava3/core/p0;
.source "SingleTimeInterval.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/reactivex/rxjava3/internal/operators/single/x0$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lio/reactivex/rxjava3/core/p0<",
        "Lio/reactivex/rxjava3/schedulers/d<",
        "TT;>;>;"
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

.field final b:Ljava/util/concurrent/TimeUnit;

.field final c:Lio/reactivex/rxjava3/core/o0;

.field final d:Z


# direct methods
.method public constructor <init>(Lio/reactivex/rxjava3/core/v0;Ljava/util/concurrent/TimeUnit;Lio/reactivex/rxjava3/core/o0;Z)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "source",
            "unit",
            "scheduler",
            "start"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/rxjava3/core/v0<",
            "TT;>;",
            "Ljava/util/concurrent/TimeUnit;",
            "Lio/reactivex/rxjava3/core/o0;",
            "Z)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lio/reactivex/rxjava3/core/p0;-><init>()V

    .line 2
    iput-object p1, p0, Lio/reactivex/rxjava3/internal/operators/single/x0;->a:Lio/reactivex/rxjava3/core/v0;

    .line 3
    iput-object p2, p0, Lio/reactivex/rxjava3/internal/operators/single/x0;->b:Ljava/util/concurrent/TimeUnit;

    .line 4
    iput-object p3, p0, Lio/reactivex/rxjava3/internal/operators/single/x0;->c:Lio/reactivex/rxjava3/core/o0;

    .line 5
    iput-boolean p4, p0, Lio/reactivex/rxjava3/internal/operators/single/x0;->d:Z

    return-void
.end method


# virtual methods
.method protected M1(Lio/reactivex/rxjava3/core/s0;)V
    .locals 5
    .param p1    # Lio/reactivex/rxjava3/core/s0;
        .annotation build Lp7/e;
        .end annotation
    .end param
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
            "Lio/reactivex/rxjava3/core/s0<",
            "-",
            "Lio/reactivex/rxjava3/schedulers/d<",
            "TT;>;>;)V"
        }
    .end annotation

    iget-object v0, p0, Lio/reactivex/rxjava3/internal/operators/single/x0;->a:Lio/reactivex/rxjava3/core/v0;

    new-instance v1, Lio/reactivex/rxjava3/internal/operators/single/x0$a;

    iget-object v2, p0, Lio/reactivex/rxjava3/internal/operators/single/x0;->b:Ljava/util/concurrent/TimeUnit;

    iget-object v3, p0, Lio/reactivex/rxjava3/internal/operators/single/x0;->c:Lio/reactivex/rxjava3/core/o0;

    iget-boolean v4, p0, Lio/reactivex/rxjava3/internal/operators/single/x0;->d:Z

    invoke-direct {v1, p1, v2, v3, v4}, Lio/reactivex/rxjava3/internal/operators/single/x0$a;-><init>(Lio/reactivex/rxjava3/core/s0;Ljava/util/concurrent/TimeUnit;Lio/reactivex/rxjava3/core/o0;Z)V

    invoke-interface {v0, v1}, Lio/reactivex/rxjava3/core/v0;->d(Lio/reactivex/rxjava3/core/s0;)V

    return-void
.end method
