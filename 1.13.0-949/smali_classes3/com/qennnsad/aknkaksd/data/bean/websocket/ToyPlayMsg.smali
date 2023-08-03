.class public Lcom/qennnsad/aknkaksd/data/bean/websocket/ToyPlayMsg;
.super Ljava/lang/Object;
.source "ToyPlayMsg.java"

# interfaces
.implements Lcom/qennnsad/aknkaksd/data/bean/websocket/WsRequest;


# instance fields
.field private _method_:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public get_method_()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/qennnsad/aknkaksd/data/bean/websocket/ToyPlayMsg;->_method_:Ljava/lang/String;

    return-object v0
.end method

.method public set_method_(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/qennnsad/aknkaksd/data/bean/websocket/ToyPlayMsg;->_method_:Ljava/lang/String;

    return-void
.end method
