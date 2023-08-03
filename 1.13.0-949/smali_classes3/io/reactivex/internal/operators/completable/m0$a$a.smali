.class final Lio/reactivex/internal/operators/completable/m0$a$a;
.super Ljava/lang/Object;
.source "CompletableTimeout.java"

# interfaces
.implements Lio/reactivex/d;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/reactivex/internal/operators/completable/m0$a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lio/reactivex/internal/operators/completable/m0$a;


# direct methods
.method constructor <init>(Lio/reactivex/internal/operators/completable/m0$a;)V
    .locals 0

    iput-object p1, p0, Lio/reactivex/internal/operators/completable/m0$a$a;->a:Lio/reactivex/internal/operators/completable/m0$a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onComplete()V
    .locals 1

    .line 1
    iget-object v0, p0, Lio/reactivex/internal/operators/completable/m0$a$a;->a:Lio/reactivex/internal/operators/completable/m0$a;

    iget-object v0, v0, Lio/reactivex/internal/operators/completable/m0$a;->b:Lio/reactivex/disposables/b;

    invoke-virtual {v0}, Lio/reactivex/disposables/b;->dispose()V

    .line 2
    iget-object v0, p0, Lio/reactivex/internal/operators/completable/m0$a$a;->a:Lio/reactivex/internal/operators/completable/m0$a;

    iget-object v0, v0, Lio/reactivex/internal/operators/completable/m0$a;->c:Lio/reactivex/d;

    invoke-interface {v0}, Lio/reactivex/d;->onComplete()V

    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lio/reactivex/internal/operators/completable/m0$a$a;->a:Lio/reactivex/internal/operators/completable/m0$a;

    iget-object v0, v0, Lio/reactivex/internal/operators/completable/m0$a;->b:Lio/reactivex/disposables/b;

    invoke-virtual {v0}, Lio/reactivex/disposables/b;->dispose()V

    .line 2
    iget-object v0, p0, Lio/reactivex/internal/operators/completable/m0$a$a;->a:Lio/reactivex/internal/operators/completable/m0$a;

    iget-object v0, v0, Lio/reactivex/internal/operators/completable/m0$a;->c:Lio/reactivex/d;

    invoke-interface {v0, p1}, Lio/reactivex/d;->onError(Ljava/lang/Throwable;)V

    return-void
.end method

.method public onSubscribe(Lio/reactivex/disposables/c;)V
    .locals 1

    iget-object v0, p0, Lio/reactivex/internal/operators/completable/m0$a$a;->a:Lio/reactivex/internal/operators/completable/m0$a;

    iget-object v0, v0, Lio/reactivex/internal/operators/completable/m0$a;->b:Lio/reactivex/disposables/b;

    invoke-virtual {v0, p1}, Lio/reactivex/disposables/b;->b(Lio/reactivex/disposables/c;)Z

    return-void
.end method
