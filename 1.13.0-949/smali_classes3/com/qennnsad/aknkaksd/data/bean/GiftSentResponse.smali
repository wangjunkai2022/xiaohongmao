.class public Lcom/qennnsad/aknkaksd/data/bean/GiftSentResponse;
.super Ljava/lang/Object;
.source "GiftSentResponse.java"


# instance fields
.field private coinbalance:I

.field private emceeLevel:I
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "emceelevel"
    .end annotation
.end field

.field private remainfornextlev:I


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getCoinbalance()I
    .locals 1

    iget v0, p0, Lcom/qennnsad/aknkaksd/data/bean/GiftSentResponse;->coinbalance:I

    return v0
.end method

.method public getEmceeLevel()I
    .locals 1

    iget v0, p0, Lcom/qennnsad/aknkaksd/data/bean/GiftSentResponse;->emceeLevel:I

    return v0
.end method

.method public getRemainfornextlev()I
    .locals 1

    iget v0, p0, Lcom/qennnsad/aknkaksd/data/bean/GiftSentResponse;->remainfornextlev:I

    return v0
.end method

.method public setCoinbalance(I)V
    .locals 0

    iput p1, p0, Lcom/qennnsad/aknkaksd/data/bean/GiftSentResponse;->coinbalance:I

    return-void
.end method

.method public setEmceeLevel(I)V
    .locals 0

    iput p1, p0, Lcom/qennnsad/aknkaksd/data/bean/GiftSentResponse;->emceeLevel:I

    return-void
.end method

.method public setRemainfornextlev(I)V
    .locals 0

    iput p1, p0, Lcom/qennnsad/aknkaksd/data/bean/GiftSentResponse;->remainfornextlev:I

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "GiftSentResponse{coinbalance=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/qennnsad/aknkaksd/data/bean/GiftSentResponse;->coinbalance:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ",remainfornextlev=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/qennnsad/aknkaksd/data/bean/GiftSentResponse;->remainfornextlev:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ",emceeLevel=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/qennnsad/aknkaksd/data/bean/GiftSentResponse;->emceeLevel:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
