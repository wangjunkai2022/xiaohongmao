.class public final Lio/reactivex/rxjava3/internal/operators/flowable/d0;
.super Lio/reactivex/rxjava3/core/p0;
.source "FlowableCountSingle.java"

# interfaces
.implements Lio/reactivex/rxjava3/internal/fuseable/d;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/reactivex/rxjava3/internal/operators/flowable/d0$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lio/reactivex/rxjava3/core/p0<",
        "Ljava/lang/Long;",
        ">;",
        "Lio/reactivex/rxjava3/internal/fuseable/d<",
        "Ljava/lang/Long;",
        ">;"
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


# direct methods
.method public constructor <init>(Lio/reactivex/rxjava3/core/m;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "source"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/rxjava3/core/m<",
            "TT;>;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lio/reactivex/rxjava3/core/p0;-><init>()V

    .line 2
    iput-object p1, p0, Lio/reactivex/rxjava3/internal/operators/flowable/d0;->a:Lio/reactivex/rxjava3/core/m;

    return-void
.end method


# virtual methods
.method protected M1(Lio/reactivex/rxjava3/core/s0;)V
    .locals 2
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
            "Lio/reactivex/rxjava3/core/s0<",
            "-",
            "Ljava/lang/Long;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lio/reactivex/rxjava3/internal/operators/flowable/d0;->a:Lio/reactivex/rxjava3/core/m;

    new-instance v1, Lio/reactivex/rxjava3/internal/operators/flowable/d0$a;

    invoke-direct {v1, p1}, Lio/reactivex/rxjava3/internal/operators/flowable/d0$a;-><init>(Lio/reactivex/rxjava3/core/s0;)V

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/m;->G6(Lio/reactivex/rxjava3/core/r;)V

    return-void
.end method

.method public c()Lio/reactivex/rxjava3/core/m;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/reactivex/rxjava3/core/m<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    new-instance v0, Lio/reactivex/rxjava3/internal/operators/flowable/c0;

    iget-object v1, p0, Lio/reactivex/rxjava3/internal/operators/flowable/d0;->a:Lio/reactivex/rxjava3/core/m;

    invoke-direct {v0, v1}, Lio/reactivex/rxjava3/internal/operators/flowable/c0;-><init>(Lio/reactivex/rxjava3/core/m;)V

    invoke-static {v0}, Lio/reactivex/rxjava3/plugins/a;->P(Lio/reactivex/rxjava3/core/m;)Lio/reactivex/rxjava3/core/m;

    move-result-object v0

    return-object v0
.end method
