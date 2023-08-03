.class public Lcom/qennnsad/aknkaksd/data/bean/websocket/WsRoomManageRequest;
.super Ljava/lang/Object;
.source "WsRoomManageRequest.java"

# interfaces
.implements Lcom/qennnsad/aknkaksd/data/bean/websocket/WsRequest;


# static fields
.field public static final ADMINER:Ljava/lang/String; = "adminer"

.field public static final DISABLEMSG:Ljava/lang/String; = "disableMsg"

.field public static final MANAGE:Ljava/lang/String; = "Manage"

.field public static final REMOVERADMINER:Ljava/lang/String; = "removeAdminer"

.field public static final TYPE_KICK:Ljava/lang/String; = "addKicked"


# instance fields
.field private method:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "_method_"
    .end annotation
.end field

.field private targetUserId:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "managed_user_id"
    .end annotation
.end field

.field private targetUsername:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "managed_user_name"
    .end annotation
.end field

.field private type:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "_type_"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getMethod()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/qennnsad/aknkaksd/data/bean/websocket/WsRoomManageRequest;->method:Ljava/lang/String;

    return-object v0
.end method

.method public getTargetUserId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/qennnsad/aknkaksd/data/bean/websocket/WsRoomManageRequest;->targetUserId:Ljava/lang/String;

    return-object v0
.end method

.method public getTargetUsername()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/qennnsad/aknkaksd/data/bean/websocket/WsRoomManageRequest;->targetUsername:Ljava/lang/String;

    return-object v0
.end method

.method public getType()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/qennnsad/aknkaksd/data/bean/websocket/WsRoomManageRequest;->type:Ljava/lang/String;

    return-object v0
.end method

.method public setMethod(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/qennnsad/aknkaksd/data/bean/websocket/WsRoomManageRequest;->method:Ljava/lang/String;

    return-void
.end method

.method public setTargetUserId(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/qennnsad/aknkaksd/data/bean/websocket/WsRoomManageRequest;->targetUserId:Ljava/lang/String;

    return-void
.end method

.method public setTargetUsername(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/qennnsad/aknkaksd/data/bean/websocket/WsRoomManageRequest;->targetUsername:Ljava/lang/String;

    return-void
.end method

.method public setType(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/qennnsad/aknkaksd/data/bean/websocket/WsRoomManageRequest;->type:Ljava/lang/String;

    return-void
.end method
