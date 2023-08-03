.class public Lcom/qennnsad/aknkaksd/data/bean/websocket/WsBleDeviceMsg;
.super Ljava/lang/Object;
.source "WsBleDeviceMsg.java"


# instance fields
.field private cost:I

.field private duration:I

.field private model:Ljava/lang/String;

.field private rotation:I

.field private sound:I

.field private type:Ljava/lang/String;

.field private vibrate:I


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getCost()I
    .locals 1

    iget v0, p0, Lcom/qennnsad/aknkaksd/data/bean/websocket/WsBleDeviceMsg;->cost:I

    return v0
.end method

.method public getDuration()I
    .locals 1

    iget v0, p0, Lcom/qennnsad/aknkaksd/data/bean/websocket/WsBleDeviceMsg;->duration:I

    return v0
.end method

.method public getModel()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/qennnsad/aknkaksd/data/bean/websocket/WsBleDeviceMsg;->model:Ljava/lang/String;

    return-object v0
.end method

.method public getRotation()I
    .locals 1

    iget v0, p0, Lcom/qennnsad/aknkaksd/data/bean/websocket/WsBleDeviceMsg;->rotation:I

    return v0
.end method

.method public getSound()I
    .locals 1

    iget v0, p0, Lcom/qennnsad/aknkaksd/data/bean/websocket/WsBleDeviceMsg;->sound:I

    return v0
.end method

.method public getType()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/qennnsad/aknkaksd/data/bean/websocket/WsBleDeviceMsg;->type:Ljava/lang/String;

    return-object v0
.end method

.method public getVibrate()I
    .locals 1

    iget v0, p0, Lcom/qennnsad/aknkaksd/data/bean/websocket/WsBleDeviceMsg;->vibrate:I

    return v0
.end method

.method public setCost(I)V
    .locals 0

    iput p1, p0, Lcom/qennnsad/aknkaksd/data/bean/websocket/WsBleDeviceMsg;->cost:I

    return-void
.end method

.method public setDuration(I)V
    .locals 0

    iput p1, p0, Lcom/qennnsad/aknkaksd/data/bean/websocket/WsBleDeviceMsg;->duration:I

    return-void
.end method

.method public setModel(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/qennnsad/aknkaksd/data/bean/websocket/WsBleDeviceMsg;->model:Ljava/lang/String;

    return-void
.end method

.method public setRotation(I)V
    .locals 0

    iput p1, p0, Lcom/qennnsad/aknkaksd/data/bean/websocket/WsBleDeviceMsg;->rotation:I

    return-void
.end method

.method public setSound(I)V
    .locals 0

    iput p1, p0, Lcom/qennnsad/aknkaksd/data/bean/websocket/WsBleDeviceMsg;->sound:I

    return-void
.end method

.method public setType(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/qennnsad/aknkaksd/data/bean/websocket/WsBleDeviceMsg;->type:Ljava/lang/String;

    return-void
.end method

.method public setVibrate(I)V
    .locals 0

    iput p1, p0, Lcom/qennnsad/aknkaksd/data/bean/websocket/WsBleDeviceMsg;->vibrate:I

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "WsBleDeviceMsg{type=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/qennnsad/aknkaksd/data/bean/websocket/WsBleDeviceMsg;->type:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", model=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/qennnsad/aknkaksd/data/bean/websocket/WsBleDeviceMsg;->model:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v1, ", sound="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/qennnsad/aknkaksd/data/bean/websocket/WsBleDeviceMsg;->sound:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", vibrate="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/qennnsad/aknkaksd/data/bean/websocket/WsBleDeviceMsg;->vibrate:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", rotation="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/qennnsad/aknkaksd/data/bean/websocket/WsBleDeviceMsg;->rotation:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", duration="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/qennnsad/aknkaksd/data/bean/websocket/WsBleDeviceMsg;->duration:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", cost="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/qennnsad/aknkaksd/data/bean/websocket/WsBleDeviceMsg;->cost:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
