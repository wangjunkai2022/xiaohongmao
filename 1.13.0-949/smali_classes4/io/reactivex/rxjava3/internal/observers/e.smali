.class public final Lio/reactivex/rxjava3/internal/observers/e;
.super Lio/reactivex/rxjava3/internal/observers/c;
.source "BlockingFirstObserver.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lio/reactivex/rxjava3/internal/observers/c<",
        "TT;>;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lio/reactivex/rxjava3/internal/observers/c;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(Ljava/lang/Throwable;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "t"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lio/reactivex/rxjava3/internal/observers/c;->a:Ljava/lang/Object;

    if-nez v0, :cond_0

    .line 2
    iput-object p1, p0, Lio/reactivex/rxjava3/internal/observers/c;->b:Ljava/lang/Throwable;

    .line 3
    :cond_0
    invoke-virtual {p0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    return-void
.end method

.method public onNext(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "t"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lio/reactivex/rxjava3/internal/observers/c;->a:Ljava/lang/Object;

    if-nez v0, :cond_0

    .line 2
    iput-object p1, p0, Lio/reactivex/rxjava3/internal/observers/c;->a:Ljava/lang/Object;

    .line 3
    iget-object p1, p0, Lio/reactivex/rxjava3/internal/observers/c;->c:Lio/reactivex/rxjava3/disposables/f;

    invoke-interface {p1}, Lio/reactivex/rxjava3/disposables/f;->dispose()V

    .line 4
    invoke-virtual {p0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    :cond_0
    return-void
.end method
