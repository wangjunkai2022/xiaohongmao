.class public Lmaster/flame/danmaku/danmaku/model/android/h;
.super Ljava/lang/Object;
.source "DrawingCachePoolManager.java"

# interfaces
.implements Lmaster/flame/danmaku/danmaku/model/objectpool/d;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lmaster/flame/danmaku/danmaku/model/objectpool/d<",
        "Lmaster/flame/danmaku/danmaku/model/android/f;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic a(Lmaster/flame/danmaku/danmaku/model/objectpool/c;)V
    .locals 0

    check-cast p1, Lmaster/flame/danmaku/danmaku/model/android/f;

    invoke-virtual {p0, p1}, Lmaster/flame/danmaku/danmaku/model/android/h;->f(Lmaster/flame/danmaku/danmaku/model/android/f;)V

    return-void
.end method

.method public bridge synthetic b()Lmaster/flame/danmaku/danmaku/model/objectpool/c;
    .locals 1

    invoke-virtual {p0}, Lmaster/flame/danmaku/danmaku/model/android/h;->d()Lmaster/flame/danmaku/danmaku/model/android/f;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic c(Lmaster/flame/danmaku/danmaku/model/objectpool/c;)V
    .locals 0

    check-cast p1, Lmaster/flame/danmaku/danmaku/model/android/f;

    invoke-virtual {p0, p1}, Lmaster/flame/danmaku/danmaku/model/android/h;->e(Lmaster/flame/danmaku/danmaku/model/android/f;)V

    return-void
.end method

.method public d()Lmaster/flame/danmaku/danmaku/model/android/f;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public e(Lmaster/flame/danmaku/danmaku/model/android/f;)V
    .locals 0

    return-void
.end method

.method public f(Lmaster/flame/danmaku/danmaku/model/android/f;)V
    .locals 0

    return-void
.end method
