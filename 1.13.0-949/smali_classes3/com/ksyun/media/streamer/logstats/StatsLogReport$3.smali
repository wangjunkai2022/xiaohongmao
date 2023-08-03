.class Lcom/ksyun/media/streamer/logstats/StatsLogReport$3;
.super Ljava/util/TimerTask;
.source "StatsLogReport.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ksyun/media/streamer/logstats/StatsLogReport;->c()V
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

    iput-object p1, p0, Lcom/ksyun/media/streamer/logstats/StatsLogReport$3;->this$0:Lcom/ksyun/media/streamer/logstats/StatsLogReport;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 10

    .line 1
    iget-object v0, p0, Lcom/ksyun/media/streamer/logstats/StatsLogReport$3;->this$0:Lcom/ksyun/media/streamer/logstats/StatsLogReport;

    invoke-static {v0}, Lcom/ksyun/media/streamer/logstats/StatsLogReport;->e(Lcom/ksyun/media/streamer/logstats/StatsLogReport;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    invoke-static {}, Lcom/ksyun/media/streamer/logstats/b;->a()Lcom/ksyun/media/streamer/logstats/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ksyun/media/streamer/logstats/b;->e()V

    .line 3
    invoke-static {}, Lcom/ksyun/media/streamer/logstats/b;->a()Lcom/ksyun/media/streamer/logstats/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ksyun/media/streamer/logstats/b;->c()V

    .line 4
    invoke-static {}, Lcom/ksyun/media/streamer/logstats/b;->a()Lcom/ksyun/media/streamer/logstats/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ksyun/media/streamer/logstats/b;->f()I

    move-result v0

    rem-int/lit8 v0, v0, 0x5

    if-nez v0, :cond_0

    .line 5
    iget-object v0, p0, Lcom/ksyun/media/streamer/logstats/StatsLogReport$3;->this$0:Lcom/ksyun/media/streamer/logstats/StatsLogReport;

    invoke-static {v0}, Lcom/ksyun/media/streamer/logstats/StatsLogReport;->e(Lcom/ksyun/media/streamer/logstats/StatsLogReport;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 6
    iget-object v0, p0, Lcom/ksyun/media/streamer/logstats/StatsLogReport$3;->this$0:Lcom/ksyun/media/streamer/logstats/StatsLogReport;

    invoke-static {v0}, Lcom/ksyun/media/streamer/logstats/StatsLogReport;->f(Lcom/ksyun/media/streamer/logstats/StatsLogReport;)I

    move-result v3

    .line 7
    iget-object v0, p0, Lcom/ksyun/media/streamer/logstats/StatsLogReport$3;->this$0:Lcom/ksyun/media/streamer/logstats/StatsLogReport;

    invoke-static {v0}, Lcom/ksyun/media/streamer/logstats/StatsLogReport;->g(Lcom/ksyun/media/streamer/logstats/StatsLogReport;)J

    move-result-wide v4

    .line 8
    iget-object v0, p0, Lcom/ksyun/media/streamer/logstats/StatsLogReport$3;->this$0:Lcom/ksyun/media/streamer/logstats/StatsLogReport;

    invoke-static {v0}, Lcom/ksyun/media/streamer/logstats/StatsLogReport;->h(Lcom/ksyun/media/streamer/logstats/StatsLogReport;)Ljava/lang/String;

    move-result-object v1

    iget-object v0, p0, Lcom/ksyun/media/streamer/logstats/StatsLogReport$3;->this$0:Lcom/ksyun/media/streamer/logstats/StatsLogReport;

    invoke-static {v0}, Lcom/ksyun/media/streamer/logstats/StatsLogReport;->i(Lcom/ksyun/media/streamer/logstats/StatsLogReport;)Ljava/lang/String;

    move-result-object v2

    iget-object v0, p0, Lcom/ksyun/media/streamer/logstats/StatsLogReport$3;->this$0:Lcom/ksyun/media/streamer/logstats/StatsLogReport;

    .line 9
    invoke-static {v0}, Lcom/ksyun/media/streamer/logstats/StatsLogReport;->j(Lcom/ksyun/media/streamer/logstats/StatsLogReport;)I

    move-result v6

    iget-object v0, p0, Lcom/ksyun/media/streamer/logstats/StatsLogReport$3;->this$0:Lcom/ksyun/media/streamer/logstats/StatsLogReport;

    .line 10
    invoke-static {v0}, Lcom/ksyun/media/streamer/logstats/StatsLogReport;->k(Lcom/ksyun/media/streamer/logstats/StatsLogReport;)I

    move-result v7

    iget-object v0, p0, Lcom/ksyun/media/streamer/logstats/StatsLogReport$3;->this$0:Lcom/ksyun/media/streamer/logstats/StatsLogReport;

    invoke-static {v0}, Lcom/ksyun/media/streamer/logstats/StatsLogReport;->l(Lcom/ksyun/media/streamer/logstats/StatsLogReport;)J

    move-result-wide v8

    .line 11
    invoke-static/range {v1 .. v9}, Lcom/ksyun/media/streamer/logstats/a;->a(Ljava/lang/String;Ljava/lang/String;IJIIJ)Lorg/json/JSONObject;

    move-result-object v0

    .line 12
    iget-object v1, p0, Lcom/ksyun/media/streamer/logstats/StatsLogReport$3;->this$0:Lcom/ksyun/media/streamer/logstats/StatsLogReport;

    const/4 v2, 0x0

    invoke-static {v1, v0, v2}, Lcom/ksyun/media/streamer/logstats/StatsLogReport;->a(Lcom/ksyun/media/streamer/logstats/StatsLogReport;Lorg/json/JSONObject;Z)V

    :cond_0
    return-void
.end method
