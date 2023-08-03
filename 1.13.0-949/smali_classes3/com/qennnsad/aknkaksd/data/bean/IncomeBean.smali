.class public Lcom/qennnsad/aknkaksd/data/bean/IncomeBean;
.super Ljava/lang/Object;
.source "IncomeBean.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/qennnsad/aknkaksd/data/bean/IncomeBean;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private alipayname:Ljava/lang/String;

.field private earnbean:I

.field private rmb:D


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/qennnsad/aknkaksd/data/bean/IncomeBean$1;

    invoke-direct {v0}, Lcom/qennnsad/aknkaksd/data/bean/IncomeBean$1;-><init>()V

    sput-object v0, Lcom/qennnsad/aknkaksd/data/bean/IncomeBean;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .locals 2

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/qennnsad/aknkaksd/data/bean/IncomeBean;->earnbean:I

    .line 4
    invoke-virtual {p1}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v0

    iput-wide v0, p0, Lcom/qennnsad/aknkaksd/data/bean/IncomeBean;->rmb:D

    .line 5
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/qennnsad/aknkaksd/data/bean/IncomeBean;->alipayname:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getAlipayname()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/qennnsad/aknkaksd/data/bean/IncomeBean;->alipayname:Ljava/lang/String;

    return-object v0
.end method

.method public getEarnbean()I
    .locals 1

    iget v0, p0, Lcom/qennnsad/aknkaksd/data/bean/IncomeBean;->earnbean:I

    return v0
.end method

.method public getRmb()D
    .locals 2

    iget-wide v0, p0, Lcom/qennnsad/aknkaksd/data/bean/IncomeBean;->rmb:D

    return-wide v0
.end method

.method public setAlipayname(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/qennnsad/aknkaksd/data/bean/IncomeBean;->alipayname:Ljava/lang/String;

    return-void
.end method

.method public setEarnbean(I)V
    .locals 0

    iput p1, p0, Lcom/qennnsad/aknkaksd/data/bean/IncomeBean;->earnbean:I

    return-void
.end method

.method public setRmb(D)V
    .locals 0

    iput-wide p1, p0, Lcom/qennnsad/aknkaksd/data/bean/IncomeBean;->rmb:D

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "IncomeBean{earnbean="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/qennnsad/aknkaksd/data/bean/IncomeBean;->earnbean:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", rmb="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/qennnsad/aknkaksd/data/bean/IncomeBean;->rmb:D

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v1, ", alipayname=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/qennnsad/aknkaksd/data/bean/IncomeBean;->alipayname:Ljava/lang/String;

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
    .locals 2

    .line 1
    iget p2, p0, Lcom/qennnsad/aknkaksd/data/bean/IncomeBean;->earnbean:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 2
    iget-wide v0, p0, Lcom/qennnsad/aknkaksd/data/bean/IncomeBean;->rmb:D

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeDouble(D)V

    .line 3
    iget-object p2, p0, Lcom/qennnsad/aknkaksd/data/bean/IncomeBean;->alipayname:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return-void
.end method
