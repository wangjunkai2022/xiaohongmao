.class public final Lio/reactivex/internal/operators/flowable/t0;
.super Lio/reactivex/internal/operators/flowable/a;
.source "FlowableElementAt.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/reactivex/internal/operators/flowable/t0$a;
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
.field final c:J

.field final d:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field final e:Z


# direct methods
.method public constructor <init>(Lio/reactivex/j;JLjava/lang/Object;Z)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/j<",
            "TT;>;JTT;Z)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1}, Lio/reactivex/internal/operators/flowable/a;-><init>(Lio/reactivex/j;)V

    .line 2
    iput-wide p2, p0, Lio/reactivex/internal/operators/flowable/t0;->c:J

    .line 3
    iput-object p4, p0, Lio/reactivex/internal/operators/flowable/t0;->d:Ljava/lang/Object;

    .line 4
    iput-boolean p5, p0, Lio/reactivex/internal/operators/flowable/t0;->e:Z

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

    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/a;->b:Lio/reactivex/j;

    new-instance v7, Lio/reactivex/internal/operators/flowable/t0$a;

    iget-wide v3, p0, Lio/reactivex/internal/operators/flowable/t0;->c:J

    iget-object v5, p0, Lio/reactivex/internal/operators/flowable/t0;->d:Ljava/lang/Object;

    iget-boolean v6, p0, Lio/reactivex/internal/operators/flowable/t0;->e:Z

    move-object v1, v7

    move-object v2, p1

    invoke-direct/range {v1 .. v6}, Lio/reactivex/internal/operators/flowable/t0$a;-><init>(Lorg/reactivestreams/d;JLjava/lang/Object;Z)V

    invoke-virtual {v0, v7}, Lio/reactivex/j;->j6(Lio/reactivex/o;)V

    return-void
.end method
