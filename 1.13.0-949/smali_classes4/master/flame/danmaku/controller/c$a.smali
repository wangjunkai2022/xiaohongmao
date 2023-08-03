.class Lmaster/flame/danmaku/controller/c$a;
.super Ljava/lang/Object;
.source "DrawHandler.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lmaster/flame/danmaku/controller/c;->handleMessage(Landroid/os/Message;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lmaster/flame/danmaku/controller/c;


# direct methods
.method constructor <init>(Lmaster/flame/danmaku/controller/c;)V
    .locals 0

    iput-object p1, p0, Lmaster/flame/danmaku/controller/c$a;->a:Lmaster/flame/danmaku/controller/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 1
    iget-object v0, p0, Lmaster/flame/danmaku/controller/c$a;->a:Lmaster/flame/danmaku/controller/c;

    const-wide/16 v1, 0x0

    invoke-static {v0, v1, v2}, Lmaster/flame/danmaku/controller/c;->a(Lmaster/flame/danmaku/controller/c;J)J

    .line 2
    iget-object v0, p0, Lmaster/flame/danmaku/controller/c$a;->a:Lmaster/flame/danmaku/controller/c;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lmaster/flame/danmaku/controller/c;->c(Lmaster/flame/danmaku/controller/c;Z)Z

    .line 3
    iget-object v0, p0, Lmaster/flame/danmaku/controller/c$a;->a:Lmaster/flame/danmaku/controller/c;

    invoke-static {v0}, Lmaster/flame/danmaku/controller/c;->m(Lmaster/flame/danmaku/controller/c;)Lmaster/flame/danmaku/controller/c$d;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 4
    iget-object v0, p0, Lmaster/flame/danmaku/controller/c$a;->a:Lmaster/flame/danmaku/controller/c;

    invoke-static {v0}, Lmaster/flame/danmaku/controller/c;->m(Lmaster/flame/danmaku/controller/c;)Lmaster/flame/danmaku/controller/c$d;

    move-result-object v0

    invoke-interface {v0}, Lmaster/flame/danmaku/controller/c$d;->v()V

    :cond_0
    return-void
.end method
