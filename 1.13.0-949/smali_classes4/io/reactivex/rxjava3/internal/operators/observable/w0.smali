.class public final Lio/reactivex/rxjava3/internal/operators/observable/w0;
.super Lio/reactivex/rxjava3/internal/operators/observable/a;
.source "ObservableFlatMap.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/reactivex/rxjava3/internal/operators/observable/w0$a;,
        Lio/reactivex/rxjava3/internal/operators/observable/w0$b;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "U:",
        "Ljava/lang/Object;",
        ">",
        "Lio/reactivex/rxjava3/internal/operators/observable/a<",
        "TT;TU;>;"
    }
.end annotation


# instance fields
.field final b:Lq7/o;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lq7/o<",
            "-TT;+",
            "Lio/reactivex/rxjava3/core/l0<",
            "+TU;>;>;"
        }
    .end annotation
.end field

.field final c:Z

.field final d:I

.field final e:I


# direct methods
.method public constructor <init>(Lio/reactivex/rxjava3/core/l0;Lq7/o;ZII)V
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
            "mapper",
            "delayErrors",
            "maxConcurrency",
            "bufferSize"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/rxjava3/core/l0<",
            "TT;>;",
            "Lq7/o<",
            "-TT;+",
            "Lio/reactivex/rxjava3/core/l0<",
            "+TU;>;>;ZII)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1}, Lio/reactivex/rxjava3/internal/operators/observable/a;-><init>(Lio/reactivex/rxjava3/core/l0;)V

    .line 2
    iput-object p2, p0, Lio/reactivex/rxjava3/internal/operators/observable/w0;->b:Lq7/o;

    .line 3
    iput-boolean p3, p0, Lio/reactivex/rxjava3/internal/operators/observable/w0;->c:Z

    .line 4
    iput p4, p0, Lio/reactivex/rxjava3/internal/operators/observable/w0;->d:I

    .line 5
    iput p5, p0, Lio/reactivex/rxjava3/internal/operators/observable/w0;->e:I

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
            "t"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/rxjava3/core/n0<",
            "-TU;>;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lio/reactivex/rxjava3/internal/operators/observable/a;->a:Lio/reactivex/rxjava3/core/l0;

    iget-object v1, p0, Lio/reactivex/rxjava3/internal/operators/observable/w0;->b:Lq7/o;

    invoke-static {v0, p1, v1}, Lio/reactivex/rxjava3/internal/operators/observable/ObservableScalarXMap;->b(Lio/reactivex/rxjava3/core/l0;Lio/reactivex/rxjava3/core/n0;Lq7/o;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object v0, p0, Lio/reactivex/rxjava3/internal/operators/observable/a;->a:Lio/reactivex/rxjava3/core/l0;

    new-instance v7, Lio/reactivex/rxjava3/internal/operators/observable/w0$b;

    iget-object v3, p0, Lio/reactivex/rxjava3/internal/operators/observable/w0;->b:Lq7/o;

    iget-boolean v4, p0, Lio/reactivex/rxjava3/internal/operators/observable/w0;->c:Z

    iget v5, p0, Lio/reactivex/rxjava3/internal/operators/observable/w0;->d:I

    iget v6, p0, Lio/reactivex/rxjava3/internal/operators/observable/w0;->e:I

    move-object v1, v7

    move-object v2, p1

    invoke-direct/range {v1 .. v6}, Lio/reactivex/rxjava3/internal/operators/observable/w0$b;-><init>(Lio/reactivex/rxjava3/core/n0;Lq7/o;ZII)V

    invoke-interface {v0, v7}, Lio/reactivex/rxjava3/core/l0;->a(Lio/reactivex/rxjava3/core/n0;)V

    return-void
.end method
