.class Lmaster/flame/danmaku/ui/widget/DanmakuView$a;
.super Ljava/lang/Object;
.source "DanmakuView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmaster/flame/danmaku/ui/widget/DanmakuView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lmaster/flame/danmaku/ui/widget/DanmakuView;


# direct methods
.method constructor <init>(Lmaster/flame/danmaku/ui/widget/DanmakuView;)V
    .locals 0

    iput-object p1, p0, Lmaster/flame/danmaku/ui/widget/DanmakuView$a;->a:Lmaster/flame/danmaku/ui/widget/DanmakuView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 1
    iget-object v0, p0, Lmaster/flame/danmaku/ui/widget/DanmakuView$a;->a:Lmaster/flame/danmaku/ui/widget/DanmakuView;

    iget-object v0, v0, Lmaster/flame/danmaku/ui/widget/DanmakuView;->c:Lmaster/flame/danmaku/controller/c;

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object v1, p0, Lmaster/flame/danmaku/ui/widget/DanmakuView$a;->a:Lmaster/flame/danmaku/ui/widget/DanmakuView;

    invoke-static {v1}, Lmaster/flame/danmaku/ui/widget/DanmakuView;->z(Lmaster/flame/danmaku/ui/widget/DanmakuView;)I

    .line 3
    iget-object v1, p0, Lmaster/flame/danmaku/ui/widget/DanmakuView$a;->a:Lmaster/flame/danmaku/ui/widget/DanmakuView;

    invoke-static {v1}, Lmaster/flame/danmaku/ui/widget/DanmakuView;->y(Lmaster/flame/danmaku/ui/widget/DanmakuView;)I

    move-result v1

    const/4 v2, 0x4

    if-gt v1, v2, :cond_2

    iget-object v1, p0, Lmaster/flame/danmaku/ui/widget/DanmakuView$a;->a:Lmaster/flame/danmaku/ui/widget/DanmakuView;

    invoke-static {v1}, Lmaster/flame/danmaku/ui/widget/DanmakuView;->A(Lmaster/flame/danmaku/ui/widget/DanmakuView;)Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_0

    .line 4
    :cond_1
    iget-object v1, p0, Lmaster/flame/danmaku/ui/widget/DanmakuView$a;->a:Lmaster/flame/danmaku/ui/widget/DanmakuView;

    invoke-static {v1}, Lmaster/flame/danmaku/ui/widget/DanmakuView;->y(Lmaster/flame/danmaku/ui/widget/DanmakuView;)I

    move-result v1

    mul-int/lit8 v1, v1, 0x64

    int-to-long v1, v1

    invoke-virtual {v0, p0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_1

    .line 5
    :cond_2
    :goto_0
    invoke-virtual {v0}, Lmaster/flame/danmaku/controller/c;->X()V

    :goto_1
    return-void
.end method
