.class Lcom/posthog/android/v;
.super Ljava/lang/Object;
.source "Stats.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/posthog/android/v$a;
    }
.end annotation


# static fields
.field private static final h:Ljava/lang/String; = "PostHog-Stats"


# instance fields
.field final a:Landroid/os/HandlerThread;

.field final b:Lcom/posthog/android/v$a;

.field c:J

.field d:J

.field e:J

.field f:J

.field g:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>()V
    .locals 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/posthog/android/v;->g:Ljava/util/Map;

    .line 3
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "PostHog-Stats"

    const/16 v2, 0xa

    invoke-direct {v0, v1, v2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;I)V

    iput-object v0, p0, Lcom/posthog/android/v;->a:Landroid/os/HandlerThread;

    .line 4
    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 5
    new-instance v1, Lcom/posthog/android/v$a;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {v1, v0, p0}, Lcom/posthog/android/v$a;-><init>(Landroid/os/Looper;Lcom/posthog/android/v;)V

    iput-object v1, p0, Lcom/posthog/android/v;->b:Lcom/posthog/android/v$a;

    return-void
.end method


# virtual methods
.method a()Lcom/posthog/android/w;
    .locals 13

    .line 1
    new-instance v12, Lcom/posthog/android/w;

    .line 2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iget-wide v3, p0, Lcom/posthog/android/v;->c:J

    iget-wide v5, p0, Lcom/posthog/android/v;->d:J

    iget-wide v7, p0, Lcom/posthog/android/v;->e:J

    iget-wide v9, p0, Lcom/posthog/android/v;->f:J

    iget-object v0, p0, Lcom/posthog/android/v;->g:Ljava/util/Map;

    .line 3
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v11

    move-object v0, v12

    invoke-direct/range {v0 .. v11}, Lcom/posthog/android/w;-><init>(JJJJJLjava/util/Map;)V

    return-object v12
.end method

.method b(I)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/posthog/android/v;->b:Lcom/posthog/android/v$a;

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 2
    invoke-virtual {v0, v1, p1, v2}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object p1

    .line 3
    invoke-virtual {v0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method c(J)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/posthog/android/v;->b:Lcom/posthog/android/v$a;

    new-instance v1, Landroid/util/Pair;

    .line 2
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    const-string p2, "PostHog"

    invoke-direct {v1, p2, p1}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const/4 p1, 0x2

    invoke-virtual {v0, p1, v1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    .line 3
    invoke-virtual {v0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method d(I)V
    .locals 4

    .line 1
    iget-wide v0, p0, Lcom/posthog/android/v;->c:J

    const-wide/16 v2, 0x1

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/posthog/android/v;->c:J

    .line 2
    iget-wide v0, p0, Lcom/posthog/android/v;->d:J

    int-to-long v2, p1

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/posthog/android/v;->d:J

    return-void
.end method

.method e(Landroid/util/Pair;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/Pair<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;)V"
        }
    .end annotation

    .line 1
    iget-wide v0, p0, Lcom/posthog/android/v;->e:J

    const-wide/16 v2, 0x1

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/posthog/android/v;->e:J

    .line 2
    iget-wide v0, p0, Lcom/posthog/android/v;->f:J

    iget-object v2, p1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/posthog/android/v;->f:J

    .line 3
    iget-object v0, p0, Lcom/posthog/android/v;->g:Ljava/util/Map;

    iget-object v1, p1, Landroid/util/Pair;->first:Ljava/lang/Object;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    if-nez v0, :cond_0

    .line 4
    iget-object v0, p0, Lcom/posthog/android/v;->g:Ljava/util/Map;

    iget-object v1, p1, Landroid/util/Pair;->first:Ljava/lang/Object;

    iget-object p1, p1, Landroid/util/Pair;->second:Ljava/lang/Object;

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 5
    :cond_0
    iget-object v1, p0, Lcom/posthog/android/v;->g:Ljava/util/Map;

    iget-object v2, p1, Landroid/util/Pair;->first:Ljava/lang/Object;

    .line 6
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    iget-object p1, p1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Long;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    add-long/2addr v3, v5

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    .line 7
    invoke-interface {v1, v2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_0
    return-void
.end method

.method f()V
    .locals 1

    iget-object v0, p0, Lcom/posthog/android/v;->a:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->quit()Z

    return-void
.end method
