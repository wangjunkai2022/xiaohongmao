.class public final Lio/reactivex/rxjava3/internal/operators/maybe/x;
.super Lio/reactivex/rxjava3/core/v;
.source "MaybeError.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lio/reactivex/rxjava3/core/v<",
        "TT;>;"
    }
.end annotation


# instance fields
.field final a:Ljava/lang/Throwable;


# direct methods
.method public constructor <init>(Ljava/lang/Throwable;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "error"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lio/reactivex/rxjava3/core/v;-><init>()V

    .line 2
    iput-object p1, p0, Lio/reactivex/rxjava3/internal/operators/maybe/x;->a:Ljava/lang/Throwable;

    return-void
.end method


# virtual methods
.method protected U1(Lio/reactivex/rxjava3/core/y;)V
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
            "Lio/reactivex/rxjava3/core/y<",
            "-TT;>;)V"
        }
    .end annotation

    .line 1
    invoke-static {}, Lio/reactivex/rxjava3/disposables/e;->a()Lio/reactivex/rxjava3/disposables/f;

    move-result-object v0

    invoke-interface {p1, v0}, Lio/reactivex/rxjava3/core/y;->onSubscribe(Lio/reactivex/rxjava3/disposables/f;)V

    .line 2
    iget-object v0, p0, Lio/reactivex/rxjava3/internal/operators/maybe/x;->a:Ljava/lang/Throwable;

    invoke-interface {p1, v0}, Lio/reactivex/rxjava3/core/y;->onError(Ljava/lang/Throwable;)V

    return-void
.end method
