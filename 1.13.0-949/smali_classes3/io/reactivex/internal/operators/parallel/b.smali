.class public final Lio/reactivex/internal/operators/parallel/b;
.super Lio/reactivex/parallel/a;
.source "ParallelConcatMap.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "R:",
        "Ljava/lang/Object;",
        ">",
        "Lio/reactivex/parallel/a<",
        "TR;>;"
    }
.end annotation


# instance fields
.field final a:Lio/reactivex/parallel/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/parallel/a<",
            "TT;>;"
        }
    .end annotation
.end field

.field final b:Ln7/o;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ln7/o<",
            "-TT;+",
            "Lorg/reactivestreams/c<",
            "+TR;>;>;"
        }
    .end annotation
.end field

.field final c:I

.field final d:Lio/reactivex/internal/util/ErrorMode;


# direct methods
.method public constructor <init>(Lio/reactivex/parallel/a;Ln7/o;ILio/reactivex/internal/util/ErrorMode;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/parallel/a<",
            "TT;>;",
            "Ln7/o<",
            "-TT;+",
            "Lorg/reactivestreams/c<",
            "+TR;>;>;I",
            "Lio/reactivex/internal/util/ErrorMode;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lio/reactivex/parallel/a;-><init>()V

    .line 2
    iput-object p1, p0, Lio/reactivex/internal/operators/parallel/b;->a:Lio/reactivex/parallel/a;

    const-string p1, "mapper"

    .line 3
    invoke-static {p2, p1}, Lio/reactivex/internal/functions/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ln7/o;

    iput-object p1, p0, Lio/reactivex/internal/operators/parallel/b;->b:Ln7/o;

    .line 4
    iput p3, p0, Lio/reactivex/internal/operators/parallel/b;->c:I

    const-string p1, "errorMode"

    .line 5
    invoke-static {p4, p1}, Lio/reactivex/internal/functions/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/reactivex/internal/util/ErrorMode;

    iput-object p1, p0, Lio/reactivex/internal/operators/parallel/b;->d:Lio/reactivex/internal/util/ErrorMode;

    return-void
.end method


# virtual methods
.method public F()I
    .locals 1

    iget-object v0, p0, Lio/reactivex/internal/operators/parallel/b;->a:Lio/reactivex/parallel/a;

    invoke-virtual {v0}, Lio/reactivex/parallel/a;->F()I

    move-result v0

    return v0
.end method

.method public Q([Lorg/reactivestreams/d;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Lorg/reactivestreams/d<",
            "-TR;>;)V"
        }
    .end annotation

    .line 1
    invoke-virtual {p0, p1}, Lio/reactivex/parallel/a;->U([Lorg/reactivestreams/d;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    array-length v0, p1

    .line 3
    new-array v1, v0, [Lorg/reactivestreams/d;

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_1

    .line 4
    aget-object v3, p1, v2

    iget-object v4, p0, Lio/reactivex/internal/operators/parallel/b;->b:Ln7/o;

    iget v5, p0, Lio/reactivex/internal/operators/parallel/b;->c:I

    iget-object v6, p0, Lio/reactivex/internal/operators/parallel/b;->d:Lio/reactivex/internal/util/ErrorMode;

    invoke-static {v3, v4, v5, v6}, Lio/reactivex/internal/operators/flowable/w;->M8(Lorg/reactivestreams/d;Ln7/o;ILio/reactivex/internal/util/ErrorMode;)Lorg/reactivestreams/d;

    move-result-object v3

    aput-object v3, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 5
    :cond_1
    iget-object p1, p0, Lio/reactivex/internal/operators/parallel/b;->a:Lio/reactivex/parallel/a;

    invoke-virtual {p1, v1}, Lio/reactivex/parallel/a;->Q([Lorg/reactivestreams/d;)V

    return-void
.end method
