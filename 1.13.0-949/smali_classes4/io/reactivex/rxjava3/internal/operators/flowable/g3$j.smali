.class final Lio/reactivex/rxjava3/internal/operators/flowable/g3$j;
.super Ljava/lang/Object;
.source "FlowableReplay.java"

# interfaces
.implements Lq7/s;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/reactivex/rxjava3/internal/operators/flowable/g3;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "j"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lq7/s<",
        "Lio/reactivex/rxjava3/internal/operators/flowable/g3$f<",
        "TT;>;>;"
    }
.end annotation


# instance fields
.field private final a:I

.field private final b:J

.field private final c:Ljava/util/concurrent/TimeUnit;

.field private final d:Lio/reactivex/rxjava3/core/o0;

.field final e:Z


# direct methods
.method constructor <init>(IJLjava/util/concurrent/TimeUnit;Lio/reactivex/rxjava3/core/o0;Z)V
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
            "bufferSize",
            "maxAge",
            "unit",
            "scheduler",
            "eagerTruncate"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput p1, p0, Lio/reactivex/rxjava3/internal/operators/flowable/g3$j;->a:I

    .line 3
    iput-wide p2, p0, Lio/reactivex/rxjava3/internal/operators/flowable/g3$j;->b:J

    .line 4
    iput-object p4, p0, Lio/reactivex/rxjava3/internal/operators/flowable/g3$j;->c:Ljava/util/concurrent/TimeUnit;

    .line 5
    iput-object p5, p0, Lio/reactivex/rxjava3/internal/operators/flowable/g3$j;->d:Lio/reactivex/rxjava3/core/o0;

    .line 6
    iput-boolean p6, p0, Lio/reactivex/rxjava3/internal/operators/flowable/g3$j;->e:Z

    return-void
.end method


# virtual methods
.method public a()Lio/reactivex/rxjava3/internal/operators/flowable/g3$f;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/reactivex/rxjava3/internal/operators/flowable/g3$f<",
            "TT;>;"
        }
    .end annotation

    new-instance v7, Lio/reactivex/rxjava3/internal/operators/flowable/g3$k;

    iget v1, p0, Lio/reactivex/rxjava3/internal/operators/flowable/g3$j;->a:I

    iget-wide v2, p0, Lio/reactivex/rxjava3/internal/operators/flowable/g3$j;->b:J

    iget-object v4, p0, Lio/reactivex/rxjava3/internal/operators/flowable/g3$j;->c:Ljava/util/concurrent/TimeUnit;

    iget-object v5, p0, Lio/reactivex/rxjava3/internal/operators/flowable/g3$j;->d:Lio/reactivex/rxjava3/core/o0;

    iget-boolean v6, p0, Lio/reactivex/rxjava3/internal/operators/flowable/g3$j;->e:Z

    move-object v0, v7

    invoke-direct/range {v0 .. v6}, Lio/reactivex/rxjava3/internal/operators/flowable/g3$k;-><init>(IJLjava/util/concurrent/TimeUnit;Lio/reactivex/rxjava3/core/o0;Z)V

    return-object v7
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    invoke-virtual {p0}, Lio/reactivex/rxjava3/internal/operators/flowable/g3$j;->a()Lio/reactivex/rxjava3/internal/operators/flowable/g3$f;

    move-result-object v0

    return-object v0
.end method
