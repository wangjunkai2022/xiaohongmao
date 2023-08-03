.class Lmaster/flame/danmaku/controller/e$b;
.super Ljava/lang/Object;
.source "DrawTask.java"

# interfaces
.implements Lf8/a$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lmaster/flame/danmaku/controller/e;-><init>(Lmaster/flame/danmaku/danmaku/model/f;Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext;Lmaster/flame/danmaku/controller/h$a;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lmaster/flame/danmaku/controller/e;


# direct methods
.method constructor <init>(Lmaster/flame/danmaku/controller/e;)V
    .locals 0

    iput-object p1, p0, Lmaster/flame/danmaku/controller/e$b;->a:Lmaster/flame/danmaku/controller/e;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lmaster/flame/danmaku/danmaku/model/d;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lmaster/flame/danmaku/controller/e$b;->a:Lmaster/flame/danmaku/controller/e;

    iget-object v0, v0, Lmaster/flame/danmaku/controller/e;->g:Lmaster/flame/danmaku/controller/h$a;

    if-eqz v0, :cond_0

    .line 2
    invoke-interface {v0, p1}, Lmaster/flame/danmaku/controller/h$a;->a(Lmaster/flame/danmaku/danmaku/model/d;)V

    :cond_0
    return-void
.end method
