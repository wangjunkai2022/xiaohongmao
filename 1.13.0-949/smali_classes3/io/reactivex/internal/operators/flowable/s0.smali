.class public final Lio/reactivex/internal/operators/flowable/s0;
.super Lio/reactivex/internal/operators/flowable/a;
.source "FlowableDoOnLifecycle.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/reactivex/internal/operators/flowable/s0$a;
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
.field private final c:Ln7/g;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ln7/g<",
            "-",
            "Lorg/reactivestreams/e;",
            ">;"
        }
    .end annotation
.end field

.field private final d:Ln7/q;

.field private final e:Ln7/a;


# direct methods
.method public constructor <init>(Lio/reactivex/j;Ln7/g;Ln7/q;Ln7/a;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/j<",
            "TT;>;",
            "Ln7/g<",
            "-",
            "Lorg/reactivestreams/e;",
            ">;",
            "Ln7/q;",
            "Ln7/a;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1}, Lio/reactivex/internal/operators/flowable/a;-><init>(Lio/reactivex/j;)V

    .line 2
    iput-object p2, p0, Lio/reactivex/internal/operators/flowable/s0;->c:Ln7/g;

    .line 3
    iput-object p3, p0, Lio/reactivex/internal/operators/flowable/s0;->d:Ln7/q;

    .line 4
    iput-object p4, p0, Lio/reactivex/internal/operators/flowable/s0;->e:Ln7/a;

    return-void
.end method


# virtual methods
.method protected k6(Lorg/reactivestreams/d;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/reactivestreams/d<",
            "-TT;>;)V"
        }
    .end annotation

    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/a;->b:Lio/reactivex/j;

    new-instance v1, Lio/reactivex/internal/operators/flowable/s0$a;

    iget-object v2, p0, Lio/reactivex/internal/operators/flowable/s0;->c:Ln7/g;

    iget-object v3, p0, Lio/reactivex/internal/operators/flowable/s0;->d:Ln7/q;

    iget-object v4, p0, Lio/reactivex/internal/operators/flowable/s0;->e:Ln7/a;

    invoke-direct {v1, p1, v2, v3, v4}, Lio/reactivex/internal/operators/flowable/s0$a;-><init>(Lorg/reactivestreams/d;Ln7/g;Ln7/q;Ln7/a;)V

    invoke-virtual {v0, v1}, Lio/reactivex/j;->j6(Lio/reactivex/o;)V

    return-void
.end method
