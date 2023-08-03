.class Lcom/qennnsad/aknkaksd/data/bean/index/HotAnchorSummary$RoomTopic$1;
.super Ljava/lang/Object;
.source "HotAnchorSummary.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/qennnsad/aknkaksd/data/bean/index/HotAnchorSummary$RoomTopic;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Lcom/qennnsad/aknkaksd/data/bean/index/HotAnchorSummary$RoomTopic;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$1:Lcom/qennnsad/aknkaksd/data/bean/index/HotAnchorSummary$RoomTopic;


# direct methods
.method constructor <init>(Lcom/qennnsad/aknkaksd/data/bean/index/HotAnchorSummary$RoomTopic;)V
    .locals 0

    iput-object p1, p0, Lcom/qennnsad/aknkaksd/data/bean/index/HotAnchorSummary$RoomTopic$1;->this$1:Lcom/qennnsad/aknkaksd/data/bean/index/HotAnchorSummary$RoomTopic;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcom/qennnsad/aknkaksd/data/bean/index/HotAnchorSummary$RoomTopic;
    .locals 2

    .line 2
    new-instance v0, Lcom/qennnsad/aknkaksd/data/bean/index/HotAnchorSummary$RoomTopic;

    iget-object v1, p0, Lcom/qennnsad/aknkaksd/data/bean/index/HotAnchorSummary$RoomTopic$1;->this$1:Lcom/qennnsad/aknkaksd/data/bean/index/HotAnchorSummary$RoomTopic;

    iget-object v1, v1, Lcom/qennnsad/aknkaksd/data/bean/index/HotAnchorSummary$RoomTopic;->this$0:Lcom/qennnsad/aknkaksd/data/bean/index/HotAnchorSummary;

    invoke-direct {v0, v1, p1}, Lcom/qennnsad/aknkaksd/data/bean/index/HotAnchorSummary$RoomTopic;-><init>(Lcom/qennnsad/aknkaksd/data/bean/index/HotAnchorSummary;Landroid/os/Parcel;)V

    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/qennnsad/aknkaksd/data/bean/index/HotAnchorSummary$RoomTopic$1;->createFromParcel(Landroid/os/Parcel;)Lcom/qennnsad/aknkaksd/data/bean/index/HotAnchorSummary$RoomTopic;

    move-result-object p1

    return-object p1
.end method

.method public newArray(I)[Lcom/qennnsad/aknkaksd/data/bean/index/HotAnchorSummary$RoomTopic;
    .locals 0

    .line 2
    new-array p1, p1, [Lcom/qennnsad/aknkaksd/data/bean/index/HotAnchorSummary$RoomTopic;

    return-object p1
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/qennnsad/aknkaksd/data/bean/index/HotAnchorSummary$RoomTopic$1;->newArray(I)[Lcom/qennnsad/aknkaksd/data/bean/index/HotAnchorSummary$RoomTopic;

    move-result-object p1

    return-object p1
.end method
