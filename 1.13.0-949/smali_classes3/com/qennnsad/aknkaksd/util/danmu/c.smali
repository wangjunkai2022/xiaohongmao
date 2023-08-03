.class public Lcom/qennnsad/aknkaksd/util/danmu/c;
.super Ljava/lang/Object;
.source "LevelDanmuControl.java"


# instance fields
.field private a:Landroid/content/Context;

.field private b:Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext;

.field private c:Lmaster/flame/danmaku/controller/f;

.field private d:F

.field private e:Lmaster/flame/danmaku/danmaku/model/android/b$a;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/high16 v0, 0x41300000    # 11.0f

    .line 2
    iput v0, p0, Lcom/qennnsad/aknkaksd/util/danmu/c;->d:F

    .line 3
    new-instance v0, Lcom/qennnsad/aknkaksd/util/danmu/c$a;

    invoke-direct {v0, p0}, Lcom/qennnsad/aknkaksd/util/danmu/c$a;-><init>(Lcom/qennnsad/aknkaksd/util/danmu/c;)V

    iput-object v0, p0, Lcom/qennnsad/aknkaksd/util/danmu/c;->e:Lmaster/flame/danmaku/danmaku/model/android/b$a;

    .line 4
    iput-object p1, p0, Lcom/qennnsad/aknkaksd/util/danmu/c;->a:Landroid/content/Context;

    .line 5
    invoke-direct {p0}, Lcom/qennnsad/aknkaksd/util/danmu/c;->g()V

    return-void
.end method

.method static synthetic a(Lcom/qennnsad/aknkaksd/util/danmu/c;)Lmaster/flame/danmaku/controller/f;
    .locals 0

    iget-object p0, p0, Lcom/qennnsad/aknkaksd/util/danmu/c;->c:Lmaster/flame/danmaku/controller/f;

    return-object p0
.end method

