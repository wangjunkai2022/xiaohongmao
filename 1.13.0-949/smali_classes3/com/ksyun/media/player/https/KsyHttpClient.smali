.class public Lcom/ksyun/media/player/https/KsyHttpClient;
.super Ljava/lang/Object;
.source "KsyHttpClient.java"

# interfaces
.implements Lcom/ksyun/media/player/https/HttpResponseListener;


# instance fields
.field private a:Lcom/ksyun/media/player/https/a;

.field private b:J


# direct methods
.method constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lcom/ksyun/media/player/https/KsyHttpClient;->a:Lcom/ksyun/media/player/https/a;

    .line 3
    new-instance v0, Lcom/ksyun/media/player/https/a;

    invoke-direct {v0}, Lcom/ksyun/media/player/https/a;-><init>()V

    iput-object v0, p0, Lcom/ksyun/media/player/https/KsyHttpClient;->a:Lcom/ksyun/media/player/https/a;

    .line 4
    invoke-virtual {v0, p0}, Lcom/ksyun/media/player/https/a;->a(Lcom/ksyun/media/player/https/HttpResponseListener;)V

    return-void
.end method

.method private native _NativeResponse(JILjava/lang/String;)V
.end method


# virtual methods
.method public cancelHttpRequest()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ksyun/media/player/https/KsyHttpClient;->a:Lcom/ksyun/media/player/https/a;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Lcom/ksyun/media/player/https/a;->a()V

    :cond_0
    return-void
.end method

.method public onHttpResponse(Lcom/ksyun/media/player/https/KsyHttpResponse;)V
    .locals 3

    iget-wide v0, p0, Lcom/ksyun/media/player/https/KsyHttpClient;->b:J

    invoke-virtual {p1}, Lcom/ksyun/media/player/https/KsyHttpResponse;->getResponseCode()I

    move-result v2

    invoke-virtual {p1}, Lcom/ksyun/media/player/https/KsyHttpResponse;->getData()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, v0, v1, v2, p1}, Lcom/ksyun/media/player/https/KsyHttpClient;->_NativeResponse(JILjava/lang/String;)V

    return-void
.end method

.method public performHttpRequest(Ljava/lang/String;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ksyun/media/player/https/KsyHttpClient;->a:Lcom/ksyun/media/player/https/a;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0, p1}, Lcom/ksyun/media/player/https/a;->a(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public performHttpsRequest(Ljava/lang/String;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ksyun/media/player/https/KsyHttpClient;->a:Lcom/ksyun/media/player/https/a;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0, p1}, Lcom/ksyun/media/player/https/a;->b(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public setConnectTimetout(I)V
    .locals 1

    iget-object v0, p0, Lcom/ksyun/media/player/https/KsyHttpClient;->a:Lcom/ksyun/media/player/https/a;

    invoke-virtual {v0, p1}, Lcom/ksyun/media/player/https/a;->b(I)V

    return-void
.end method

.method public setHandler(J)V
    .locals 0

    iput-wide p1, p0, Lcom/ksyun/media/player/https/KsyHttpClient;->b:J

    return-void
.end method

.method public setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ksyun/media/player/https/KsyHttpClient;->a:Lcom/ksyun/media/player/https/a;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0, p1, p2}, Lcom/ksyun/media/player/https/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public setTimeout(I)V
    .locals 1

    iget-object v0, p0, Lcom/ksyun/media/player/https/KsyHttpClient;->a:Lcom/ksyun/media/player/https/a;

    invoke-virtual {v0, p1}, Lcom/ksyun/media/player/https/a;->a(I)V

    return-void
.end method
