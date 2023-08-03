.class public Lcom/qennnsad/aknkaksd/data/bean/room/PrivateCheckBean;
.super Ljava/lang/Object;
.source "PrivateCheckBean.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/qennnsad/aknkaksd/data/bean/room/PrivateCheckBean;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private stream:Lcom/qennnsad/aknkaksd/data/bean/room/PrivateLimitBean$StreamBean;

.field private ticket:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/qennnsad/aknkaksd/data/bean/room/PrivateCheckBean$1;

    invoke-direct {v0}, Lcom/qennnsad/aknkaksd/data/bean/room/PrivateCheckBean$1;-><init>()V

    sput-object v0, Lcom/qennnsad/aknkaksd/data/bean/room/PrivateCheckBean;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    const-class v0, Lcom/qennnsad/aknkaksd/data/bean/room/PrivateLimitBean$StreamBean;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/qennnsad/aknkaksd/data/bean/room/PrivateLimitBean$StreamBean;

    iput-object v0, p0, Lcom/qennnsad/aknkaksd/data/bean/room/PrivateCheckBean;->stream:Lcom/qennnsad/aknkaksd/data/bean/room/PrivateLimitBean$StreamBean;

    .line 3
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/qennnsad/aknkaksd/data/bean/room/PrivateCheckBean;->ticket:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getStream()Lcom/qennnsad/aknkaksd/data/bean/room/PrivateLimitBean$StreamBean;
    .locals 1

    iget-object v0, p0, Lcom/qennnsad/aknkaksd/data/bean/room/PrivateCheckBean;->stream:Lcom/qennnsad/aknkaksd/data/bean/room/PrivateLimitBean$StreamBean;

    return-object v0
.end method

.method public getTicket()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/qennnsad/aknkaksd/data/bean/room/PrivateCheckBean;->ticket:Ljava/lang/String;

    return-object v0
.end method

.method public setStream(Lcom/qennnsad/aknkaksd/data/bean/room/PrivateLimitBean$StreamBean;)V
    .locals 0

    iput-object p1, p0, Lcom/qennnsad/aknkaksd/data/bean/room/PrivateCheckBean;->stream:Lcom/qennnsad/aknkaksd/data/bean/room/PrivateLimitBean$StreamBean;

    return-void
.end method

.method public setTicket(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/qennnsad/aknkaksd/data/bean/room/PrivateCheckBean;->ticket:Ljava/lang/String;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "PrivateCheckBean{stream="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/qennnsad/aknkaksd/data/bean/room/PrivateCheckBean;->stream:Lcom/qennnsad/aknkaksd/data/bean/room/PrivateLimitBean$StreamBean;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ",ticket="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/qennnsad/aknkaksd/data/bean/room/PrivateCheckBean;->ticket:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/qennnsad/aknkaksd/data/bean/room/PrivateCheckBean;->stream:Lcom/qennnsad/aknkaksd/data/bean/room/PrivateLimitBean$StreamBean;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 2
    iget-object p2, p0, Lcom/qennnsad/aknkaksd/data/bean/room/PrivateCheckBean;->ticket:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return-void
.end method
