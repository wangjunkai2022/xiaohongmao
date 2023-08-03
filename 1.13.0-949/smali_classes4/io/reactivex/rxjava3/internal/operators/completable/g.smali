.class public final Lio/reactivex/rxjava3/internal/operators/completable/g;
.super Lio/reactivex/rxjava3/core/a;
.source "CompletableCreate.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/reactivex/rxjava3/internal/operators/completable/g$a;
    }
.end annotation


# instance fields
.field final a:Lio/reactivex/rxjava3/core/e;


# direct methods
.method public constructor <init>(Lio/reactivex/rxjava3/core/e;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "source"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lio/reactivex/rxjava3/core/a;-><init>()V

    .line 2
    iput-object p1, p0, Lio/reactivex/rxjava3/internal/operators/completable/g;->a:Lio/reactivex/rxjava3/core/e;

    return-void
.end method


# virtual methods
.method protected Y0(Lio/reactivex/rxjava3/core/d;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "observer"
        }
    .end annotation

    .line 1
    new-instance v0, Lio/reactivex/rxjava3/internal/operators/completable/g$a;

    invoke-direct {v0, p1}, Lio/reactivex/rxjava3/internal/operators/completable/g$a;-><init>(Lio/reactivex/rxjava3/core/d;)V

    .line 2
    invoke-interface {p1, v0}, Lio/reactivex/rxjava3/core/d;->onSubscribe(Lio/reactivex/rxjava3/disposables/f;)V

    .line 3
    :try_start_0
    iget-object p1, p0, Lio/reactivex/rxjava3/internal/operators/completable/g;->a:Lio/reactivex/rxjava3/core/e;

    invoke-interface {p1, v0}, Lio/reactivex/rxjava3/core/e;->a(Lio/reactivex/rxjava3/core/c;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    .line 4
    invoke-static {p1}, Lio/reactivex/rxjava3/exceptions/a;->b(Ljava/lang/Throwable;)V

    .line 5
    invoke-virtual {v0, p1}, Lio/reactivex/rxjava3/internal/operators/completable/g$a;->onError(Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method
