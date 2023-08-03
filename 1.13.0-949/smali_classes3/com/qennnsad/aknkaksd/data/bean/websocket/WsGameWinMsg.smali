.class public Lcom/qennnsad/aknkaksd/data/bean/websocket/WsGameWinMsg;
.super Ljava/lang/Object;
.source "WsGameWinMsg.java"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field private avatar:Ljava/lang/String;

.field private client_name:Ljava/lang/String;

.field private content:Ljava/lang/String;

.field private type:Ljava/lang/String;

.field private win_money:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getAvatar()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/qennnsad/aknkaksd/data/bean/websocket/WsGameWinMsg;->avatar:Ljava/lang/String;

    return-object v0
.end method

.method public getClient_name()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/qennnsad/aknkaksd/data/bean/websocket/WsGameWinMsg;->client_name:Ljava/lang/String;

    return-object v0
.end method

.method public getContent()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/qennnsad/aknkaksd/data/bean/websocket/WsGameWinMsg;->content:Ljava/lang/String;

    return-object v0
.end method

.method public getType()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/qennnsad/aknkaksd/data/bean/websocket/WsGameWinMsg;->type:Ljava/lang/String;

    return-object v0
.end method

.method public getWin_money()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/qennnsad/aknkaksd/data/bean/websocket/WsGameWinMsg;->win_money:Ljava/lang/String;

    return-object v0
.end method

.method public setAvatar(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/qennnsad/aknkaksd/data/bean/websocket/WsGameWinMsg;->avatar:Ljava/lang/String;

    return-void
.end method

.method public setClient_name(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/qennnsad/aknkaksd/data/bean/websocket/WsGameWinMsg;->client_name:Ljava/lang/String;

    return-void
.end method

.method public setContent(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/qennnsad/aknkaksd/data/bean/websocket/WsGameWinMsg;->content:Ljava/lang/String;

    return-void
.end method

.method public setType(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/qennnsad/aknkaksd/data/bean/websocket/WsGameWinMsg;->type:Ljava/lang/String;

    return-void
.end method

.method public setWin_money(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/qennnsad/aknkaksd/data/bean/websocket/WsGameWinMsg;->win_money:Ljava/lang/String;

    return-void
.end method
