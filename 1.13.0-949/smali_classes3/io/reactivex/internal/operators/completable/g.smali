.class public final Lio/reactivex/internal/operators/completable/g;
.super Lio/reactivex/a;
.source "CompletableCreate.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/reactivex/internal/operators/completable/g$a;
    }
.end annotation


# instance fields
.field final a:Lio/reactivex/e;


# direct methods
.method public constructor <init>(Lio/reactivex/e;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lio/reactivex/a;-><init>()V

    .line 2
    iput-object p1, p0, Lio/reactivex/internal/operators/completable/g;->a:Lio/reactivex/e;

    return-void
.end method


# virtual methods
.method protected I0(Lio/reactivex/d;)V
    .locals 1

    .line 1
    new-instance v0, Lio/reactivex/internal/operators/completable/g$a;

    invoke-direct {v0, p1}, Lio/reactivex/internal/operators/completable/g$a;-><init>(Lio/reactivex/d;)V

    .line 2
    invoke-interface {p1, v0}, Lio/reactivex/d;->onSubscribe(Lio/reactivex/disposables/c;)V

    .line 3
    :try_start_0
    iget-object p1, p0, Lio/reactivex/internal/operators/completable/g;->a:Lio/reactivex/e;

    invoke-interface {p1, v0}, Lio/reactivex/e;->a(Lio/reactivex/c;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    .line 4
    invoke-static {p1}, Lio/reactivex/exceptions/a;->b(Ljava/lang/Throwable;)V

    .line 5
    invoke-virtual {v0, p1}, Lio/reactivex/internal/operators/completable/g$a;->onError(Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method
