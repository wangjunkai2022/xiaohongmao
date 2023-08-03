.class public Lcom/qennnsad/aknkaksd/data/bean/websocket/ChargeTimeRoomMsg;
.super Ljava/lang/Object;
.source "ChargeTimeRoomMsg.java"

# interfaces
.implements Lcom/qennnsad/aknkaksd/data/bean/websocket/RoomPublicMsg;


# instance fields
.field private beanorignal:D

.field private id:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getBeanoriginal()D
    .locals 2

    iget-wide v0, p0, Lcom/qennnsad/aknkaksd/data/bean/websocket/ChargeTimeRoomMsg;->beanorignal:D

    return-wide v0
.end method

.method public getBeanorignal()D
    .locals 2

    iget-wide v0, p0, Lcom/qennnsad/aknkaksd/data/bean/websocket/ChargeTimeRoomMsg;->beanorignal:D

    return-wide v0
.end method

.method public getId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/qennnsad/aknkaksd/data/bean/websocket/ChargeTimeRoomMsg;->id:Ljava/lang/String;

    return-object v0
.end method

.method public setBeanorignal(D)V
    .locals 0

    iput-wide p1, p0, Lcom/qennnsad/aknkaksd/data/bean/websocket/ChargeTimeRoomMsg;->beanorignal:D

    return-void
.end method

.method public setId(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/qennnsad/aknkaksd/data/bean/websocket/ChargeTimeRoomMsg;->id:Ljava/lang/String;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ChargeTimeRoomMsg{id=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/qennnsad/aknkaksd/data/bean/websocket/ChargeTimeRoomMsg;->id:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v1, ", beanorignal="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/qennnsad/aknkaksd/data/bean/websocket/ChargeTimeRoomMsg;->beanorignal:D

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
