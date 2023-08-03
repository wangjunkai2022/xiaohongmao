.class public final Lio/reactivex/rxjava3/internal/operators/parallel/i;
.super Lio/reactivex/rxjava3/parallel/a;
.source "ParallelFromPublisher.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/reactivex/rxjava3/internal/operators/parallel/i$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lio/reactivex/rxjava3/parallel/a<",
        "TT;>;"
    }
.end annotation


# instance fields
.field final a:Lorg/reactivestreams/c;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/reactivestreams/c<",
            "+TT;>;"
        }
    .end annotation
.end field

.field final b:I

.field final c:I


# direct methods
.method public constructor <init>(Lorg/reactivestreams/c;II)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "source",
            "parallelism",
            "prefetch"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/reactivestreams/c<",
            "+TT;>;II)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lio/reactivex/rxjava3/parallel/a;-><init>()V

    .line 2
    iput-object p1, p0, Lio/reactivex/rxjava3/internal/operators/parallel/i;->a:Lorg/reactivestreams/c;

    .line 3
    iput p2, p0, Lio/reactivex/rxjava3/internal/operators/parallel/i;->b:I

    .line 4
    iput p3, p0, Lio/reactivex/rxjava3/internal/operators/parallel/i;->c:I

    return-void
.end method


# virtual methods
.method public M()I
    .locals 1

    iget v0, p0, Lio/reactivex/rxjava3/internal/operators/parallel/i;->b:I

    return v0
.end method

.method public X([Lorg/reactivestreams/d;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "subscribers"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Lorg/reactivestreams/d<",
            "-TT;>;)V"
        }
    .end annotation

    .line 1
    invoke-virtual {p0, p1}, Lio/reactivex/rxjava3/parallel/a;->b0([Lorg/reactivestreams/d;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object v0, p0, Lio/reactivex/rxjava3/internal/operators/parallel/i;->a:Lorg/reactivestreams/c;

    new-instance v1, Lio/reactivex/rxjava3/internal/operators/parallel/i$a;

    iget v2, p0, Lio/reactivex/rxjava3/internal/operators/parallel/i;->c:I

    invoke-direct {v1, p1, v2}, Lio/reactivex/rxjava3/internal/operators/parallel/i$a;-><init>([Lorg/reactivestreams/d;I)V

    invoke-interface {v0, v1}, Lorg/reactivestreams/c;->i(Lorg/reactivestreams/d;)V

    return-void
.end method
