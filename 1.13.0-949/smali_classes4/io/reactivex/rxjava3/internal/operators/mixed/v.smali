.class public final Lio/reactivex/rxjava3/internal/operators/mixed/v;
.super Lio/reactivex/rxjava3/core/g0;
.source "ObservableSwitchMapSingle.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/reactivex/rxjava3/internal/operators/mixed/v$a;
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
.field final a:Lio/reactivex/rxjava3/core/g0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/rxjava3/core/g0<",
            "TT;>;"
        }
    .end annotation
.end field

.field final b:Lq7/o;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lq7/o<",
            "-TT;+",
            "Lio/reactivex/rxjava3/core/v0<",
            "+TR;>;>;"
        }
    .end annotation
.end field

.field final c:Z


# direct methods
.method public constructor <init>(Lio/reactivex/rxjava3/core/g0;Lq7/o;Z)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "source",
            "mapper",
            "delayErrors"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/rxjava3/core/g0<",
            "TT;>;",
            "Lq7/o<",
            "-TT;+",
            "Lio/reactivex/rxjava3/core/v0<",
            "+TR;>;>;Z)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lio/reactivex/rxjava3/core/g0;-><init>()V

    .line 2
    iput-object p1, p0, Lio/reactivex/rxjava3/internal/operators/mixed/v;->a:Lio/reactivex/rxjava3/core/g0;

    .line 3
    iput-object p2, p0, Lio/reactivex/rxjava3/internal/operators/mixed/v;->b:Lq7/o;

    .line 4
    iput-boolean p3, p0, Lio/reactivex/rxjava3/internal/operators/mixed/v;->c:Z

    return-void
.end method


# virtual methods
.method protected d6(Lio/reactivex/rxjava3/core/n0;)V
    .locals 4
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
    iget-object v0, p0, Lio/reactivex/rxjava3/internal/operators/mixed/v;->a:Lio/reactivex/rxjava3/core/g0;

    iget-object v1, p0, Lio/reactivex/rxjava3/internal/operators/mixed/v;->b:Lq7/o;

    invoke-static {v0, v1, p1}, Lio/reactivex/rxjava3/internal/operators/mixed/w;->c(Ljava/lang/Object;Lq7/o;Lio/reactivex/rxjava3/core/n0;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Lio/reactivex/rxjava3/internal/operators/mixed/v;->a:Lio/reactivex/rxjava3/core/g0;

    new-instance v1, Lio/reactivex/rxjava3/internal/operators/mixed/v$a;

    iget-object v2, p0, Lio/reactivex/rxjava3/internal/operators/mixed/v;->b:Lq7/o;

    iget-boolean v3, p0, Lio/reactivex/rxjava3/internal/operators/mixed/v;->c:Z

    invoke-direct {v1, p1, v2, v3}, Lio/reactivex/rxjava3/internal/operators/mixed/v$a;-><init>(Lio/reactivex/rxjava3/core/n0;Lq7/o;Z)V

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/g0;->a(Lio/reactivex/rxjava3/core/n0;)V

    :cond_0
    return-void
.end method
