.class public Lcom/qennnsad/aknkaksd/data/bean/games/GameConfigBean;
.super Ljava/lang/Object;
.source "GameConfigBean.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/qennnsad/aknkaksd/data/bean/games/GameConfigBean$GameNotifyBean;
    }
.end annotation


# instance fields
.field private game_id:I

.field private game_notify:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/qennnsad/aknkaksd/data/bean/games/GameConfigBean$GameNotifyBean;",
            ">;"
        }
    .end annotation
.end field

.field private profit_notify:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getGame_id()I
    .locals 1

    iget v0, p0, Lcom/qennnsad/aknkaksd/data/bean/games/GameConfigBean;->game_id:I

    return v0
.end method

.method public getGame_notify()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/qennnsad/aknkaksd/data/bean/games/GameConfigBean$GameNotifyBean;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/qennnsad/aknkaksd/data/bean/games/GameConfigBean;->game_notify:Ljava/util/List;

    return-object v0
.end method

.method public isProfit_notify()Z
    .locals 1

    iget-boolean v0, p0, Lcom/qennnsad/aknkaksd/data/bean/games/GameConfigBean;->profit_notify:Z

    return v0
.end method

.method public setGame_id(I)V
    .locals 0

    iput p1, p0, Lcom/qennnsad/aknkaksd/data/bean/games/GameConfigBean;->game_id:I

    return-void
.end method

.method public setGame_notify(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/qennnsad/aknkaksd/data/bean/games/GameConfigBean$GameNotifyBean;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/qennnsad/aknkaksd/data/bean/games/GameConfigBean;->game_notify:Ljava/util/List;

    return-void
.end method

.method public setProfit_notify(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/qennnsad/aknkaksd/data/bean/games/GameConfigBean;->profit_notify:Z

    return-void
.end method
