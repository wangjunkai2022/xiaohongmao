.class public final Lio/reactivex/rxjava3/internal/operators/flowable/b1;
.super Lio/reactivex/rxjava3/core/a;
.source "FlowableFlatMapCompletableCompletable.java"

# interfaces
.implements Lio/reactivex/rxjava3/internal/fuseable/d;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/reactivex/rxjava3/internal/operators/flowable/b1$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lio/reactivex/rxjava3/core/a;",
        "Lio/reactivex/rxjava3/internal/fuseable/d<",
        "TT;>;"
    }
.end annotation


# instance fields
.field final a:Lio/reactivex/rxjava3/core/m;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/rxjava3/core/m<",
            "TT;>;"
        }
    .end annotation
.end field

.field final b:Lq7/o;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lq7/o<",
            "-TT;+",
            "Lio/reactivex/rxjava3/core/g;",
            ">;"
        }
    .end annotation
.end field

.field final c:I

.field final d:Z


# direct methods
.method public constructor <init>(Lio/reactivex/rxjava3/core/m;Lq7/o;ZI)V
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
            "delayErrors",
            "maxConcurrency"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/rxjava3/core/m<",
            "TT;>;",
            "Lq7/o<",
            "-TT;+",
            "Lio/reactivex/rxjava3/core/g;",
            ">;ZI)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lio/reactivex/rxjava3/core/a;-><init>()V

    .line 2
    iput-object p1, p0, Lio/reactivex/rxjava3/internal/operators/flowable/b1;->a:Lio/reactivex/rxjava3/core/m;

    .line 3
    iput-object p2, p0, Lio/reactivex/rxjava3/internal/operators/flowable/b1;->b:Lq7/o;

    .line 4
    iput-boolean p3, p0, Lio/reactivex/rxjava3/internal/operators/flowable/b1;->d:Z

    .line 5
    iput p4, p0, Lio/reactivex/rxjava3/internal/operators/flowable/b1;->c:I

    return-void
.end method


# virtual methods
.method protected Y0(Lio/reactivex/rxjava3/core/d;)V
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "observer"
        }
    .end annotation

    iget-object v0, p0, Lio/reactivex/rxjava3/internal/operators/flowable/b1;->a:Lio/reactivex/rxjava3/core/m;

    new-instance v1, Lio/reactivex/rxjava3/internal/operators/flowable/b1$a;

    iget-object v2, p0, Lio/reactivex/rxjava3/internal/operators/flowable/b1;->b:Lq7/o;

    iget-boolean v3, p0, Lio/reactivex/rxjava3/internal/operators/flowable/b1;->d:Z

    iget v4, p0, Lio/reactivex/rxjava3/internal/operators/flowable/b1;->c:I

    invoke-direct {v1, p1, v2, v3, v4}, Lio/reactivex/rxjava3/internal/operators/flowable/b1$a;-><init>(Lio/reactivex/rxjava3/core/d;Lq7/o;ZI)V

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/m;->G6(Lio/reactivex/rxjava3/core/r;)V

    return-void
.end method

.method public c()Lio/reactivex/rxjava3/core/m;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/reactivex/rxjava3/core/m<",
            "TT;>;"
        }
    .end annotation

    new-instance v0, Lio/reactivex/rxjava3/internal/operators/flowable/a1;

    iget-object v1, p0, Lio/reactivex/rxjava3/internal/operators/flowable/b1;->a:Lio/reactivex/rxjava3/core/m;

    iget-object v2, p0, Lio/reactivex/rxjava3/internal/operators/flowable/b1;->b:Lq7/o;

    iget-boolean v3, p0, Lio/reactivex/rxjava3/internal/operators/flowable/b1;->d:Z

    iget v4, p0, Lio/reactivex/rxjava3/internal/operators/flowable/b1;->c:I

    invoke-direct {v0, v1, v2, v3, v4}, Lio/reactivex/rxjava3/internal/operators/flowable/a1;-><init>(Lio/reactivex/rxjava3/core/m;Lq7/o;ZI)V

    invoke-static {v0}, Lio/reactivex/rxjava3/plugins/a;->P(Lio/reactivex/rxjava3/core/m;)Lio/reactivex/rxjava3/core/m;

    move-result-object v0

    return-object v0
.end method
