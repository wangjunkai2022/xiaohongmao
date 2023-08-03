.class public final Lio/reactivex/internal/operators/single/x;
.super Lio/reactivex/i0;
.source "SingleFlatMap.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/reactivex/internal/operators/single/x$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "R:",
        "Ljava/lang/Object;",
        ">",
        "Lio/reactivex/i0<",
        "TR;>;"
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

.field final b:Ln7/o;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ln7/o<",
            "-TT;+",
            "Lio/reactivex/o0<",
            "+TR;>;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lio/reactivex/o0;Ln7/o;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/o0<",
            "+TT;>;",
            "Ln7/o<",
            "-TT;+",
            "Lio/reactivex/o0<",
            "+TR;>;>;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lio/reactivex/i0;-><init>()V

    .line 2
    iput-object p2, p0, Lio/reactivex/internal/operators/single/x;->b:Ln7/o;

    .line 3
    iput-object p1, p0, Lio/reactivex/internal/operators/single/x;->a:Lio/reactivex/o0;

    return-void
.end method


# virtual methods
.method protected b1(Lio/reactivex/l0;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/l0<",
            "-TR;>;)V"
        }
    .end annotation

    iget-object v0, p0, Lio/reactivex/internal/operators/single/x;->a:Lio/reactivex/o0;

    new-instance v1, Lio/reactivex/internal/operators/single/x$a;

    iget-object v2, p0, Lio/reactivex/internal/operators/single/x;->b:Ln7/o;

    invoke-direct {v1, p1, v2}, Lio/reactivex/internal/operators/single/x$a;-><init>(Lio/reactivex/l0;Ln7/o;)V

    invoke-interface {v0, v1}, Lio/reactivex/o0;->d(Lio/reactivex/l0;)V

    return-void
.end method
