.class public final Lio/reactivex/internal/operators/observable/z0;
.super Lio/reactivex/internal/operators/observable/a;
.source "ObservableFlatMapMaybe.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/reactivex/internal/operators/observable/z0$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "R:",
        "Ljava/lang/Object;",
        ">",
        "Lio/reactivex/internal/operators/observable/a<",
        "TT;TR;>;"
    }
.end annotation


# instance fields
.field final b:Ln7/o;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ln7/o<",
            "-TT;+",
            "Lio/reactivex/w<",
            "+TR;>;>;"
        }
    .end annotation
.end field

.field final c:Z


# direct methods
.method public constructor <init>(Lio/reactivex/e0;Ln7/o;Z)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/e0<",
            "TT;>;",
            "Ln7/o<",
            "-TT;+",
            "Lio/reactivex/w<",
            "+TR;>;>;Z)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1}, Lio/reactivex/internal/operators/observable/a;-><init>(Lio/reactivex/e0;)V

    .line 2
    iput-object p2, p0, Lio/reactivex/internal/operators/observable/z0;->b:Ln7/o;

    .line 3
    iput-boolean p3, p0, Lio/reactivex/internal/operators/observable/z0;->c:Z

    return-void
.end method


# virtual methods
.method protected subscribeActual(Lio/reactivex/g0;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/g0<",
            "-TR;>;)V"
        }
    .end annotation

    iget-object v0, p0, Lio/reactivex/internal/operators/observable/a;->a:Lio/reactivex/e0;

    new-instance v1, Lio/reactivex/internal/operators/observable/z0$a;

    iget-object v2, p0, Lio/reactivex/internal/operators/observable/z0;->b:Ln7/o;

    iget-boolean v3, p0, Lio/reactivex/internal/operators/observable/z0;->c:Z

    invoke-direct {v1, p1, v2, v3}, Lio/reactivex/internal/operators/observable/z0$a;-><init>(Lio/reactivex/g0;Ln7/o;Z)V

    invoke-interface {v0, v1}, Lio/reactivex/e0;->subscribe(Lio/reactivex/g0;)V

    return-void
.end method
