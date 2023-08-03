.class public final Lio/reactivex/internal/operators/parallel/l;
.super Lio/reactivex/parallel/a;
.source "ParallelPeek.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/reactivex/internal/operators/parallel/l$a;
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

.field final b:Ln7/g;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ln7/g<",
            "-TT;>;"
        }
    .end annotation
.end field

.field final c:Ln7/g;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ln7/g<",
            "-TT;>;"
        }
    .end annotation
.end field

.field final d:Ln7/g;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ln7/g<",
            "-",
            "Ljava/lang/Throwable;",
            ">;"
        }
    .end annotation
.end field

.field final e:Ln7/a;

.field final f:Ln7/a;

.field final g:Ln7/g;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ln7/g<",
            "-",
            "Lorg/reactivestreams/e;",
            ">;"
        }
    .end annotation
.end field

.field final h:Ln7/q;

.field final i:Ln7/a;


# direct methods
.method public constructor <init>(Lio/reactivex/parallel/a;Ln7/g;Ln7/g;Ln7/g;Ln7/a;Ln7/a;Ln7/g;Ln7/q;Ln7/a;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/parallel/a<",
            "TT;>;",
            "Ln7/g<",
            "-TT;>;",
            "Ln7/g<",
            "-TT;>;",
            "Ln7/g<",
            "-",
            "Ljava/lang/Throwable;",
            ">;",
            "Ln7/a;",
            "Ln7/a;",
            "Ln7/g<",
            "-",
            "Lorg/reactivestreams/e;",
            ">;",
            "Ln7/q;",
            "Ln7/a;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lio/reactivex/parallel/a;-><init>()V

    .line 2
    iput-object p1, p0, Lio/reactivex/internal/operators/parallel/l;->a:Lio/reactivex/parallel/a;

    const-string p1, "onNext is null"

    .line 3
    invoke-static {p2, p1}, Lio/reactivex/internal/functions/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ln7/g;

    iput-object p1, p0, Lio/reactivex/internal/operators/parallel/l;->b:Ln7/g;

    const-string p1, "onAfterNext is null"

    .line 4
    invoke-static {p3, p1}, Lio/reactivex/internal/functions/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ln7/g;

    iput-object p1, p0, Lio/reactivex/internal/operators/parallel/l;->c:Ln7/g;

    const-string p1, "onError is null"

    .line 5
    invoke-static {p4, p1}, Lio/reactivex/internal/functions/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ln7/g;

    iput-object p1, p0, Lio/reactivex/internal/operators/parallel/l;->d:Ln7/g;

    const-string p1, "onComplete is null"

    .line 6
    invoke-static {p5, p1}, Lio/reactivex/internal/functions/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ln7/a;

    iput-object p1, p0, Lio/reactivex/internal/operators/parallel/l;->e:Ln7/a;

    const-string p1, "onAfterTerminated is null"

    .line 7
    invoke-static {p6, p1}, Lio/reactivex/internal/functions/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ln7/a;

    iput-object p1, p0, Lio/reactivex/internal/operators/parallel/l;->f:Ln7/a;

    const-string p1, "onSubscribe is null"

    .line 8
    invoke-static {p7, p1}, Lio/reactivex/internal/functions/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ln7/g;

    iput-object p1, p0, Lio/reactivex/internal/operators/parallel/l;->g:Ln7/g;

    const-string p1, "onRequest is null"

    .line 9
    invoke-static {p8, p1}, Lio/reactivex/internal/functions/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ln7/q;

    iput-object p1, p0, Lio/reactivex/internal/operators/parallel/l;->h:Ln7/q;

    const-string p1, "onCancel is null"

    .line 10
    invoke-static {p9, p1}, Lio/reactivex/internal/functions/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ln7/a;

    iput-object p1, p0, Lio/reactivex/internal/operators/parallel/l;->i:Ln7/a;

    return-void
.end method


# virtual methods
.method public F()I
    .locals 1

    iget-object v0, p0, Lio/reactivex/internal/operators/parallel/l;->a:Lio/reactivex/parallel/a;

    invoke-virtual {v0}, Lio/reactivex/parallel/a;->F()I

    move-result v0

    return v0
.end method

.method public Q([Lorg/reactivestreams/d;)V
    .locals 5
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
    if-ge v2, v0, :cond_1

    .line 4
    new-instance v3, Lio/reactivex/internal/operators/parallel/l$a;

    aget-object v4, p1, v2

    invoke-direct {v3, v4, p0}, Lio/reactivex/internal/operators/parallel/l$a;-><init>(Lorg/reactivestreams/d;Lio/reactivex/internal/operators/parallel/l;)V

    aput-object v3, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 5
    :cond_1
    iget-object p1, p0, Lio/reactivex/internal/operators/parallel/l;->a:Lio/reactivex/parallel/a;

    invoke-virtual {p1, v1}, Lio/reactivex/parallel/a;->Q([Lorg/reactivestreams/d;)V

    return-void
.end method
