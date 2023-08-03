.class Lmaster/flame/danmaku/ui/widget/b$b;
.super Lmaster/flame/danmaku/danmaku/parser/a;
.source "FakeDanmakuView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmaster/flame/danmaku/ui/widget/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "b"
.end annotation


# instance fields
.field private final k:Lmaster/flame/danmaku/danmaku/parser/a;

.field private final l:J

.field private final m:J

.field private n:F

.field private o:F

.field private p:I

.field final synthetic q:Lmaster/flame/danmaku/ui/widget/b;


# direct methods
.method public constructor <init>(Lmaster/flame/danmaku/ui/widget/b;Lmaster/flame/danmaku/danmaku/parser/a;JJ)V
    .locals 0

    .line 1
    iput-object p1, p0, Lmaster/flame/danmaku/ui/widget/b$b;->q:Lmaster/flame/danmaku/ui/widget/b;

    invoke-direct {p0}, Lmaster/flame/danmaku/danmaku/parser/a;-><init>()V

    .line 2
    iput-object p2, p0, Lmaster/flame/danmaku/ui/widget/b$b;->k:Lmaster/flame/danmaku/danmaku/parser/a;

    .line 3
    iput-wide p3, p0, Lmaster/flame/danmaku/ui/widget/b$b;->l:J

    .line 4
    iput-wide p5, p0, Lmaster/flame/danmaku/ui/widget/b$b;->m:J

    return-void
.end method

.method static synthetic m(Lmaster/flame/danmaku/ui/widget/b$b;)J
    .locals 2

    iget-wide v0, p0, Lmaster/flame/danmaku/ui/widget/b$b;->l:J

    return-wide v0
.end method

.method static synthetic n(Lmaster/flame/danmaku/ui/widget/b$b;)J
    .locals 2

    iget-wide v0, p0, Lmaster/flame/danmaku/ui/widget/b$b;->m:J

    return-wide v0
.end method

.method static synthetic o(Lmaster/flame/danmaku/ui/widget/b$b;)Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext;
    .locals 0

    iget-object p0, p0, Lmaster/flame/danmaku/danmaku/parser/a;->i:Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext;

    return-object p0
.end method

.method static synthetic p(Lmaster/flame/danmaku/ui/widget/b$b;)Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext;
    .locals 0

    iget-object p0, p0, Lmaster/flame/danmaku/danmaku/parser/a;->i:Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext;

    return-object p0
.end method

.method static synthetic q(Lmaster/flame/danmaku/ui/widget/b$b;)F
    .locals 0

    iget p0, p0, Lmaster/flame/danmaku/ui/widget/b$b;->n:F

    return p0
.end method

.method static synthetic r(Lmaster/flame/danmaku/ui/widget/b$b;)F
    .locals 0

    iget p0, p0, Lmaster/flame/danmaku/ui/widget/b$b;->o:F

    return p0
.end method

.method static synthetic s(Lmaster/flame/danmaku/ui/widget/b$b;)Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext;
    .locals 0

    iget-object p0, p0, Lmaster/flame/danmaku/danmaku/parser/a;->i:Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext;

    return-object p0
.end method

.method static synthetic t(Lmaster/flame/danmaku/ui/widget/b$b;)Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext;
    .locals 0

    iget-object p0, p0, Lmaster/flame/danmaku/danmaku/parser/a;->i:Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext;

    return-object p0
.end method

.method static synthetic u(Lmaster/flame/danmaku/ui/widget/b$b;)Lmaster/flame/danmaku/danmaku/model/f;
    .locals 0

    iget-object p0, p0, Lmaster/flame/danmaku/danmaku/parser/a;->b:Lmaster/flame/danmaku/danmaku/model/f;

    return-object p0
.end method

.method static synthetic v(Lmaster/flame/danmaku/ui/widget/b$b;)Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext;
    .locals 0

    iget-object p0, p0, Lmaster/flame/danmaku/danmaku/parser/a;->i:Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext;

    return-object p0
.end method


# virtual methods
.method protected d()F
    .locals 4

    .line 1
    iget v0, p0, Lmaster/flame/danmaku/ui/widget/b$b;->p:I

    int-to-long v0, v0

    const-wide/16 v2, 0xed8

    mul-long v0, v0, v2

    long-to-float v0, v0

    const v1, 0x442a8000    # 682.0f

    div-float/2addr v0, v1

    .line 2
    iget-object v1, p0, Lmaster/flame/danmaku/danmaku/parser/a;->i:Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext;

    iget-object v1, v1, Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext;->A:Lmaster/flame/danmaku/danmaku/model/android/d;

    iget-wide v1, v1, Lmaster/flame/danmaku/danmaku/model/android/d;->f:J

    long-to-float v1, v1

    const v2, 0x3f8ccccd    # 1.1f

    mul-float v1, v1, v2

    div-float/2addr v1, v0

    return v1
