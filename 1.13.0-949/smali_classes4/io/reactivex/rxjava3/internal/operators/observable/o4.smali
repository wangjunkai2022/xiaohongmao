.class public final Lio/reactivex/rxjava3/internal/operators/observable/o4;
.super Lio/reactivex/rxjava3/core/g0;
.source "ObservableZip.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/reactivex/rxjava3/internal/operators/observable/o4$b;,
        Lio/reactivex/rxjava3/internal/operators/observable/o4$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "R:",
        "Ljava/lang/Object;",
        ">",
        "Lio/reactivex/rxjava3/core/g0<",
        "TR;>;"
    }
.end annotation


# instance fields
.field final a:[Lio/reactivex/rxjava3/core/l0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Lio/reactivex/rxjava3/core/l0<",
            "+TT;>;"
        }
    .end annotation
.end field

.field final b:Ljava/lang/Iterable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Iterable<",
            "+",
            "Lio/reactivex/rxjava3/core/l0<",
            "+TT;>;>;"
        }
    .end annotation
.end field

.field final c:Lq7/o;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lq7/o<",
            "-[",
            "Ljava/lang/Object;",
            "+TR;>;"
        }
    .end annotation
.end field

.field final d:I

.field final e:Z


# direct methods
.method public constructor <init>([Lio/reactivex/rxjava3/core/l0;Ljava/lang/Iterable;Lq7/o;IZ)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "sources",
            "sourcesIterable",
            "zipper",
            "bufferSize",
            "delayError"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Lio/reactivex/rxjava3/core/l0<",
            "+TT;>;",
            "Ljava/lang/Iterable<",
            "+",
            "Lio/reactivex/rxjava3/core/l0<",
            "+TT;>;>;",
            "Lq7/o<",
            "-[",
            "Ljava/lang/Object;",
            "+TR;>;IZ)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lio/reactivex/rxjava3/core/g0;-><init>()V

    .line 2
    iput-object p1, p0, Lio/reactivex/rxjava3/internal/operators/observable/o4;->a:[Lio/reactivex/rxjava3/core/l0;

    .line 3
    iput-object p2, p0, Lio/reactivex/rxjava3/internal/operators/observable/o4;->b:Ljava/lang/Iterable;

    .line 4
    iput-object p3, p0, Lio/reactivex/rxjava3/internal/operators/observable/o4;->c:Lq7/o;

    .line 5
    iput p4, p0, Lio/reactivex/rxjava3/internal/operators/observable/o4;->d:I

    .line 6
    iput-boolean p5, p0, Lio/reactivex/rxjava3/internal/operators/observable/o4;->e:Z

    return-void
.end method


# virtual methods
.method public d6(Lio/reactivex/rxjava3/core/n0;)V
    .locals 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "observer"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/rxjava3/core/n0<",
            "-TR;>;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lio/reactivex/rxjava3/internal/operators/observable/o4;->a:[Lio/reactivex/rxjava3/core/l0;

    if-nez v0, :cond_1

    const/16 v0, 0x8

    new-array v0, v0, [Lio/reactivex/rxjava3/core/l0;

    .line 2
    iget-object v1, p0, Lio/reactivex/rxjava3/internal/operators/observable/o4;->b:Ljava/lang/Iterable;

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lio/reactivex/rxjava3/core/l0;

    .line 3
    array-length v5, v0

    if-ne v3, v5, :cond_0

    shr-int/lit8 v5, v3, 0x2

    add-int/2addr v5, v3

    .line 4
    new-array v5, v5, [Lio/reactivex/rxjava3/core/l0;

    .line 5
    invoke-static {v0, v2, v5, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move-object v0, v5

    :cond_0
    add-int/lit8 v5, v3, 0x1

    .line 6
    aput-object v4, v0, v3

    move v3, v5

    goto :goto_0

    .line 7
    :cond_1
    array-length v3, v0

    :cond_2
    if-nez v3, :cond_3

    .line 8
    invoke-static {p1}, Lio/reactivex/rxjava3/internal/disposables/EmptyDisposable;->complete(Lio/reactivex/rxjava3/core/n0;)V

    return-void

    .line 9
    :cond_3
    new-instance v1, Lio/reactivex/rxjava3/internal/operators/observable/o4$a;

    iget-object v2, p0, Lio/reactivex/rxjava3/internal/operators/observable/o4;->c:Lq7/o;

    iget-boolean v4, p0, Lio/reactivex/rxjava3/internal/operators/observable/o4;->e:Z

    invoke-direct {v1, p1, v2, v3, v4}, Lio/reactivex/rxjava3/internal/operators/observable/o4$a;-><init>(Lio/reactivex/rxjava3/core/n0;Lq7/o;IZ)V

    .line 10
    iget p1, p0, Lio/reactivex/rxjava3/internal/operators/observable/o4;->d:I

    invoke-virtual {v1, v0, p1}, Lio/reactivex/rxjava3/internal/operators/observable/o4$a;->h([Lio/reactivex/rxjava3/core/l0;I)V

    return-void
.end method
