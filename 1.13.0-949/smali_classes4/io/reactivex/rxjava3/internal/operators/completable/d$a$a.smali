.class final Lio/reactivex/rxjava3/internal/operators/completable/d$a$a;
.super Ljava/util/concurrent/atomic/AtomicReference;
.source "CompletableConcat.java"

# interfaces
.implements Lio/reactivex/rxjava3/core/d;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/reactivex/rxjava3/internal/operators/completable/d$a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/concurrent/atomic/AtomicReference<",
        "Lio/reactivex/rxjava3/disposables/f;",
        ">;",
        "Lio/reactivex/rxjava3/core/d;"
    }
.end annotation


# static fields
.field private static final b:J = -0x4bb35305c09b480fL


# instance fields
.field final a:Lio/reactivex/rxjava3/internal/operators/completable/d$a;


# direct methods
.method constructor <init>(Lio/reactivex/rxjava3/internal/operators/completable/d$a;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "parent"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    .line 2
    iput-object p1, p0, Lio/reactivex/rxjava3/internal/operators/completable/d$a$a;->a:Lio/reactivex/rxjava3/internal/operators/completable/d$a;

    return-void
.end method


# virtual methods
.method public onComplete()V
    .locals 1

    iget-object v0, p0, Lio/reactivex/rxjava3/internal/operators/completable/d$a$a;->a:Lio/reactivex/rxjava3/internal/operators/completable/d$a;

    invoke-virtual {v0}, Lio/reactivex/rxjava3/internal/operators/completable/d$a;->b()V

    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "e"
        }
    .end annotation

    iget-object v0, p0, Lio/reactivex/rxjava3/internal/operators/completable/d$a$a;->a:Lio/reactivex/rxjava3/internal/operators/completable/d$a;

    invoke-virtual {v0, p1}, Lio/reactivex/rxjava3/internal/operators/completable/d$a;->c(Ljava/lang/Throwable;)V

    return-void
.end method

.method public onSubscribe(Lio/reactivex/rxjava3/disposables/f;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "d"
        }
    .end annotation

    invoke-static {p0, p1}, Lio/reactivex/rxjava3/internal/disposables/DisposableHelper;->replace(Ljava/util/concurrent/atomic/AtomicReference;Lio/reactivex/rxjava3/disposables/f;)Z

    return-void
.end method
