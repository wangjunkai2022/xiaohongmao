.class public final Lio/reactivex/internal/operators/flowable/r0;
.super Lio/reactivex/internal/operators/flowable/a;
.source "FlowableDoOnEach.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/reactivex/internal/operators/flowable/r0$a;,
        Lio/reactivex/internal/operators/flowable/r0$b;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lio/reactivex/internal/operators/flowable/a<",
        "TT;TT;>;"
    }
.end annotation


# instance fields
.field final c:Ln7/g;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ln7/g<",
            "-TT;>;"
        }
    .end annotation
.end field

.field final d:Ln7/g;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ln7/g<",
            "-",
            "Ljava/lang/Throwable;",
            ">;"
        }
    .end annotation
.end field

.field final e:Ln7/a;

.field final f:Ln7/a;


# direct methods
.method public constructor <init>(Lio/reactivex/j;Ln7/g;Ln7/g;Ln7/a;Ln7/a;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/j<",
            "TT;>;",
            "Ln7/g<",
            "-TT;>;",
            "Ln7/g<",
            "-",
            "Ljava/lang/Throwable;",
            ">;",
            "Ln7/a;",
            "Ln7/a;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1}, Lio/reactivex/internal/operators/flowable/a;-><init>(Lio/reactivex/j;)V

    .line 2
    iput-object p2, p0, Lio/reactivex/internal/operators/flowable/r0;->c:Ln7/g;

    .line 3
    iput-object p3, p0, Lio/reactivex/internal/operators/flowable/r0;->d:Ln7/g;

    .line 4
    iput-object p4, p0, Lio/reactivex/internal/operators/flowable/r0;->e:Ln7/a;

    .line 5
    iput-object p5, p0, Lio/reactivex/internal/operators/flowable/r0;->f:Ln7/a;

    return-void
.end method


# virtual methods
.method protected k6(Lorg/reactivestreams/d;)V
    .locals 8
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
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/a;->b:Lio/reactivex/j;

    new-instance v7, Lio/reactivex/internal/operators/flowable/r0$a;

    move-object v2, p1

    check-cast v2, Lo7/a;

    iget-object v3, p0, Lio/reactivex/internal/operators/flowable/r0;->c:Ln7/g;

    iget-object v4, p0, Lio/reactivex/internal/operators/flowable/r0;->d:Ln7/g;

    iget-object v5, p0, Lio/reactivex/internal/operators/flowable/r0;->e:Ln7/a;

    iget-object v6, p0, Lio/reactivex/internal/operators/flowable/r0;->f:Ln7/a;

    move-object v1, v7

    invoke-direct/range {v1 .. v6}, Lio/reactivex/internal/operators/flowable/r0$a;-><init>(Lo7/a;Ln7/g;Ln7/g;Ln7/a;Ln7/a;)V

    invoke-virtual {v0, v7}, Lio/reactivex/j;->j6(Lio/reactivex/o;)V

    goto :goto_0

    .line 3
    :cond_0
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/a;->b:Lio/reactivex/j;

    new-instance v7, Lio/reactivex/internal/operators/flowable/r0$b;

    iget-object v3, p0, Lio/reactivex/internal/operators/flowable/r0;->c:Ln7/g;

    iget-object v4, p0, Lio/reactivex/internal/operators/flowable/r0;->d:Ln7/g;

    iget-object v5, p0, Lio/reactivex/internal/operators/flowable/r0;->e:Ln7/a;

    iget-object v6, p0, Lio/reactivex/internal/operators/flowable/r0;->f:Ln7/a;

    move-object v1, v7

    move-object v2, p1

    invoke-direct/range {v1 .. v6}, Lio/reactivex/internal/operators/flowable/r0$b;-><init>(Lorg/reactivestreams/d;Ln7/g;Ln7/g;Ln7/a;Ln7/a;)V

    invoke-virtual {v0, v7}, Lio/reactivex/j;->j6(Lio/reactivex/o;)V

    :goto_0
    return-void
.end method
