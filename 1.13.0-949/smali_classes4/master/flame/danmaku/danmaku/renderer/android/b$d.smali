.class Lmaster/flame/danmaku/danmaku/renderer/android/b$d;
.super Lmaster/flame/danmaku/danmaku/renderer/android/b$c;
.source "DanmakusRetainer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmaster/flame/danmaku/danmaku/renderer/android/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "d"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, v0}, Lmaster/flame/danmaku/danmaku/renderer/android/b$c;-><init>(Lmaster/flame/danmaku/danmaku/renderer/android/b$a;)V

    return-void
.end method

.method synthetic constructor <init>(Lmaster/flame/danmaku/danmaku/renderer/android/b$a;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Lmaster/flame/danmaku/danmaku/renderer/android/b$d;-><init>()V

    return-void
.end method


# virtual methods
.method protected b(ZLmaster/flame/danmaku/danmaku/model/d;Lmaster/flame/danmaku/danmaku/model/n;FLmaster/flame/danmaku/danmaku/model/d;Lmaster/flame/danmaku/danmaku/model/d;)Z
    .locals 0

    iget p1, p2, Lmaster/flame/danmaku/danmaku/model/d;->q:F

    add-float/2addr p4, p1

    invoke-interface {p3}, Lmaster/flame/danmaku/danmaku/model/n;->getHeight()I

    move-result p1

    int-to-float p1, p1

    cmpl-float p1, p4, p1

    if-lez p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method
