.class final Lio/reactivex/rxjava3/internal/schedulers/d$c$c;
.super Ljava/lang/Object;
.source "ExecutorScheduler.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/reactivex/rxjava3/internal/schedulers/d$c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "c"
.end annotation


# instance fields
.field private final a:Lio/reactivex/rxjava3/internal/disposables/SequentialDisposable;

.field private final b:Ljava/lang/Runnable;

.field final synthetic c:Lio/reactivex/rxjava3/internal/schedulers/d$c;


# direct methods
.method constructor <init>(Lio/reactivex/rxjava3/internal/schedulers/d$c;Lio/reactivex/rxjava3/internal/disposables/SequentialDisposable;Ljava/lang/Runnable;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x0,
            0x0
        }
        names = {
            "this$0",
            "mar",
            "decoratedRun"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lio/reactivex/rxjava3/internal/schedulers/d$c$c;->c:Lio/reactivex/rxjava3/internal/schedulers/d$c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p2, p0, Lio/reactivex/rxjava3/internal/schedulers/d$c$c;->a:Lio/reactivex/rxjava3/internal/disposables/SequentialDisposable;

    .line 3
    iput-object p3, p0, Lio/reactivex/rxjava3/internal/schedulers/d$c$c;->b:Ljava/lang/Runnable;

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lio/reactivex/rxjava3/internal/schedulers/d$c$c;->a:Lio/reactivex/rxjava3/internal/disposables/SequentialDisposable;

    iget-object v1, p0, Lio/reactivex/rxjava3/internal/schedulers/d$c$c;->c:Lio/reactivex/rxjava3/internal/schedulers/d$c;

    iget-object v2, p0, Lio/reactivex/rxjava3/internal/schedulers/d$c$c;->b:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Lio/reactivex/rxjava3/internal/schedulers/d$c;->b(Ljava/lang/Runnable;)Lio/reactivex/rxjava3/disposables/f;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/internal/disposables/SequentialDisposable;->replace(Lio/reactivex/rxjava3/disposables/f;)Z

    return-void
.end method
