.class public Lcom/qennnsad/aknkaksd/data/bean/webgame/GameListBean;
.super Ljava/lang/Object;
.source "GameListBean.java"


# instance fields
.field private icon_url:Ljava/lang/String;

.field private id:I

.field private isSel:Z

.field private name:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lcom/qennnsad/aknkaksd/data/bean/webgame/GameListBean;->isSel:Z

    return-void
.end method


# virtual methods
.method public getIcon_url()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/qennnsad/aknkaksd/data/bean/webgame/GameListBean;->icon_url:Ljava/lang/String;

    return-object v0
.end method

.method public getId()I
    .locals 1

    iget v0, p0, Lcom/qennnsad/aknkaksd/data/bean/webgame/GameListBean;->id:I

    return v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/qennnsad/aknkaksd/data/bean/webgame/GameListBean;->name:Ljava/lang/String;

    return-object v0
.end method

.method public isSel()Z
    .locals 1

    iget-boolean v0, p0, Lcom/qennnsad/aknkaksd/data/bean/webgame/GameListBean;->isSel:Z

    return v0
.end method

.method public setIcon_url(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/qennnsad/aknkaksd/data/bean/webgame/GameListBean;->icon_url:Ljava/lang/String;

    return-void
.end method

.method public setId(I)V
    .locals 0

    iput p1, p0, Lcom/qennnsad/aknkaksd/data/bean/webgame/GameListBean;->id:I

    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/qennnsad/aknkaksd/data/bean/webgame/GameListBean;->name:Ljava/lang/String;

    return-void
.end method

.method public setSel(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/qennnsad/aknkaksd/data/bean/webgame/GameListBean;->isSel:Z

    return-void
.end method
