.class public Lcom/qennnsad/aknkaksd/data/bean/websocket/WsLogoutRequest;
.super Ljava/lang/Object;
.source "WsLogoutRequest.java"

# interfaces
.implements Lcom/qennnsad/aknkaksd/data/bean/websocket/WsRequest;


# instance fields
.field private daoju:Ljava/lang/String;

.field private levelId:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "levelid"
    .end annotation
.end field

.field private levelName:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "levelname"
    .end annotation
.end field

.field private method:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "_method_"
    .end annotation
.end field

.field private play_seconds:J

.field private play_status:Ljava/lang/String;

.field private roomId:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "room_id"
    .end annotation
.end field

.field private token:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "jwt_token"
    .end annotation
.end field

.field private ucuid:Ljava/lang/String;

.field private userId:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "user_id"
    .end annotation
.end field

.field private userName:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "user_name"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "0"

    .line 2
    iput-object v0, p0, Lcom/qennnsad/aknkaksd/data/bean/websocket/WsLogoutRequest;->play_status:Ljava/lang/String;

    const-wide/16 v0, 0x0

    .line 3
    iput-wide v0, p0, Lcom/qennnsad/aknkaksd/data/bean/websocket/WsLogoutRequest;->play_seconds:J

    return-void
.end method


# virtual methods
.method public getDaoju()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/qennnsad/aknkaksd/data/bean/websocket/WsLogoutRequest;->daoju:Ljava/lang/String;

    return-object v0
.end method

.method public getLevelId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/qennnsad/aknkaksd/data/bean/websocket/WsLogoutRequest;->levelId:Ljava/lang/String;

    return-object v0
.end method

.method public getLevelName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/qennnsad/aknkaksd/data/bean/websocket/WsLogoutRequest;->levelName:Ljava/lang/String;

    return-object v0
.end method

.method public getMethod()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/qennnsad/aknkaksd/data/bean/websocket/WsLogoutRequest;->method:Ljava/lang/String;

    return-object v0
.end method

.method public getPlay_seconds()J
    .locals 2

    iget-wide v0, p0, Lcom/qennnsad/aknkaksd/data/bean/websocket/WsLogoutRequest;->play_seconds:J

    return-wide v0
.end method

.method public getPlay_status()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/qennnsad/aknkaksd/data/bean/websocket/WsLogoutRequest;->play_status:Ljava/lang/String;

    return-object v0
.end method

.method public getRoomId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/qennnsad/aknkaksd/data/bean/websocket/WsLogoutRequest;->roomId:Ljava/lang/String;

    return-object v0
.end method

.method public getToken()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/qennnsad/aknkaksd/data/bean/websocket/WsLogoutRequest;->token:Ljava/lang/String;

    return-object v0
.end method

.method public getUcuid()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/qennnsad/aknkaksd/data/bean/websocket/WsLogoutRequest;->ucuid:Ljava/lang/String;

    return-object v0
.end method

.method public getUserId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/qennnsad/aknkaksd/data/bean/websocket/WsLogoutRequest;->userId:Ljava/lang/String;

    return-object v0
.end method

.method public getUserName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/qennnsad/aknkaksd/data/bean/websocket/WsLogoutRequest;->userName:Ljava/lang/String;

    return-object v0
.end method

.method public setDaoju(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/qennnsad/aknkaksd/data/bean/websocket/WsLogoutRequest;->daoju:Ljava/lang/String;

    return-void
.end method

.method public setLevelId(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/qennnsad/aknkaksd/data/bean/websocket/WsLogoutRequest;->levelId:Ljava/lang/String;

    return-void
.end method

.method public setLevelName(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/qennnsad/aknkaksd/data/bean/websocket/WsLogoutRequest;->levelName:Ljava/lang/String;

    return-void
.end method

.method public setMethod(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/qennnsad/aknkaksd/data/bean/websocket/WsLogoutRequest;->method:Ljava/lang/String;

    return-void
.end method

.method public setPlay_seconds(J)V
    .locals 0

    iput-wide p1, p0, Lcom/qennnsad/aknkaksd/data/bean/websocket/WsLogoutRequest;->play_seconds:J

    return-void
.end method

.method public setPlay_status(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/qennnsad/aknkaksd/data/bean/websocket/WsLogoutRequest;->play_status:Ljava/lang/String;

    return-void
.end method

.method public setRoomId(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/qennnsad/aknkaksd/data/bean/websocket/WsLogoutRequest;->roomId:Ljava/lang/String;

    return-void
.end method

.method public setToken(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/qennnsad/aknkaksd/data/bean/websocket/WsLogoutRequest;->token:Ljava/lang/String;

    return-void
.end method

.method public setUcuid(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/qennnsad/aknkaksd/data/bean/websocket/WsLogoutRequest;->ucuid:Ljava/lang/String;

    return-void
.end method

.method public setUserId(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/qennnsad/aknkaksd/data/bean/websocket/WsLogoutRequest;->userId:Ljava/lang/String;

    return-void
.end method

.method public setUserName(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/qennnsad/aknkaksd/data/bean/websocket/WsLogoutRequest;->userName:Ljava/lang/String;

    return-void
.end method
