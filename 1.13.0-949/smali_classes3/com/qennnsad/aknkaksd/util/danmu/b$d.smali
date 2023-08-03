.class Lcom/qennnsad/aknkaksd/util/danmu/b$d;
.super Ljava/lang/Object;
.source "FlyGiftControl.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/qennnsad/aknkaksd/util/danmu/b;->h(Ljava/util/List;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/util/List;

.field final synthetic b:Lcom/qennnsad/aknkaksd/util/danmu/b;


# direct methods
.method constructor <init>(Lcom/qennnsad/aknkaksd/util/danmu/b;Ljava/util/List;)V
    .locals 0

    iput-object p1, p0, Lcom/qennnsad/aknkaksd/util/danmu/b$d;->b:Lcom/qennnsad/aknkaksd/util/danmu/b;

    iput-object p2, p0, Lcom/qennnsad/aknkaksd/util/danmu/b$d;->a:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    const/4 v0, 0x0

    .line 1
    :goto_0
    iget-object v1, p0, Lcom/qennnsad/aknkaksd/util/danmu/b$d;->a:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 2
    iget-object v1, p0, Lcom/qennnsad/aknkaksd/util/danmu/b$d;->b:Lcom/qennnsad/aknkaksd/util/danmu/b;

    iget-object v2, p0, Lcom/qennnsad/aknkaksd/util/danmu/b$d;->a:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/qennnsad/aknkaksd/data/bean/Danmu;

    invoke-virtual {v1, v2, v0}, Lcom/qennnsad/aknkaksd/util/danmu/b;->g(Lcom/qennnsad/aknkaksd/data/bean/Danmu;I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method
