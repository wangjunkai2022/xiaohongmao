.class public Lcom/qennnsad/aknkaksd/util/danmu/b;
.super Ljava/lang/Object;
.source "FlyGiftControl.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/qennnsad/aknkaksd/util/danmu/b$e;
    }
.end annotation


# static fields
.field private static final q:Ljava/lang/String; = "DanmuControl"

.field private static final r:J = 0x7d0L

.field private static final s:I = -0xa56d

.field private static final t:I = -0x7ea6

.field private static final u:I = -0x4e000000


# instance fields
.field private a:I

.field private b:I

.field private c:F

.field private d:I

.field private e:I

.field private f:I

.field private g:I

.field private h:I

.field private final i:I

.field private final j:I

.field private k:Landroid/content/Context;

.field private l:Lmaster/flame/danmaku/controller/f;

.field private m:Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext;

.field private n:Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext;

.field private o:F

.field private p:Lmaster/flame/danmaku/danmaku/model/android/b$a;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x28

    .line 2
    iput v0, p0, Lcom/qennnsad/aknkaksd/util/danmu/b;->a:I

    .line 3
    iput v0, p0, Lcom/qennnsad/aknkaksd/util/danmu/b;->b:I

    const/high16 v0, 0x41300000    # 11.0f

    .line 4
    iput v0, p0, Lcom/qennnsad/aknkaksd/util/danmu/b;->c:F

    const/16 v0, 0x1e

    .line 5
    iput v0, p0, Lcom/qennnsad/aknkaksd/util/danmu/b;->d:I

    const/16 v0, 0x5a

    .line 6
    iput v0, p0, Lcom/qennnsad/aknkaksd/util/danmu/b;->e:I

    const/16 v0, 0x8

    .line 7
    iput v0, p0, Lcom/qennnsad/aknkaksd/util/danmu/b;->f:I

    const/4 v0, 0x6

    .line 8
    iput v0, p0, Lcom/qennnsad/aknkaksd/util/danmu/b;->g:I

    const/16 v0, 0xf

    .line 9
    iput v0, p0, Lcom/qennnsad/aknkaksd/util/danmu/b;->h:I

    const/4 v0, 0x1

    .line 10
    iput v0, p0, Lcom/qennnsad/aknkaksd/util/danmu/b;->i:I

    const/4 v0, 0x2

    .line 11
    iput v0, p0, Lcom/qennnsad/aknkaksd/util/danmu/b;->j:I

    .line 12
    new-instance v0, Lcom/qennnsad/aknkaksd/util/danmu/b$a;

    invoke-direct {v0, p0}, Lcom/qennnsad/aknkaksd/util/danmu/b$a;-><init>(Lcom/qennnsad/aknkaksd/util/danmu/b;)V

    iput-object v0, p0, Lcom/qennnsad/aknkaksd/util/danmu/b;->p:Lmaster/flame/danmaku/danmaku/model/android/b$a;

    .line 13
    iput-object p1, p0, Lcom/qennnsad/aknkaksd/util/danmu/b;->k:Landroid/content/Context;

    .line 14
    invoke-direct {p0, p1}, Lcom/qennnsad/aknkaksd/util/danmu/b;->r(Landroid/content/Context;)V

    .line 15
    invoke-direct {p0}, Lcom/qennnsad/aknkaksd/util/danmu/b;->m()V

    return-void
.end method

.method static synthetic a(Lcom/qennnsad/aknkaksd/util/danmu/b;)F
    .locals 0

    iget p0, p0, Lcom/qennnsad/aknkaksd/util/danmu/b;->o:F

    return p0
.end method

.method static synthetic b(Lcom/qennnsad/aknkaksd/util/danmu/b;F)F
    .locals 0

    iput p1, p0, Lcom/qennnsad/aknkaksd/util/danmu/b;->o:F

    return p1
.end method

.method static synthetic c(Lcom/qennnsad/aknkaksd/util/danmu/b;)Landroid/content/Context;
    .locals 0

    iget-object p0, p0, Lcom/qennnsad/aknkaksd/util/danmu/b;->k:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic d(Lcom/qennnsad/aknkaksd/util/danmu/b;)I
    .locals 0

    iget p0, p0, Lcom/qennnsad/aknkaksd/util/danmu/b;->g:I

    return p0
.end method

.method static synthetic e(Lcom/qennnsad/aknkaksd/util/danmu/b;)I
    .locals 0

    iget p0, p0, Lcom/qennnsad/aknkaksd/util/danmu/b;->h:I

    return p0
.end method

.method static synthetic f(Lcom/qennnsad/aknkaksd/util/danmu/b;)Lmaster/flame/danmaku/controller/f;
    .locals 0

    iget-object p0, p0, Lcom/qennnsad/aknkaksd/util/danmu/b;->l:Lmaster/flame/danmaku/controller/f;

    return-object p0
