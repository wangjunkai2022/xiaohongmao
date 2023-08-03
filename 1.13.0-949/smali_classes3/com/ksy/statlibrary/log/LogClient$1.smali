.class Lcom/ksy/statlibrary/log/LogClient$1;
.super Ljava/util/TimerTask;
.source "LogClient.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ksy/statlibrary/log/LogClient;->start()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ksy/statlibrary/log/LogClient;


# direct methods
.method constructor <init>(Lcom/ksy/statlibrary/log/LogClient;)V
    .locals 0

    iput-object p1, p0, Lcom/ksy/statlibrary/log/LogClient$1;->this$0:Lcom/ksy/statlibrary/log/LogClient;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .line 1
    invoke-static {}, Lcom/ksy/statlibrary/log/LogClient;->access$000()Landroid/content/Context;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    iget-object v1, p0, Lcom/ksy/statlibrary/log/LogClient$1;->this$0:Lcom/ksy/statlibrary/log/LogClient;

    invoke-static {v1}, Lcom/ksy/statlibrary/log/LogClient;->access$100(Lcom/ksy/statlibrary/log/LogClient;)Ljava/util/HashMap;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>(Ljava/util/Collection;)V

    .line 3
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_7

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 4
    invoke-static {}, Lcom/ksy/statlibrary/log/LogClient;->access$000()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/ksy/statlibrary/db/DBManager;->getInstance(Landroid/content/Context;)Lcom/ksy/statlibrary/db/DBManager;

    move-result-object v2

    .line 5
    invoke-virtual {v2, v1}, Lcom/ksy/statlibrary/db/DBManager;->queryCount(Ljava/lang/String;)I

    move-result v2

    .line 6
    iget-object v3, p0, Lcom/ksy/statlibrary/log/LogClient$1;->this$0:Lcom/ksy/statlibrary/log/LogClient;

    invoke-static {v3}, Lcom/ksy/statlibrary/log/LogClient;->access$200(Lcom/ksy/statlibrary/log/LogClient;)Z

    move-result v3

    const-string v4, "KSY_ANDROID_LOG"

    if-eqz v3, :cond_2

    .line 7
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " send schedule,log count = "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 8
    :cond_2
    invoke-static {}, Lcom/ksy/statlibrary/log/LogClient;->access$000()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/ksy/statlibrary/util/NetworkUtil;->isNetworkAvailable(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 9
    invoke-static {}, Lcom/ksy/statlibrary/log/LogClient;->access$000()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/ksy/statlibrary/util/NetworkUtil;->getNetWorkType(Landroid/content/Context;)I

    move-result v3

    const/4 v5, 0x1

    if-ne v3, v5, :cond_4

    if-lez v2, :cond_3

    .line 10
    iget-object v3, p0, Lcom/ksy/statlibrary/log/LogClient$1;->this$0:Lcom/ksy/statlibrary/log/LogClient;

    invoke-static {v3, v2, v1}, Lcom/ksy/statlibrary/log/LogClient;->access$300(Lcom/ksy/statlibrary/log/LogClient;ILjava/lang/String;)V

    goto :goto_0

    .line 11
    :cond_3
    iget-object v1, p0, Lcom/ksy/statlibrary/log/LogClient$1;->this$0:Lcom/ksy/statlibrary/log/LogClient;

    invoke-static {v1}, Lcom/ksy/statlibrary/log/LogClient;->access$200(Lcom/ksy/statlibrary/log/LogClient;)Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v1, "no record"

    .line 12
    invoke-static {v4, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 13
    :cond_4
    iget-object v1, p0, Lcom/ksy/statlibrary/log/LogClient$1;->this$0:Lcom/ksy/statlibrary/log/LogClient;

    invoke-static {v1}, Lcom/ksy/statlibrary/log/LogClient;->access$200(Lcom/ksy/statlibrary/log/LogClient;)Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v1, "network valiable,type not wifi"

    .line 14
    invoke-static {v4, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 15
    :cond_5
    iget-object v1, p0, Lcom/ksy/statlibrary/log/LogClient$1;->this$0:Lcom/ksy/statlibrary/log/LogClient;

    invoke-static {v1}, Lcom/ksy/statlibrary/log/LogClient;->access$200(Lcom/ksy/statlibrary/log/LogClient;)Z

    move-result v1

    if-eqz v1, :cond_6

    const-string v1, "network unvaliable"

    invoke-static {v4, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 16
    :cond_6
    iget-object v1, p0, Lcom/ksy/statlibrary/log/LogClient$1;->this$0:Lcom/ksy/statlibrary/log/LogClient;

    invoke-virtual {v1}, Lcom/ksy/statlibrary/log/LogClient;->stop()V

    goto/16 :goto_0

    :cond_7
    return-void
.end method