.end method

.method protected f()Lmaster/flame/danmaku/danmaku/model/m;
    .locals 6

    .line 1
    new-instance v0, Lmaster/flame/danmaku/danmaku/model/android/e;

    invoke-direct {v0}, Lmaster/flame/danmaku/danmaku/model/android/e;-><init>()V

    .line 2
    :try_start_0
    iget-object v1, p0, Lmaster/flame/danmaku/ui/widget/b$b;->k:Lmaster/flame/danmaku/danmaku/parser/a;

    invoke-virtual {v1}, Lmaster/flame/danmaku/danmaku/parser/a;->a()Lmaster/flame/danmaku/danmaku/model/m;

    move-result-object v1

    iget-wide v2, p0, Lmaster/flame/danmaku/ui/widget/b$b;->l:J

    iget-wide v4, p0, Lmaster/flame/danmaku/ui/widget/b$b;->m:J

    invoke-interface {v1, v2, v3, v4, v5}, Lmaster/flame/danmaku/danmaku/model/m;->d(JJ)Lmaster/flame/danmaku/danmaku/model/m;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 3
    :catch_0
    iget-object v1, p0, Lmaster/flame/danmaku/ui/widget/b$b;->k:Lmaster/flame/danmaku/danmaku/parser/a;

    invoke-virtual {v1}, Lmaster/flame/danmaku/danmaku/parser/a;->a()Lmaster/flame/danmaku/danmaku/model/m;

    move-result-object v1

    :goto_0
    if-nez v1, :cond_0

    return-object v0

    .line 4
    :cond_0
    new-instance v2, Lmaster/flame/danmaku/ui/widget/b$b$a;

    invoke-direct {v2, p0, v0}, Lmaster/flame/danmaku/ui/widget/b$b$a;-><init>(Lmaster/flame/danmaku/ui/widget/b$b;Lmaster/flame/danmaku/danmaku/model/m;)V

    invoke-interface {v1, v2}, Lmaster/flame/danmaku/danmaku/model/m;->h(Lmaster/flame/danmaku/danmaku/model/m$b;)V

    return-object v0
.end method

.method public j(Lmaster/flame/danmaku/danmaku/model/n;)Lmaster/flame/danmaku/danmaku/parser/a;
    .locals 2

    .line 1
    invoke-super {p0, p1}, Lmaster/flame/danmaku/danmaku/parser/a;->j(Lmaster/flame/danmaku/danmaku/model/n;)Lmaster/flame/danmaku/danmaku/parser/a;

    .line 2
    iget-object v0, p0, Lmaster/flame/danmaku/ui/widget/b$b;->k:Lmaster/flame/danmaku/danmaku/parser/a;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lmaster/flame/danmaku/danmaku/parser/a;->b()Lmaster/flame/danmaku/danmaku/model/n;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 3
    :cond_0
    iget v0, p0, Lmaster/flame/danmaku/danmaku/parser/a;->c:I

    int-to-float v0, v0

    iget-object v1, p0, Lmaster/flame/danmaku/ui/widget/b$b;->k:Lmaster/flame/danmaku/danmaku/parser/a;

    invoke-virtual {v1}, Lmaster/flame/danmaku/danmaku/parser/a;->b()Lmaster/flame/danmaku/danmaku/model/n;

    move-result-object v1

    invoke-interface {v1}, Lmaster/flame/danmaku/danmaku/model/n;->getWidth()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v0, v1

    iput v0, p0, Lmaster/flame/danmaku/ui/widget/b$b;->n:F

    .line 4
    iget v0, p0, Lmaster/flame/danmaku/danmaku/parser/a;->d:I

    int-to-float v0, v0

    iget-object v1, p0, Lmaster/flame/danmaku/ui/widget/b$b;->k:Lmaster/flame/danmaku/danmaku/parser/a;

    invoke-virtual {v1}, Lmaster/flame/danmaku/danmaku/parser/a;->b()Lmaster/flame/danmaku/danmaku/model/n;

    move-result-object v1

    invoke-interface {v1}, Lmaster/flame/danmaku/danmaku/model/n;->getHeight()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v0, v1

    iput v0, p0, Lmaster/flame/danmaku/ui/widget/b$b;->o:F

    .line 5
    iget v0, p0, Lmaster/flame/danmaku/ui/widget/b$b;->p:I

    const/4 v1, 0x1

    if-gt v0, v1, :cond_1

    .line 6
    invoke-interface {p1}, Lmaster/flame/danmaku/danmaku/model/n;->getWidth()I

    move-result p1

    iput p1, p0, Lmaster/flame/danmaku/ui/widget/b$b;->p:I

    :cond_1
    :goto_0
    return-object p0
.end method
