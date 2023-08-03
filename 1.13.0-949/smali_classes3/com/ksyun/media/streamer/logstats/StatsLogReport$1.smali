.class Lcom/ksyun/media/streamer/logstats/StatsLogReport$1;
.super Ljava/lang/Object;
.source "StatsLogReport.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ksyun/media/streamer/logstats/StatsLogReport;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ksyun/media/streamer/logstats/StatsLogReport;


# direct methods
.method constructor <init>(Lcom/ksyun/media/streamer/logstats/StatsLogReport;)V
    .locals 0

    iput-object p1, p0, Lcom/ksyun/media/streamer/logstats/StatsLogReport$1;->this$0:Lcom/ksyun/media/streamer/logstats/StatsLogReport;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/ksyun/media/streamer/logstats/StatsLogReport$1;->this$0:Lcom/ksyun/media/streamer/logstats/StatsLogReport;

    invoke-static {v0}, Lcom/ksyun/media/streamer/logstats/StatsLogReport;->a(Lcom/ksyun/media/streamer/logstats/StatsLogReport;)Landroid/content/Context;

    move-result-object v0

    const-string v1, "StatsLogReport"

    if-nez v0, :cond_0

    const-string v0, "init log client failed because the context is null"

    .line 2
    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    const-string v0, "init log client begin"

    .line 3
    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 4
    iget-object v0, p0, Lcom/ksyun/media/streamer/logstats/StatsLogReport$1;->this$0:Lcom/ksyun/media/streamer/logstats/StatsLogReport;

    invoke-static {v0}, Lcom/ksyun/media/streamer/logstats/StatsLogReport;->a(Lcom/ksyun/media/streamer/logstats/StatsLogReport;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/ksyun/media/streamer/logstats/a;->a(Landroid/content/Context;)Lorg/json/JSONObject;

    move-result-object v0

    .line 5
    iget-object v2, p0, Lcom/ksyun/media/streamer/logstats/StatsLogReport$1;->this$0:Lcom/ksyun/media/streamer/logstats/StatsLogReport;

    invoke-static {v2}, Lcom/ksyun/media/streamer/logstats/StatsLogReport;->b(Lcom/ksyun/media/streamer/logstats/StatsLogReport;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 6
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "***initLog header : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 7
    :cond_1
    iget-object v2, p0, Lcom/ksyun/media/streamer/logstats/StatsLogReport$1;->this$0:Lcom/ksyun/media/streamer/logstats/StatsLogReport;

    invoke-static {v2}, Lcom/ksyun/media/streamer/logstats/StatsLogReport;->a(Lcom/ksyun/media/streamer/logstats/StatsLogReport;)Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/ksy/statlibrary/log/LogClient;->getInstance(Landroid/content/Context;)Lcom/ksy/statlibrary/log/LogClient;

    move-result-object v2

    new-instance v3, Lcom/ksy/statlibrary/log/LogParams;

    iget-object v4, p0, Lcom/ksyun/media/streamer/logstats/StatsLogReport$1;->this$0:Lcom/ksyun/media/streamer/logstats/StatsLogReport;

    .line 8
    invoke-static {v4}, Lcom/ksyun/media/streamer/logstats/StatsLogReport;->c(Lcom/ksyun/media/streamer/logstats/StatsLogReport;)Lcom/ksyun/media/streamer/util/StringWrapper;

    move-result-object v4

    sget v5, Lcom/ksyun/media/streamer/util/StringWrapper;->LOG_ACCESS_KEY:I

    invoke-virtual {v4, v5}, Lcom/ksyun/media/streamer/util/StringWrapper;->getStringInfo(I)Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/ksyun/media/streamer/logstats/StatsLogReport$1;->this$0:Lcom/ksyun/media/streamer/logstats/StatsLogReport;

    .line 9
    invoke-static {v5}, Lcom/ksyun/media/streamer/logstats/StatsLogReport;->c(Lcom/ksyun/media/streamer/logstats/StatsLogReport;)Lcom/ksyun/media/streamer/util/StringWrapper;

    move-result-object v5

    sget v6, Lcom/ksyun/media/streamer/util/StringWrapper;->LOG_SECRET_KEY:I

    invoke-virtual {v5, v6}, Lcom/ksyun/media/streamer/util/StringWrapper;->getStringInfo(I)Ljava/lang/String;

    move-result-object v5

    .line 10
    invoke-static {}, Lcom/ksyun/media/streamer/logstats/c;->a()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v3, v0, v4, v5, v6}, Lcom/ksy/statlibrary/log/LogParams;-><init>(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 11
    invoke-virtual {v2, v3}, Lcom/ksy/statlibrary/log/LogClient;->addReportParam(Lcom/ksy/statlibrary/log/LogParams;)V

    .line 12
    iget-object v2, p0, Lcom/ksyun/media/streamer/logstats/StatsLogReport$1;->this$0:Lcom/ksyun/media/streamer/logstats/StatsLogReport;

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/ksyun/media/streamer/logstats/StatsLogReport;->a(Lcom/ksyun/media/streamer/logstats/StatsLogReport;Ljava/lang/String;)V

    .line 13
    iget-object v0, p0, Lcom/ksyun/media/streamer/logstats/StatsLogReport$1;->this$0:Lcom/ksyun/media/streamer/logstats/StatsLogReport;

    invoke-static {v0}, Lcom/ksyun/media/streamer/logstats/StatsLogReport;->a(Lcom/ksyun/media/streamer/logstats/StatsLogReport;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/ksy/statlibrary/log/LogClient;->getInstance(Landroid/content/Context;)Lcom/ksy/statlibrary/log/LogClient;

    move-result-object v0

    iget-object v2, p0, Lcom/ksyun/media/streamer/logstats/StatsLogReport$1;->this$0:Lcom/ksyun/media/streamer/logstats/StatsLogReport;

    invoke-static {v2}, Lcom/ksyun/media/streamer/logstats/StatsLogReport;->d(Lcom/ksyun/media/streamer/logstats/StatsLogReport;)Lcom/ksy/statlibrary/interval/IntervalResultListener;

    move-result-object v2

    .line 14
    invoke-static {}, Lcom/ksyun/media/streamer/logstats/c;->a()Ljava/lang/String;

    move-result-object v3

    .line 15
    invoke-virtual {v0, v2, v3}, Lcom/ksy/statlibrary/log/LogClient;->sendIntervalRequest(Lcom/ksy/statlibrary/interval/IntervalResultListener;Ljava/lang/String;)V

    .line 16
    iget-object v0, p0, Lcom/ksyun/media/streamer/logstats/StatsLogReport$1;->this$0:Lcom/ksyun/media/streamer/logstats/StatsLogReport;

    invoke-static {v0}, Lcom/ksyun/media/streamer/logstats/StatsLogReport;->a(Lcom/ksyun/media/streamer/logstats/StatsLogReport;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/ksy/statlibrary/log/LogClient;->getInstance(Landroid/content/Context;)Lcom/ksy/statlibrary/log/LogClient;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ksy/statlibrary/log/LogClient;->start()V

    .line 17
    iget-object v0, p0, Lcom/ksyun/media/streamer/logstats/StatsLogReport$1;->this$0:Lcom/ksyun/media/streamer/logstats/StatsLogReport;

    const/4 v2, 0x2

    invoke-static {v0, v2}, Lcom/ksyun/media/streamer/logstats/StatsLogReport;->a(Lcom/ksyun/media/streamer/logstats/StatsLogReport;I)I

    const-string v0, "init log cleint end"

    .line 18
    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
