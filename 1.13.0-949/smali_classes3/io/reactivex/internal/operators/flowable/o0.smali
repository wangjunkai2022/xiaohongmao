.class public final Lio/reactivex/internal/operators/flowable/o0;
.super Lio/reactivex/internal/operators/flowable/a;
.source "FlowableDistinctUntilChanged.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/reactivex/internal/operators/flowable/o0$a;,
        Lio/reactivex/internal/operators/flowable/o0$b;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "K:",
        "Ljava/lang/Object;",
        ">",
        "Lio/reactivex/internal/operators/flowable/a<",
        "TT;TT;>;"
    }
.end annotation


# instance fields
.field final c:Ln7/o;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ln7/o<",
            "-TT;TK;>;"
        }
    .end annotation
.end field

.field final d:Ln7/d;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ln7/d<",
            "-TK;-TK;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lio/reactivex/j;Ln7/o;Ln7/d;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/j<",
            "TT;>;",
            "Ln7/o<",
            "-TT;TK;>;",
            "Ln7/d<",
            "-TK;-TK;>;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1}, Lio/reactivex/internal/operators/flowable/a;-><init>(Lio/reactivex/j;)V

    .line 2
    iput-object p2, p0, Lio/reactivex/internal/operators/flowable/o0;->c:Ln7/o;

    .line 3
    iput-object p3, p0, Lio/reactivex/internal/operators/flowable/o0;->d:Ln7/d;

    return-void
.end method


# virtual methods
.method protected k6(Lorg/reactivestreams/d;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/reactivestreams/d<",
            "-TT;>;)V"
        }
    .end annotation

    .line 1
    instance-of v0, p1, Lo7/a;

    if-eqz v0, :cond_0

    .line 2
    check-cast p1, Lo7/a;

    .line 3
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/a;->b:Lio/reactivex/j;

    new-instance v1, Lio/reactivex/internal/operators/flowable/o0$a;

    iget-object v2, p0, Lio/reactivex/internal/operators/flowable/o0;->c:Ln7/o;

    iget-object v3, p0, Lio/reactivex/internal/operators/flowable/o0;->d:Ln7/d;

    invoke-direct {v1, p1, v2, v3}, Lio/reactivex/internal/operators/flowable/o0$a;-><init>(Lo7/a;Ln7/o;Ln7/d;)V

    invoke-virtual {v0, v1}, Lio/reactivex/j;->j6(Lio/reactivex/o;)V

    goto :goto_0

    .line 4
    :cond_0
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/a;->b:Lio/reactivex/j;

    new-instance v1, Lio/reactivex/internal/operators/flowable/o0$b;

    iget-object v2, p0, Lio/reactivex/internal/operators/flowable/o0;->c:Ln7/o;

    iget-object v3, p0, Lio/reactivex/internal/operators/flowable/o0;->d:Ln7/d;

    invoke-direct {v1, p1, v2, v3}, Lio/reactivex/internal/operators/flowable/o0$b;-><init>(Lorg/reactivestreams/d;Ln7/o;Ln7/d;)V

    invoke-virtual {v0, v1}, Lio/reactivex/j;->j6(Lio/reactivex/o;)V

    :goto_0
    return-void
.end method
