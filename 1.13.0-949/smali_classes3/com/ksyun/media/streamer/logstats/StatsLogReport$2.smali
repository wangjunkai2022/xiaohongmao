.class Lcom/ksyun/media/streamer/logstats/StatsLogReport$2;
.super Ljava/lang/Object;
.source "StatsLogReport.java"

# interfaces
.implements Lcom/ksy/statlibrary/interval/IntervalResultListener;


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

    iput-object p1, p0, Lcom/ksyun/media/streamer/logstats/StatsLogReport$2;->this$0:Lcom/ksyun/media/streamer/logstats/StatsLogReport;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onGetIntervalFailure(ILjava/lang/String;)V
    .locals 1

    .line 1
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "get interval failed retCode:"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "StatsLogReport"

    invoke-static {p2, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    iget-object p1, p0, Lcom/ksyun/media/streamer/logstats/StatsLogReport$2;->this$0:Lcom/ksyun/media/streamer/logstats/StatsLogReport;

    const/16 p2, 0x270f

    invoke-static {p1, p2}, Lcom/ksyun/media/streamer/logstats/StatsLogReport;->b(Lcom/ksyun/media/streamer/logstats/StatsLogReport;I)I

    return-void
.end method

.method public onGetIntervalSuccess(II)V
    .locals 2

    const-string v0, "StatsLogReport"

    if-nez p1, :cond_0

    .line 1
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "get interval from server: "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_0
    const/16 v1, -0x3e8

    if-ne p1, v1, :cond_1

    .line 2
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "get interval from local sharepreference : "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3
    :cond_1
    :goto_0
    iget-object p1, p0, Lcom/ksyun/media/streamer/logstats/StatsLogReport$2;->this$0:Lcom/ksyun/media/streamer/logstats/StatsLogReport;

    invoke-static {p1, p2}, Lcom/ksyun/media/streamer/logstats/StatsLogReport;->b(Lcom/ksyun/media/streamer/logstats/StatsLogReport;I)I

    return-void
.end method
