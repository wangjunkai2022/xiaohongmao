.class Lmaster/flame/danmaku/controller/e$a;
.super Ljava/lang/Object;
.source "DrawTask.java"

# interfaces
.implements Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmaster/flame/danmaku/controller/e;
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

    iput-object p1, p0, Lmaster/flame/danmaku/controller/e$a;->a:Lmaster/flame/danmaku/controller/e;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public varargs a(Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext;Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext$DanmakuConfigTag;[Ljava/lang/Object;)Z
    .locals 1

    iget-object v0, p0, Lmaster/flame/danmaku/controller/e$a;->a:Lmaster/flame/danmaku/controller/e;

    invoke-virtual {v0, p1, p2, p3}, Lmaster/flame/danmaku/controller/e;->x(Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext;Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext$DanmakuConfigTag;[Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method
