.class public final Lio/reactivex/internal/operators/maybe/u;
.super Lio/reactivex/i0;
.source "MaybeEqualSingle.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/reactivex/internal/operators/maybe/u$b;,
        Lio/reactivex/internal/operators/maybe/u$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lio/reactivex/i0<",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field final a:Lio/reactivex/w;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/w<",
            "+TT;>;"
        }
    .end annotation
.end field

.field final b:Lio/reactivex/w;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/w<",
            "+TT;>;"
        }
    .end annotation
.end field

.field final c:Ln7/d;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ln7/d<",
            "-TT;-TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lio/reactivex/w;Lio/reactivex/w;Ln7/d;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/w<",
            "+TT;>;",
            "Lio/reactivex/w<",
            "+TT;>;",
            "Ln7/d<",
            "-TT;-TT;>;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lio/reactivex/i0;-><init>()V

    .line 2
    iput-object p1, p0, Lio/reactivex/internal/operators/maybe/u;->a:Lio/reactivex/w;

    .line 3
    iput-object p2, p0, Lio/reactivex/internal/operators/maybe/u;->b:Lio/reactivex/w;

    .line 4
    iput-object p3, p0, Lio/reactivex/internal/operators/maybe/u;->c:Ln7/d;

    return-void
.end method


# virtual methods
.method protected b1(Lio/reactivex/l0;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/l0<",
            "-",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    .line 1
    new-instance v0, Lio/reactivex/internal/operators/maybe/u$a;

    iget-object v1, p0, Lio/reactivex/internal/operators/maybe/u;->c:Ln7/d;

    invoke-direct {v0, p1, v1}, Lio/reactivex/internal/operators/maybe/u$a;-><init>(Lio/reactivex/l0;Ln7/d;)V

    .line 2
    invoke-interface {p1, v0}, Lio/reactivex/l0;->onSubscribe(Lio/reactivex/disposables/c;)V

    .line 3
    iget-object p1, p0, Lio/reactivex/internal/operators/maybe/u;->a:Lio/reactivex/w;

    iget-object v1, p0, Lio/reactivex/internal/operators/maybe/u;->b:Lio/reactivex/w;

    invoke-virtual {v0, p1, v1}, Lio/reactivex/internal/operators/maybe/u$a;->c(Lio/reactivex/w;Lio/reactivex/w;)V

    return-void
.end method
