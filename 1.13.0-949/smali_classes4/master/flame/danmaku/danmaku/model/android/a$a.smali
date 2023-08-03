.class public Lmaster/flame/danmaku/danmaku/model/android/a$a;
.super Ljava/lang/Object;
.source "AndroidDisplayer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmaster/flame/danmaku/danmaku/model/android/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# static fields
.field public static final B:I = 0x4


# instance fields
.field private A:I

.field private a:F

.field private final b:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Float;",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field public final c:Landroid/text/TextPaint;

.field public final d:Landroid/text/TextPaint;

.field private e:Landroid/graphics/Paint;

.field private f:Landroid/graphics/Paint;

.field private g:Landroid/graphics/Paint;

.field public h:I

.field private i:F

.field private j:F

.field public k:F

.field public l:F

.field private m:I

.field public n:Z

.field private o:Z

.field public p:Z

.field private q:Z

.field public r:Z

.field public s:Z

.field public t:Z

.field private u:Z

.field private v:Z

.field private w:I

.field private x:F

.field private y:Z

.field private z:I


# direct methods
.method public constructor <init>()V
    .locals 4

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/util/HashMap;

    const/16 v1, 0xa

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    iput-object v0, p0, Lmaster/flame/danmaku/danmaku/model/android/a$a;->b:Ljava/util/Map;

    const/4 v0, 0x4

    .line 3
    iput v0, p0, Lmaster/flame/danmaku/danmaku/model/android/a$a;->h:I

    const/high16 v0, 0x40800000    # 4.0f

    .line 4
    iput v0, p0, Lmaster/flame/danmaku/danmaku/model/android/a$a;->i:F

    const/high16 v1, 0x40600000    # 3.5f

    .line 5
    iput v1, p0, Lmaster/flame/danmaku/danmaku/model/android/a$a;->j:F

    const/high16 v1, 0x3f800000    # 1.0f

    .line 6
    iput v1, p0, Lmaster/flame/danmaku/danmaku/model/android/a$a;->k:F

    .line 7
    iput v1, p0, Lmaster/flame/danmaku/danmaku/model/android/a$a;->l:F

    const/16 v2, 0xcc

    .line 8
    iput v2, p0, Lmaster/flame/danmaku/danmaku/model/android/a$a;->m:I

    const/4 v2, 0x0

    .line 9
    iput-boolean v2, p0, Lmaster/flame/danmaku/danmaku/model/android/a$a;->n:Z

    .line 10
    iput-boolean v2, p0, Lmaster/flame/danmaku/danmaku/model/android/a$a;->o:Z

    const/4 v3, 0x1

    .line 11
    iput-boolean v3, p0, Lmaster/flame/danmaku/danmaku/model/android/a$a;->p:Z

    .line 12
    iput-boolean v3, p0, Lmaster/flame/danmaku/danmaku/model/android/a$a;->q:Z

    .line 13
    iput-boolean v2, p0, Lmaster/flame/danmaku/danmaku/model/android/a$a;->r:Z

    .line 14
    iput-boolean v2, p0, Lmaster/flame/danmaku/danmaku/model/android/a$a;->s:Z

    .line 15
    iput-boolean v3, p0, Lmaster/flame/danmaku/danmaku/model/android/a$a;->t:Z

    .line 16
    iput-boolean v3, p0, Lmaster/flame/danmaku/danmaku/model/android/a$a;->u:Z

    .line 17
    sget v3, Lmaster/flame/danmaku/danmaku/model/c;->a:I

    iput v3, p0, Lmaster/flame/danmaku/danmaku/model/android/a$a;->w:I

    .line 18
    iput v1, p0, Lmaster/flame/danmaku/danmaku/model/android/a$a;->x:F

    .line 19
    iput-boolean v2, p0, Lmaster/flame/danmaku/danmaku/model/android/a$a;->y:Z

    .line 20
    iput v2, p0, Lmaster/flame/danmaku/danmaku/model/android/a$a;->z:I

    .line 21
    iput v2, p0, Lmaster/flame/danmaku/danmaku/model/android/a$a;->A:I

    .line 22
    new-instance v1, Landroid/text/TextPaint;

    invoke-direct {v1}, Landroid/text/TextPaint;-><init>()V

    iput-object v1, p0, Lmaster/flame/danmaku/danmaku/model/android/a$a;->c:Landroid/text/TextPaint;

    .line 23
    iget v2, p0, Lmaster/flame/danmaku/danmaku/model/android/a$a;->j:F

    invoke-virtual {v1, v2}, Landroid/text/TextPaint;->setStrokeWidth(F)V

    .line 24
    new-instance v2, Landroid/text/TextPaint;

    invoke-direct {v2, v1}, Landroid/text/TextPaint;-><init>(Landroid/graphics/Paint;)V

    iput-object v2, p0, Lmaster/flame/danmaku/danmaku/model/android/a$a;->d:Landroid/text/TextPaint;

    .line 25
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    iput-object v1, p0, Lmaster/flame/danmaku/danmaku/model/android/a$a;->e:Landroid/graphics/Paint;

    .line 26
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    iput-object v1, p0, Lmaster/flame/danmaku/danmaku/model/android/a$a;->f:Landroid/graphics/Paint;

    .line 27
    iget v2, p0, Lmaster/flame/danmaku/danmaku/model/android/a$a;->h:I

    int-to-float v2, v2

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 28
    iget-object v1, p0, Lmaster/flame/danmaku/danmaku/model/android/a$a;->f:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 29
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    iput-object v1, p0, Lmaster/flame/danmaku/danmaku/model/android/a$a;->g:Landroid/graphics/Paint;

    .line 30
    sget-object v2, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 31
    iget-object v1, p0, Lmaster/flame/danmaku/danmaku/model/android/a$a;->g:Landroid/graphics/Paint;

    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    return-void
