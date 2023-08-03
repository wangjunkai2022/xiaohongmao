.class final Lio/reactivex/internal/operators/flowable/d3$h;
.super Ljava/lang/Object;
.source "FlowableReplay.java"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/reactivex/internal/operators/flowable/d3;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "h"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable<",
        "Lio/reactivex/internal/operators/flowable/d3$g<",
        "TT;>;>;"
    }
.end annotation


# instance fields
.field private final a:I


# direct methods
.method constructor <init>(I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput p1, p0, Lio/reactivex/internal/operators/flowable/d3$h;->a:I

    return-void
.end method


# virtual methods
.method public a()Lio/reactivex/internal/operators/flowable/d3$g;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/reactivex/internal/operators/flowable/d3$g<",
            "TT;>;"
        }
    .end annotation

    new-instance v0, Lio/reactivex/internal/operators/flowable/d3$m;

    iget v1, p0, Lio/reactivex/internal/operators/flowable/d3$h;->a:I

    invoke-direct {v0, v1}, Lio/reactivex/internal/operators/flowable/d3$m;-><init>(I)V

    return-object v0
.end method

.method public bridge synthetic call()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    invoke-virtual {p0}, Lio/reactivex/internal/operators/flowable/d3$h;->a()Lio/reactivex/internal/operators/flowable/d3$g;

    move-result-object v0

    return-object v0
.end method
