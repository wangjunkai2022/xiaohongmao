.class public final Lio/reactivex/rxjava3/internal/operators/parallel/m;
.super Lio/reactivex/rxjava3/parallel/a;
.source "ParallelPeek.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/reactivex/rxjava3/internal/operators/parallel/m$a;
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
.field final a:Lio/reactivex/rxjava3/parallel/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/rxjava3/parallel/a<",
            "TT;>;"
        }
    .end annotation
.end field

.field final b:Lq7/g;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lq7/g<",
            "-TT;>;"
        }
    .end annotation
.end field

.field final c:Lq7/g;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lq7/g<",
            "-TT;>;"
        }
    .end annotation
.end field

.field final d:Lq7/g;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lq7/g<",
            "-",
            "Ljava/lang/Throwable;",
            ">;"
        }
    .end annotation
.end field

.field final e:Lq7/a;

.field final f:Lq7/a;

.field final g:Lq7/g;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lq7/g<",
            "-",
            "Lorg/reactivestreams/e;",
            ">;"
        }
    .end annotation
.end field

.field final h:Lq7/q;

.field final i:Lq7/a;


# direct methods
.method public constructor <init>(Lio/reactivex/rxjava3/parallel/a;Lq7/g;Lq7/g;Lq7/g;Lq7/a;Lq7/a;Lq7/g;Lq7/q;Lq7/a;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "source",
            "onNext",
            "onAfterNext",
            "onError",
            "onComplete",
            "onAfterTerminated",
            "onSubscribe",
            "onRequest",
            "onCancel"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/rxjava3/parallel/a<",
            "TT;>;",
            "Lq7/g<",
            "-TT;>;",
            "Lq7/g<",
            "-TT;>;",
            "Lq7/g<",
            "-",
            "Ljava/lang/Throwable;",
            ">;",
            "Lq7/a;",
            "Lq7/a;",
            "Lq7/g<",
            "-",
            "Lorg/reactivestreams/e;",
            ">;",
            "Lq7/q;",
            "Lq7/a;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lio/reactivex/rxjava3/parallel/a;-><init>()V

    .line 2
    iput-object p1, p0, Lio/reactivex/rxjava3/internal/operators/parallel/m;->a:Lio/reactivex/rxjava3/parallel/a;

    const-string p1, "onNext is null"

    .line 3
    invoke-static {p2, p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast p2, Lq7/g;

    iput-object p2, p0, Lio/reactivex/rxjava3/internal/operators/parallel/m;->b:Lq7/g;

    const-string p1, "onAfterNext is null"

    .line 4
    invoke-static {p3, p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast p3, Lq7/g;

    iput-object p3, p0, Lio/reactivex/rxjava3/internal/operators/parallel/m;->c:Lq7/g;

    const-string p1, "onError is null"

    .line 5
    invoke-static {p4, p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast p4, Lq7/g;

    iput-object p4, p0, Lio/reactivex/rxjava3/internal/operators/parallel/m;->d:Lq7/g;

    const-string p1, "onComplete is null"

    .line 6
    invoke-static {p5, p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast p5, Lq7/a;

    iput-object p5, p0, Lio/reactivex/rxjava3/internal/operators/parallel/m;->e:Lq7/a;

    const-string p1, "onAfterTerminated is null"

    .line 7
    invoke-static {p6, p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast p6, Lq7/a;

    iput-object p6, p0, Lio/reactivex/rxjava3/internal/operators/parallel/m;->f:Lq7/a;

    const-string p1, "onSubscribe is null"

    .line 8
    invoke-static {p7, p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast p7, Lq7/g;

    iput-object p7, p0, Lio/reactivex/rxjava3/internal/operators/parallel/m;->g:Lq7/g;

    const-string p1, "onRequest is null"

    .line 9
    invoke-static {p8, p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast p8, Lq7/q;

    iput-object p8, p0, Lio/reactivex/rxjava3/internal/operators/parallel/m;->h:Lq7/q;

    const-string p1, "onCancel is null"

    .line 10
    invoke-static {p9, p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast p9, Lq7/a;

    iput-object p9, p0, Lio/reactivex/rxjava3/internal/operators/parallel/m;->i:Lq7/a;

    return-void
.end method


# virtual methods
.method public M()I
    .locals 1

    iget-object v0, p0, Lio/reactivex/rxjava3/internal/operators/parallel/m;->a:Lio/reactivex/rxjava3/parallel/a;

    invoke-virtual {v0}, Lio/reactivex/rxjava3/parallel/a;->M()I

    move-result v0

    return v0
.end method

.method public X([Lorg/reactivestreams/d;)V
    .locals 5
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
    array-length v0, p1

    .line 3
    new-array v1, v0, [Lorg/reactivestreams/d;

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_1

    .line 4
    new-instance v3, Lio/reactivex/rxjava3/internal/operators/parallel/m$a;

    aget-object v4, p1, v2

    invoke-direct {v3, v4, p0}, Lio/reactivex/rxjava3/internal/operators/parallel/m$a;-><init>(Lorg/reactivestreams/d;Lio/reactivex/rxjava3/internal/operators/parallel/m;)V

    aput-object v3, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 5
    :cond_1
    iget-object p1, p0, Lio/reactivex/rxjava3/internal/operators/parallel/m;->a:Lio/reactivex/rxjava3/parallel/a;

    invoke-virtual {p1, v1}, Lio/reactivex/rxjava3/parallel/a;->X([Lorg/reactivestreams/d;)V

    return-void
.end method
