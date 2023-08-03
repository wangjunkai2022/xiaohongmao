.class Lcom/qennnsad/aknkaksd/util/danmu/c$b;
.super Ljava/lang/Object;
.source "LevelDanmuControl.java"

# interfaces
.implements Lmaster/flame/danmaku/controller/c$d;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/qennnsad/aknkaksd/util/danmu/c;->h()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/qennnsad/aknkaksd/util/danmu/c;


# direct methods
.method constructor <init>(Lcom/qennnsad/aknkaksd/util/danmu/c;)V
    .locals 0

    iput-object p1, p0, Lcom/qennnsad/aknkaksd/util/danmu/c$b;->a:Lcom/qennnsad/aknkaksd/util/danmu/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public o()V
    .locals 0

    return-void
.end method

.method public q(Lmaster/flame/danmaku/danmaku/model/f;)V
    .locals 0

    return-void
.end method

.method public v()V
    .locals 1

    iget-object v0, p0, Lcom/qennnsad/aknkaksd/util/danmu/c$b;->a:Lcom/qennnsad/aknkaksd/util/danmu/c;

    invoke-static {v0}, Lcom/qennnsad/aknkaksd/util/danmu/c;->a(Lcom/qennnsad/aknkaksd/util/danmu/c;)Lmaster/flame/danmaku/controller/f;

    move-result-object v0

    invoke-interface {v0}, Lmaster/flame/danmaku/controller/f;->start()V

    return-void
.end method

.method public w(Lmaster/flame/danmaku/danmaku/model/d;)V
    .locals 0

    return-void
.end method