.end method

.method static synthetic a(Lmaster/flame/danmaku/danmaku/model/android/a$a;)I
    .locals 0

    iget p0, p0, Lmaster/flame/danmaku/danmaku/model/android/a$a;->z:I

    return p0
.end method

.method static synthetic b(Lmaster/flame/danmaku/danmaku/model/android/a$a;I)I
    .locals 0

    iput p1, p0, Lmaster/flame/danmaku/danmaku/model/android/a$a;->z:I

    return p1
.end method

.method static synthetic c(Lmaster/flame/danmaku/danmaku/model/android/a$a;)I
    .locals 0

    iget p0, p0, Lmaster/flame/danmaku/danmaku/model/android/a$a;->A:I

    return p0
.end method

.method static synthetic d(Lmaster/flame/danmaku/danmaku/model/android/a$a;I)I
    .locals 0

    iput p1, p0, Lmaster/flame/danmaku/danmaku/model/android/a$a;->A:I

    return p1
.end method

.method static synthetic e(Lmaster/flame/danmaku/danmaku/model/android/a$a;)Landroid/graphics/Paint;
    .locals 0

    iget-object p0, p0, Lmaster/flame/danmaku/danmaku/model/android/a$a;->e:Landroid/graphics/Paint;

    return-object p0
.end method

.method static synthetic f(Lmaster/flame/danmaku/danmaku/model/android/a$a;)Z
    .locals 0

    iget-boolean p0, p0, Lmaster/flame/danmaku/danmaku/model/android/a$a;->q:Z

    return p0
.end method

