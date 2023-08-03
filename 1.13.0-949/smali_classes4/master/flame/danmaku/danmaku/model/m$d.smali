.class public Lmaster/flame/danmaku/danmaku/model/m$d;
.super Lmaster/flame/danmaku/danmaku/model/m$a;
.source "IDanmakus.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmaster/flame/danmaku/danmaku/model/m;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "d"
.end annotation


# direct methods
.method public constructor <init>(Z)V
    .locals 0

    invoke-direct {p0, p1}, Lmaster/flame/danmaku/danmaku/model/m$a;-><init>(Z)V

    return-void
.end method


# virtual methods
.method public a(Lmaster/flame/danmaku/danmaku/model/d;Lmaster/flame/danmaku/danmaku/model/d;)I
    .locals 0

    invoke-super {p0, p1, p2}, Lmaster/flame/danmaku/danmaku/model/m$a;->a(Lmaster/flame/danmaku/danmaku/model/d;Lmaster/flame/danmaku/danmaku/model/d;)I

    move-result p1

    return p1
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    check-cast p1, Lmaster/flame/danmaku/danmaku/model/d;

    check-cast p2, Lmaster/flame/danmaku/danmaku/model/d;

    invoke-virtual {p0, p1, p2}, Lmaster/flame/danmaku/danmaku/model/m$d;->a(Lmaster/flame/danmaku/danmaku/model/d;Lmaster/flame/danmaku/danmaku/model/d;)I

    move-result p1

    return p1
.end method
