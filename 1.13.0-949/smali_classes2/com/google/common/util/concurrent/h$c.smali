.class public abstract Lcom/google/common/util/concurrent/h$c;
.super Lcom/google/common/util/concurrent/h$d;
.source "AbstractScheduledService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/util/concurrent/h;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "c"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/common/util/concurrent/h$c$b;,
        Lcom/google/common/util/concurrent/h$c$a;
    }
.end annotation

.annotation build Lh3/a;
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/google/common/util/concurrent/h$d;-><init>(Lcom/google/common/util/concurrent/h$a;)V

    return-void
.end method


# virtual methods
.method final c(Lcom/google/common/util/concurrent/i;Ljava/util/concurrent/ScheduledExecutorService;Ljava/lang/Runnable;)Ljava/util/concurrent/Future;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/util/concurrent/i;",
            "Ljava/util/concurrent/ScheduledExecutorService;",
            "Ljava/lang/Runnable;",
            ")",
            "Ljava/util/concurrent/Future<",
            "*>;"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/google/common/util/concurrent/h$c$a;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/google/common/util/concurrent/h$c$a;-><init>(Lcom/google/common/util/concurrent/h$c;Lcom/google/common/util/concurrent/i;Ljava/util/concurrent/ScheduledExecutorService;Ljava/lang/Runnable;)V

    .line 2
    invoke-virtual {v0}, Lcom/google/common/util/concurrent/h$c$a;->O()V

    return-object v0
.end method

.method protected abstract d()Lcom/google/common/util/concurrent/h$c$b;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation
.end method
