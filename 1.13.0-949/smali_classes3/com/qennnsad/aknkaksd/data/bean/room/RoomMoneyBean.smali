.class public Lcom/qennnsad/aknkaksd/data/bean/room/RoomMoneyBean;
.super Ljava/lang/Object;
.source "RoomMoneyBean.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/qennnsad/aknkaksd/data/bean/room/RoomMoneyBean;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private beanbalance:I

.field private coinbalance:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/qennnsad/aknkaksd/data/bean/room/RoomMoneyBean$1;

    invoke-direct {v0}, Lcom/qennnsad/aknkaksd/data/bean/room/RoomMoneyBean$1;-><init>()V

    sput-object v0, Lcom/qennnsad/aknkaksd/data/bean/room/RoomMoneyBean;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/qennnsad/aknkaksd/data/bean/room/RoomMoneyBean;->beanbalance:I

    .line 3
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p1

    iput p1, p0, Lcom/qennnsad/aknkaksd/data/bean/room/RoomMoneyBean;->coinbalance:I

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getBeanbalance()I
    .locals 1

    iget v0, p0, Lcom/qennnsad/aknkaksd/data/bean/room/RoomMoneyBean;->beanbalance:I

    return v0
.end method

.method public getCoinbalance()I
    .locals 1

    iget v0, p0, Lcom/qennnsad/aknkaksd/data/bean/room/RoomMoneyBean;->coinbalance:I

    return v0
.end method

.method public setBeanbalance(I)V
    .locals 0

    iput p1, p0, Lcom/qennnsad/aknkaksd/data/bean/room/RoomMoneyBean;->beanbalance:I

    return-void
.end method

.method public setCoinbalance(I)V
    .locals 0

    iput p1, p0, Lcom/qennnsad/aknkaksd/data/bean/room/RoomMoneyBean;->coinbalance:I

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "RoomMoneyBean{beanbalance="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/qennnsad/aknkaksd/data/bean/room/RoomMoneyBean;->beanbalance:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", coinbalance="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/qennnsad/aknkaksd/data/bean/room/RoomMoneyBean;->coinbalance:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    .line 1
    iget p2, p0, Lcom/qennnsad/aknkaksd/data/bean/room/RoomMoneyBean;->beanbalance:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 2
    iget p2, p0, Lcom/qennnsad/aknkaksd/data/bean/room/RoomMoneyBean;->coinbalance:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method
