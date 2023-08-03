.class public final Lio/reactivex/rxjava3/internal/operators/single/d;
.super Lio/reactivex/rxjava3/core/p0;
.source "SingleCreate.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/reactivex/rxjava3/internal/operators/single/d$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lio/reactivex/rxjava3/core/p0<",
        "TT;>;"
    }
.end annotation


# instance fields
.field final a:Lio/reactivex/rxjava3/core/t0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/rxjava3/core/t0<",
            "TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lio/reactivex/rxjava3/core/t0;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "source"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/rxjava3/core/t0<",
            "TT;>;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lio/reactivex/rxjava3/core/p0;-><init>()V

    .line 2
    iput-object p1, p0, Lio/reactivex/rxjava3/internal/operators/single/d;->a:Lio/reactivex/rxjava3/core/t0;

    return-void
.end method


# virtual methods
.method protected M1(Lio/reactivex/rxjava3/core/s0;)V
    .locals 1
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
            "-TT;>;)V"
        }
    .end annotation

    .line 1
    new-instance v0, Lio/reactivex/rxjava3/internal/operators/single/d$a;

    invoke-direct {v0, p1}, Lio/reactivex/rxjava3/internal/operators/single/d$a;-><init>(Lio/reactivex/rxjava3/core/s0;)V

    .line 2
    invoke-interface {p1, v0}, Lio/reactivex/rxjava3/core/s0;->onSubscribe(Lio/reactivex/rxjava3/disposables/f;)V

    .line 3
    :try_start_0
    iget-object p1, p0, Lio/reactivex/rxjava3/internal/operators/single/d;->a:Lio/reactivex/rxjava3/core/t0;

    invoke-interface {p1, v0}, Lio/reactivex/rxjava3/core/t0;->a(Lio/reactivex/rxjava3/core/r0;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    .line 4
    invoke-static {p1}, Lio/reactivex/rxjava3/exceptions/a;->b(Ljava/lang/Throwable;)V

    .line 5
    invoke-virtual {v0, p1}, Lio/reactivex/rxjava3/internal/operators/single/d$a;->onError(Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method
