.class final Lio/reactivex/internal/operators/flowable/d3$k;
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
    name = "k"
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

.field private final b:J

.field private final c:Ljava/util/concurrent/TimeUnit;

.field private final d:Lio/reactivex/h0;


# direct methods
.method constructor <init>(IJLjava/util/concurrent/TimeUnit;Lio/reactivex/h0;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput p1, p0, Lio/reactivex/internal/operators/flowable/d3$k;->a:I

    .line 3
    iput-wide p2, p0, Lio/reactivex/internal/operators/flowable/d3$k;->b:J

    .line 4
    iput-object p4, p0, Lio/reactivex/internal/operators/flowable/d3$k;->c:Ljava/util/concurrent/TimeUnit;

    .line 5
    iput-object p5, p0, Lio/reactivex/internal/operators/flowable/d3$k;->d:Lio/reactivex/h0;

    return-void
.end method


# virtual methods
.method public a()Lio/reactivex/internal/operators/flowable/d3$g;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/reactivex/internal/operators/flowable/d3$g<",
            "TT;>;"
        }
    .end annotation

    new-instance v6, Lio/reactivex/internal/operators/flowable/d3$l;

    iget v1, p0, Lio/reactivex/internal/operators/flowable/d3$k;->a:I

    iget-wide v2, p0, Lio/reactivex/internal/operators/flowable/d3$k;->b:J

    iget-object v4, p0, Lio/reactivex/internal/operators/flowable/d3$k;->c:Ljava/util/concurrent/TimeUnit;

    iget-object v5, p0, Lio/reactivex/internal/operators/flowable/d3$k;->d:Lio/reactivex/h0;

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Lio/reactivex/internal/operators/flowable/d3$l;-><init>(IJLjava/util/concurrent/TimeUnit;Lio/reactivex/h0;)V

    return-object v6
.end method

.method public bridge synthetic call()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    invoke-virtual {p0}, Lio/reactivex/internal/operators/flowable/d3$k;->a()Lio/reactivex/internal/operators/flowable/d3$g;

    move-result-object v0

    return-object v0
.end method
