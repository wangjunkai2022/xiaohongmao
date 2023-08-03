.class public Lcom/google/common/eventbus/b;
.super Lcom/google/common/eventbus/e;
.source "AsyncEventBus.java"


# annotations
.annotation build Lh3/a;
.end annotation


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/util/concurrent/Executor;)V
    .locals 2

    .line 1
    invoke-static {}, Lcom/google/common/eventbus/d;->c()Lcom/google/common/eventbus/d;

    move-result-object v0

    sget-object v1, Lcom/google/common/eventbus/e$a;->a:Lcom/google/common/eventbus/e$a;

    invoke-direct {p0, p1, p2, v0, v1}, Lcom/google/common/eventbus/e;-><init>(Ljava/lang/String;Ljava/util/concurrent/Executor;Lcom/google/common/eventbus/d;Lcom/google/common/eventbus/i;)V

    return-void
.end method

.method public constructor <init>(Ljava/util/concurrent/Executor;)V
    .locals 3

    .line 3
    invoke-static {}, Lcom/google/common/eventbus/d;->c()Lcom/google/common/eventbus/d;

    move-result-object v0

    sget-object v1, Lcom/google/common/eventbus/e$a;->a:Lcom/google/common/eventbus/e$a;

    const-string v2, "default"

    invoke-direct {p0, v2, p1, v0, v1}, Lcom/google/common/eventbus/e;-><init>(Ljava/lang/String;Ljava/util/concurrent/Executor;Lcom/google/common/eventbus/d;Lcom/google/common/eventbus/i;)V

    return-void
.end method

.method public constructor <init>(Ljava/util/concurrent/Executor;Lcom/google/common/eventbus/i;)V
    .locals 2

    .line 2
    invoke-static {}, Lcom/google/common/eventbus/d;->c()Lcom/google/common/eventbus/d;

    move-result-object v0

    const-string v1, "default"

    invoke-direct {p0, v1, p1, v0, p2}, Lcom/google/common/eventbus/e;-><init>(Ljava/lang/String;Ljava/util/concurrent/Executor;Lcom/google/common/eventbus/d;Lcom/google/common/eventbus/i;)V

    return-void
.end method
