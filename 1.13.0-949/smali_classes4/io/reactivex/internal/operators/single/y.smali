.class public final Lio/reactivex/internal/operators/single/y;
.super Lio/reactivex/a;
.source "SingleFlatMapCompletable.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/reactivex/internal/operators/single/y$a;
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
.field final a:Lio/reactivex/o0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/o0<",
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


# direct methods
.method public constructor <init>(Lio/reactivex/o0;Ln7/o;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/o0<",
            "TT;>;",
            "Ln7/o<",
            "-TT;+",
            "Lio/reactivex/g;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lio/reactivex/a;-><init>()V

    .line 2
    iput-object p1, p0, Lio/reactivex/internal/operators/single/y;->a:Lio/reactivex/o0;

    .line 3
    iput-object p2, p0, Lio/reactivex/internal/operators/single/y;->b:Ln7/o;

    return-void
.end method


# virtual methods
.method protected I0(Lio/reactivex/d;)V
    .locals 2

    .line 1
    new-instance v0, Lio/reactivex/internal/operators/single/y$a;

    iget-object v1, p0, Lio/reactivex/internal/operators/single/y;->b:Ln7/o;

    invoke-direct {v0, p1, v1}, Lio/reactivex/internal/operators/single/y$a;-><init>(Lio/reactivex/d;Ln7/o;)V

    .line 2
    invoke-interface {p1, v0}, Lio/reactivex/d;->onSubscribe(Lio/reactivex/disposables/c;)V

    .line 3
    iget-object p1, p0, Lio/reactivex/internal/operators/single/y;->a:Lio/reactivex/o0;

    invoke-interface {p1, v0}, Lio/reactivex/o0;->d(Lio/reactivex/l0;)V

    return-void
.end method
