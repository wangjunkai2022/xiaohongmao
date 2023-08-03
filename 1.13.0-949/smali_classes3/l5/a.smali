.class public Ll5/a;
.super Ljava/lang/Object;
.source "HeartInfo.java"


# instance fields
.field private a:F

.field private b:F

.field private c:Landroid/graphics/Path;

.field private d:F

.field private e:I

.field private f:F

.field private g:F

.field private h:I

.field private i:D

.field private j:I

.field private k:I

.field private l:D

.field private m:F


# direct methods
.method public constructor <init>()V
    .locals 4

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const v0, 0x400ccccd    # 2.2f

    .line 2
    iput v0, p0, Ll5/a;->d:F

    const/4 v0, 0x0

    .line 3
    iput v0, p0, Ll5/a;->e:I

    const/4 v0, 0x0

    .line 4
    iput v0, p0, Ll5/a;->f:F

    .line 5
    iput v0, p0, Ll5/a;->g:F

    const/16 v1, 0x708

    .line 6
    iput v1, p0, Ll5/a;->h:I

    const-wide/16 v1, 0x0

    .line 7
    iput-wide v1, p0, Ll5/a;->i:D

    const/16 v3, 0xff

    .line 8
    iput v3, p0, Ll5/a;->k:I

    .line 9
    iput-wide v1, p0, Ll5/a;->l:D

    .line 10
    iput v0, p0, Ll5/a;->m:F

    return-void
.end method


# virtual methods
.method public a(I)V
    .locals 6

    .line 1
    iget v0, p0, Ll5/a;->e:I

    add-int/2addr v0, p1

    iput v0, p0, Ll5/a;->e:I

    .line 2
    iget-wide v1, p0, Ll5/a;->i:D

    int-to-double v3, v0

    mul-double v1, v1, v3

    double-to-int p1, v1

    int-to-float p1, p1

    iput p1, p0, Ll5/a;->f:F

    float-to-double v0, p1

    .line 3
    iget v2, p0, Ll5/a;->g:F

    float-to-double v2, v2

    div-double/2addr v0, v2

    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    sub-double v0, v2, v0

    const-wide v4, 0x406fe00000000000L    # 255.0

    mul-double v0, v0, v4

    double-to-int v0, v0

    iput v0, p0, Ll5/a;->k:I

    .line 4
    iget v0, p0, Ll5/a;->m:F

    cmpl-float v1, p1, v0

    if-ltz v1, :cond_0

    .line 5
    iput-wide v2, p0, Ll5/a;->l:D

    goto :goto_0

    :cond_0
    float-to-double v1, p1

    float-to-double v3, v0

    div-double/2addr v1, v3

    .line 6
    iput-wide v1, p0, Ll5/a;->l:D

    :goto_0
    return-void
.end method

.method public b()I
    .locals 1

    iget v0, p0, Ll5/a;->k:I

    return v0
.end method

.method public c()F
    .locals 1

    iget v0, p0, Ll5/a;->f:F

    return v0
.end method

.method public d()I
    .locals 1

    iget v0, p0, Ll5/a;->e:I

    return v0
.end method

.method public e()I
    .locals 1

    iget v0, p0, Ll5/a;->j:I

    return v0
.end method

.method public f()Landroid/graphics/Path;
    .locals 1

    iget-object v0, p0, Ll5/a;->c:Landroid/graphics/Path;

    return-object v0
.end method

.method public g()F
    .locals 4

    iget v0, p0, Ll5/a;->d:F

    float-to-double v0, v0

    iget-wide v2, p0, Ll5/a;->l:D

    mul-double v0, v0, v2

    double-to-float v0, v0

    return v0
.end method

.method public h()D
    .locals 2

    iget-wide v0, p0, Ll5/a;->l:D

    return-wide v0
.end method

.method public i()D
    .locals 2

    iget-wide v0, p0, Ll5/a;->i:D

    return-wide v0
.end method

.method public j()I
    .locals 1

    iget v0, p0, Ll5/a;->h:I

    return v0
.end method

.method public k()F
    .locals 1

    iget v0, p0, Ll5/a;->a:F

    return v0
.end method

.method public l()F
    .locals 1

    iget v0, p0, Ll5/a;->b:F

    return v0
.end method

.method public m(FLandroid/content/Context;)V
    .locals 6

    .line 1
    iput p1, p0, Ll5/a;->g:F

    float-to-double v0, p1

    .line 2
    iget v2, p0, Ll5/a;->h:I

    int-to-double v2, v2

    const-wide/high16 v4, 0x3ff0000000000000L    # 1.0

    mul-double v2, v2, v4

    div-double/2addr v0, v2

    iput-wide v0, p0, Ll5/a;->i:D

    const/high16 v0, 0x40c00000    # 6.0f

    div-float/2addr p1, v0

    .line 3
    iput p1, p0, Ll5/a;->m:F

    .line 4
    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p2, 0x7f0700f8

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p1

    iput p1, p0, Ll5/a;->d:F

    return-void
.end method

.method public n(I)V
    .locals 0

    iput p1, p0, Ll5/a;->k:I

    return-void
.end method

.method public o(I)V
    .locals 0

    iput p1, p0, Ll5/a;->j:I

    return-void
.end method

.method public p(Landroid/graphics/Path;)V
    .locals 0

    iput-object p1, p0, Ll5/a;->c:Landroid/graphics/Path;

    return-void
.end method

.method public q(I)V
    .locals 0

    int-to-float p1, p1

    iput p1, p0, Ll5/a;->d:F

    return-void
.end method

.method public r(F)V
    .locals 2

    float-to-double v0, p1

    iput-wide v0, p0, Ll5/a;->l:D

    return-void
.end method

.method public s(I)V
    .locals 2

    int-to-double v0, p1

    iput-wide v0, p0, Ll5/a;->i:D

    return-void
.end method

.method public t(I)V
    .locals 0

    iput p1, p0, Ll5/a;->h:I

    return-void
.end method

.method public u(F)V
    .locals 0

    iput p1, p0, Ll5/a;->a:F

    return-void
.end method

.method public v(F)V
    .locals 0

    iput p1, p0, Ll5/a;->b:F

    return-void
.end method
