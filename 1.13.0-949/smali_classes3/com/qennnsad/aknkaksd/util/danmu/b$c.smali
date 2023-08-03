.class Lcom/qennnsad/aknkaksd/util/danmu/b$c;
.super Lmaster/flame/danmaku/danmaku/parser/a;
.source "FlyGiftControl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/qennnsad/aknkaksd/util/danmu/b;->n()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic k:Lcom/qennnsad/aknkaksd/util/danmu/b;


# direct methods
.method constructor <init>(Lcom/qennnsad/aknkaksd/util/danmu/b;)V
    .locals 0

    iput-object p1, p0, Lcom/qennnsad/aknkaksd/util/danmu/b$c;->k:Lcom/qennnsad/aknkaksd/util/danmu/b;

    invoke-direct {p0}, Lmaster/flame/danmaku/danmaku/parser/a;-><init>()V

    return-void
.end method


# virtual methods
.method protected bridge synthetic f()Lmaster/flame/danmaku/danmaku/model/m;
    .locals 1

    invoke-virtual {p0}, Lcom/qennnsad/aknkaksd/util/danmu/b$c;->m()Lmaster/flame/danmaku/danmaku/model/android/e;

    move-result-object v0

    return-object v0
.end method

.method protected m()Lmaster/flame/danmaku/danmaku/model/android/e;
    .locals 1

    new-instance v0, Lmaster/flame/danmaku/danmaku/model/android/e;

    invoke-direct {v0}, Lmaster/flame/danmaku/danmaku/model/android/e;-><init>()V

    return-object v0
.end method
