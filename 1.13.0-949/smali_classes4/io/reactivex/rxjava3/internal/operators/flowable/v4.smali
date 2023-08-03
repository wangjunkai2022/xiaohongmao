.class public final Lio/reactivex/rxjava3/internal/operators/flowable/v4;
.super Lio/reactivex/rxjava3/internal/operators/flowable/a;
.source "FlowableWindow.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/reactivex/rxjava3/internal/operators/flowable/v4$b;,
        Lio/reactivex/rxjava3/internal/operators/flowable/v4$c;,
        Lio/reactivex/rxjava3/internal/operators/flowable/v4$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lio/reactivex/rxjava3/internal/operators/flowable/a<",
        "TT;",
        "Lio/reactivex/rxjava3/core/m<",
        "TT;>;>;"
    }
.end annotation


# instance fields
.field final c:J

.field final d:J

.field final e:I


# direct methods
.method public constructor <init>(Lio/reactivex/rxjava3/core/m;JJI)V
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
            "size",
            "skip",
            "bufferSize"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/rxjava3/core/m<",
            "TT;>;JJI)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1}, Lio/reactivex/rxjava3/internal/operators/flowable/a;-><init>(Lio/reactivex/rxjava3/core/m;)V

    .line 2
    iput-wide p2, p0, Lio/reactivex/rxjava3/internal/operators/flowable/v4;->c:J

    .line 3
    iput-wide p4, p0, Lio/reactivex/rxjava3/internal/operators/flowable/v4;->d:J

    .line 4
    iput p6, p0, Lio/reactivex/rxjava3/internal/operators/flowable/v4;->e:I

    return-void
.end method


# virtual methods
.method public H6(Lorg/reactivestreams/d;)V
    .locals 9
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
            "-",
            "Lio/reactivex/rxjava3/core/m<",
            "TT;>;>;)V"
        }
    .end annotation

    .line 1
    iget-wide v0, p0, Lio/reactivex/rxjava3/internal/operators/flowable/v4;->d:J

    iget-wide v2, p0, Lio/reactivex/rxjava3/internal/operators/flowable/v4;->c:J

    cmp-long v4, v0, v2

    if-nez v4, :cond_0

    .line 2
    iget-object v0, p0, Lio/reactivex/rxjava3/internal/operators/flowable/a;->b:Lio/reactivex/rxjava3/core/m;

    new-instance v1, Lio/reactivex/rxjava3/internal/operators/flowable/v4$a;

    iget-wide v2, p0, Lio/reactivex/rxjava3/internal/operators/flowable/v4;->c:J

    iget v4, p0, Lio/reactivex/rxjava3/internal/operators/flowable/v4;->e:I

    invoke-direct {v1, p1, v2, v3, v4}, Lio/reactivex/rxjava3/internal/operators/flowable/v4$a;-><init>(Lorg/reactivestreams/d;JI)V

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/m;->G6(Lio/reactivex/rxjava3/core/r;)V

    goto :goto_0

    :cond_0
    cmp-long v4, v0, v2

    if-lez v4, :cond_1

    .line 3
    iget-object v0, p0, Lio/reactivex/rxjava3/internal/operators/flowable/a;->b:Lio/reactivex/rxjava3/core/m;

    new-instance v8, Lio/reactivex/rxjava3/internal/operators/flowable/v4$c;

    iget-wide v3, p0, Lio/reactivex/rxjava3/internal/operators/flowable/v4;->c:J

    iget-wide v5, p0, Lio/reactivex/rxjava3/internal/operators/flowable/v4;->d:J

    iget v7, p0, Lio/reactivex/rxjava3/internal/operators/flowable/v4;->e:I

    move-object v1, v8

    move-object v2, p1

    invoke-direct/range {v1 .. v7}, Lio/reactivex/rxjava3/internal/operators/flowable/v4$c;-><init>(Lorg/reactivestreams/d;JJI)V

    invoke-virtual {v0, v8}, Lio/reactivex/rxjava3/core/m;->G6(Lio/reactivex/rxjava3/core/r;)V

    goto :goto_0

    .line 4
    :cond_1
    iget-object v0, p0, Lio/reactivex/rxjava3/internal/operators/flowable/a;->b:Lio/reactivex/rxjava3/core/m;

    new-instance v8, Lio/reactivex/rxjava3/internal/operators/flowable/v4$b;

    iget-wide v3, p0, Lio/reactivex/rxjava3/internal/operators/flowable/v4;->c:J

    iget-wide v5, p0, Lio/reactivex/rxjava3/internal/operators/flowable/v4;->d:J

    iget v7, p0, Lio/reactivex/rxjava3/internal/operators/flowable/v4;->e:I

    move-object v1, v8

    move-object v2, p1

    invoke-direct/range {v1 .. v7}, Lio/reactivex/rxjava3/internal/operators/flowable/v4$b;-><init>(Lorg/reactivestreams/d;JJI)V

    invoke-virtual {v0, v8}, Lio/reactivex/rxjava3/core/m;->G6(Lio/reactivex/rxjava3/core/r;)V

    :goto_0
    return-void
.end method
