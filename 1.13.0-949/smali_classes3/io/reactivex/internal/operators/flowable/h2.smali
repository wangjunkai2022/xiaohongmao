.class public final Lio/reactivex/internal/operators/flowable/h2;
.super Lio/reactivex/internal/operators/flowable/a;
.source "FlowableObserveOn.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/reactivex/internal/operators/flowable/h2$b;,
        Lio/reactivex/internal/operators/flowable/h2$c;,
        Lio/reactivex/internal/operators/flowable/h2$a;
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
.field final c:Lio/reactivex/h0;

.field final d:Z

.field final e:I


# direct methods
.method public constructor <init>(Lio/reactivex/j;Lio/reactivex/h0;ZI)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/j<",
            "TT;>;",
            "Lio/reactivex/h0;",
            "ZI)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1}, Lio/reactivex/internal/operators/flowable/a;-><init>(Lio/reactivex/j;)V

    .line 2
    iput-object p2, p0, Lio/reactivex/internal/operators/flowable/h2;->c:Lio/reactivex/h0;

    .line 3
    iput-boolean p3, p0, Lio/reactivex/internal/operators/flowable/h2;->d:Z

    .line 4
    iput p4, p0, Lio/reactivex/internal/operators/flowable/h2;->e:I

    return-void
.end method


# virtual methods
.method public k6(Lorg/reactivestreams/d;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/reactivestreams/d<",
            "-TT;>;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/h2;->c:Lio/reactivex/h0;

    invoke-virtual {v0}, Lio/reactivex/h0;->d()Lio/reactivex/h0$c;

    move-result-object v0

    .line 2
    instance-of v1, p1, Lo7/a;

    if-eqz v1, :cond_0

    .line 3
    iget-object v1, p0, Lio/reactivex/internal/operators/flowable/a;->b:Lio/reactivex/j;

    new-instance v2, Lio/reactivex/internal/operators/flowable/h2$b;

    check-cast p1, Lo7/a;

    iget-boolean v3, p0, Lio/reactivex/internal/operators/flowable/h2;->d:Z

    iget v4, p0, Lio/reactivex/internal/operators/flowable/h2;->e:I

    invoke-direct {v2, p1, v0, v3, v4}, Lio/reactivex/internal/operators/flowable/h2$b;-><init>(Lo7/a;Lio/reactivex/h0$c;ZI)V

    invoke-virtual {v1, v2}, Lio/reactivex/j;->j6(Lio/reactivex/o;)V

    goto :goto_0

    .line 4
    :cond_0
    iget-object v1, p0, Lio/reactivex/internal/operators/flowable/a;->b:Lio/reactivex/j;

    new-instance v2, Lio/reactivex/internal/operators/flowable/h2$c;

    iget-boolean v3, p0, Lio/reactivex/internal/operators/flowable/h2;->d:Z

    iget v4, p0, Lio/reactivex/internal/operators/flowable/h2;->e:I

    invoke-direct {v2, p1, v0, v3, v4}, Lio/reactivex/internal/operators/flowable/h2$c;-><init>(Lorg/reactivestreams/d;Lio/reactivex/h0$c;ZI)V

    invoke-virtual {v1, v2}, Lio/reactivex/j;->j6(Lio/reactivex/o;)V

    :goto_0
    return-void
.end method
