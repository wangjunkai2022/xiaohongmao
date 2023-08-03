.class Lcom/ksyun/media/streamer/util/https/KsyHttpConnection$2$1;
.super Ljava/lang/Object;
.source "KsyHttpConnection.java"

# interfaces
.implements Ljavax/net/ssl/HostnameVerifier;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ksyun/media/streamer/util/https/KsyHttpConnection$2;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/ksyun/media/streamer/util/https/KsyHttpConnection$2;


# direct methods
.method constructor <init>(Lcom/ksyun/media/streamer/util/https/KsyHttpConnection$2;)V
    .locals 0

    iput-object p1, p0, Lcom/ksyun/media/streamer/util/https/KsyHttpConnection$2$1;->a:Lcom/ksyun/media/streamer/util/https/KsyHttpConnection$2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public verify(Ljava/lang/String;Ljavax/net/ssl/SSLSession;)Z
    .locals 1

    const-string v0, "videodev.ksyun.com"

    .line 1
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "rtc.vcloud.ks-live.com"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/ksyun/media/streamer/util/https/KsyHttpConnection$2$1;->a:Lcom/ksyun/media/streamer/util/https/KsyHttpConnection$2;

    iget-object v0, v0, Lcom/ksyun/media/streamer/util/https/KsyHttpConnection$2;->g:Lcom/ksyun/media/streamer/util/https/KsyHttpConnection;

    .line 2
    invoke-virtual {v0, p1}, Lcom/ksyun/media/streamer/util/https/KsyHttpConnection;->otherHostName(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 3
    :cond_0
    invoke-static {}, Ljavax/net/ssl/HttpsURLConnection;->getDefaultHostnameVerifier()Ljavax/net/ssl/HostnameVerifier;

    move-result-object v0

    .line 4
    invoke-interface {v0, p1, p2}, Ljavax/net/ssl/HostnameVerifier;->verify(Ljava/lang/String;Ljavax/net/ssl/SSLSession;)Z

    move-result p1

    return p1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    return p1
.end method
