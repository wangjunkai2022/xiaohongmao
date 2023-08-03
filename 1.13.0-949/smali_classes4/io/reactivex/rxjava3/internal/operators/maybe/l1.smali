.class public final Lio/reactivex/rxjava3/internal/operators/maybe/l1;
.super Lio/reactivex/rxjava3/internal/operators/maybe/a;
.source "MaybeTimeoutMaybe.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/reactivex/rxjava3/internal/operators/maybe/l1$a;,
        Lio/reactivex/rxjava3/internal/operators/maybe/l1$c;,
        Lio/reactivex/rxjava3/internal/operators/maybe/l1$b;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "U:",
        "Ljava/lang/Object;",
        ">",
        "Lio/reactivex/rxjava3/internal/operators/maybe/a<",
        "TT;TT;>;"
    }
.end annotation


# instance fields
.field final b:Lio/reactivex/rxjava3/core/b0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/rxjava3/core/b0<",
            "TU;>;"
        }
    .end annotation
.end field

.field final c:Lio/reactivex/rxjava3/core/b0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/rxjava3/core/b0<",
            "+TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lio/reactivex/rxjava3/core/b0;Lio/reactivex/rxjava3/core/b0;Lio/reactivex/rxjava3/core/b0;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "source",
            "other",
            "fallback"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/rxjava3/core/b0<",
            "TT;>;",
            "Lio/reactivex/rxjava3/core/b0<",
            "TU;>;",
            "Lio/reactivex/rxjava3/core/b0<",
            "+TT;>;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1}, Lio/reactivex/rxjava3/internal/operators/maybe/a;-><init>(Lio/reactivex/rxjava3/core/b0;)V

    .line 2
    iput-object p2, p0, Lio/reactivex/rxjava3/internal/operators/maybe/l1;->b:Lio/reactivex/rxjava3/core/b0;

    .line 3
    iput-object p3, p0, Lio/reactivex/rxjava3/internal/operators/maybe/l1;->c:Lio/reactivex/rxjava3/core/b0;

    return-void
.end method


# virtual methods
.method protected U1(Lio/reactivex/rxjava3/core/y;)V
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
            "Lio/reactivex/rxjava3/core/y<",
            "-TT;>;)V"
        }
    .end annotation

    .line 1
    new-instance v0, Lio/reactivex/rxjava3/internal/operators/maybe/l1$b;

    iget-object v1, p0, Lio/reactivex/rxjava3/internal/operators/maybe/l1;->c:Lio/reactivex/rxjava3/core/b0;

    invoke-direct {v0, p1, v1}, Lio/reactivex/rxjava3/internal/operators/maybe/l1$b;-><init>(Lio/reactivex/rxjava3/core/y;Lio/reactivex/rxjava3/core/b0;)V

    .line 2
    invoke-interface {p1, v0}, Lio/reactivex/rxjava3/core/y;->onSubscribe(Lio/reactivex/rxjava3/disposables/f;)V

    .line 3
    iget-object p1, p0, Lio/reactivex/rxjava3/internal/operators/maybe/l1;->b:Lio/reactivex/rxjava3/core/b0;

    iget-object v1, v0, Lio/reactivex/rxjava3/internal/operators/maybe/l1$b;->b:Lio/reactivex/rxjava3/internal/operators/maybe/l1$c;

    invoke-interface {p1, v1}, Lio/reactivex/rxjava3/core/b0;->b(Lio/reactivex/rxjava3/core/y;)V

    .line 4
    iget-object p1, p0, Lio/reactivex/rxjava3/internal/operators/maybe/a;->a:Lio/reactivex/rxjava3/core/b0;

    invoke-interface {p1, v0}, Lio/reactivex/rxjava3/core/b0;->b(Lio/reactivex/rxjava3/core/y;)V

    return-void
.end method
