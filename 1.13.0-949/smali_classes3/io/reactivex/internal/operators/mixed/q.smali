.class public final Lio/reactivex/internal/operators/mixed/q;
.super Lio/reactivex/z;
.source "ObservableSwitchMapSingle.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/reactivex/internal/operators/mixed/q$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "R:",
        "Ljava/lang/Object;",
        ">",
        "Lio/reactivex/z<",
        "TR;>;"
    }
.end annotation


# instance fields
.field final a:Lio/reactivex/z;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/z<",
            "TT;>;"
        }
    .end annotation
.end field

.field final b:Ln7/o;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ln7/o<",
            "-TT;+",
            "Lio/reactivex/o0<",
            "+TR;>;>;"
        }
    .end annotation
.end field

.field final c:Z


# direct methods
.method public constructor <init>(Lio/reactivex/z;Ln7/o;Z)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/z<",
            "TT;>;",
            "Ln7/o<",
            "-TT;+",
            "Lio/reactivex/o0<",
            "+TR;>;>;Z)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lio/reactivex/z;-><init>()V

    .line 2
    iput-object p1, p0, Lio/reactivex/internal/operators/mixed/q;->a:Lio/reactivex/z;

    .line 3
    iput-object p2, p0, Lio/reactivex/internal/operators/mixed/q;->b:Ln7/o;

    .line 4
    iput-boolean p3, p0, Lio/reactivex/internal/operators/mixed/q;->c:Z

    return-void
.end method


# virtual methods
.method protected subscribeActual(Lio/reactivex/g0;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/g0<",
            "-TR;>;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lio/reactivex/internal/operators/mixed/q;->a:Lio/reactivex/z;

    iget-object v1, p0, Lio/reactivex/internal/operators/mixed/q;->b:Ln7/o;

    invoke-static {v0, v1, p1}, Lio/reactivex/internal/operators/mixed/r;->c(Ljava/lang/Object;Ln7/o;Lio/reactivex/g0;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Lio/reactivex/internal/operators/mixed/q;->a:Lio/reactivex/z;

    new-instance v1, Lio/reactivex/internal/operators/mixed/q$a;

    iget-object v2, p0, Lio/reactivex/internal/operators/mixed/q;->b:Ln7/o;

    iget-boolean v3, p0, Lio/reactivex/internal/operators/mixed/q;->c:Z

    invoke-direct {v1, p1, v2, v3}, Lio/reactivex/internal/operators/mixed/q$a;-><init>(Lio/reactivex/g0;Ln7/o;Z)V

    invoke-virtual {v0, v1}, Lio/reactivex/z;->subscribe(Lio/reactivex/g0;)V

    :cond_0
    return-void
.end method
