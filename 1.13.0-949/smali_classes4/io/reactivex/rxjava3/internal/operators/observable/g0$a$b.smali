.class final Lio/reactivex/rxjava3/internal/operators/observable/g0$a$b;
.super Ljava/lang/Object;
.source "ObservableDelay.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/reactivex/rxjava3/internal/operators/observable/g0$a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "b"
.end annotation


# instance fields
.field private final a:Ljava/lang/Throwable;

.field final synthetic b:Lio/reactivex/rxjava3/internal/operators/observable/g0$a;


# direct methods
.method constructor <init>(Lio/reactivex/rxjava3/internal/operators/observable/g0$a;Ljava/lang/Throwable;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x0
        }
        names = {
            "this$0",
            "throwable"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lio/reactivex/rxjava3/internal/operators/observable/g0$a$b;->b:Lio/reactivex/rxjava3/internal/operators/observable/g0$a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p2, p0, Lio/reactivex/rxjava3/internal/operators/observable/g0$a$b;->a:Ljava/lang/Throwable;

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1
    :try_start_0
    iget-object v0, p0, Lio/reactivex/rxjava3/internal/operators/observable/g0$a$b;->b:Lio/reactivex/rxjava3/internal/operators/observable/g0$a;

    iget-object v0, v0, Lio/reactivex/rxjava3/internal/operators/observable/g0$a;->a:Lio/reactivex/rxjava3/core/n0;

    iget-object v1, p0, Lio/reactivex/rxjava3/internal/operators/observable/g0$a$b;->a:Ljava/lang/Throwable;

    invoke-interface {v0, v1}, Lio/reactivex/rxjava3/core/n0;->onError(Ljava/lang/Throwable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2
    iget-object v0, p0, Lio/reactivex/rxjava3/internal/operators/observable/g0$a$b;->b:Lio/reactivex/rxjava3/internal/operators/observable/g0$a;

    iget-object v0, v0, Lio/reactivex/rxjava3/internal/operators/observable/g0$a;->d:Lio/reactivex/rxjava3/core/o0$c;

    invoke-interface {v0}, Lio/reactivex/rxjava3/disposables/f;->dispose()V

    return-void

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lio/reactivex/rxjava3/internal/operators/observable/g0$a$b;->b:Lio/reactivex/rxjava3/internal/operators/observable/g0$a;

    iget-object v1, v1, Lio/reactivex/rxjava3/internal/operators/observable/g0$a;->d:Lio/reactivex/rxjava3/core/o0$c;

    invoke-interface {v1}, Lio/reactivex/rxjava3/disposables/f;->dispose()V

    .line 3
    throw v0
.end method
