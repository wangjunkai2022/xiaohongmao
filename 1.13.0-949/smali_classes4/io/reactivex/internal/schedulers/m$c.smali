.class Lio/reactivex/internal/schedulers/m$c;
.super Lio/reactivex/internal/schedulers/m$f;
.source "SchedulerWhen.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/reactivex/internal/schedulers/m;
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

    .line 1
    invoke-direct {p0}, Lio/reactivex/internal/schedulers/m$f;-><init>()V

    .line 2
    iput-object p1, p0, Lio/reactivex/internal/schedulers/m$c;->a:Ljava/lang/Runnable;

    return-void
.end method


# virtual methods
.method protected b(Lio/reactivex/h0$c;Lio/reactivex/d;)Lio/reactivex/disposables/c;
    .locals 2

    new-instance v0, Lio/reactivex/internal/schedulers/m$d;

    iget-object v1, p0, Lio/reactivex/internal/schedulers/m$c;->a:Ljava/lang/Runnable;

    invoke-direct {v0, v1, p2}, Lio/reactivex/internal/schedulers/m$d;-><init>(Ljava/lang/Runnable;Lio/reactivex/d;)V

    invoke-virtual {p1, v0}, Lio/reactivex/h0$c;->b(Ljava/lang/Runnable;)Lio/reactivex/disposables/c;

    move-result-object p1

    return-object p1
.end method