.method private h(Lmaster/flame/danmaku/danmaku/model/d;Landroid/graphics/Paint;)V
    .locals 3

    .line 1
    iget-boolean v0, p0, Lmaster/flame/danmaku/danmaku/model/android/a$a;->y:Z

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object v0, p0, Lmaster/flame/danmaku/danmaku/model/android/a$a;->b:Ljava/util/Map;

    iget v1, p1, Lmaster/flame/danmaku/danmaku/model/d;->l:F

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    if-eqz v0, :cond_1

    .line 3
    iget v1, p0, Lmaster/flame/danmaku/danmaku/model/android/a$a;->a:F

    iget v2, p0, Lmaster/flame/danmaku/danmaku/model/android/a$a;->x:F

    cmpl-float v1, v1, v2

    if-eqz v1, :cond_2

    .line 4
    :cond_1
    iget v0, p0, Lmaster/flame/danmaku/danmaku/model/android/a$a;->x:F

    iput v0, p0, Lmaster/flame/danmaku/danmaku/model/android/a$a;->a:F

    .line 5
    iget v1, p1, Lmaster/flame/danmaku/danmaku/model/d;->l:F

    mul-float v1, v1, v0

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    .line 6
    iget-object v1, p0, Lmaster/flame/danmaku/danmaku/model/android/a$a;->b:Ljava/util/Map;

    iget p1, p1, Lmaster/flame/danmaku/danmaku/model/d;->l:F

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 7
    :cond_2
    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result p1

    invoke-virtual {p2, p1}, Landroid/graphics/Paint;->setTextSize(F)V

    return-void
.end method


# virtual methods
.method public g(Lmaster/flame/danmaku/danmaku/model/d;Landroid/graphics/Paint;Z)V
    .locals 2

    .line 1
    iget-boolean v0, p0, Lmaster/flame/danmaku/danmaku/model/android/a$a;->v:Z

    const v1, 0xffffff

    if-eqz v0, :cond_3

    if-eqz p3, :cond_2

    .line 2
    iget-boolean p3, p0, Lmaster/flame/danmaku/danmaku/model/android/a$a;->s:Z

    if-eqz p3, :cond_0

    sget-object p3, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    goto :goto_0

    :cond_0
    sget-object p3, Landroid/graphics/Paint$Style;->FILL_AND_STROKE:Landroid/graphics/Paint$Style;

    :goto_0
    invoke-virtual {p2, p3}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 3
    iget p3, p1, Lmaster/flame/danmaku/danmaku/model/d;->j:I

    and-int/2addr p3, v1

    invoke-virtual {p2, p3}, Landroid/graphics/Paint;->setColor(I)V

    .line 4
    iget-boolean p3, p0, Lmaster/flame/danmaku/danmaku/model/android/a$a;->s:Z

    if-eqz p3, :cond_1

    iget p3, p0, Lmaster/flame/danmaku/danmaku/model/android/a$a;->m:I

    int-to-float p3, p3

    iget v0, p0, Lmaster/flame/danmaku/danmaku/model/android/a$a;->w:I

    int-to-float v0, v0

    sget v1, Lmaster/flame/danmaku/danmaku/model/c;->a:I

    int-to-float v1, v1

    div-float/2addr v0, v1

    mul-float p3, p3, v0

    float-to-int p3, p3

    goto :goto_1

    :cond_1
    iget p3, p0, Lmaster/flame/danmaku/danmaku/model/android/a$a;->w:I

    .line 5
    :goto_1
    invoke-virtual {p2, p3}, Landroid/graphics/Paint;->setAlpha(I)V

    goto :goto_4

    .line 6
    :cond_2
    sget-object p3, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {p2, p3}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 7
    iget p3, p1, Lmaster/flame/danmaku/danmaku/model/d;->g:I

    and-int/2addr p3, v1

    invoke-virtual {p2, p3}, Landroid/graphics/Paint;->setColor(I)V

    .line 8
    iget p3, p0, Lmaster/flame/danmaku/danmaku/model/android/a$a;->w:I

    invoke-virtual {p2, p3}, Landroid/graphics/Paint;->setAlpha(I)V

    goto :goto_4

    :cond_3
    if-eqz p3, :cond_6

    .line 9
    iget-boolean p3, p0, Lmaster/flame/danmaku/danmaku/model/android/a$a;->s:Z

    if-eqz p3, :cond_4

    sget-object p3, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    goto :goto_2

    :cond_4
    sget-object p3, Landroid/graphics/Paint$Style;->FILL_AND_STROKE:Landroid/graphics/Paint$Style;

    :goto_2
    invoke-virtual {p2, p3}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 10
    iget p3, p1, Lmaster/flame/danmaku/danmaku/model/d;->j:I

    and-int/2addr p3, v1

    invoke-virtual {p2, p3}, Landroid/graphics/Paint;->setColor(I)V

    .line 11
    iget-boolean p3, p0, Lmaster/flame/danmaku/danmaku/model/android/a$a;->s:Z

    if-eqz p3, :cond_5

    iget p3, p0, Lmaster/flame/danmaku/danmaku/model/android/a$a;->m:I

    goto :goto_3

    :cond_5
    sget p3, Lmaster/flame/danmaku/danmaku/model/c;->a:I

    .line 12
    :goto_3
    invoke-virtual {p2, p3}, Landroid/graphics/Paint;->setAlpha(I)V

    goto :goto_4

    .line 13
    :cond_6
    sget-object p3, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {p2, p3}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 14
    iget p3, p1, Lmaster/flame/danmaku/danmaku/model/d;->g:I

    and-int/2addr p3, v1

    invoke-virtual {p2, p3}, Landroid/graphics/Paint;->setColor(I)V

    .line 15
    sget p3, Lmaster/flame/danmaku/danmaku/model/c;->a:I

    invoke-virtual {p2, p3}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 16
    :goto_4
    invoke-virtual {p1}, Lmaster/flame/danmaku/danmaku/model/d;->n()I

    move-result p3

    const/4 v0, 0x7

    if-ne p3, v0, :cond_7

    .line 17
    invoke-virtual {p1}, Lmaster/flame/danmaku/danmaku/model/d;->c()I

    move-result p1

    invoke-virtual {p2, p1}, Landroid/graphics/Paint;->setAlpha(I)V

    :cond_7
    return-void
