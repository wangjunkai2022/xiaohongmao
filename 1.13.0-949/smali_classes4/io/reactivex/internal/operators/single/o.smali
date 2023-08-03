.class public final Lio/reactivex/internal/operators/single/o;
.super Lio/reactivex/i0;
.source "SingleDoFinally.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/reactivex/internal/operators/single/o$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lio/reactivex/i0<",
        "TT;>;"
    }
.end annotation


# instance fields
.field final a:Lio/reactivex/o0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/o0<",
            "TT;>;"
        }
    .end annotation
.end field

.field final b:Ln7/a;


# direct methods
.method public constructor <init>(Lio/reactivex/o0;Ln7/a;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/o0<",
            "TT;>;",
            "Ln7/a;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lio/reactivex/i0;-><init>()V

    .line 2
    iput-object p1, p0, Lio/reactivex/internal/operators/single/o;->a:Lio/reactivex/o0;

    .line 3
    iput-object p2, p0, Lio/reactivex/internal/operators/single/o;->b:Ln7/a;

    return-void
.end method


# virtual methods
.method protected b1(Lio/reactivex/l0;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/l0<",
            "-TT;>;)V"
        }
    .end annotation

    iget-object v0, p0, Lio/reactivex/internal/operators/single/o;->a:Lio/reactivex/o0;

    new-instance v1, Lio/reactivex/internal/operators/single/o$a;

    iget-object v2, p0, Lio/reactivex/internal/operators/single/o;->b:Ln7/a;

    invoke-direct {v1, p1, v2}, Lio/reactivex/internal/operators/single/o$a;-><init>(Lio/reactivex/l0;Ln7/a;)V

    invoke-interface {v0, v1}, Lio/reactivex/o0;->d(Lio/reactivex/l0;)V

    return-void
.end method
