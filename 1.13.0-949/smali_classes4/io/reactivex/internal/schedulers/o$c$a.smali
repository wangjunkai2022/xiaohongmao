.class final Lio/reactivex/internal/schedulers/o$c$a;
.super Ljava/lang/Object;
.source "TrampolineScheduler.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/reactivex/internal/schedulers/o$c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "a"
.end annotation


# instance fields
.field final a:Lio/reactivex/internal/schedulers/o$b;

.field final synthetic b:Lio/reactivex/internal/schedulers/o$c;


# direct methods
.method constructor <init>(Lio/reactivex/internal/schedulers/o$c;Lio/reactivex/internal/schedulers/o$b;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lio/reactivex/internal/schedulers/o$c$a;->b:Lio/reactivex/internal/schedulers/o$c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p2, p0, Lio/reactivex/internal/schedulers/o$c$a;->a:Lio/reactivex/internal/schedulers/o$b;

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1
    iget-object v0, p0, Lio/reactivex/internal/schedulers/o$c$a;->a:Lio/reactivex/internal/schedulers/o$b;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lio/reactivex/internal/schedulers/o$b;->d:Z

    .line 2
    iget-object v0, p0, Lio/reactivex/internal/schedulers/o$c$a;->b:Lio/reactivex/internal/schedulers/o$c;

    iget-object v0, v0, Lio/reactivex/internal/schedulers/o$c;->a:Ljava/util/concurrent/PriorityBlockingQueue;

    iget-object v1, p0, Lio/reactivex/internal/schedulers/o$c$a;->a:Lio/reactivex/internal/schedulers/o$b;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/PriorityBlockingQueue;->remove(Ljava/lang/Object;)Z

    return-void
.end method
