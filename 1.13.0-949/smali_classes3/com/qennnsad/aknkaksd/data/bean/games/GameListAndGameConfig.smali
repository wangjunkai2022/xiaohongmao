.class public Lcom/qennnsad/aknkaksd/data/bean/games/GameListAndGameConfig;
.super Ljava/lang/Object;
.source "GameListAndGameConfig.java"


# instance fields
.field configBean:Lcom/qennnsad/aknkaksd/data/bean/games/GameConfigBean;

.field gameListBeans:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/qennnsad/aknkaksd/data/bean/webgame/GameListBean;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getConfigBean()Lcom/qennnsad/aknkaksd/data/bean/games/GameConfigBean;
    .locals 1

    iget-object v0, p0, Lcom/qennnsad/aknkaksd/data/bean/games/GameListAndGameConfig;->configBean:Lcom/qennnsad/aknkaksd/data/bean/games/GameConfigBean;

    return-object v0
.end method

.method public getGameListBeans()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/qennnsad/aknkaksd/data/bean/webgame/GameListBean;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/qennnsad/aknkaksd/data/bean/games/GameListAndGameConfig;->gameListBeans:Ljava/util/List;

    return-object v0
.end method

.method public setConfigBean(Lcom/qennnsad/aknkaksd/data/bean/games/GameConfigBean;)V
    .locals 0

    iput-object p1, p0, Lcom/qennnsad/aknkaksd/data/bean/games/GameListAndGameConfig;->configBean:Lcom/qennnsad/aknkaksd/data/bean/games/GameConfigBean;

    return-void
.end method

.method public setGameListBeans(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/qennnsad/aknkaksd/data/bean/webgame/GameListBean;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/qennnsad/aknkaksd/data/bean/games/GameListAndGameConfig;->gameListBeans:Ljava/util/List;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "GameListAndGameConfig{configBean="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/qennnsad/aknkaksd/data/bean/games/GameListAndGameConfig;->configBean:Lcom/qennnsad/aknkaksd/data/bean/games/GameConfigBean;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", gameListBeans="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/qennnsad/aknkaksd/data/bean/games/GameListAndGameConfig;->gameListBeans:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
