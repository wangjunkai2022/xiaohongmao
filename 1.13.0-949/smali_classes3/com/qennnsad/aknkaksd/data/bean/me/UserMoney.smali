.class public Lcom/qennnsad/aknkaksd/data/bean/me/UserMoney;
.super Ljava/lang/Object;
.source "UserMoney.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/qennnsad/aknkaksd/data/bean/me/UserMoney;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private beanbalance:I

.field private chipbalance:D

.field private coinbalance:I

.field private pointbalance:I

.field private remainfornextlev:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/qennnsad/aknkaksd/data/bean/me/UserMoney$1;

    invoke-direct {v0}, Lcom/qennnsad/aknkaksd/data/bean/me/UserMoney$1;-><init>()V

    sput-object v0, Lcom/qennnsad/aknkaksd/data/bean/me/UserMoney;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/qennnsad/aknkaksd/data/bean/me/UserMoney;->beanbalance:I

    .line 3
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/qennnsad/aknkaksd/data/bean/me/UserMoney;->coinbalance:I

    .line 4
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/qennnsad/aknkaksd/data/bean/me/UserMoney;->pointbalance:I

    .line 5
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/qennnsad/aknkaksd/data/bean/me/UserMoney;->remainfornextlev:I

    .line 6
    invoke-virtual {p1}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v0

    iput-wide v0, p0, Lcom/qennnsad/aknkaksd/data/bean/me/UserMoney;->chipbalance:D

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

    iget v0, p0, Lcom/qennnsad/aknkaksd/data/bean/me/UserMoney;->beanbalance:I

    return v0
.end method

.method public getChipbalance()D
    .locals 2

    iget-wide v0, p0, Lcom/qennnsad/aknkaksd/data/bean/me/UserMoney;->chipbalance:D

    return-wide v0
.end method

.method public getCoinbalance()I
    .locals 1

    iget v0, p0, Lcom/qennnsad/aknkaksd/data/bean/me/UserMoney;->coinbalance:I

    return v0
.end method

.method public getPointbalance()I
    .locals 1

    iget v0, p0, Lcom/qennnsad/aknkaksd/data/bean/me/UserMoney;->pointbalance:I

    return v0
.end method

.method public getRemainForNextLev()I
    .locals 1

    iget v0, p0, Lcom/qennnsad/aknkaksd/data/bean/me/UserMoney;->remainfornextlev:I

    return v0
.end method

.method public setBeanbalance(I)V
    .locals 0
    const p1, 0x7f08046a
    iput p1, p0, Lcom/qennnsad/aknkaksd/data/bean/me/UserMoney;->beanbalance:I

    return-void
.end method

.method public setChipbalance(D)V
    .locals 0

    iput-wide p1, p0, Lcom/qennnsad/aknkaksd/data/bean/me/UserMoney;->chipbalance:D

    return-void
.end method

.method public setCoinbalance(I)V
    .locals 0
    const p1, 0x7f08046a
    iput p1, p0, Lcom/qennnsad/aknkaksd/data/bean/me/UserMoney;->coinbalance:I

    return-void
.end method

.method public setPointbalance(I)V
    .locals 0
    const p1, 0x7f08046a
    iput p1, p0, Lcom/qennnsad/aknkaksd/data/bean/me/UserMoney;->pointbalance:I

    return-void
.end method

.method public setRemainForNextLev(I)V
    .locals 0
    const p1, 0x7f08046a
    iput p1, p0, Lcom/qennnsad/aknkaksd/data/bean/me/UserMoney;->remainfornextlev:I

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "UserMoney{beanbalance="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/qennnsad/aknkaksd/data/bean/me/UserMoney;->beanbalance:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", coinbalance="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/qennnsad/aknkaksd/data/bean/me/UserMoney;->coinbalance:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", pointbalance="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/qennnsad/aknkaksd/data/bean/me/UserMoney;->pointbalance:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", chipbalance="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/qennnsad/aknkaksd/data/bean/me/UserMoney;->chipbalance:D

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v1, ", remainfornextlev="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/qennnsad/aknkaksd/data/bean/me/UserMoney;->remainfornextlev:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2

    .line 1
    iget p2, p0, Lcom/qennnsad/aknkaksd/data/bean/me/UserMoney;->beanbalance:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 2
    iget p2, p0, Lcom/qennnsad/aknkaksd/data/bean/me/UserMoney;->coinbalance:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 3
    iget p2, p0, Lcom/qennnsad/aknkaksd/data/bean/me/UserMoney;->pointbalance:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 4
    iget p2, p0, Lcom/qennnsad/aknkaksd/data/bean/me/UserMoney;->remainfornextlev:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 5
    iget-wide v0, p0, Lcom/qennnsad/aknkaksd/data/bean/me/UserMoney;->chipbalance:D

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeDouble(D)V

    return-void
.end method