.end method

.method private i(Landroid/graphics/drawable/Drawable;Ljava/lang/String;)Landroid/text/SpannableStringBuilder;
    .locals 4

    .line 1
    new-instance v0, Landroid/text/SpannableStringBuilder;

    const-string v1, "bitmap"

    invoke-direct {v0, v1}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .line 2
    new-instance v1, Lm5/a;

    invoke-direct {v1, p1}, Lm5/a;-><init>(Landroid/graphics/drawable/Drawable;)V

    const/4 p1, 0x0

    const/4 v2, 0x6

    const/16 v3, 0x11

    .line 3
    invoke-virtual {v0, v1, p1, v2, v3}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 4
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_0

    const-string p1, " "

    .line 5
    invoke-virtual {v0, p1}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 6
    invoke-virtual {p2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    :cond_0
    return-object v0
.end method

.method private k(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 8

    if-eqz p1, :cond_0

    .line 1
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    .line 2
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    .line 3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "width = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v7, "DanmuControl"

    invoke-static {v7, v0}, Lcom/qennnsad/aknkaksd/util/o0;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 4
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "height = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v7, v0}, Lcom/qennnsad/aknkaksd/util/o0;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 5
    new-instance v5, Landroid/graphics/Matrix;

    invoke-direct {v5}, Landroid/graphics/Matrix;-><init>()V

    .line 6
    iget v0, p0, Lcom/qennnsad/aknkaksd/util/danmu/b;->a:I

    int-to-float v0, v0

    int-to-float v1, v3

    div-float/2addr v0, v1

    iget v1, p0, Lcom/qennnsad/aknkaksd/util/danmu/b;->b:I

    int-to-float v1, v1

    int-to-float v2, v4

    div-float/2addr v1, v2

    invoke-virtual {v5, v0, v1}, Landroid/graphics/Matrix;->postScale(FF)Z

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v6, 0x1

    move-object v0, p1

    .line 7
    invoke-static/range {v0 .. v6}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object p1

    .line 8
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mDefauleBitmap getWidth = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v7, v0}, Lcom/qennnsad/aknkaksd/util/o0;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 9
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mDefauleBitmap getHeight = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v7, v0}, Lcom/qennnsad/aknkaksd/util/o0;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return-object p1
.end method

.method private m()V
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

    iput-object v1, p0, Lcom/qennnsad/aknkaksd/util/danmu/b;->m:Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext;

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

    new-instance v2, Lcom/qennnsad/aknkaksd/util/danmu/b$e;

    const/4 v4, 0x0

    invoke-direct {v2, p0, v4}, Lcom/qennnsad/aknkaksd/util/danmu/b$e;-><init>(Lcom/qennnsad/aknkaksd/util/danmu/b;Lcom/qennnsad/aknkaksd/util/danmu/b$a;)V

    iget-object v4, p0, Lcom/qennnsad/aknkaksd/util/danmu/b;->p:Lmaster/flame/danmaku/danmaku/model/android/b$a;

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

.method private n()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/qennnsad/aknkaksd/util/danmu/b;->l:Lmaster/flame/danmaku/controller/f;

    if-eqz v0, :cond_0

    .line 2
    new-instance v1, Lcom/qennnsad/aknkaksd/util/danmu/b$b;

    invoke-direct {v1, p0}, Lcom/qennnsad/aknkaksd/util/danmu/b$b;-><init>(Lcom/qennnsad/aknkaksd/util/danmu/b;)V

    invoke-interface {v0, v1}, Lmaster/flame/danmaku/controller/f;->setCallback(Lmaster/flame/danmaku/controller/c$d;)V

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/qennnsad/aknkaksd/util/danmu/b;->l:Lmaster/flame/danmaku/controller/f;

    new-instance v1, Lcom/qennnsad/aknkaksd/util/danmu/b$c;

    invoke-direct {v1, p0}, Lcom/qennnsad/aknkaksd/util/danmu/b$c;-><init>(Lcom/qennnsad/aknkaksd/util/danmu/b;)V

    iget-object v2, p0, Lcom/qennnsad/aknkaksd/util/danmu/b;->m:Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext;

    invoke-interface {v0, v1, v2}, Lmaster/flame/danmaku/controller/f;->l(Lmaster/flame/danmaku/danmaku/parser/a;Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext;)V

    .line 4
    iget-object v0, p0, Lcom/qennnsad/aknkaksd/util/danmu/b;->l:Lmaster/flame/danmaku/controller/f;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lmaster/flame/danmaku/controller/f;->x(Z)V

    return-void
.end method

