.class Lio/reactivex/rxjava3/internal/schedulers/m$c;
.super Lio/reactivex/rxjava3/internal/schedulers/m$f;
.source "SchedulerWhen.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/reactivex/rxjava3/internal/schedulers/m;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "c"
.end annotation


# instance fields
.field private final a:Ljava/lang/Runnable;


# direct methods
.method constructor <init>(Ljava/lang/Runnable;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "action"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lio/reactivex/rxjava3/internal/schedulers/m$f;-><init>()V

    .line 2
    iput-object p1, p0, Lio/reactivex/rxjava3/internal/schedulers/m$c;->a:Ljava/lang/Runnable;

    return-void
.end method


# virtual methods
.method protected b(Lio/reactivex/rxjava3/core/o0$c;Lio/reactivex/rxjava3/core/d;)Lio/reactivex/rxjava3/disposables/f;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "actualWorker",
            "actionCompletable"
        }
    .end annotation

    new-instance v0, Lio/reactivex/rxjava3/internal/schedulers/m$d;

    iget-object v1, p0, Lio/reactivex/rxjava3/internal/schedulers/m$c;->a:Ljava/lang/Runnable;

    invoke-direct {v0, v1, p2}, Lio/reactivex/rxjava3/internal/schedulers/m$d;-><init>(Ljava/lang/Runnable;Lio/reactivex/rxjava3/core/d;)V

    invoke-virtual {p1, v0}, Lio/reactivex/rxjava3/core/o0$c;->b(Ljava/lang/Runnable;)Lio/reactivex/rxjava3/disposables/f;

    move-result-object p1

    return-object p1
.end method
