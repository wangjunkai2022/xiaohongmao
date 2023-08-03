.class public Lcom/qennnsad/aknkaksd/data/bean/websocket/SendPublic;
.super Ljava/lang/Object;
.source "SendPublic.java"

# interfaces
.implements Lcom/qennnsad/aknkaksd/data/bean/websocket/WsRequest;


# instance fields
.field private _method_:Ljava/lang/String;

.field private content:Ljava/lang/String;

.field private serverTime:I

.field private type:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getContent()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/qennnsad/aknkaksd/data/bean/websocket/SendPublic;->content:Ljava/lang/String;

    return-object v0
.end method

.method public getServerTime()I
    .locals 1

    iget v0, p0, Lcom/qennnsad/aknkaksd/data/bean/websocket/SendPublic;->serverTime:I

    return v0
.end method

.method public getType()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/qennnsad/aknkaksd/data/bean/websocket/SendPublic;->type:Ljava/lang/String;

    return-object v0
.end method

.method public get_method_()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/qennnsad/aknkaksd/data/bean/websocket/SendPublic;->_method_:Ljava/lang/String;

    return-object v0
.end method

.method public setContent(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/qennnsad/aknkaksd/data/bean/websocket/SendPublic;->content:Ljava/lang/String;

    return-void
.end method

.method public setServerTime(I)V
    .locals 0

    iput p1, p0, Lcom/qennnsad/aknkaksd/data/bean/websocket/SendPublic;->serverTime:I

    return-void
.end method

.method public setType(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/qennnsad/aknkaksd/data/bean/websocket/SendPublic;->type:Ljava/lang/String;

    return-void
.end method

.method public set_method_(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/qennnsad/aknkaksd/data/bean/websocket/SendPublic;->_method_:Ljava/lang/String;

    return-void
.end method