.method private r(Landroid/content/Context;)V
    .locals 1

    .line 1
    iget v0, p0, Lcom/qennnsad/aknkaksd/util/danmu/b;->b:I

    int-to-float v0, v0

    invoke-static {p1, v0}, Lcom/qennnsad/aknkaksd/util/s;->b(Landroid/content/Context;F)I

    move-result v0

    iput v0, p0, Lcom/qennnsad/aknkaksd/util/danmu/b;->a:I

    .line 2
    iget v0, p0, Lcom/qennnsad/aknkaksd/util/danmu/b;->b:I

    int-to-float v0, v0

    invoke-static {p1, v0}, Lcom/qennnsad/aknkaksd/util/s;->b(Landroid/content/Context;F)I

    move-result v0

    iput v0, p0, Lcom/qennnsad/aknkaksd/util/danmu/b;->b:I

    .line 3
    iget v0, p0, Lcom/qennnsad/aknkaksd/util/danmu/b;->f:I

    int-to-float v0, v0

    invoke-static {p1, v0}, Lcom/qennnsad/aknkaksd/util/s;->b(Landroid/content/Context;F)I

    move-result v0

    iput v0, p0, Lcom/qennnsad/aknkaksd/util/danmu/b;->f:I

    .line 4
    iget v0, p0, Lcom/qennnsad/aknkaksd/util/danmu/b;->g:I

    int-to-float v0, v0

    invoke-static {p1, v0}, Lcom/qennnsad/aknkaksd/util/s;->b(Landroid/content/Context;F)I

    move-result v0

    iput v0, p0, Lcom/qennnsad/aknkaksd/util/danmu/b;->g:I

    .line 5
    iget v0, p0, Lcom/qennnsad/aknkaksd/util/danmu/b;->h:I

    int-to-float v0, v0

    invoke-static {p1, v0}, Lcom/qennnsad/aknkaksd/util/s;->b(Landroid/content/Context;F)I

    move-result v0

    iput v0, p0, Lcom/qennnsad/aknkaksd/util/danmu/b;->h:I

    .line 6
    iget v0, p0, Lcom/qennnsad/aknkaksd/util/danmu/b;->c:F

    invoke-static {p1, v0}, Lcom/qennnsad/aknkaksd/util/s;->e(Landroid/content/Context;F)F

    move-result p1

    iput p1, p0, Lcom/qennnsad/aknkaksd/util/danmu/b;->c:F

    return-void
.end method