.end method

.method public i()V
    .locals 1

    iget-object v0, p0, Lmaster/flame/danmaku/danmaku/model/android/a$a;->b:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    return-void
.end method

.method public j(Z)V
    .locals 0

    .line 1
    iget-boolean p1, p0, Lmaster/flame/danmaku/danmaku/model/android/a$a;->p:Z

    iput-boolean p1, p0, Lmaster/flame/danmaku/danmaku/model/android/a$a;->q:Z

    .line 2
    iget-boolean p1, p0, Lmaster/flame/danmaku/danmaku/model/android/a$a;->n:Z

    iput-boolean p1, p0, Lmaster/flame/danmaku/danmaku/model/android/a$a;->o:Z

    .line 3
    iget-boolean p1, p0, Lmaster/flame/danmaku/danmaku/model/android/a$a;->r:Z

    iput-boolean p1, p0, Lmaster/flame/danmaku/danmaku/model/android/a$a;->s:Z

    .line 4
    iget-boolean p1, p0, Lmaster/flame/danmaku/danmaku/model/android/a$a;->t:Z

    iput-boolean p1, p0, Lmaster/flame/danmaku/danmaku/model/android/a$a;->u:Z

    return-void
.end method

.method public k(Lmaster/flame/danmaku/danmaku/model/d;)Landroid/graphics/Paint;
    .locals 1

    .line 1
    iget-object v0, p0, Lmaster/flame/danmaku/danmaku/model/android/a$a;->g:Landroid/graphics/Paint;

    iget p1, p1, Lmaster/flame/danmaku/danmaku/model/d;->m:I

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    .line 2
    iget-object p1, p0, Lmaster/flame/danmaku/danmaku/model/android/a$a;->g:Landroid/graphics/Paint;

    return-object p1
.end method

