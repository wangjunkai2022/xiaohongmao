.class Lmaster/flame/danmaku/controller/a$b$a;
.super Lmaster/flame/danmaku/danmaku/model/m$c;
.source "CacheManagingDrawTask.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lmaster/flame/danmaku/controller/a$b;->u()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lmaster/flame/danmaku/danmaku/model/m$c<",
        "Lmaster/flame/danmaku/danmaku/model/d;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic e:Lmaster/flame/danmaku/controller/a$b;


# direct methods
.method constructor <init>(Lmaster/flame/danmaku/controller/a$b;)V
    .locals 0

    iput-object p1, p0, Lmaster/flame/danmaku/controller/a$b$a;->e:Lmaster/flame/danmaku/controller/a$b;

    invoke-direct {p0}, Lmaster/flame/danmaku/danmaku/model/m$c;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic a(Ljava/lang/Object;)I
    .locals 0

    check-cast p1, Lmaster/flame/danmaku/danmaku/model/d;

    invoke-virtual {p0, p1}, Lmaster/flame/danmaku/controller/a$b$a;->e(Lmaster/flame/danmaku/danmaku/model/d;)I

    move-result p1

    return p1
.end method

.method public e(Lmaster/flame/danmaku/danmaku/model/d;)I
    .locals 3

    iget-object v0, p0, Lmaster/flame/danmaku/controller/a$b$a;->e:Lmaster/flame/danmaku/controller/a$b;

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Lmaster/flame/danmaku/controller/a$b;->t(ZLmaster/flame/danmaku/danmaku/model/d;Lmaster/flame/danmaku/danmaku/model/d;)V

    const/4 p1, 0x0

    return p1
.end method
