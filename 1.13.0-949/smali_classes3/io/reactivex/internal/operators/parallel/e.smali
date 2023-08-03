.class public final Lio/reactivex/internal/operators/parallel/e;
.super Lio/reactivex/parallel/a;
.source "ParallelFilterTry.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/reactivex/internal/operators/parallel/e$c;,
        Lio/reactivex/internal/operators/parallel/e$d;,
        Lio/reactivex/internal/operators/parallel/e$b;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lio/reactivex/parallel/a<",
        "TT;>;"
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

.field final b:Ln7/r;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ln7/r<",
            "-TT;>;"
        }
    .end annotation
.end field

.field final c:Ln7/c;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ln7/c<",
            "-",
            "Ljava/lang/Long;",
            "-",
            "Ljava/lang/Throwable;",
            "Lio/reactivex/parallel/ParallelFailureHandling;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lio/reactivex/parallel/a;Ln7/r;Ln7/c;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/parallel/a<",
            "TT;>;",
            "Ln7/r<",
            "-TT;>;",
            "Ln7/c<",
            "-",
            "Ljava/lang/Long;",
            "-",
            "Ljava/lang/Throwable;",
            "Lio/reactivex/parallel/ParallelFailureHandling;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lio/reactivex/parallel/a;-><init>()V

    .line 2
    iput-object p1, p0, Lio/reactivex/internal/operators/parallel/e;->a:Lio/reactivex/parallel/a;

    .line 3
    iput-object p2, p0, Lio/reactivex/internal/operators/parallel/e;->b:Ln7/r;

    .line 4
    iput-object p3, p0, Lio/reactivex/internal/operators/parallel/e;->c:Ln7/c;

    return-void
.end method


# virtual methods
.method public F()I
    .locals 1

    iget-object v0, p0, Lio/reactivex/internal/operators/parallel/e;->a:Lio/reactivex/parallel/a;

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
            "-TT;>;)V"
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
    if-ge v2, v0, :cond_2

    .line 4
    aget-object v3, p1, v2

    .line 5
    instance-of v4, v3, Lo7/a;

    if-eqz v4, :cond_1

    .line 6
    new-instance v4, Lio/reactivex/internal/operators/parallel/e$c;

    check-cast v3, Lo7/a;

    iget-object v5, p0, Lio/reactivex/internal/operators/parallel/e;->b:Ln7/r;

    iget-object v6, p0, Lio/reactivex/internal/operators/parallel/e;->c:Ln7/c;

    invoke-direct {v4, v3, v5, v6}, Lio/reactivex/internal/operators/parallel/e$c;-><init>(Lo7/a;Ln7/r;Ln7/c;)V

    aput-object v4, v1, v2

    goto :goto_1

    .line 7
    :cond_1
    new-instance v4, Lio/reactivex/internal/operators/parallel/e$d;

    iget-object v5, p0, Lio/reactivex/internal/operators/parallel/e;->b:Ln7/r;

    iget-object v6, p0, Lio/reactivex/internal/operators/parallel/e;->c:Ln7/c;

    invoke-direct {v4, v3, v5, v6}, Lio/reactivex/internal/operators/parallel/e$d;-><init>(Lorg/reactivestreams/d;Ln7/r;Ln7/c;)V

    aput-object v4, v1, v2

    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 8
    :cond_2
    iget-object p1, p0, Lio/reactivex/internal/operators/parallel/e;->a:Lio/reactivex/parallel/a;

    invoke-virtual {p1, v1}, Lio/reactivex/parallel/a;->Q([Lorg/reactivestreams/d;)V

    return-void
.end method