.method public l(Lmaster/flame/danmaku/danmaku/model/d;Z)Landroid/text/TextPaint;
    .locals 3

    if-eqz p2, :cond_0

    .line 1
    iget-object p2, p0, Lmaster/flame/danmaku/danmaku/model/android/a$a;->c:Landroid/text/TextPaint;

    goto :goto_0

    .line 2
    :cond_0
    iget-object p2, p0, Lmaster/flame/danmaku/danmaku/model/android/a$a;->d:Landroid/text/TextPaint;

    .line 3
    iget-object v0, p0, Lmaster/flame/danmaku/danmaku/model/android/a$a;->c:Landroid/text/TextPaint;

    invoke-virtual {p2, v0}, Landroid/text/TextPaint;->set(Landroid/text/TextPaint;)V

    .line 4
    :goto_0
    iget v0, p1, Lmaster/flame/danmaku/danmaku/model/d;->l:F

    invoke-virtual {p2, v0}, Landroid/text/TextPaint;->setTextSize(F)V

    .line 5
    invoke-direct {p0, p1, p2}, Lmaster/flame/danmaku/danmaku/model/android/a$a;->h(Lmaster/flame/danmaku/danmaku/model/d;Landroid/graphics/Paint;)V

    .line 6
    iget-boolean v0, p0, Lmaster/flame/danmaku/danmaku/model/android/a$a;->o:Z

    if-eqz v0, :cond_2

    iget v0, p0, Lmaster/flame/danmaku/danmaku/model/android/a$a;->i:F

    const/4 v1, 0x0

    cmpg-float v2, v0, v1

    if-lez v2, :cond_2

    iget p1, p1, Lmaster/flame/danmaku/danmaku/model/d;->j:I

    if-nez p1, :cond_1

    goto :goto_1

    .line 7
    :cond_1
    invoke-virtual {p2, v0, v1, v1, p1}, Landroid/text/TextPaint;->setShadowLayer(FFFI)V

    goto :goto_2

    .line 8
    :cond_2
    :goto_1
    invoke-virtual {p2}, Landroid/text/TextPaint;->clearShadowLayer()V

    .line 9
    :goto_2
    iget-boolean p1, p0, Lmaster/flame/danmaku/danmaku/model/android/a$a;->u:Z

    invoke-virtual {p2, p1}, Landroid/text/TextPaint;->setAntiAlias(Z)V

    return-object p2
.end method

.method public m()F
    .locals 2

    .line 1
    iget-boolean v0, p0, Lmaster/flame/danmaku/danmaku/model/android/a$a;->o:Z

    if-eqz v0, :cond_0

    iget-boolean v1, p0, Lmaster/flame/danmaku/danmaku/model/android/a$a;->q:Z

    if-eqz v1, :cond_0

    .line 2
    iget v0, p0, Lmaster/flame/danmaku/danmaku/model/android/a$a;->i:F

    iget v1, p0, Lmaster/flame/danmaku/danmaku/model/android/a$a;->j:F

    invoke-static {v0, v1}, Ljava/lang/Math;->max(FF)F

    move-result v0

    return v0

    :cond_0
    if-eqz v0, :cond_1

    .line 3
    iget v0, p0, Lmaster/flame/danmaku/danmaku/model/android/a$a;->i:F

    return v0

    .line 4
    :cond_1
    iget-boolean v0, p0, Lmaster/flame/danmaku/danmaku/model/android/a$a;->q:Z

    if-eqz v0, :cond_2

    .line 5
    iget v0, p0, Lmaster/flame/danmaku/danmaku/model/android/a$a;->j:F

    return v0

    :cond_2
    const/4 v0, 0x0

    return v0
.end method

.method public n(Lmaster/flame/danmaku/danmaku/model/d;)Landroid/graphics/Paint;
    .locals 1

    .line 1
    iget-object v0, p0, Lmaster/flame/danmaku/danmaku/model/android/a$a;->f:Landroid/graphics/Paint;

    iget p1, p1, Lmaster/flame/danmaku/danmaku/model/d;->k:I

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    .line 2
    iget-object p1, p0, Lmaster/flame/danmaku/danmaku/model/android/a$a;->f:Landroid/graphics/Paint;

    return-object p1
.end method

