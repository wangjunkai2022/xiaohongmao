.class public final Lio/reactivex/rxjava3/internal/operators/flowable/w3;
.super Lio/reactivex/rxjava3/internal/operators/flowable/a;
.source "FlowableSkipLast.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/reactivex/rxjava3/internal/operators/flowable/w3$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lio/reactivex/rxjava3/internal/operators/flowable/a<",
        "TT;TT;>;"
    }
.end annotation


# instance fields
.field final c:I


# direct methods
.method public constructor <init>(Lio/reactivex/rxjava3/core/m;I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "source",
            "skip"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/rxjava3/core/m<",
            "TT;>;I)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1}, Lio/reactivex/rxjava3/internal/operators/flowable/a;-><init>(Lio/reactivex/rxjava3/core/m;)V

    .line 2
    iput p2, p0, Lio/reactivex/rxjava3/internal/operators/flowable/w3;->c:I

    return-void
.end method


# virtual methods
.method protected H6(Lorg/reactivestreams/d;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "s"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/reactivestreams/d<",
            "-TT;>;)V"
        }
    .end annotation

    iget-object v0, p0, Lio/reactivex/rxjava3/internal/operators/flowable/a;->b:Lio/reactivex/rxjava3/core/m;

    new-instance v1, Lio/reactivex/rxjava3/internal/operators/flowable/w3$a;

    iget v2, p0, Lio/reactivex/rxjava3/internal/operators/flowable/w3;->c:I

    invoke-direct {v1, p1, v2}, Lio/reactivex/rxjava3/internal/operators/flowable/w3$a;-><init>(Lorg/reactivestreams/d;I)V

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/m;->G6(Lio/reactivex/rxjava3/core/r;)V

    return-void
.end method
