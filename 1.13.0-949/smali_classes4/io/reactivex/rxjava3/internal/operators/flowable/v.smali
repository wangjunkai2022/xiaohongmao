.class public final Lio/reactivex/rxjava3/internal/operators/flowable/v;
.super Lio/reactivex/rxjava3/internal/operators/flowable/a;
.source "FlowableConcatMap.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/reactivex/rxjava3/internal/operators/flowable/v$e;,
        Lio/reactivex/rxjava3/internal/operators/flowable/v$f;,
        Lio/reactivex/rxjava3/internal/operators/flowable/v$c;,
        Lio/reactivex/rxjava3/internal/operators/flowable/v$g;,
        Lio/reactivex/rxjava3/internal/operators/flowable/v$d;,
        Lio/reactivex/rxjava3/internal/operators/flowable/v$b;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "R:",
        "Ljava/lang/Object;",
        ">",
        "Lio/reactivex/rxjava3/internal/operators/flowable/a<",
        "TT;TR;>;"
    }
.end annotation


# instance fields
.field final c:Lq7/o;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lq7/o<",
            "-TT;+",
            "Lorg/reactivestreams/c<",
            "+TR;>;>;"
        }
    .end annotation
.end field

.field final d:I

.field final e:Lio/reactivex/rxjava3/internal/util/ErrorMode;


# direct methods
.method public constructor <init>(Lio/reactivex/rxjava3/core/m;Lq7/o;ILio/reactivex/rxjava3/internal/util/ErrorMode;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "source",
            "mapper",
            "prefetch",
            "errorMode"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/rxjava3/core/m<",
            "TT;>;",
            "Lq7/o<",
            "-TT;+",
            "Lorg/reactivestreams/c<",
            "+TR;>;>;I",
            "Lio/reactivex/rxjava3/internal/util/ErrorMode;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1}, Lio/reactivex/rxjava3/internal/operators/flowable/a;-><init>(Lio/reactivex/rxjava3/core/m;)V

    .line 2
    iput-object p2, p0, Lio/reactivex/rxjava3/internal/operators/flowable/v;->c:Lq7/o;

    .line 3
    iput p3, p0, Lio/reactivex/rxjava3/internal/operators/flowable/v;->d:I

    .line 4
    iput-object p4, p0, Lio/reactivex/rxjava3/internal/operators/flowable/v;->e:Lio/reactivex/rxjava3/internal/util/ErrorMode;

    return-void
.end method

.method public static g9(Lorg/reactivestreams/d;Lq7/o;ILio/reactivex/rxjava3/internal/util/ErrorMode;)Lorg/reactivestreams/d;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "s",
            "mapper",
            "prefetch",
            "errorMode"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            "R:",
            "Ljava/lang/Object;",
            ">(",
            "Lorg/reactivestreams/d<",
            "-TR;>;",
            "Lq7/o<",
            "-TT;+",
            "Lorg/reactivestreams/c<",
            "+TR;>;>;I",
            "Lio/reactivex/rxjava3/internal/util/ErrorMode;",
            ")",
            "Lorg/reactivestreams/d<",
            "TT;>;"
        }
    .end annotation

    .line 1
    sget-object v0, Lio/reactivex/rxjava3/internal/operators/flowable/v$a;->a:[I

    invoke-virtual {p3}, Ljava/lang/Enum;->ordinal()I

    move-result p3

    aget p3, v0, p3

    const/4 v0, 0x1

    if-eq p3, v0, :cond_1

    const/4 v1, 0x2

    if-eq p3, v1, :cond_0

    .line 2
    new-instance p3, Lio/reactivex/rxjava3/internal/operators/flowable/v$d;

    invoke-direct {p3, p0, p1, p2}, Lio/reactivex/rxjava3/internal/operators/flowable/v$d;-><init>(Lorg/reactivestreams/d;Lq7/o;I)V

    return-object p3

    .line 3
    :cond_0
    new-instance p3, Lio/reactivex/rxjava3/internal/operators/flowable/v$c;

    invoke-direct {p3, p0, p1, p2, v0}, Lio/reactivex/rxjava3/internal/operators/flowable/v$c;-><init>(Lorg/reactivestreams/d;Lq7/o;IZ)V

    return-object p3

    .line 4
    :cond_1
    new-instance p3, Lio/reactivex/rxjava3/internal/operators/flowable/v$c;

    const/4 v0, 0x0

    invoke-direct {p3, p0, p1, p2, v0}, Lio/reactivex/rxjava3/internal/operators/flowable/v$c;-><init>(Lorg/reactivestreams/d;Lq7/o;IZ)V

    return-object p3
.end method


# virtual methods
.method protected H6(Lorg/reactivestreams/d;)V
    .locals 4
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
            "-TR;>;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lio/reactivex/rxjava3/internal/operators/flowable/a;->b:Lio/reactivex/rxjava3/core/m;

    iget-object v1, p0, Lio/reactivex/rxjava3/internal/operators/flowable/v;->c:Lq7/o;

    invoke-static {v0, p1, v1}, Lio/reactivex/rxjava3/internal/operators/flowable/m3;->b(Lorg/reactivestreams/c;Lorg/reactivestreams/d;Lq7/o;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object v0, p0, Lio/reactivex/rxjava3/internal/operators/flowable/a;->b:Lio/reactivex/rxjava3/core/m;

    iget-object v1, p0, Lio/reactivex/rxjava3/internal/operators/flowable/v;->c:Lq7/o;

    iget v2, p0, Lio/reactivex/rxjava3/internal/operators/flowable/v;->d:I

    iget-object v3, p0, Lio/reactivex/rxjava3/internal/operators/flowable/v;->e:Lio/reactivex/rxjava3/internal/util/ErrorMode;

    invoke-static {p1, v1, v2, v3}, Lio/reactivex/rxjava3/internal/operators/flowable/v;->g9(Lorg/reactivestreams/d;Lq7/o;ILio/reactivex/rxjava3/internal/util/ErrorMode;)Lorg/reactivestreams/d;

    move-result-object p1

    invoke-virtual {v0, p1}, Lio/reactivex/rxjava3/core/m;->i(Lorg/reactivestreams/d;)V

    return-void
.end method