.method public o(Lmaster/flame/danmaku/danmaku/model/d;)Z
    .locals 2

    iget-boolean v0, p0, Lmaster/flame/danmaku/danmaku/model/android/a$a;->q:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lmaster/flame/danmaku/danmaku/model/android/a$a;->s:Z

    if-eqz v0, :cond_1

    :cond_0
    iget v0, p0, Lmaster/flame/danmaku/danmaku/model/android/a$a;->j:F

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-lez v0, :cond_1

    iget p1, p1, Lmaster/flame/danmaku/danmaku/model/d;->j:I

    if-eqz p1, :cond_1

    const/4 p1, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public p(Z)V
    .locals 1

    iget-object v0, p0, Lmaster/flame/danmaku/danmaku/model/android/a$a;->c:Landroid/text/TextPaint;

    invoke-virtual {v0, p1}, Landroid/text/TextPaint;->setFakeBoldText(Z)V

    return-void
.end method

.method public q(FFI)V
    .locals 2

    .line 1
    iget v0, p0, Lmaster/flame/danmaku/danmaku/model/android/a$a;->k:F

    cmpl-float v0, v0, p1

    if-nez v0, :cond_0

    iget v0, p0, Lmaster/flame/danmaku/danmaku/model/android/a$a;->l:F

    cmpl-float v0, v0, p2

    if-nez v0, :cond_0

    iget v0, p0, Lmaster/flame/danmaku/danmaku/model/android/a$a;->m:I

    if-eq v0, p3, :cond_5

    :cond_0
    const/high16 v0, 0x3f800000    # 1.0f

    cmpl-float v1, p1, v0

    if-lez v1, :cond_1

    goto :goto_0

    :cond_1
    const/high16 p1, 0x3f800000    # 1.0f

    .line 2
    :goto_0
    iput p1, p0, Lmaster/flame/danmaku/danmaku/model/android/a$a;->k:F

    cmpl-float p1, p2, v0

    if-lez p1, :cond_2

    goto :goto_1

    :cond_2
    const/high16 p2, 0x3f800000    # 1.0f

    .line 3
    :goto_1
    iput p2, p0, Lmaster/flame/danmaku/danmaku/model/android/a$a;->l:F

    const/16 p1, 0xff

    if-gez p3, :cond_3

    const/4 p3, 0x0

    goto :goto_2

    :cond_3
    if-le p3, p1, :cond_4

    const/16 p3, 0xff

    .line 4
    :cond_4
    :goto_2
    iput p3, p0, Lmaster/flame/danmaku/danmaku/model/android/a$a;->m:I

    :cond_5
    return-void
.end method

.method public r(F)V
    .locals 1

    const/high16 v0, 0x3f800000    # 1.0f

    cmpl-float v0, p1, v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 1
    :goto_0
    iput-boolean v0, p0, Lmaster/flame/danmaku/danmaku/model/android/a$a;->y:Z

    .line 2
    iput p1, p0, Lmaster/flame/danmaku/danmaku/model/android/a$a;->x:F

    return-void
.end method

.method public s(F)V
    .locals 0

    iput p1, p0, Lmaster/flame/danmaku/danmaku/model/android/a$a;->i:F

    return-void
.end method

.method public t(F)V
    .locals 1

    .line 1
    iget-object v0, p0, Lmaster/flame/danmaku/danmaku/model/android/a$a;->c:Landroid/text/TextPaint;

    invoke-virtual {v0, p1}, Landroid/text/TextPaint;->setStrokeWidth(F)V

    .line 2
    iput p1, p0, Lmaster/flame/danmaku/danmaku/model/android/a$a;->j:F

    return-void
.end method

.method public u(I)V
    .locals 1

    .line 1
    sget v0, Lmaster/flame/danmaku/danmaku/model/c;->a:I

    if-eq p1, v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput-boolean v0, p0, Lmaster/flame/danmaku/danmaku/model/android/a$a;->v:Z

    .line 2
    iput p1, p0, Lmaster/flame/danmaku/danmaku/model/android/a$a;->w:I

    return-void
.end method

.method public v(Landroid/graphics/Typeface;)V
    .locals 1

    iget-object v0, p0, Lmaster/flame/danmaku/danmaku/model/android/a$a;->c:Landroid/text/TextPaint;

    invoke-virtual {v0, p1}, Landroid/text/TextPaint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    return-void
.end method
