.class Lmaster/flame/danmaku/controller/c$c;
.super Ljava/lang/Object;
.source "DrawHandler.java"

# interfaces
.implements Lmaster/flame/danmaku/controller/h$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lmaster/flame/danmaku/controller/c;->Q(Ljava/lang/Runnable;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/Runnable;

.field final synthetic b:Lmaster/flame/danmaku/controller/c;


# direct methods
.method constructor <init>(Lmaster/flame/danmaku/controller/c;Ljava/lang/Runnable;)V
    .locals 0

    iput-object p1, p0, Lmaster/flame/danmaku/controller/c$c;->b:Lmaster/flame/danmaku/controller/c;

    iput-object p2, p0, Lmaster/flame/danmaku/controller/c$c;->a:Ljava/lang/Runnable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lmaster/flame/danmaku/danmaku/model/d;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lmaster/flame/danmaku/controller/c$c;->b:Lmaster/flame/danmaku/controller/c;

    invoke-static {v0}, Lmaster/flame/danmaku/controller/c;->m(Lmaster/flame/danmaku/controller/c;)Lmaster/flame/danmaku/controller/c$d;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lmaster/flame/danmaku/controller/c$c;->b:Lmaster/flame/danmaku/controller/c;

    invoke-static {v0}, Lmaster/flame/danmaku/controller/c;->m(Lmaster/flame/danmaku/controller/c;)Lmaster/flame/danmaku/controller/c$d;

    move-result-object v0

    invoke-interface {v0, p1}, Lmaster/flame/danmaku/controller/c$d;->w(Lmaster/flame/danmaku/danmaku/model/d;)V

    :cond_0
    return-void
.end method

.method public b(Lmaster/flame/danmaku/danmaku/model/d;)V
    .locals 4

    .line 1
    invoke-virtual {p1}, Lmaster/flame/danmaku/danmaku/model/d;->y()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-virtual {p1}, Lmaster/flame/danmaku/danmaku/model/d;->b()J

    move-result-wide v0

    iget-object p1, p0, Lmaster/flame/danmaku/controller/c$c;->b:Lmaster/flame/danmaku/controller/c;

    invoke-virtual {p1}, Lmaster/flame/danmaku/controller/c;->D()J

    move-result-wide v2

    sub-long/2addr v0, v2

    .line 3
    iget-object p1, p0, Lmaster/flame/danmaku/controller/c$c;->b:Lmaster/flame/danmaku/controller/c;

    invoke-static {p1}, Lmaster/flame/danmaku/controller/c;->j(Lmaster/flame/danmaku/controller/c;)Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext;

    move-result-object p1

    iget-object p1, p1, Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext;->A:Lmaster/flame/danmaku/danmaku/model/android/d;

    iget-wide v2, p1, Lmaster/flame/danmaku/danmaku/model/android/d;->f:J

    cmp-long p1, v0, v2

    if-gez p1, :cond_2

    iget-object p1, p0, Lmaster/flame/danmaku/controller/c$c;->b:Lmaster/flame/danmaku/controller/c;

    invoke-static {p1}, Lmaster/flame/danmaku/controller/c;->k(Lmaster/flame/danmaku/controller/c;)Z

    move-result p1

    if-nez p1, :cond_1

    iget-object p1, p0, Lmaster/flame/danmaku/controller/c$c;->b:Lmaster/flame/danmaku/controller/c;

    invoke-static {p1}, Lmaster/flame/danmaku/controller/c;->f(Lmaster/flame/danmaku/controller/c;)Lf8/a$c;

    move-result-object p1

    iget-boolean p1, p1, Lf8/a$c;->p:Z

    if-eqz p1, :cond_2

    .line 4
    :cond_1
    iget-object p1, p0, Lmaster/flame/danmaku/controller/c$c;->b:Lmaster/flame/danmaku/controller/c;

    invoke-static {p1}, Lmaster/flame/danmaku/controller/c;->h(Lmaster/flame/danmaku/controller/c;)V

    goto :goto_0

    :cond_2
    const-wide/16 v2, 0x0

    cmp-long p1, v0, v2

    if-lez p1, :cond_3

    .line 5
    iget-object p1, p0, Lmaster/flame/danmaku/controller/c$c;->b:Lmaster/flame/danmaku/controller/c;

    invoke-static {p1}, Lmaster/flame/danmaku/controller/c;->j(Lmaster/flame/danmaku/controller/c;)Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext;

    move-result-object p1

    iget-object p1, p1, Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext;->A:Lmaster/flame/danmaku/danmaku/model/android/d;

    iget-wide v2, p1, Lmaster/flame/danmaku/danmaku/model/android/d;->f:J

    cmp-long p1, v0, v2

    if-gtz p1, :cond_3

    .line 6
    iget-object p1, p0, Lmaster/flame/danmaku/controller/c$c;->b:Lmaster/flame/danmaku/controller/c;

    const/16 v2, 0xb

    invoke-virtual {p1, v2, v0, v1}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    :cond_3
    :goto_0
    return-void
.end method

.method public c()V
    .locals 1

    .line 1
    iget-object v0, p0, Lmaster/flame/danmaku/controller/c$c;->b:Lmaster/flame/danmaku/controller/c;

    invoke-static {v0}, Lmaster/flame/danmaku/controller/c;->i(Lmaster/flame/danmaku/controller/c;)V

    .line 2
    iget-object v0, p0, Lmaster/flame/danmaku/controller/c$c;->a:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    return-void
.end method

.method public d()V
    .locals 1

    .line 1
    iget-object v0, p0, Lmaster/flame/danmaku/controller/c$c;->b:Lmaster/flame/danmaku/controller/c;

    invoke-static {v0}, Lmaster/flame/danmaku/controller/c;->m(Lmaster/flame/danmaku/controller/c;)Lmaster/flame/danmaku/controller/c$d;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lmaster/flame/danmaku/controller/c$c;->b:Lmaster/flame/danmaku/controller/c;

    invoke-static {v0}, Lmaster/flame/danmaku/controller/c;->m(Lmaster/flame/danmaku/controller/c;)Lmaster/flame/danmaku/controller/c$d;

    move-result-object v0

    invoke-interface {v0}, Lmaster/flame/danmaku/controller/c$d;->o()V

    :cond_0
    return-void
.end method

.method public e()V
    .locals 1

    iget-object v0, p0, Lmaster/flame/danmaku/controller/c$c;->b:Lmaster/flame/danmaku/controller/c;

    invoke-static {v0}, Lmaster/flame/danmaku/controller/c;->l(Lmaster/flame/danmaku/controller/c;)V

    return-void
.end method
