.class public final Lio/reactivex/internal/operators/maybe/z;
.super Lio/reactivex/internal/operators/maybe/a;
.source "MaybeFlatMapBiSelector.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/reactivex/internal/operators/maybe/z$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "U:",
        "Ljava/lang/Object;",
        "R:",
        "Ljava/lang/Object;",
        ">",
        "Lio/reactivex/internal/operators/maybe/a<",
        "TT;TR;>;"
    }
.end annotation


# instance fields
.field final b:Ln7/o;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ln7/o<",
            "-TT;+",
            "Lio/reactivex/w<",
            "+TU;>;>;"
        }
    .end annotation
.end field

.field final c:Ln7/c;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ln7/c<",
            "-TT;-TU;+TR;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lio/reactivex/w;Ln7/o;Ln7/c;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/w<",
            "TT;>;",
            "Ln7/o<",
            "-TT;+",
            "Lio/reactivex/w<",
            "+TU;>;>;",
            "Ln7/c<",
            "-TT;-TU;+TR;>;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1}, Lio/reactivex/internal/operators/maybe/a;-><init>(Lio/reactivex/w;)V

    .line 2
    iput-object p2, p0, Lio/reactivex/internal/operators/maybe/z;->b:Ln7/o;

    .line 3
    iput-object p3, p0, Lio/reactivex/internal/operators/maybe/z;->c:Ln7/c;

    return-void
.end method


# virtual methods
.method protected q1(Lio/reactivex/t;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/t<",
            "-TR;>;)V"
        }
    .end annotation

    iget-object v0, p0, Lio/reactivex/internal/operators/maybe/a;->a:Lio/reactivex/w;

    new-instance v1, Lio/reactivex/internal/operators/maybe/z$a;

    iget-object v2, p0, Lio/reactivex/internal/operators/maybe/z;->b:Ln7/o;

    iget-object v3, p0, Lio/reactivex/internal/operators/maybe/z;->c:Ln7/c;

    invoke-direct {v1, p1, v2, v3}, Lio/reactivex/internal/operators/maybe/z$a;-><init>(Lio/reactivex/t;Ln7/o;Ln7/c;)V

    invoke-interface {v0, v1}, Lio/reactivex/w;->b(Lio/reactivex/t;)V

    return-void
.end method
