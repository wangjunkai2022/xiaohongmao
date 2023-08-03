.class public Lcom/ksyun/media/streamer/util/https/KsyHttpClient;
.super Ljava/lang/Object;
.source "KsyHttpClient.java"

# interfaces
.implements Lcom/ksyun/media/streamer/util/https/HttpResponseListener;


# instance fields
.field private mConnection:Lcom/ksyun/media/streamer/util/https/KsyHttpConnection;

.field private mHandler:J

.field mListener:Lcom/ksyun/media/streamer/util/https/HttpResponseListener;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lcom/ksyun/media/streamer/util/https/KsyHttpClient;->mConnection:Lcom/ksyun/media/streamer/util/https/KsyHttpConnection;

    .line 3
    new-instance v0, Lcom/ksyun/media/streamer/util/https/KsyHttpConnection;

    invoke-direct {v0}, Lcom/ksyun/media/streamer/util/https/KsyHttpConnection;-><init>()V

    iput-object v0, p0, Lcom/ksyun/media/streamer/util/https/KsyHttpClient;->mConnection:Lcom/ksyun/media/streamer/util/https/KsyHttpConnection;

    .line 4
    invoke-virtual {v0, p0}, Lcom/ksyun/media/streamer/util/https/KsyHttpConnection;->setListener(Lcom/ksyun/media/streamer/util/https/HttpResponseListener;)V

    return-void
.end method

.method private native _NativeResponse(JILjava/lang/String;)V
.end method


# virtual methods
.method public cancelHttpRequest()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ksyun/media/streamer/util/https/KsyHttpClient;->mConnection:Lcom/ksyun/media/streamer/util/https/KsyHttpConnection;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Lcom/ksyun/media/streamer/util/https/KsyHttpConnection;->cancelHttpRequest()V

    :cond_0
    return-void
.end method

.method public onHttpResponse(Lcom/ksyun/media/streamer/util/https/KsyHttpResponse;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ksyun/media/streamer/util/https/KsyHttpClient;->mListener:Lcom/ksyun/media/streamer/util/https/HttpResponseListener;

    if-eqz v0, :cond_0

    .line 2
    invoke-interface {v0, p1}, Lcom/ksyun/media/streamer/util/https/HttpResponseListener;->onHttpResponse(Lcom/ksyun/media/streamer/util/https/KsyHttpResponse;)V

    :cond_0
    return-void
.end method

.method public performHttpRequest(Ljava/lang/String;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ksyun/media/streamer/util/https/KsyHttpClient;->mConnection:Lcom/ksyun/media/streamer/util/https/KsyHttpConnection;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0, p1}, Lcom/ksyun/media/streamer/util/https/KsyHttpConnection;->performHttpRequest(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public performHttpsRequest(Ljava/lang/String;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ksyun/media/streamer/util/https/KsyHttpClient;->mConnection:Lcom/ksyun/media/streamer/util/https/KsyHttpConnection;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0, p1}, Lcom/ksyun/media/streamer/util/https/KsyHttpConnection;->performHttpsRequest(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public setConnectTimetout(I)V
    .locals 1

    iget-object v0, p0, Lcom/ksyun/media/streamer/util/https/KsyHttpClient;->mConnection:Lcom/ksyun/media/streamer/util/https/KsyHttpConnection;

    invoke-virtual {v0, p1}, Lcom/ksyun/media/streamer/util/https/KsyHttpConnection;->setConnectTimeout(I)V

    return-void
.end method

.method public setHandler(J)V
    .locals 0

    iput-wide p1, p0, Lcom/ksyun/media/streamer/util/https/KsyHttpClient;->mHandler:J

    return-void
.end method

.method public setListener(Lcom/ksyun/media/streamer/util/https/HttpResponseListener;)V
    .locals 0

    iput-object p1, p0, Lcom/ksyun/media/streamer/util/https/KsyHttpClient;->mListener:Lcom/ksyun/media/streamer/util/https/HttpResponseListener;

    return-void
.end method

.method public setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ksyun/media/streamer/util/https/KsyHttpClient;->mConnection:Lcom/ksyun/media/streamer/util/https/KsyHttpConnection;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0, p1, p2}, Lcom/ksyun/media/streamer/util/https/KsyHttpConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public setTimeout(I)V
    .locals 1

    iget-object v0, p0, Lcom/ksyun/media/streamer/util/https/KsyHttpClient;->mConnection:Lcom/ksyun/media/streamer/util/https/KsyHttpConnection;

    invoke-virtual {v0, p1}, Lcom/ksyun/media/streamer/util/https/KsyHttpConnection;->setTimeout(I)V

    return-void
.end method
