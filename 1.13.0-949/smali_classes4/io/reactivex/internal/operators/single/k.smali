.class public final Lio/reactivex/internal/operators/single/k;
.super Lio/reactivex/q;
.source "SingleDematerialize.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/reactivex/internal/operators/single/k$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "R:",
        "Ljava/lang/Object;",
        ">",
        "Lio/reactivex/q<",
        "TR;>;"
    }
.end annotation

.annotation build Lm7/d;
.end annotation


# instance fields
.field final a:Lio/reactivex/i0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/i0<",
            "TT;>;"
        }
    .end annotation
.end field

.field final b:Ln7/o;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ln7/o<",
            "-TT;",
            "Lio/reactivex/y<",
            "TR;>;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lio/reactivex/i0;Ln7/o;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/i0<",
            "TT;>;",
            "Ln7/o<",
            "-TT;",
            "Lio/reactivex/y<",
            "TR;>;>;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lio/reactivex/q;-><init>()V

    .line 2
    iput-object p1, p0, Lio/reactivex/internal/operators/single/k;->a:Lio/reactivex/i0;

    .line 3
    iput-object p2, p0, Lio/reactivex/internal/operators/single/k;->b:Ln7/o;

    return-void
.end method


# virtual methods
.method protected q1(Lio/reactivex/t;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/t<",
            "-TR;>;)V"
        }
    .end annotation

    iget-object v0, p0, Lio/reactivex/internal/operators/single/k;->a:Lio/reactivex/i0;

    new-instance v1, Lio/reactivex/internal/operators/single/k$a;

    iget-object v2, p0, Lio/reactivex/internal/operators/single/k;->b:Ln7/o;

    invoke-direct {v1, p1, v2}, Lio/reactivex/internal/operators/single/k$a;-><init>(Lio/reactivex/t;Ln7/o;)V

    invoke-virtual {v0, v1}, Lio/reactivex/i0;->d(Lio/reactivex/l0;)V

    return-void
.end method
