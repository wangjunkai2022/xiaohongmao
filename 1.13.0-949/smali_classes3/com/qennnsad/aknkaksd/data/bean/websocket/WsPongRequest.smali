.class public Lcom/qennnsad/aknkaksd/data/bean/websocket/WsPongRequest;
.super Ljava/lang/Object;
.source "WsPongRequest.java"

# interfaces
.implements Lcom/qennnsad/aknkaksd/data/bean/websocket/WsRequest;


# instance fields
.field private device:Ljava/lang/String;

.field private method:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "_method_"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getDevice()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/qennnsad/aknkaksd/data/bean/websocket/WsPongRequest;->device:Ljava/lang/String;

    return-object v0
.end method

.method public getMethod()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/qennnsad/aknkaksd/data/bean/websocket/WsPongRequest;->method:Ljava/lang/String;

    return-object v0
.end method

.method public setDevice(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/qennnsad/aknkaksd/data/bean/websocket/WsPongRequest;->device:Ljava/lang/String;

    return-void
.end method

.method public setMethod(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/qennnsad/aknkaksd/data/bean/websocket/WsPongRequest;->method:Ljava/lang/String;

    return-void
.end method
