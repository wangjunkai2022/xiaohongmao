.class final Lio/reactivex/internal/operators/parallel/o$b;
.super Ljava/lang/Object;
.source "ParallelRunOn.java"

# interfaces
.implements Lio/reactivex/internal/schedulers/k$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/reactivex/internal/operators/parallel/o;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "b"
.end annotation


# instance fields
.field final a:[Lorg/reactivestreams/d;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Lorg/reactivestreams/d<",
            "-TT;>;"
        }
    .end annotation
.end field

.field final b:[Lorg/reactivestreams/d;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Lorg/reactivestreams/d<",
            "TT;>;"
        }
    .end annotation
.end field

.field final synthetic c:Lio/reactivex/internal/operators/parallel/o;


# direct methods
.method constructor <init>(Lio/reactivex/internal/operators/parallel/o;[Lorg/reactivestreams/d;[Lorg/reactivestreams/d;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Lorg/reactivestreams/d<",
            "-TT;>;[",
            "Lorg/reactivestreams/d<",
            "TT;>;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lio/reactivex/internal/operators/parallel/o$b;->c:Lio/reactivex/internal/operators/parallel/o;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p2, p0, Lio/reactivex/internal/operators/parallel/o$b;->a:[Lorg/reactivestreams/d;

    .line 3
    iput-object p3, p0, Lio/reactivex/internal/operators/parallel/o$b;->b:[Lorg/reactivestreams/d;

    return-void
.end method


# virtual methods
.method public a(ILio/reactivex/h0$c;)V
    .locals 3

    iget-object v0, p0, Lio/reactivex/internal/operators/parallel/o$b;->c:Lio/reactivex/internal/operators/parallel/o;

    iget-object v1, p0, Lio/reactivex/internal/operators/parallel/o$b;->a:[Lorg/reactivestreams/d;

    iget-object v2, p0, Lio/reactivex/internal/operators/parallel/o$b;->b:[Lorg/reactivestreams/d;

    invoke-virtual {v0, p1, v1, v2, p2}, Lio/reactivex/internal/operators/parallel/o;->V(I[Lorg/reactivestreams/d;[Lorg/reactivestreams/d;Lio/reactivex/h0$c;)V

    return-void
.end method
