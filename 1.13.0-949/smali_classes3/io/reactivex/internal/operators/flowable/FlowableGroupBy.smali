.class public final Lio/reactivex/internal/operators/flowable/FlowableGroupBy;
.super Lio/reactivex/internal/operators/flowable/a;
.source "FlowableGroupBy.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/reactivex/internal/operators/flowable/FlowableGroupBy$c;,
        Lio/reactivex/internal/operators/flowable/FlowableGroupBy$b;,
        Lio/reactivex/internal/operators/flowable/FlowableGroupBy$a;,
        Lio/reactivex/internal/operators/flowable/FlowableGroupBy$GroupBySubscriber;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Lio/reactivex/internal/operators/flowable/a<",
        "TT;",
        "Lio/reactivex/flowables/b<",
        "TK;TV;>;>;"
    }
.end annotation


# instance fields
.field final c:Ln7/o;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ln7/o<",
            "-TT;+TK;>;"
        }
    .end annotation
.end field

.field final d:Ln7/o;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ln7/o<",
            "-TT;+TV;>;"
        }
    .end annotation
.end field

.field final e:I

.field final f:Z

.field final g:Ln7/o;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ln7/o<",
            "-",
            "Ln7/g<",
            "Ljava/lang/Object;",
            ">;+",
            "Ljava/util/Map<",
            "TK;",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lio/reactivex/j;Ln7/o;Ln7/o;IZLn7/o;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/j<",
            "TT;>;",
            "Ln7/o<",
            "-TT;+TK;>;",
            "Ln7/o<",
            "-TT;+TV;>;IZ",
            "Ln7/o<",
            "-",
            "Ln7/g<",
            "Ljava/lang/Object;",
            ">;+",
            "Ljava/util/Map<",
            "TK;",
            "Ljava/lang/Object;",
            ">;>;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1}, Lio/reactivex/internal/operators/flowable/a;-><init>(Lio/reactivex/j;)V

    .line 2
    iput-object p2, p0, Lio/reactivex/internal/operators/flowable/FlowableGroupBy;->c:Ln7/o;

    .line 3
    iput-object p3, p0, Lio/reactivex/internal/operators/flowable/FlowableGroupBy;->d:Ln7/o;

    .line 4
    iput p4, p0, Lio/reactivex/internal/operators/flowable/FlowableGroupBy;->e:I

    .line 5
    iput-boolean p5, p0, Lio/reactivex/internal/operators/flowable/FlowableGroupBy;->f:Z

    .line 6
    iput-object p6, p0, Lio/reactivex/internal/operators/flowable/FlowableGroupBy;->g:Ln7/o;

    return-void
.end method


# virtual methods
.method protected k6(Lorg/reactivestreams/d;)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/reactivestreams/d<",
            "-",
            "Lio/reactivex/flowables/b<",
            "TK;TV;>;>;)V"
        }
    .end annotation

    .line 1
    :try_start_0
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/FlowableGroupBy;->g:Ln7/o;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 2
    new-instance v1, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v1}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    :goto_0
    move-object v9, v0

    move-object v8, v1

    goto :goto_1

    .line 3
    :cond_0
    new-instance v0, Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;-><init>()V

    .line 4
    new-instance v1, Lio/reactivex/internal/operators/flowable/FlowableGroupBy$a;

    invoke-direct {v1, v0}, Lio/reactivex/internal/operators/flowable/FlowableGroupBy$a;-><init>(Ljava/util/Queue;)V

    .line 5
    iget-object v2, p0, Lio/reactivex/internal/operators/flowable/FlowableGroupBy;->g:Ln7/o;

    invoke-interface {v2, v1}, Ln7/o;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 6
    :goto_1
    new-instance v0, Lio/reactivex/internal/operators/flowable/FlowableGroupBy$GroupBySubscriber;

    iget-object v4, p0, Lio/reactivex/internal/operators/flowable/FlowableGroupBy;->c:Ln7/o;

    iget-object v5, p0, Lio/reactivex/internal/operators/flowable/FlowableGroupBy;->d:Ln7/o;

    iget v6, p0, Lio/reactivex/internal/operators/flowable/FlowableGroupBy;->e:I

    iget-boolean v7, p0, Lio/reactivex/internal/operators/flowable/FlowableGroupBy;->f:Z

    move-object v2, v0

    move-object v3, p1

    invoke-direct/range {v2 .. v9}, Lio/reactivex/internal/operators/flowable/FlowableGroupBy$GroupBySubscriber;-><init>(Lorg/reactivestreams/d;Ln7/o;Ln7/o;IZLjava/util/Map;Ljava/util/Queue;)V

    .line 7
    iget-object p1, p0, Lio/reactivex/internal/operators/flowable/a;->b:Lio/reactivex/j;

    invoke-virtual {p1, v0}, Lio/reactivex/j;->j6(Lio/reactivex/o;)V

    return-void

    :catch_0
    move-exception v0

    .line 8
    invoke-static {v0}, Lio/reactivex/exceptions/a;->b(Ljava/lang/Throwable;)V

    .line 9
    sget-object v1, Lio/reactivex/internal/util/EmptyComponent;->INSTANCE:Lio/reactivex/internal/util/EmptyComponent;

    invoke-interface {p1, v1}, Lorg/reactivestreams/d;->onSubscribe(Lorg/reactivestreams/e;)V

    .line 10
    invoke-interface {p1, v0}, Lorg/reactivestreams/d;->onError(Ljava/lang/Throwable;)V

    return-void
.end method
