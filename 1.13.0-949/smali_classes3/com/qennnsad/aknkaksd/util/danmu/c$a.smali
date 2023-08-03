.class Lcom/qennnsad/aknkaksd/util/danmu/c$a;
.super Lmaster/flame/danmaku/danmaku/model/android/b$a;
.source "LevelDanmuControl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/qennnsad/aknkaksd/util/danmu/c;
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

    iput-object p1, p0, Lcom/qennnsad/aknkaksd/util/danmu/c$a;->a:Lcom/qennnsad/aknkaksd/util/danmu/c;

    invoke-direct {p0}, Lmaster/flame/danmaku/danmaku/model/android/b$a;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lmaster/flame/danmaku/danmaku/model/d;Z)V
    .locals 0

    return-void
.end method

.method public b(Lmaster/flame/danmaku/danmaku/model/d;)V
    .locals 1

    .line 1
    iget-object v0, p1, Lmaster/flame/danmaku/danmaku/model/d;->c:Ljava/lang/CharSequence;

    instance-of v0, v0, Landroid/text/Spanned;

    if-eqz v0, :cond_0

    const-string v0, ""

    .line 2
    iput-object v0, p1, Lmaster/flame/danmaku/danmaku/model/d;->c:Ljava/lang/CharSequence;

    :cond_0
    return-void
.end method
