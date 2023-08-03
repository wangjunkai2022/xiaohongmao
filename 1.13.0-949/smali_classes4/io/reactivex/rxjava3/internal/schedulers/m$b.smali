.class Lio/reactivex/rxjava3/internal/schedulers/m$b;
.super Lio/reactivex/rxjava3/internal/schedulers/m$f;
.source "SchedulerWhen.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/reactivex/rxjava3/internal/schedulers/m;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "b"
.end annotation


# instance fields
.field private final a:Ljava/lang/Runnable;

.field private final b:J

.field private final c:Ljava/util/concurrent/TimeUnit;


# direct methods
.method constructor <init>(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "action",
            "delayTime",
            "unit"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lio/reactivex/rxjava3/internal/schedulers/m$f;-><init>()V

    .line 2
    iput-object p1, p0, Lio/reactivex/rxjava3/internal/schedulers/m$b;->a:Ljava/lang/Runnable;

    .line 3
    iput-wide p2, p0, Lio/reactivex/rxjava3/internal/schedulers/m$b;->b:J

    .line 4
    iput-object p4, p0, Lio/reactivex/rxjava3/internal/schedulers/m$b;->c:Ljava/util/concurrent/TimeUnit;

    return-void
.end method


# virtual methods
.method protected b(Lio/reactivex/rxjava3/core/o0$c;Lio/reactivex/rxjava3/core/d;)Lio/reactivex/rxjava3/disposables/f;
    .locals 3
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

    iget-object v1, p0, Lio/reactivex/rxjava3/internal/schedulers/m$b;->a:Ljava/lang/Runnable;

    invoke-direct {v0, v1, p2}, Lio/reactivex/rxjava3/internal/schedulers/m$d;-><init>(Ljava/lang/Runnable;Lio/reactivex/rxjava3/core/d;)V

    iget-wide v1, p0, Lio/reactivex/rxjava3/internal/schedulers/m$b;->b:J

    iget-object p2, p0, Lio/reactivex/rxjava3/internal/schedulers/m$b;->c:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {p1, v0, v1, v2, p2}, Lio/reactivex/rxjava3/core/o0$c;->c(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Lio/reactivex/rxjava3/disposables/f;

    move-result-object p1

    return-object p1
.end method
