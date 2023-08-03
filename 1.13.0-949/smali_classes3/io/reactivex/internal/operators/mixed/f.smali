.class public final Lio/reactivex/internal/operators/mixed/f;
.super Lio/reactivex/a;
.source "FlowableSwitchMapCompletable.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/reactivex/internal/operators/mixed/f$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lio/reactivex/a;"
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

.field final c:Z


# direct methods
.method public constructor <init>(Lio/reactivex/j;Ln7/o;Z)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/j<",
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
    iput-object p1, p0, Lio/reactivex/internal/operators/mixed/f;->a:Lio/reactivex/j;

    .line 3
    iput-object p2, p0, Lio/reactivex/internal/operators/mixed/f;->b:Ln7/o;

    .line 4
    iput-boolean p3, p0, Lio/reactivex/internal/operators/mixed/f;->c:Z

    return-void
.end method


# virtual methods
.method protected I0(Lio/reactivex/d;)V
    .locals 4

    iget-object v0, p0, Lio/reactivex/internal/operators/mixed/f;->a:Lio/reactivex/j;

    new-instance v1, Lio/reactivex/internal/operators/mixed/f$a;

    iget-object v2, p0, Lio/reactivex/internal/operators/mixed/f;->b:Ln7/o;

    iget-boolean v3, p0, Lio/reactivex/internal/operators/mixed/f;->c:Z

    invoke-direct {v1, p1, v2, v3}, Lio/reactivex/internal/operators/mixed/f$a;-><init>(Lio/reactivex/d;Ln7/o;Z)V

    invoke-virtual {v0, v1}, Lio/reactivex/j;->j6(Lio/reactivex/o;)V

    return-void
.end method
