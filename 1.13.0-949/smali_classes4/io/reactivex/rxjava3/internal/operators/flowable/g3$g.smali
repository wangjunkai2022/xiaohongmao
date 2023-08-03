.class final Lio/reactivex/rxjava3/internal/operators/flowable/g3$g;
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
    name = "g"
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
.field final a:I

.field final b:Z


# direct methods
.method constructor <init>(IZ)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "bufferSize",
            "eagerTruncate"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput p1, p0, Lio/reactivex/rxjava3/internal/operators/flowable/g3$g;->a:I

    .line 3
    iput-boolean p2, p0, Lio/reactivex/rxjava3/internal/operators/flowable/g3$g;->b:Z

    return-void
.end method


# virtual methods
.method public a()Lio/reactivex/rxjava3/internal/operators/flowable/g3$f;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/reactivex/rxjava3/internal/operators/flowable/g3$f<",
            "TT;>;"
        }
    .end annotation

    new-instance v0, Lio/reactivex/rxjava3/internal/operators/flowable/g3$l;

    iget v1, p0, Lio/reactivex/rxjava3/internal/operators/flowable/g3$g;->a:I

    iget-boolean v2, p0, Lio/reactivex/rxjava3/internal/operators/flowable/g3$g;->b:Z

    invoke-direct {v0, v1, v2}, Lio/reactivex/rxjava3/internal/operators/flowable/g3$l;-><init>(IZ)V

    return-object v0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    invoke-virtual {p0}, Lio/reactivex/rxjava3/internal/operators/flowable/g3$g;->a()Lio/reactivex/rxjava3/internal/operators/flowable/g3$f;

    move-result-object v0

    return-object v0
.end method
