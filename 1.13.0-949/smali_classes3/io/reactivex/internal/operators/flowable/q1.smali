.class public final Lio/reactivex/internal/operators/flowable/q1;
.super Lio/reactivex/a;
.source "FlowableIgnoreElementsCompletable.java"

# interfaces
.implements Lo7/b;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/reactivex/internal/operators/flowable/q1$a;
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


# direct methods
.method public constructor <init>(Lio/reactivex/j;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/j<",
            "TT;>;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lio/reactivex/a;-><init>()V

    .line 2
    iput-object p1, p0, Lio/reactivex/internal/operators/flowable/q1;->a:Lio/reactivex/j;

    return-void
.end method


# virtual methods
.method protected I0(Lio/reactivex/d;)V
    .locals 2

    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/q1;->a:Lio/reactivex/j;

    new-instance v1, Lio/reactivex/internal/operators/flowable/q1$a;

    invoke-direct {v1, p1}, Lio/reactivex/internal/operators/flowable/q1$a;-><init>(Lio/reactivex/d;)V

    invoke-virtual {v0, v1}, Lio/reactivex/j;->j6(Lio/reactivex/o;)V

    return-void
.end method

.method public c()Lio/reactivex/j;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/reactivex/j<",
            "TT;>;"
        }
    .end annotation

    new-instance v0, Lio/reactivex/internal/operators/flowable/p1;

    iget-object v1, p0, Lio/reactivex/internal/operators/flowable/q1;->a:Lio/reactivex/j;

    invoke-direct {v0, v1}, Lio/reactivex/internal/operators/flowable/p1;-><init>(Lio/reactivex/j;)V

    invoke-static {v0}, Lio/reactivex/plugins/a;->P(Lio/reactivex/j;)Lio/reactivex/j;

    move-result-object v0

    return-object v0
.end method
