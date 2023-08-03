.class public abstract Lio/reactivex/rxjava3/observers/b;
.super Ljava/lang/Object;
.source "DefaultObserver.java"

# interfaces
.implements Lio/reactivex/rxjava3/core/n0;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lio/reactivex/rxjava3/core/n0<",
        "TT;>;"
    }
.end annotation


# instance fields
.field private a:Lio/reactivex/rxjava3/disposables/f;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method protected final a()V
    .locals 2

    .line 1
    iget-object v0, p0, Lio/reactivex/rxjava3/observers/b;->a:Lio/reactivex/rxjava3/disposables/f;

    .line 2
    sget-object v1, Lio/reactivex/rxjava3/internal/disposables/DisposableHelper;->DISPOSED:Lio/reactivex/rxjava3/internal/disposables/DisposableHelper;

    iput-object v1, p0, Lio/reactivex/rxjava3/observers/b;->a:Lio/reactivex/rxjava3/disposables/f;

    .line 3
    invoke-interface {v0}, Lio/reactivex/rxjava3/disposables/f;->dispose()V

    return-void
.end method

.method protected b()V
    .locals 0

    return-void
.end method

.method public final onSubscribe(Lio/reactivex/rxjava3/disposables/f;)V
    .locals 2
    .param p1    # Lio/reactivex/rxjava3/disposables/f;
        .annotation build Lp7/e;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "d"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lio/reactivex/rxjava3/observers/b;->a:Lio/reactivex/rxjava3/disposables/f;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-static {v0, p1, v1}, Lio/reactivex/rxjava3/internal/util/f;->e(Lio/reactivex/rxjava3/disposables/f;Lio/reactivex/rxjava3/disposables/f;Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iput-object p1, p0, Lio/reactivex/rxjava3/observers/b;->a:Lio/reactivex/rxjava3/disposables/f;

    .line 3
    invoke-virtual {p0}, Lio/reactivex/rxjava3/observers/b;->b()V

    :cond_0
    return-void
.end method
