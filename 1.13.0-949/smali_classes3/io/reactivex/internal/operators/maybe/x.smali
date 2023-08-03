.class public final Lio/reactivex/internal/operators/maybe/x;
.super Lio/reactivex/internal/operators/maybe/a;
.source "MaybeFilter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/reactivex/internal/operators/maybe/x$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lio/reactivex/internal/operators/maybe/a<",
        "TT;TT;>;"
    }
.end annotation


# instance fields
.field final b:Ln7/r;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ln7/r<",
            "-TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lio/reactivex/w;Ln7/r;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/w<",
            "TT;>;",
            "Ln7/r<",
            "-TT;>;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1}, Lio/reactivex/internal/operators/maybe/a;-><init>(Lio/reactivex/w;)V

    .line 2
    iput-object p2, p0, Lio/reactivex/internal/operators/maybe/x;->b:Ln7/r;

    return-void
.end method


# virtual methods
.method protected q1(Lio/reactivex/t;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/t<",
            "-TT;>;)V"
        }
    .end annotation

    iget-object v0, p0, Lio/reactivex/internal/operators/maybe/a;->a:Lio/reactivex/w;

    new-instance v1, Lio/reactivex/internal/operators/maybe/x$a;

    iget-object v2, p0, Lio/reactivex/internal/operators/maybe/x;->b:Ln7/r;

    invoke-direct {v1, p1, v2}, Lio/reactivex/internal/operators/maybe/x$a;-><init>(Lio/reactivex/t;Ln7/r;)V

    invoke-interface {v0, v1}, Lio/reactivex/w;->b(Lio/reactivex/t;)V

    return-void
.end method
