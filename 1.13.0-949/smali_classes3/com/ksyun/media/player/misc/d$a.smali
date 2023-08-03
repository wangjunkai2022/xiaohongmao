.class Lcom/ksyun/media/player/misc/d$a;
.super Ljava/lang/Object;
.source "KSYListSourceMgr.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ksyun/media/player/misc/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lcom/ksyun/media/player/misc/d;


# direct methods
.method public constructor <init>(Lcom/ksyun/media/player/misc/d;)V
    .locals 0

    iput-object p1, p0, Lcom/ksyun/media/player/misc/d$a;->a:Lcom/ksyun/media/player/misc/d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 9

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 1
    :goto_0
    iget-object v2, p0, Lcom/ksyun/media/player/misc/d$a;->a:Lcom/ksyun/media/player/misc/d;

    invoke-static {v2}, Lcom/ksyun/media/player/misc/d;->f(Lcom/ksyun/media/player/misc/d;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_4

    .line 2
    iget-object v2, p0, Lcom/ksyun/media/player/misc/d$a;->a:Lcom/ksyun/media/player/misc/d;

    invoke-static {v2}, Lcom/ksyun/media/player/misc/d;->g(Lcom/ksyun/media/player/misc/d;)Z

    move-result v2

    if-eqz v2, :cond_0

    goto/16 :goto_2

    .line 3
    :cond_0
    iget-object v2, p0, Lcom/ksyun/media/player/misc/d$a;->a:Lcom/ksyun/media/player/misc/d;

    invoke-static {v2}, Lcom/ksyun/media/player/misc/d;->f(Lcom/ksyun/media/player/misc/d;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 4
    new-instance v3, Lcom/ksyun/media/player/misc/KSYProbeMediaInfo;

    invoke-direct {v3}, Lcom/ksyun/media/player/misc/KSYProbeMediaInfo;-><init>()V

    .line 5
    iget-object v4, p0, Lcom/ksyun/media/player/misc/d$a;->a:Lcom/ksyun/media/player/misc/d;

    invoke-static {v4}, Lcom/ksyun/media/player/misc/d;->h(Lcom/ksyun/media/player/misc/d;)I

    move-result v4

    iget-object v5, p0, Lcom/ksyun/media/player/misc/d$a;->a:Lcom/ksyun/media/player/misc/d;

    invoke-static {v5}, Lcom/ksyun/media/player/misc/d;->i(Lcom/ksyun/media/player/misc/d;)Ljava/util/Map;

    move-result-object v5

    const/4 v6, 0x1

    invoke-virtual {v3, v2, v4, v5, v6}, Lcom/ksyun/media/player/misc/KSYProbeMediaInfo;->probeMediaInfo(Ljava/lang/String;ILjava/util/Map;Z)V

    .line 6
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    iget-object v2, p0, Lcom/ksyun/media/player/misc/d$a;->a:Lcom/ksyun/media/player/misc/d;

    invoke-static {v2}, Lcom/ksyun/media/player/misc/d;->j(Lcom/ksyun/media/player/misc/d;)J

    move-result-wide v7

    sub-long/2addr v4, v7

    iget-object v2, p0, Lcom/ksyun/media/player/misc/d$a;->a:Lcom/ksyun/media/player/misc/d;

    invoke-static {v2}, Lcom/ksyun/media/player/misc/d;->k(Lcom/ksyun/media/player/misc/d;)I

    move-result v2

    int-to-long v7, v2

    cmp-long v2, v4, v7

    if-ltz v2, :cond_1

    .line 7
    iget-object v2, p0, Lcom/ksyun/media/player/misc/d$a;->a:Lcom/ksyun/media/player/misc/d;

    invoke-static {v2}, Lcom/ksyun/media/player/misc/d;->g(Lcom/ksyun/media/player/misc/d;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 8
    iget-object v2, p0, Lcom/ksyun/media/player/misc/d$a;->a:Lcom/ksyun/media/player/misc/d;

    invoke-static {v2, v6}, Lcom/ksyun/media/player/misc/d;->a(Lcom/ksyun/media/player/misc/d;Z)Z

    .line 9
    iget-object v2, p0, Lcom/ksyun/media/player/misc/d$a;->a:Lcom/ksyun/media/player/misc/d;

    invoke-static {v2}, Lcom/ksyun/media/player/misc/d;->l(Lcom/ksyun/media/player/misc/d;)Landroid/os/Handler;

    move-result-object v2

    const/16 v3, 0xe

    invoke-virtual {v2, v3}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v2}, Landroid/os/Message;->sendToTarget()V

    goto :goto_1

    .line 10
    :cond_1
    invoke-virtual {v3}, Lcom/ksyun/media/player/misc/KSYProbeMediaInfo;->getMediaDuration()J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v6, v2, v4

    if-lez v6, :cond_2

    .line 11
    iget-object v4, p0, Lcom/ksyun/media/player/misc/d$a;->a:Lcom/ksyun/media/player/misc/d;

    invoke-static {v4}, Lcom/ksyun/media/player/misc/d;->l(Lcom/ksyun/media/player/misc/d;)Landroid/os/Handler;

    move-result-object v4

    const/16 v5, 0xc

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v5, v1, v0, v2}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v2}, Landroid/os/Message;->sendToTarget()V

    goto :goto_1

    .line 12
    :cond_2
    iget-object v2, p0, Lcom/ksyun/media/player/misc/d$a;->a:Lcom/ksyun/media/player/misc/d;

    invoke-static {v2}, Lcom/ksyun/media/player/misc/d;->l(Lcom/ksyun/media/player/misc/d;)Landroid/os/Handler;

    move-result-object v2

    const/16 v3, 0xd

    invoke-virtual {v2, v3, v1, v0}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v2}, Landroid/os/Message;->sendToTarget()V

    :cond_3
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_0

    :cond_4
    :goto_2
    return-void
.end method
