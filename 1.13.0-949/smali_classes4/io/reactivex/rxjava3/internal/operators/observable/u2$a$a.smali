.class final Lio/reactivex/rxjava3/internal/operators/observable/u2$a$a;
.super Ljava/util/concurrent/atomic/AtomicReference;
.source "ObservableRepeatWhen.java"

# interfaces
.implements Lio/reactivex/rxjava3/core/n0;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/reactivex/rxjava3/internal/operators/observable/u2$a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/concurrent/atomic/AtomicReference<",
        "Lio/reactivex/rxjava3/disposables/f;",
        ">;",
        "Lio/reactivex/rxjava3/core/n0<",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# static fields
.field private static final b:J = 0x2d2b4e5564d98c4aL


# instance fields
.field final synthetic a:Lio/reactivex/rxjava3/internal/operators/observable/u2$a;


# direct methods
.method constructor <init>(Lio/reactivex/rxjava3/internal/operators/observable/u2$a;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$0"
        }
    .end annotation

    iput-object p1, p0, Lio/reactivex/rxjava3/internal/operators/observable/u2$a$a;->a:Lio/reactivex/rxjava3/internal/operators/observable/u2$a;

    invoke-direct {p0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    return-void
.end method


# virtual methods
.method public onComplete()V
    .locals 1

    iget-object v0, p0, Lio/reactivex/rxjava3/internal/operators/observable/u2$a$a;->a:Lio/reactivex/rxjava3/internal/operators/observable/u2$a;

    invoke-virtual {v0}, Lio/reactivex/rxjava3/internal/operators/observable/u2$a;->a()V

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

    iget-object v0, p0, Lio/reactivex/rxjava3/internal/operators/observable/u2$a$a;->a:Lio/reactivex/rxjava3/internal/operators/observable/u2$a;

    invoke-virtual {v0, p1}, Lio/reactivex/rxjava3/internal/operators/observable/u2$a;->b(Ljava/lang/Throwable;)V

    return-void
.end method

.method public onNext(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "t"
        }
    .end annotation

    iget-object p1, p0, Lio/reactivex/rxjava3/internal/operators/observable/u2$a$a;->a:Lio/reactivex/rxjava3/internal/operators/observable/u2$a;

    invoke-virtual {p1}, Lio/reactivex/rxjava3/internal/operators/observable/u2$a;->c()V

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

    invoke-static {p0, p1}, Lio/reactivex/rxjava3/internal/disposables/DisposableHelper;->setOnce(Ljava/util/concurrent/atomic/AtomicReference;Lio/reactivex/rxjava3/disposables/f;)Z

    return-void
.end method
