.class public final Lio/reactivex/internal/operators/maybe/a1;
.super Lio/reactivex/internal/operators/maybe/a;
.source "MaybeOnErrorNext.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/reactivex/internal/operators/maybe/a1$a;
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
.field final b:Ln7/o;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ln7/o<",
            "-",
            "Ljava/lang/Throwable;",
            "+",
            "Lio/reactivex/w<",
            "+TT;>;>;"
        }
    .end annotation
.end field

.field final c:Z


# direct methods
.method public constructor <init>(Lio/reactivex/w;Ln7/o;Z)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/w<",
            "TT;>;",
            "Ln7/o<",
            "-",
            "Ljava/lang/Throwable;",
            "+",
            "Lio/reactivex/w<",
            "+TT;>;>;Z)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1}, Lio/reactivex/internal/operators/maybe/a;-><init>(Lio/reactivex/w;)V

    .line 2
    iput-object p2, p0, Lio/reactivex/internal/operators/maybe/a1;->b:Ln7/o;

    .line 3
    iput-boolean p3, p0, Lio/reactivex/internal/operators/maybe/a1;->c:Z

    return-void
.end method


# virtual methods
.method protected q1(Lio/reactivex/t;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/t<",
            "-TT;>;)V"
        }
    .end annotation

    iget-object v0, p0, Lio/reactivex/internal/operators/maybe/a;->a:Lio/reactivex/w;

    new-instance v1, Lio/reactivex/internal/operators/maybe/a1$a;

    iget-object v2, p0, Lio/reactivex/internal/operators/maybe/a1;->b:Ln7/o;

    iget-boolean v3, p0, Lio/reactivex/internal/operators/maybe/a1;->c:Z

    invoke-direct {v1, p1, v2, v3}, Lio/reactivex/internal/operators/maybe/a1$a;-><init>(Lio/reactivex/t;Ln7/o;Z)V

    invoke-interface {v0, v1}, Lio/reactivex/w;->b(Lio/reactivex/t;)V

    return-void
.end method
