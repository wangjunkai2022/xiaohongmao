.class public Lcom/qennnsad/aknkaksd/data/bean/EditAvatarBean;
.super Ljava/lang/Object;
.source "EditAvatarBean.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/qennnsad/aknkaksd/data/bean/EditAvatarBean;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private avatar:Ljava/lang/String;

.field private avatartime:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/qennnsad/aknkaksd/data/bean/EditAvatarBean$1;

    invoke-direct {v0}, Lcom/qennnsad/aknkaksd/data/bean/EditAvatarBean$1;-><init>()V

    sput-object v0, Lcom/qennnsad/aknkaksd/data/bean/EditAvatarBean;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/qennnsad/aknkaksd/data/bean/EditAvatarBean;->avatartime:I

    .line 3
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/qennnsad/aknkaksd/data/bean/EditAvatarBean;->avatar:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getAvatar()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/qennnsad/aknkaksd/data/bean/EditAvatarBean;->avatar:Ljava/lang/String;

    return-object v0
.end method

.method public getAvatartime()I
    .locals 1

    iget v0, p0, Lcom/qennnsad/aknkaksd/data/bean/EditAvatarBean;->avatartime:I

    return v0
.end method

.method public setAvatar(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/qennnsad/aknkaksd/data/bean/EditAvatarBean;->avatar:Ljava/lang/String;

    return-void
.end method

.method public setAvatartime(I)V
    .locals 0

    iput p1, p0, Lcom/qennnsad/aknkaksd/data/bean/EditAvatarBean;->avatartime:I

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "EditAvatarBean{avatartime="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/qennnsad/aknkaksd/data/bean/EditAvatarBean;->avatartime:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", avatar=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/qennnsad/aknkaksd/data/bean/EditAvatarBean;->avatar:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    .line 1
    iget p2, p0, Lcom/qennnsad/aknkaksd/data/bean/EditAvatarBean;->avatartime:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 2
    iget-object p2, p0, Lcom/qennnsad/aknkaksd/data/bean/EditAvatarBean;->avatar:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return-void
.end method
