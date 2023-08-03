.class final Lio/reactivex/internal/operators/completable/d$a$a;
.super Ljava/util/concurrent/atomic/AtomicReference;
.source "CompletableConcat.java"

# interfaces
.implements Lio/reactivex/d;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/reactivex/internal/operators/completable/d$a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/concurrent/atomic/AtomicReference<",
        "Lio/reactivex/disposables/c;",
        ">;",
        "Lio/reactivex/d;"
    }
.end annotation


# static fields
.field private static final b:J = -0x4bb35305c09b480fL


# instance fields
.field final a:Lio/reactivex/internal/operators/completable/d$a;


# direct methods
.method constructor <init>(Lio/reactivex/internal/operators/completable/d$a;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    .line 2
    iput-object p1, p0, Lio/reactivex/internal/operators/completable/d$a$a;->a:Lio/reactivex/internal/operators/completable/d$a;

    return-void
.end method


# virtual methods
.method public onComplete()V
    .locals 1

    iget-object v0, p0, Lio/reactivex/internal/operators/completable/d$a$a;->a:Lio/reactivex/internal/operators/completable/d$a;

    invoke-virtual {v0}, Lio/reactivex/internal/operators/completable/d$a;->b()V

    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 1

    iget-object v0, p0, Lio/reactivex/internal/operators/completable/d$a$a;->a:Lio/reactivex/internal/operators/completable/d$a;

    invoke-virtual {v0, p1}, Lio/reactivex/internal/operators/completable/d$a;->c(Ljava/lang/Throwable;)V

    return-void
.end method

.method public onSubscribe(Lio/reactivex/disposables/c;)V
    .locals 0

    invoke-static {p0, p1}, Lio/reactivex/internal/disposables/DisposableHelper;->replace(Ljava/util/concurrent/atomic/AtomicReference;Lio/reactivex/disposables/c;)Z

    return-void
.end method
