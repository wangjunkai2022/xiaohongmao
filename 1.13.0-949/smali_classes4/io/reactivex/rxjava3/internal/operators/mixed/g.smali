.class public final Lio/reactivex/rxjava3/internal/operators/mixed/g;
.super Lio/reactivex/rxjava3/core/m;
.source "FlowableConcatMapSinglePublisher.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "R:",
        "Ljava/lang/Object;",
        ">",
        "Lio/reactivex/rxjava3/core/m<",
        "TR;>;"
    }
.end annotation


# instance fields
.field final b:Lorg/reactivestreams/c;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/reactivestreams/c<",
            "TT;>;"
        }
    .end annotation
.end field

.field final c:Lq7/o;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lq7/o<",
            "-TT;+",
            "Lio/reactivex/rxjava3/core/v0<",
            "+TR;>;>;"
        }
    .end annotation
.end field

.field final d:Lio/reactivex/rxjava3/internal/util/ErrorMode;

.field final e:I


# direct methods
.method public constructor <init>(Lorg/reactivestreams/c;Lq7/o;Lio/reactivex/rxjava3/internal/util/ErrorMode;I)V
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
            "errorMode",
            "prefetch"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/reactivestreams/c<",
            "TT;>;",
            "Lq7/o<",
            "-TT;+",
            "Lio/reactivex/rxjava3/core/v0<",
            "+TR;>;>;",
            "Lio/reactivex/rxjava3/internal/util/ErrorMode;",
            "I)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lio/reactivex/rxjava3/core/m;-><init>()V

    .line 2
    iput-object p1, p0, Lio/reactivex/rxjava3/internal/operators/mixed/g;->b:Lorg/reactivestreams/c;

    .line 3
    iput-object p2, p0, Lio/reactivex/rxjava3/internal/operators/mixed/g;->c:Lq7/o;

    .line 4
    iput-object p3, p0, Lio/reactivex/rxjava3/internal/operators/mixed/g;->d:Lio/reactivex/rxjava3/internal/util/ErrorMode;

    .line 5
    iput p4, p0, Lio/reactivex/rxjava3/internal/operators/mixed/g;->e:I

    return-void
.end method


# virtual methods
.method protected H6(Lorg/reactivestreams/d;)V
    .locals 5
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

    iget-object v0, p0, Lio/reactivex/rxjava3/internal/operators/mixed/g;->b:Lorg/reactivestreams/c;

    new-instance v1, Lio/reactivex/rxjava3/internal/operators/mixed/f$a;

    iget-object v2, p0, Lio/reactivex/rxjava3/internal/operators/mixed/g;->c:Lq7/o;

    iget v3, p0, Lio/reactivex/rxjava3/internal/operators/mixed/g;->e:I

    iget-object v4, p0, Lio/reactivex/rxjava3/internal/operators/mixed/g;->d:Lio/reactivex/rxjava3/internal/util/ErrorMode;

    invoke-direct {v1, p1, v2, v3, v4}, Lio/reactivex/rxjava3/internal/operators/mixed/f$a;-><init>(Lorg/reactivestreams/d;Lq7/o;ILio/reactivex/rxjava3/internal/util/ErrorMode;)V

    invoke-interface {v0, v1}, Lorg/reactivestreams/c;->i(Lorg/reactivestreams/d;)V

    return-void
.end method
