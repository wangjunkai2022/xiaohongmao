.class public Lcom/qennnsad/aknkaksd/data/bean/games/GameConfigBean$GameNotifyBean;
.super Ljava/lang/Object;
.source "GameConfigBean.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/qennnsad/aknkaksd/data/bean/games/GameConfigBean;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "GameNotifyBean"
.end annotation


# instance fields
.field private amount:D

.field private flag:I


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getAmount()D
    .locals 2

    iget-wide v0, p0, Lcom/qennnsad/aknkaksd/data/bean/games/GameConfigBean$GameNotifyBean;->amount:D

    return-wide v0
.end method

.method public getFlag()I
    .locals 1

    iget v0, p0, Lcom/qennnsad/aknkaksd/data/bean/games/GameConfigBean$GameNotifyBean;->flag:I

    return v0
.end method

.method public setAmount(D)V
    .locals 0

    iput-wide p1, p0, Lcom/qennnsad/aknkaksd/data/bean/games/GameConfigBean$GameNotifyBean;->amount:D

    return-void
.end method

.method public setFlag(I)V
    .locals 0

    iput p1, p0, Lcom/qennnsad/aknkaksd/data/bean/games/GameConfigBean$GameNotifyBean;->flag:I

    return-void
.end method
