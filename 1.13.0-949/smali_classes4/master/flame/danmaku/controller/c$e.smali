.class Lmaster/flame/danmaku/controller/c$e;
.super Ljava/lang/Object;
.source "DrawHandler.java"

# interfaces
.implements Landroid/view/Choreographer$FrameCallback;


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x10
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmaster/flame/danmaku/controller/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "e"
.end annotation


# instance fields
.field final synthetic a:Lmaster/flame/danmaku/controller/c;


# direct methods
.method private constructor <init>(Lmaster/flame/danmaku/controller/c;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lmaster/flame/danmaku/controller/c$e;->a:Lmaster/flame/danmaku/controller/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lmaster/flame/danmaku/controller/c;Lmaster/flame/danmaku/controller/c$a;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lmaster/flame/danmaku/controller/c$e;-><init>(Lmaster/flame/danmaku/controller/c;)V

    return-void
.end method


# virtual methods
.method public doFrame(J)V
    .locals 0

    iget-object p1, p0, Lmaster/flame/danmaku/controller/c$e;->a:Lmaster/flame/danmaku/controller/c;

    const/4 p2, 0x2

    invoke-virtual {p1, p2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void
.end method
