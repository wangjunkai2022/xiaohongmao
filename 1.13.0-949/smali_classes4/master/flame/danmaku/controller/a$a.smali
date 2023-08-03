.class Lmaster/flame/danmaku/controller/a$a;
.super Ljava/lang/Object;
.source "CacheManagingDrawTask.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lmaster/flame/danmaku/controller/a;->x(Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext;Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext$DanmakuConfigTag;[Ljava/lang/Object;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lmaster/flame/danmaku/controller/a;


# direct methods
.method constructor <init>(Lmaster/flame/danmaku/controller/a;)V
    .locals 0

    iput-object p1, p0, Lmaster/flame/danmaku/controller/a$a;->a:Lmaster/flame/danmaku/controller/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-object v0, p0, Lmaster/flame/danmaku/controller/a$a;->a:Lmaster/flame/danmaku/controller/a;

    iget-object v0, v0, Lmaster/flame/danmaku/controller/e;->g:Lmaster/flame/danmaku/controller/h$a;

    invoke-interface {v0}, Lmaster/flame/danmaku/controller/h$a;->e()V

    return-void
.end method
