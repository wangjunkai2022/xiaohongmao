.class public final Lio/reactivex/internal/operators/observable/y0;
.super Lio/reactivex/a;
.source "ObservableFlatMapCompletableCompletable.java"

# interfaces
.implements Lo7/d;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/reactivex/internal/operators/observable/y0$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lio/reactivex/a;",
        "Lo7/d<",
        "TT;>;"
    }
.end annotation


# instance fields
.field final a:Lio/reactivex/e0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/e0<",
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

.field final c:Z


# direct methods
.method public constructor <init>(Lio/reactivex/e0;Ln7/o;Z)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/e0<",
            "TT;>;",
            "Ln7/o<",
            "-TT;+",
            "Lio/reactivex/g;",
            ">;Z)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lio/reactivex/a;-><init>()V

    .line 2
    iput-object p1, p0, Lio/reactivex/internal/operators/observable/y0;->a:Lio/reactivex/e0;

    .line 3
    iput-object p2, p0, Lio/reactivex/internal/operators/observable/y0;->b:Ln7/o;

    .line 4
    iput-boolean p3, p0, Lio/reactivex/internal/operators/observable/y0;->c:Z

    return-void
.end method


# virtual methods
.method protected I0(Lio/reactivex/d;)V
    .locals 4

    iget-object v0, p0, Lio/reactivex/internal/operators/observable/y0;->a:Lio/reactivex/e0;

    new-instance v1, Lio/reactivex/internal/operators/observable/y0$a;

    iget-object v2, p0, Lio/reactivex/internal/operators/observable/y0;->b:Ln7/o;

    iget-boolean v3, p0, Lio/reactivex/internal/operators/observable/y0;->c:Z

    invoke-direct {v1, p1, v2, v3}, Lio/reactivex/internal/operators/observable/y0$a;-><init>(Lio/reactivex/d;Ln7/o;Z)V

    invoke-interface {v0, v1}, Lio/reactivex/e0;->subscribe(Lio/reactivex/g0;)V

    return-void
.end method

.method public a()Lio/reactivex/z;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/reactivex/z<",
            "TT;>;"
        }
    .end annotation

    new-instance v0, Lio/reactivex/internal/operators/observable/x0;

    iget-object v1, p0, Lio/reactivex/internal/operators/observable/y0;->a:Lio/reactivex/e0;

    iget-object v2, p0, Lio/reactivex/internal/operators/observable/y0;->b:Ln7/o;

    iget-boolean v3, p0, Lio/reactivex/internal/operators/observable/y0;->c:Z

    invoke-direct {v0, v1, v2, v3}, Lio/reactivex/internal/operators/observable/x0;-><init>(Lio/reactivex/e0;Ln7/o;Z)V

    invoke-static {v0}, Lio/reactivex/plugins/a;->R(Lio/reactivex/z;)Lio/reactivex/z;

    move-result-object v0

    return-object v0
.end method
