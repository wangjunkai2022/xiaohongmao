.class public Lcom/qennnsad/aknkaksd/data/bean/websocket/WsLoginServerRequest;
.super Ljava/lang/Object;
.source "WsLoginServerRequest.java"

# interfaces
.implements Lcom/qennnsad/aknkaksd/data/bean/websocket/WsRequest;


# instance fields
.field private device_id:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "device_id"
    .end annotation
.end field

.field private issued:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "issued"
    .end annotation
.end field

.field private lob:Ljava/lang/Integer;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "lob"
    .end annotation
.end field

.field private method:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "_method_"
    .end annotation
.end field

.field private plat:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "plat"
    .end annotation
.end field

.field private rid:Ljava/lang/Integer;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "rid"
    .end annotation
.end field

.field private token:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "jwt_token"
    .end annotation
.end field

.field private userId:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "user_id"
    .end annotation
.end field

.field private ver:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "ver"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "android"

    .line 2
    iput-object v0, p0, Lcom/qennnsad/aknkaksd/data/bean/websocket/WsLoginServerRequest;->plat:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getDeviceId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/qennnsad/aknkaksd/data/bean/websocket/WsLoginServerRequest;->device_id:Ljava/lang/String;

    return-object v0
.end method

.method public getDevice_id()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/qennnsad/aknkaksd/data/bean/websocket/WsLoginServerRequest;->device_id:Ljava/lang/String;

    return-object v0
.end method

.method public getIssued()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/qennnsad/aknkaksd/data/bean/websocket/WsLoginServerRequest;->issued:Ljava/lang/String;

    return-object v0
.end method

.method public getLob()Ljava/lang/Integer;
    .locals 1

    iget-object v0, p0, Lcom/qennnsad/aknkaksd/data/bean/websocket/WsLoginServerRequest;->lob:Ljava/lang/Integer;

    return-object v0
.end method

.method public getMethod()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/qennnsad/aknkaksd/data/bean/websocket/WsLoginServerRequest;->method:Ljava/lang/String;

    return-object v0
.end method

.method public getPlat()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/qennnsad/aknkaksd/data/bean/websocket/WsLoginServerRequest;->plat:Ljava/lang/String;

    return-object v0
.end method

.method public getRid()Ljava/lang/Integer;
    .locals 1

    iget-object v0, p0, Lcom/qennnsad/aknkaksd/data/bean/websocket/WsLoginServerRequest;->rid:Ljava/lang/Integer;

    return-object v0
.end method

.method public getToken()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/qennnsad/aknkaksd/data/bean/websocket/WsLoginServerRequest;->token:Ljava/lang/String;

    return-object v0
.end method

.method public getUserId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/qennnsad/aknkaksd/data/bean/websocket/WsLoginServerRequest;->userId:Ljava/lang/String;

    return-object v0
.end method

.method public getVer()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/qennnsad/aknkaksd/data/bean/websocket/WsLoginServerRequest;->ver:Ljava/lang/String;

    return-object v0
.end method

.method public setDeviceId(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/qennnsad/aknkaksd/data/bean/websocket/WsLoginServerRequest;->device_id:Ljava/lang/String;

    return-void
.end method

.method public setDevice_id(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/qennnsad/aknkaksd/data/bean/websocket/WsLoginServerRequest;->device_id:Ljava/lang/String;

    return-void
.end method

.method public setIssued(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/qennnsad/aknkaksd/data/bean/websocket/WsLoginServerRequest;->issued:Ljava/lang/String;

    return-void
.end method

.method public setLob(Ljava/lang/Integer;)V
    .locals 0

    iput-object p1, p0, Lcom/qennnsad/aknkaksd/data/bean/websocket/WsLoginServerRequest;->lob:Ljava/lang/Integer;

    return-void
.end method

.method public setMethod(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/qennnsad/aknkaksd/data/bean/websocket/WsLoginServerRequest;->method:Ljava/lang/String;

    return-void
.end method

.method public setPlat(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/qennnsad/aknkaksd/data/bean/websocket/WsLoginServerRequest;->plat:Ljava/lang/String;

    return-void
.end method

.method public setRid(Ljava/lang/Integer;)V
    .locals 0

    iput-object p1, p0, Lcom/qennnsad/aknkaksd/data/bean/websocket/WsLoginServerRequest;->rid:Ljava/lang/Integer;

    return-void
.end method

.method public setToken(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/qennnsad/aknkaksd/data/bean/websocket/WsLoginServerRequest;->token:Ljava/lang/String;

    return-void
.end method

.method public setUserId(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/qennnsad/aknkaksd/data/bean/websocket/WsLoginServerRequest;->userId:Ljava/lang/String;

    return-void
.end method

.method public setVer(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/qennnsad/aknkaksd/data/bean/websocket/WsLoginServerRequest;->ver:Ljava/lang/String;

    return-void
.end method
