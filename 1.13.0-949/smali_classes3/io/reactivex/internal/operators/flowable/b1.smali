.class public final Lio/reactivex/internal/operators/flowable/b1;
.super Lio/reactivex/a;
.source "FlowableFlatMapCompletableCompletable.java"

# interfaces
.implements Lo7/b;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/reactivex/internal/operators/flowable/b1$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lio/reactivex/a;",
        "Lo7/b<",
        "TT;>;"
    }
.end annotation


# instance fields
.field final a:Lio/reactivex/j;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/j<",
            "TT;>;"
        }
    .end annotation
.end field

.field final b:Ln7/o;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ln7/o<",
            "-TT;+",
            "Lio/reactivex/g;",
            ">;"
        }
    .end annotation
.end field

.field final c:I

.field final d:Z


# direct methods
.method public constructor <init>(Lio/reactivex/j;Ln7/o;ZI)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/j<",
            "TT;>;",
            "Ln7/o<",
            "-TT;+",
            "Lio/reactivex/g;",
            ">;ZI)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lio/reactivex/a;-><init>()V

    .line 2
    iput-object p1, p0, Lio/reactivex/internal/operators/flowable/b1;->a:Lio/reactivex/j;

    .line 3
    iput-object p2, p0, Lio/reactivex/internal/operators/flowable/b1;->b:Ln7/o;

    .line 4
    iput-boolean p3, p0, Lio/reactivex/internal/operators/flowable/b1;->d:Z

    .line 5
    iput p4, p0, Lio/reactivex/internal/operators/flowable/b1;->c:I

    return-void
.end method


# virtual methods
.method protected I0(Lio/reactivex/d;)V
    .locals 5

    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/b1;->a:Lio/reactivex/j;

    new-instance v1, Lio/reactivex/internal/operators/flowable/b1$a;

    iget-object v2, p0, Lio/reactivex/internal/operators/flowable/b1;->b:Ln7/o;

    iget-boolean v3, p0, Lio/reactivex/internal/operators/flowable/b1;->d:Z

    iget v4, p0, Lio/reactivex/internal/operators/flowable/b1;->c:I

    invoke-direct {v1, p1, v2, v3, v4}, Lio/reactivex/internal/operators/flowable/b1$a;-><init>(Lio/reactivex/d;Ln7/o;ZI)V

    invoke-virtual {v0, v1}, Lio/reactivex/j;->j6(Lio/reactivex/o;)V

    return-void
.end method

.method public c()Lio/reactivex/j;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/reactivex/j<",
            "TT;>;"
        }
    .end annotation

    new-instance v0, Lio/reactivex/internal/operators/flowable/a1;

    iget-object v1, p0, Lio/reactivex/internal/operators/flowable/b1;->a:Lio/reactivex/j;

    iget-object v2, p0, Lio/reactivex/internal/operators/flowable/b1;->b:Ln7/o;

    iget-boolean v3, p0, Lio/reactivex/internal/operators/flowable/b1;->d:Z

    iget v4, p0, Lio/reactivex/internal/operators/flowable/b1;->c:I

    invoke-direct {v0, v1, v2, v3, v4}, Lio/reactivex/internal/operators/flowable/a1;-><init>(Lio/reactivex/j;Ln7/o;ZI)V

    invoke-static {v0}, Lio/reactivex/plugins/a;->P(Lio/reactivex/j;)Lio/reactivex/j;

    move-result-object v0

    return-object v0
.end method
