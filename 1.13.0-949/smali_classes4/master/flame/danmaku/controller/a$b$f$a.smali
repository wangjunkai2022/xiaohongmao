.class Lmaster/flame/danmaku/controller/a$b$f$a;
.super Lmaster/flame/danmaku/danmaku/model/m$c;
.source "CacheManagingDrawTask.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lmaster/flame/danmaku/controller/a$b$f;->m()V
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
.field final synthetic e:Lmaster/flame/danmaku/controller/a$b$f;


# direct methods
.method constructor <init>(Lmaster/flame/danmaku/controller/a$b$f;)V
    .locals 0

    iput-object p1, p0, Lmaster/flame/danmaku/controller/a$b$f$a;->e:Lmaster/flame/danmaku/controller/a$b$f;

    invoke-direct {p0}, Lmaster/flame/danmaku/danmaku/model/m$c;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic a(Ljava/lang/Object;)I
    .locals 0

    check-cast p1, Lmaster/flame/danmaku/danmaku/model/d;

    invoke-virtual {p0, p1}, Lmaster/flame/danmaku/controller/a$b$f$a;->e(Lmaster/flame/danmaku/danmaku/model/d;)I

    move-result p1

    return p1
.end method

.method public e(Lmaster/flame/danmaku/danmaku/model/d;)I
    .locals 9

    .line 1
    iget-object v0, p0, Lmaster/flame/danmaku/controller/a$b$f$a;->e:Lmaster/flame/danmaku/controller/a$b$f;

    invoke-static {v0}, Lmaster/flame/danmaku/controller/a$b$f;->a(Lmaster/flame/danmaku/controller/a$b$f;)Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_5

    iget-object v0, p0, Lmaster/flame/danmaku/controller/a$b$f$a;->e:Lmaster/flame/danmaku/controller/a$b$f;

    invoke-static {v0}, Lmaster/flame/danmaku/controller/a$b$f;->b(Lmaster/flame/danmaku/controller/a$b$f;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    invoke-virtual {p1}, Lmaster/flame/danmaku/danmaku/model/d;->o()Z

    move-result v0

    if-nez v0, :cond_1

    .line 3
    iget-object v0, p0, Lmaster/flame/danmaku/controller/a$b$f$a;->e:Lmaster/flame/danmaku/controller/a$b$f;

    iget-object v0, v0, Lmaster/flame/danmaku/controller/a$b$f;->e:Lmaster/flame/danmaku/controller/a$b;

    iget-object v0, v0, Lmaster/flame/danmaku/controller/a$b;->j:Lmaster/flame/danmaku/controller/a;

    iget-object v8, v0, Lmaster/flame/danmaku/controller/e;->c:Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext;

    iget-object v2, v8, Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext;->z:Lmaster/flame/danmaku/controller/b;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x1

    move-object v3, p1

    invoke-virtual/range {v2 .. v8}, Lmaster/flame/danmaku/controller/b;->b(Lmaster/flame/danmaku/danmaku/model/d;IILmaster/flame/danmaku/danmaku/model/f;ZLmaster/flame/danmaku/danmaku/model/android/DanmakuContext;)V

    .line 4
    :cond_1
    invoke-virtual {p1}, Lmaster/flame/danmaku/danmaku/model/d;->p()Z

    move-result v0

    const/4 v2, 0x0

    if-eqz v0, :cond_2

    return v2

    .line 5
    :cond_2
    invoke-virtual {p1}, Lmaster/flame/danmaku/danmaku/model/d;->s()Z

    move-result v0

    if-nez v0, :cond_3

    .line 6
    iget-object v0, p0, Lmaster/flame/danmaku/controller/a$b$f$a;->e:Lmaster/flame/danmaku/controller/a$b$f;

    iget-object v0, v0, Lmaster/flame/danmaku/controller/a$b$f;->e:Lmaster/flame/danmaku/controller/a$b;

    iget-object v0, v0, Lmaster/flame/danmaku/controller/a$b;->j:Lmaster/flame/danmaku/controller/a;

    iget-object v0, v0, Lmaster/flame/danmaku/controller/e;->d:Lmaster/flame/danmaku/danmaku/model/b;

    invoke-virtual {p1, v0, v1}, Lmaster/flame/danmaku/danmaku/model/d;->B(Lmaster/flame/danmaku/danmaku/model/n;Z)V

    .line 7
    :cond_3
    invoke-virtual {p1}, Lmaster/flame/danmaku/danmaku/model/d;->w()Z

    move-result v0

    if-nez v0, :cond_4

    .line 8
    iget-object v0, p0, Lmaster/flame/danmaku/controller/a$b$f$a;->e:Lmaster/flame/danmaku/controller/a$b$f;

    iget-object v0, v0, Lmaster/flame/danmaku/controller/a$b$f;->e:Lmaster/flame/danmaku/controller/a$b;

    iget-object v0, v0, Lmaster/flame/danmaku/controller/a$b;->j:Lmaster/flame/danmaku/controller/a;

    iget-object v0, v0, Lmaster/flame/danmaku/controller/e;->d:Lmaster/flame/danmaku/danmaku/model/b;

    invoke-virtual {p1, v0, v1}, Lmaster/flame/danmaku/danmaku/model/d;->C(Lmaster/flame/danmaku/danmaku/model/n;Z)V

    :cond_4
    return v2

    :cond_5
    :goto_0
    return v1
.end method
