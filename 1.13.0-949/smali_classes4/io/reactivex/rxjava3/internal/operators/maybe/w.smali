.class public final Lio/reactivex/rxjava3/internal/operators/maybe/w;
.super Lio/reactivex/rxjava3/core/p0;
.source "MaybeEqualSingle.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/reactivex/rxjava3/internal/operators/maybe/w$b;,
        Lio/reactivex/rxjava3/internal/operators/maybe/w$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lio/reactivex/rxjava3/core/p0<",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field final a:Lio/reactivex/rxjava3/core/b0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/rxjava3/core/b0<",
            "+TT;>;"
        }
    .end annotation
.end field

.field final b:Lio/reactivex/rxjava3/core/b0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/rxjava3/core/b0<",
            "+TT;>;"
        }
    .end annotation
.end field

.field final c:Lq7/d;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lq7/d<",
            "-TT;-TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lio/reactivex/rxjava3/core/b0;Lio/reactivex/rxjava3/core/b0;Lq7/d;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "source1",
            "source2",
            "isEqual"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/rxjava3/core/b0<",
            "+TT;>;",
            "Lio/reactivex/rxjava3/core/b0<",
            "+TT;>;",
            "Lq7/d<",
            "-TT;-TT;>;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lio/reactivex/rxjava3/core/p0;-><init>()V

    .line 2
    iput-object p1, p0, Lio/reactivex/rxjava3/internal/operators/maybe/w;->a:Lio/reactivex/rxjava3/core/b0;

    .line 3
    iput-object p2, p0, Lio/reactivex/rxjava3/internal/operators/maybe/w;->b:Lio/reactivex/rxjava3/core/b0;

    .line 4
    iput-object p3, p0, Lio/reactivex/rxjava3/internal/operators/maybe/w;->c:Lq7/d;

    return-void
.end method


# virtual methods
.method protected M1(Lio/reactivex/rxjava3/core/s0;)V
    .locals 2
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
            "Lio/reactivex/rxjava3/core/s0<",
            "-",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    .line 1
    new-instance v0, Lio/reactivex/rxjava3/internal/operators/maybe/w$a;

    iget-object v1, p0, Lio/reactivex/rxjava3/internal/operators/maybe/w;->c:Lq7/d;

    invoke-direct {v0, p1, v1}, Lio/reactivex/rxjava3/internal/operators/maybe/w$a;-><init>(Lio/reactivex/rxjava3/core/s0;Lq7/d;)V

    .line 2
    invoke-interface {p1, v0}, Lio/reactivex/rxjava3/core/s0;->onSubscribe(Lio/reactivex/rxjava3/disposables/f;)V

    .line 3
    iget-object p1, p0, Lio/reactivex/rxjava3/internal/operators/maybe/w;->a:Lio/reactivex/rxjava3/core/b0;

    iget-object v1, p0, Lio/reactivex/rxjava3/internal/operators/maybe/w;->b:Lio/reactivex/rxjava3/core/b0;

    invoke-virtual {v0, p1, v1}, Lio/reactivex/rxjava3/internal/operators/maybe/w$a;->c(Lio/reactivex/rxjava3/core/b0;Lio/reactivex/rxjava3/core/b0;)V

    return-void
.end method