.method private g()V
    .locals 5

    .line 1
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const/4 v1, 0x1

    .line 2
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x5

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 4
    sget-object v4, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v3, v1, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 5
    invoke-virtual {v3, v2, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    invoke-static {}, Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext;->e()Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext;

    move-result-object v1

    iput-object v1, p0, Lcom/qennnsad/aknkaksd/util/danmu/c;->b:Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext;

    const/4 v2, 0x0

    new-array v4, v2, [F

    .line 7
    invoke-virtual {v1, v2, v4}, Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext;->G(I[F)Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext;

    move-result-object v1

    .line 8
    invoke-virtual {v1, v2}, Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext;->K(Z)Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext;

    move-result-object v1

    const/high16 v2, 0x3f800000    # 1.0f

    .line 9
    invoke-virtual {v1, v2}, Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext;->W(F)Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext;

    move-result-object v1

    const v2, 0x3f99999a    # 1.2f

    .line 10
    invoke-virtual {v1, v2}, Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext;->V(F)Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext;

    move-result-object v1

    new-instance v2, Ln5/a;

    iget-object v4, p0, Lcom/qennnsad/aknkaksd/util/danmu/c;->a:Landroid/content/Context;

    invoke-direct {v2, v4}, Ln5/a;-><init>(Landroid/content/Context;)V

    iget-object v4, p0, Lcom/qennnsad/aknkaksd/util/danmu/c;->e:Lmaster/flame/danmaku/danmaku/model/android/b$a;

    .line 11
    invoke-virtual {v1, v2, v4}, Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext;->B(Lmaster/flame/danmaku/danmaku/model/android/b;Lmaster/flame/danmaku/danmaku/model/android/b$a;)Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext;

    move-result-object v1

    .line 12
    invoke-virtual {v1, v0}, Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext;->R(Ljava/util/Map;)Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext;

    move-result-object v0

    .line 13
    invoke-virtual {v0, v3}, Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext;->u(Ljava/util/Map;)Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext;

    return-void
.end method

.method private h()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/qennnsad/aknkaksd/util/danmu/c;->c:Lmaster/flame/danmaku/controller/f;

    if-eqz v0, :cond_0

    .line 2
    new-instance v1, Lcom/qennnsad/aknkaksd/util/danmu/c$b;

    invoke-direct {v1, p0}, Lcom/qennnsad/aknkaksd/util/danmu/c$b;-><init>(Lcom/qennnsad/aknkaksd/util/danmu/c;)V

    invoke-interface {v0, v1}, Lmaster/flame/danmaku/controller/f;->setCallback(Lmaster/flame/danmaku/controller/c$d;)V

    .line 3
    iget-object v0, p0, Lcom/qennnsad/aknkaksd/util/danmu/c;->c:Lmaster/flame/danmaku/controller/f;

    new-instance v1, Lcom/qennnsad/aknkaksd/util/danmu/c$c;

    invoke-direct {v1, p0}, Lcom/qennnsad/aknkaksd/util/danmu/c$c;-><init>(Lcom/qennnsad/aknkaksd/util/danmu/c;)V

    iget-object v2, p0, Lcom/qennnsad/aknkaksd/util/danmu/c;->b:Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext;

    invoke-interface {v0, v1, v2}, Lmaster/flame/danmaku/controller/f;->l(Lmaster/flame/danmaku/danmaku/parser/a;Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext;)V

    .line 4
    iget-object v0, p0, Lcom/qennnsad/aknkaksd/util/danmu/c;->c:Lmaster/flame/danmaku/controller/f;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lmaster/flame/danmaku/controller/f;->x(Z)V

    :cond_0
    return-void
.end method


# virtual methods
.method public b(Lcom/qennnsad/aknkaksd/data/bean/Danmu;I)V
    .locals 5

    if-eqz p1, :cond_0

    .line 1
    iget-object v0, p1, Lcom/qennnsad/aknkaksd/data/bean/Danmu;->content:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/qennnsad/aknkaksd/util/danmu/c;->b:Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext;

    iget-object v0, v0, Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext;->A:Lmaster/flame/danmaku/danmaku/model/android/d;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lmaster/flame/danmaku/danmaku/model/android/d;->b(I)Lmaster/flame/danmaku/danmaku/model/d;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 3
    iget-object v2, p1, Lcom/qennnsad/aknkaksd/data/bean/Danmu;->content:Ljava/lang/String;

    iput-object v2, v0, Lmaster/flame/danmaku/danmaku/model/d;->c:Ljava/lang/CharSequence;

    .line 4
    iget p1, p1, Lcom/qennnsad/aknkaksd/data/bean/Danmu;->effectid:I

    iput p1, v0, Lmaster/flame/danmaku/danmaku/model/d;->B:I

    const/4 p1, 0x0

    .line 5
    iput-byte p1, v0, Lmaster/flame/danmaku/danmaku/model/d;->o:B

    .line 6
    iput-boolean v1, v0, Lmaster/flame/danmaku/danmaku/model/d;->z:Z

    .line 7
    iget-object v1, p0, Lcom/qennnsad/aknkaksd/util/danmu/c;->c:Lmaster/flame/danmaku/controller/f;

    invoke-interface {v1}, Lmaster/flame/danmaku/controller/f;->getCurrentTime()J

    move-result-wide v1

    mul-int/lit16 p2, p2, 0xbb8

    int-to-long v3, p2

    add-long/2addr v1, v3

    invoke-virtual {v0, v1, v2}, Lmaster/flame/danmaku/danmaku/model/d;->G(J)V

    .line 8
    iget-object p2, p0, Lcom/qennnsad/aknkaksd/util/danmu/c;->a:Landroid/content/Context;

    iget v1, p0, Lcom/qennnsad/aknkaksd/util/danmu/c;->d:F

    invoke-static {p2, v1}, Lcom/qennnsad/aknkaksd/util/a1;->d(Landroid/content/Context;F)I

    move-result p2

    int-to-float p2, p2

    iput p2, v0, Lmaster/flame/danmaku/danmaku/model/d;->l:F

    const/16 p2, 0xfd

    const/16 v1, 0xaa

    const/16 v2, 0x2a

    .line 9
    invoke-static {p2, v1, v2}, Landroid/graphics/Color;->rgb(III)I

    move-result p2

    iput p2, v0, Lmaster/flame/danmaku/danmaku/model/d;->g:I

    .line 10
    iput p1, v0, Lmaster/flame/danmaku/danmaku/model/d;->j:I

    .line 11
    iget-object p1, p0, Lcom/qennnsad/aknkaksd/util/danmu/c;->c:Lmaster/flame/danmaku/controller/f;

    invoke-interface {p1, v0}, Lmaster/flame/danmaku/controller/f;->b(Lmaster/flame/danmaku/danmaku/model/d;)V

    :cond_0
    return-void
.end method

.method public c(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/qennnsad/aknkaksd/data/bean/Danmu;",
            ">;)V"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/qennnsad/aknkaksd/util/danmu/c$d;

    invoke-direct {v1, p0, p1}, Lcom/qennnsad/aknkaksd/util/danmu/c$d;-><init>(Lcom/qennnsad/aknkaksd/util/danmu/c;Ljava/util/List;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 2
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method public d()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/qennnsad/aknkaksd/util/danmu/c;->c:Lmaster/flame/danmaku/controller/f;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lmaster/flame/danmaku/controller/f;->r()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/qennnsad/aknkaksd/util/danmu/c;->c:Lmaster/flame/danmaku/controller/f;

    invoke-interface {v0}, Lmaster/flame/danmaku/controller/f;->t()V

    :cond_0
    return-void
.end method

.method public e()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/qennnsad/aknkaksd/util/danmu/c;->c:Lmaster/flame/danmaku/controller/f;

    if-eqz v0, :cond_0

    .line 2
    invoke-interface {v0}, Lmaster/flame/danmaku/controller/f;->release()V

    const/4 v0, 0x0

    .line 3
    iput-object v0, p0, Lcom/qennnsad/aknkaksd/util/danmu/c;->c:Lmaster/flame/danmaku/controller/f;

    :cond_0
    return-void
.end method

.method public f()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/qennnsad/aknkaksd/util/danmu/c;->c:Lmaster/flame/danmaku/controller/f;

    if-eqz v0, :cond_0

    .line 2
    invoke-interface {v0}, Lmaster/flame/danmaku/controller/f;->hide()V

    :cond_0
    return-void
.end method

.method public i()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/qennnsad/aknkaksd/util/danmu/c;->c:Lmaster/flame/danmaku/controller/f;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lmaster/flame/danmaku/controller/f;->r()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/qennnsad/aknkaksd/util/danmu/c;->c:Lmaster/flame/danmaku/controller/f;

    invoke-interface {v0}, Lmaster/flame/danmaku/controller/f;->pause()V

    :cond_0
    return-void
.end method

.method public j()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/qennnsad/aknkaksd/util/danmu/c;->c:Lmaster/flame/danmaku/controller/f;

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    .line 2
    invoke-interface {v0, v1}, Lmaster/flame/danmaku/controller/f;->d(Z)V

    :cond_0
    return-void
.end method

.method public k()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/qennnsad/aknkaksd/util/danmu/c;->c:Lmaster/flame/danmaku/controller/f;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lmaster/flame/danmaku/controller/f;->r()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/qennnsad/aknkaksd/util/danmu/c;->c:Lmaster/flame/danmaku/controller/f;

    invoke-interface {v0}, Lmaster/flame/danmaku/controller/f;->i()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/qennnsad/aknkaksd/util/danmu/c;->c:Lmaster/flame/danmaku/controller/f;

    invoke-interface {v0}, Lmaster/flame/danmaku/controller/f;->k()V

    :cond_0
    return-void
.end method

.method public l(Lmaster/flame/danmaku/controller/f;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/qennnsad/aknkaksd/util/danmu/c;->c:Lmaster/flame/danmaku/controller/f;

    .line 2
    invoke-direct {p0}, Lcom/qennnsad/aknkaksd/util/danmu/c;->h()V

    return-void
.end method

.method public m()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/qennnsad/aknkaksd/util/danmu/c;->c:Lmaster/flame/danmaku/controller/f;

    if-eqz v0, :cond_0

    .line 2
    invoke-interface {v0}, Lmaster/flame/danmaku/controller/f;->show()V

    :cond_0
    return-void
.end method
