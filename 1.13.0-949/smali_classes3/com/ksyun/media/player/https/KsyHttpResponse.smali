.class public Lcom/ksyun/media/player/https/KsyHttpResponse;
.super Ljava/lang/Object;
.source "KsyHttpResponse.java"


# instance fields
.field data:Ljava/lang/StringBuilder;

.field private responseCode:I


# direct methods
.method constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lcom/ksyun/media/player/https/KsyHttpResponse;->data:Ljava/lang/StringBuilder;

    const/4 v0, -0x1

    .line 3
    iput v0, p0, Lcom/ksyun/media/player/https/KsyHttpResponse;->responseCode:I

    .line 4
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v0, p0, Lcom/ksyun/media/player/https/KsyHttpResponse;->data:Ljava/lang/StringBuilder;

    return-void
.end method


# virtual methods
.method public appendData(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/ksyun/media/player/https/KsyHttpResponse;->data:Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    return-void
.end method

.method public getData()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/ksyun/media/player/https/KsyHttpResponse;->data:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getResponseCode()I
    .locals 1

    iget v0, p0, Lcom/ksyun/media/player/https/KsyHttpResponse;->responseCode:I

    return v0
.end method

.method public restResponse()V
    .locals 2

    const/4 v0, 0x0

    .line 1
    iput v0, p0, Lcom/ksyun/media/player/https/KsyHttpResponse;->responseCode:I

    .line 2
    iget-object v1, p0, Lcom/ksyun/media/player/https/KsyHttpResponse;->data:Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->setLength(I)V

    return-void
.end method

.method public setResponseCode(I)V
    .locals 0

    iput p1, p0, Lcom/ksyun/media/player/https/KsyHttpResponse;->responseCode:I

    return-void
.end method
