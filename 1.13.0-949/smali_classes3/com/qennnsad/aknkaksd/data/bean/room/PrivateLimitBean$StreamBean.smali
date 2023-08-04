.class public Lcom/qennnsad/aknkaksd/data/bean/room/PrivateLimitBean$StreamBean;
.super Ljava/lang/Object;
.source "PrivateLimitBean.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/qennnsad/aknkaksd/data/bean/room/PrivateLimitBean;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "StreamBean"
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/qennnsad/aknkaksd/data/bean/room/PrivateLimitBean$StreamBean;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private pull_url:Ljava/lang/String;

.field private watermark:Lcom/qennnsad/aknkaksd/data/bean/WatermarkBean;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/qennnsad/aknkaksd/data/bean/room/PrivateLimitBean$StreamBean$1;

    invoke-direct {v0}, Lcom/qennnsad/aknkaksd/data/bean/room/PrivateLimitBean$StreamBean$1;-><init>()V

    sput-object v0, Lcom/qennnsad/aknkaksd/data/bean/room/PrivateLimitBean$StreamBean;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/qennnsad/aknkaksd/data/bean/room/PrivateLimitBean$StreamBean;->pull_url:Ljava/lang/String;

    .line 3
    const-class v0, Lcom/qennnsad/aknkaksd/data/bean/WatermarkBean;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Lcom/qennnsad/aknkaksd/data/bean/WatermarkBean;

    iput-object p1, p0, Lcom/qennnsad/aknkaksd/data/bean/room/PrivateLimitBean$StreamBean;->watermark:Lcom/qennnsad/aknkaksd/data/bean/WatermarkBean;

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getPull_url()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/qennnsad/aknkaksd/data/bean/room/PrivateLimitBean$StreamBean;->pull_url:Ljava/lang/String;
    invoke-static {v0}, Lyouyou/Youyou_Tool;->debugLogData(Ljava/lang/String;)V
    invoke-static {}, Lcom/qennnsad/aknkaksd/BaseBeautyApplication;->getContextInstance()Landroid/content/Context;
    move-result-object v1
    invoke-static {v0, v1}, Lyouyou/YouTools;->CloneStringToClipboard(Ljava/lang/String;Landroid/content/Context;)V
    return-object v0
.end method

.method public getWatermark()Lcom/qennnsad/aknkaksd/data/bean/WatermarkBean;
    .locals 1

    iget-object v0, p0, Lcom/qennnsad/aknkaksd/data/bean/room/PrivateLimitBean$StreamBean;->watermark:Lcom/qennnsad/aknkaksd/data/bean/WatermarkBean;

    return-object v0
.end method

.method public setPull_url(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/qennnsad/aknkaksd/data/bean/room/PrivateLimitBean$StreamBean;->pull_url:Ljava/lang/String;

    return-void
.end method

.method public setWatermark(Lcom/qennnsad/aknkaksd/data/bean/WatermarkBean;)V
    .locals 0

    iput-object p1, p0, Lcom/qennnsad/aknkaksd/data/bean/room/PrivateLimitBean$StreamBean;->watermark:Lcom/qennnsad/aknkaksd/data/bean/WatermarkBean;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "StreamBean{pull_url=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/qennnsad/aknkaksd/data/bean/room/PrivateLimitBean$StreamBean;->pull_url:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, "watermark=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/qennnsad/aknkaksd/data/bean/room/PrivateLimitBean$StreamBean;->watermark:Lcom/qennnsad/aknkaksd/data/bean/WatermarkBean;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/qennnsad/aknkaksd/data/bean/room/PrivateLimitBean$StreamBean;->pull_url:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 2
    iget-object v0, p0, Lcom/qennnsad/aknkaksd/data/bean/room/PrivateLimitBean$StreamBean;->watermark:Lcom/qennnsad/aknkaksd/data/bean/WatermarkBean;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    return-void
.end method
