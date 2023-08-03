.class final Lio/reactivex/internal/operators/completable/a0$a$a;
.super Ljava/util/concurrent/atomic/AtomicReference;
.source "CompletableMerge.java"

# interfaces
.implements Lio/reactivex/d;
.implements Lio/reactivex/disposables/c;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/reactivex/internal/operators/completable/a0$a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/concurrent/atomic/AtomicReference<",
        "Lio/reactivex/disposables/c;",
        ">;",
        "Lio/reactivex/d;",
        "Lio/reactivex/disposables/c;"
    }
.end annotation


# static fields
.field private static final b:J = 0x37ce7cbca0ace5dL


# instance fields
.field final synthetic a:Lio/reactivex/internal/operators/completable/a0$a;


# direct methods
.method constructor <init>(Lio/reactivex/internal/operators/completable/a0$a;)V
    .locals 0

    iput-object p1, p0, Lio/reactivex/internal/operators/completable/a0$a$a;->a:Lio/reactivex/internal/operators/completable/a0$a;

    invoke-direct {p0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    return-void
.end method


# virtual methods
.method public dispose()V
    .locals 0

    invoke-static {p0}, Lio/reactivex/internal/disposables/DisposableHelper;->dispose(Ljava/util/concurrent/atomic/AtomicReference;)Z

    return-void
.end method

.method public isDisposed()Z
    .locals 1

    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/reactivex/disposables/c;

    invoke-static {v0}, Lio/reactivex/internal/disposables/DisposableHelper;->isDisposed(Lio/reactivex/disposables/c;)Z

    move-result v0

    return v0
.end method

.method public onComplete()V
    .locals 1

    iget-object v0, p0, Lio/reactivex/internal/operators/completable/a0$a$a;->a:Lio/reactivex/internal/operators/completable/a0$a;

    invoke-virtual {v0, p0}, Lio/reactivex/internal/operators/completable/a0$a;->a(Lio/reactivex/internal/operators/completable/a0$a$a;)V

    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 1

    iget-object v0, p0, Lio/reactivex/internal/operators/completable/a0$a$a;->a:Lio/reactivex/internal/operators/completable/a0$a;

    invoke-virtual {v0, p0, p1}, Lio/reactivex/internal/operators/completable/a0$a;->b(Lio/reactivex/internal/operators/completable/a0$a$a;Ljava/lang/Throwable;)V

    return-void
.end method

.method public onSubscribe(Lio/reactivex/disposables/c;)V
    .locals 0

    invoke-static {p0, p1}, Lio/reactivex/internal/disposables/DisposableHelper;->setOnce(Ljava/util/concurrent/atomic/AtomicReference;Lio/reactivex/disposables/c;)Z

    return-void
.end method