# virtual methods
.method public g(Lcom/qennnsad/aknkaksd/data/bean/Danmu;I)V
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/qennnsad/aknkaksd/util/danmu/b;->m:Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext;

    iget-object v0, v0, Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext;->A:Lmaster/flame/danmaku/danmaku/model/android/d;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lmaster/flame/danmaku/danmaku/model/android/d;->b(I)Lmaster/flame/danmaku/danmaku/model/d;

    move-result-object v0

    .line 2
    iget v1, p1, Lcom/qennnsad/aknkaksd/data/bean/Danmu;->userId:I

    iput v1, v0, Lmaster/flame/danmaku/danmaku/model/d;->B:I

    .line 3
    iget-object v1, p1, Lcom/qennnsad/aknkaksd/data/bean/Danmu;->type:Ljava/lang/String;

    const-string v2, "Like"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    iput-boolean v1, v0, Lmaster/flame/danmaku/danmaku/model/d;->D:Z

    .line 4
    iget-object v1, p1, Lcom/qennnsad/aknkaksd/data/bean/Danmu;->avatarUrl:Landroid/graphics/Bitmap;

    invoke-direct {p0, v1}, Lcom/qennnsad/aknkaksd/util/danmu/b;->k(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 5
    new-instance v2, Lm5/b;

    iget-object v3, p0, Lcom/qennnsad/aknkaksd/util/danmu/b;->k:Landroid/content/Context;

    iget-boolean v4, v0, Lmaster/flame/danmaku/danmaku/model/d;->D:Z

    invoke-direct {v2, v3, v1, v4}, Lm5/b;-><init>(Landroid/content/Context;Landroid/graphics/Bitmap;Z)V

    .line 6
    iget v1, p0, Lcom/qennnsad/aknkaksd/util/danmu/b;->a:I

    iget v3, p0, Lcom/qennnsad/aknkaksd/util/danmu/b;->b:I

    const/4 v4, 0x0

    invoke-virtual {v2, v4, v4, v1, v3}, Lm5/b;->setBounds(IIII)V

    .line 7
    iget-object p1, p1, Lcom/qennnsad/aknkaksd/data/bean/Danmu;->content:Ljava/lang/String;

    invoke-direct {p0, v2, p1}, Lcom/qennnsad/aknkaksd/util/danmu/b;->i(Landroid/graphics/drawable/Drawable;Ljava/lang/String;)Landroid/text/SpannableStringBuilder;

    move-result-object p1

    .line 8
    iput-object p1, v0, Lmaster/flame/danmaku/danmaku/model/d;->c:Ljava/lang/CharSequence;

    .line 9
    iget p1, p0, Lcom/qennnsad/aknkaksd/util/danmu/b;->f:I

    iput p1, v0, Lmaster/flame/danmaku/danmaku/model/d;->n:I

    .line 10
    iput-byte v4, v0, Lmaster/flame/danmaku/danmaku/model/d;->o:B

    .line 11
    iput-boolean v4, v0, Lmaster/flame/danmaku/danmaku/model/d;->z:Z

    .line 12
    iget-object p1, p0, Lcom/qennnsad/aknkaksd/util/danmu/b;->l:Lmaster/flame/danmaku/controller/f;

    invoke-interface {p1}, Lmaster/flame/danmaku/controller/f;->getCurrentTime()J

    move-result-wide v1

    int-to-long p1, p2

    const-wide/16 v5, 0x7d0

    mul-long p1, p1, v5

    add-long/2addr v1, p1

    invoke-virtual {v0, v1, v2}, Lmaster/flame/danmaku/danmaku/model/d;->G(J)V

    .line 13
    iget p1, p0, Lcom/qennnsad/aknkaksd/util/danmu/b;->c:F

    iput p1, v0, Lmaster/flame/danmaku/danmaku/model/d;->l:F

    const/4 p1, -0x1

    .line 14
    iput p1, v0, Lmaster/flame/danmaku/danmaku/model/d;->g:I

    .line 15
    iput v4, v0, Lmaster/flame/danmaku/danmaku/model/d;->j:I

    .line 16
    iget-object p1, p0, Lcom/qennnsad/aknkaksd/util/danmu/b;->l:Lmaster/flame/danmaku/controller/f;

    invoke-interface {p1, v0}, Lmaster/flame/danmaku/controller/f;->b(Lmaster/flame/danmaku/danmaku/model/d;)V

    return-void
.end method

.method public h(Ljava/util/List;)V
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

    new-instance v1, Lcom/qennnsad/aknkaksd/util/danmu/b$d;

    invoke-direct {v1, p0, p1}, Lcom/qennnsad/aknkaksd/util/danmu/b$d;-><init>(Lcom/qennnsad/aknkaksd/util/danmu/b;Ljava/util/List;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 2
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method public j()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/qennnsad/aknkaksd/util/danmu/b;->l:Lmaster/flame/danmaku/controller/f;

    if-eqz v0, :cond_0

    .line 2
    invoke-interface {v0}, Lmaster/flame/danmaku/controller/f;->release()V

    const/4 v0, 0x0

    .line 3
    iput-object v0, p0, Lcom/qennnsad/aknkaksd/util/danmu/b;->l:Lmaster/flame/danmaku/controller/f;

    :cond_0
    return-void
.end method

.method public l()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/qennnsad/aknkaksd/util/danmu/b;->l:Lmaster/flame/danmaku/controller/f;

    if-eqz v0, :cond_0

    .line 2
    invoke-interface {v0}, Lmaster/flame/danmaku/controller/f;->hide()V

    :cond_0
    return-void
.end method

.method public o()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/qennnsad/aknkaksd/util/danmu/b;->l:Lmaster/flame/danmaku/controller/f;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lmaster/flame/danmaku/controller/f;->r()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/qennnsad/aknkaksd/util/danmu/b;->l:Lmaster/flame/danmaku/controller/f;

    invoke-interface {v0}, Lmaster/flame/danmaku/controller/f;->pause()V

    :cond_0
    return-void
.end method

.method public p()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/qennnsad/aknkaksd/util/danmu/b;->l:Lmaster/flame/danmaku/controller/f;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lmaster/flame/danmaku/controller/f;->r()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/qennnsad/aknkaksd/util/danmu/b;->l:Lmaster/flame/danmaku/controller/f;

    invoke-interface {v0}, Lmaster/flame/danmaku/controller/f;->i()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/qennnsad/aknkaksd/util/danmu/b;->l:Lmaster/flame/danmaku/controller/f;

    invoke-interface {v0}, Lmaster/flame/danmaku/controller/f;->k()V

    :cond_0
    return-void
.end method

.method public q(Lmaster/flame/danmaku/controller/f;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/qennnsad/aknkaksd/util/danmu/b;->l:Lmaster/flame/danmaku/controller/f;

    .line 2
    invoke-direct {p0}, Lcom/qennnsad/aknkaksd/util/danmu/b;->n()V

    return-void
.end method

.method public s()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/qennnsad/aknkaksd/util/danmu/b;->l:Lmaster/flame/danmaku/controller/f;

    if-eqz v0, :cond_0

    .line 2
    invoke-interface {v0}, Lmaster/flame/danmaku/controller/f;->show()V

    :cond_0
    return-void
.end method
