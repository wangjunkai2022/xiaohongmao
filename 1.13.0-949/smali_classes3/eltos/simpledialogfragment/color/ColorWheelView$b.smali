.class Leltos/simpledialogfragment/color/ColorWheelView$b;
.super Ljava/lang/Object;
.source "ColorWheelView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Leltos/simpledialogfragment/color/ColorWheelView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "b"
.end annotation


# instance fields
.field private a:I

.field private b:[F

.field final synthetic c:Leltos/simpledialogfragment/color/ColorWheelView;


# direct methods
.method constructor <init>(Leltos/simpledialogfragment/color/ColorWheelView;I)V
    .locals 1

    .line 8
    iput-object p1, p0, Leltos/simpledialogfragment/color/ColorWheelView$b;->c:Leltos/simpledialogfragment/color/ColorWheelView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 p1, 0xff

    .line 9
    iput p1, p0, Leltos/simpledialogfragment/color/ColorWheelView$b;->a:I

    const/4 p1, 0x3

    new-array v0, p1, [F

    .line 10
    iput-object v0, p0, Leltos/simpledialogfragment/color/ColorWheelView$b;->b:[F

    new-array p1, p1, [F

    .line 11
    invoke-static {p2, p1}, Landroid/graphics/Color;->colorToHSV(I[F)V

    .line 12
    invoke-static {p2}, Landroid/graphics/Color;->alpha(I)I

    move-result p2

    .line 13
    invoke-virtual {p0, p2}, Leltos/simpledialogfragment/color/ColorWheelView$b;->d(I)V

    const/4 p2, 0x0

    aget p2, p1, p2

    .line 14
    invoke-virtual {p0, p2}, Leltos/simpledialogfragment/color/ColorWheelView$b;->l(F)Leltos/simpledialogfragment/color/ColorWheelView$b;

    const/4 p2, 0x1

    aget p2, p1, p2

    .line 15
    invoke-virtual {p0, p2}, Leltos/simpledialogfragment/color/ColorWheelView$b;->s(F)Leltos/simpledialogfragment/color/ColorWheelView$b;

    const/4 p2, 0x2

    aget p1, p1, p2

    .line 16
    invoke-virtual {p0, p1}, Leltos/simpledialogfragment/color/ColorWheelView$b;->u(F)Leltos/simpledialogfragment/color/ColorWheelView$b;

    return-void
.end method

.method constructor <init>(Leltos/simpledialogfragment/color/ColorWheelView;IFFF)V
    .locals 0

    .line 1
    iput-object p1, p0, Leltos/simpledialogfragment/color/ColorWheelView$b;->c:Leltos/simpledialogfragment/color/ColorWheelView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 p1, 0xff

    .line 2
    iput p1, p0, Leltos/simpledialogfragment/color/ColorWheelView$b;->a:I

    const/4 p1, 0x3

    new-array p1, p1, [F

    .line 3
    iput-object p1, p0, Leltos/simpledialogfragment/color/ColorWheelView$b;->b:[F

    .line 4
    invoke-virtual {p0, p2}, Leltos/simpledialogfragment/color/ColorWheelView$b;->d(I)V

    .line 5
    invoke-virtual {p0, p3}, Leltos/simpledialogfragment/color/ColorWheelView$b;->l(F)Leltos/simpledialogfragment/color/ColorWheelView$b;

    .line 6
    invoke-virtual {p0, p4}, Leltos/simpledialogfragment/color/ColorWheelView$b;->s(F)Leltos/simpledialogfragment/color/ColorWheelView$b;

    .line 7
    invoke-virtual {p0, p5}, Leltos/simpledialogfragment/color/ColorWheelView$b;->u(F)Leltos/simpledialogfragment/color/ColorWheelView$b;

    return-void
.end method

.method constructor <init>(Leltos/simpledialogfragment/color/ColorWheelView;Leltos/simpledialogfragment/color/ColorWheelView$b;)V
    .locals 6

    .line 17
    invoke-virtual {p2}, Leltos/simpledialogfragment/color/ColorWheelView$b;->c()I

    move-result v2

    invoke-virtual {p2}, Leltos/simpledialogfragment/color/ColorWheelView$b;->k()F

    move-result v3

    invoke-virtual {p2}, Leltos/simpledialogfragment/color/ColorWheelView$b;->r()F

    move-result v4

    invoke-virtual {p2}, Leltos/simpledialogfragment/color/ColorWheelView$b;->t()F

    move-result v5

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v5}, Leltos/simpledialogfragment/color/ColorWheelView$b;-><init>(Leltos/simpledialogfragment/color/ColorWheelView;IFFF)V

    return-void
.end method

.method static synthetic a(Leltos/simpledialogfragment/color/ColorWheelView$b;)[F
    .locals 0

    iget-object p0, p0, Leltos/simpledialogfragment/color/ColorWheelView$b;->b:[F

    return-object p0
.end method

.method static synthetic b(Leltos/simpledialogfragment/color/ColorWheelView$b;)I
    .locals 0

    iget p0, p0, Leltos/simpledialogfragment/color/ColorWheelView$b;->a:I

    return p0
.end method


# virtual methods
.method c()I
    .locals 1

    iget v0, p0, Leltos/simpledialogfragment/color/ColorWheelView$b;->a:I

    return v0
.end method

.method d(I)V
    .locals 0

    and-int/lit16 p1, p1, 0xff

    iput p1, p0, Leltos/simpledialogfragment/color/ColorWheelView$b;->a:I

    return-void
.end method

.method e()I
    .locals 1

    invoke-virtual {p0}, Leltos/simpledialogfragment/color/ColorWheelView$b;->o()I

    move-result v0

    and-int/lit16 v0, v0, 0xff

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-super {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_0

    instance-of v0, p1, Leltos/simpledialogfragment/color/ColorWheelView$b;

    if-eqz v0, :cond_1

    check-cast p1, Leltos/simpledialogfragment/color/ColorWheelView$b;

    iget v0, p1, Leltos/simpledialogfragment/color/ColorWheelView$b;->a:I

    iget v3, p0, Leltos/simpledialogfragment/color/ColorWheelView$b;->a:I

    if-ne v0, v3, :cond_1

    iget-object p1, p1, Leltos/simpledialogfragment/color/ColorWheelView$b;->b:[F

    aget v0, p1, v1

    iget-object v3, p0, Leltos/simpledialogfragment/color/ColorWheelView$b;->b:[F

    aget v4, v3, v1

    cmpl-float v0, v0, v4

    if-nez v0, :cond_1

    aget v0, p1, v2

    aget v4, v3, v2

    cmpl-float v0, v0, v4

    if-nez v0, :cond_1

    const/4 v0, 0x2

    aget p1, p1, v0

    aget v0, v3, v0

    cmpl-float p1, p1, v0

    if-nez p1, :cond_1

    :cond_0
    const/4 v1, 0x1

    :cond_1
    return v1
.end method

.method f()Leltos/simpledialogfragment/color/ColorWheelView$b;
    .locals 6

    .line 1
    invoke-virtual {p0}, Leltos/simpledialogfragment/color/ColorWheelView$b;->n()I

    move-result v0

    int-to-double v0, v0

    const-wide v2, 0x3fd322d0e5604189L    # 0.299

    mul-double v0, v0, v2

    invoke-virtual {p0}, Leltos/simpledialogfragment/color/ColorWheelView$b;->j()I

    move-result v2

    int-to-double v2, v2

    const-wide v4, 0x3fe2c8b439581062L    # 0.587

    mul-double v2, v2, v4

    add-double/2addr v0, v2

    invoke-virtual {p0}, Leltos/simpledialogfragment/color/ColorWheelView$b;->e()I

    move-result v2

    int-to-double v2, v2

    const-wide v4, 0x3fc26e978d4fdf3bL    # 0.144

    mul-double v2, v2, v4

    add-double/2addr v0, v2

    const-wide/high16 v2, 0x4060000000000000L    # 128.0

    cmpl-double v4, v0, v2

    if-ltz v4, :cond_0

    .line 2
    new-instance v0, Leltos/simpledialogfragment/color/ColorWheelView$b;

    iget-object v1, p0, Leltos/simpledialogfragment/color/ColorWheelView$b;->c:Leltos/simpledialogfragment/color/ColorWheelView;

    const/high16 v2, -0x1000000

    invoke-direct {v0, v1, v2}, Leltos/simpledialogfragment/color/ColorWheelView$b;-><init>(Leltos/simpledialogfragment/color/ColorWheelView;I)V

    return-object v0

    .line 3
    :cond_0
    new-instance v0, Leltos/simpledialogfragment/color/ColorWheelView$b;

    iget-object v1, p0, Leltos/simpledialogfragment/color/ColorWheelView$b;->c:Leltos/simpledialogfragment/color/ColorWheelView;

    const/4 v2, -0x1

    invoke-direct {v0, v1, v2}, Leltos/simpledialogfragment/color/ColorWheelView$b;-><init>(Leltos/simpledialogfragment/color/ColorWheelView;I)V

    return-object v0
.end method

.method g(Leltos/simpledialogfragment/color/ColorWheelView$b;)Z
    .locals 1

    iget p1, p1, Leltos/simpledialogfragment/color/ColorWheelView$b;->a:I

    iget v0, p0, Leltos/simpledialogfragment/color/ColorWheelView$b;->a:I

    if-ne p1, v0, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method h(Leltos/simpledialogfragment/color/ColorWheelView$b;)Z
    .locals 1

    invoke-virtual {p0, p1}, Leltos/simpledialogfragment/color/ColorWheelView$b;->g(Leltos/simpledialogfragment/color/ColorWheelView$b;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, p1}, Leltos/simpledialogfragment/color/ColorWheelView$b;->i(Leltos/simpledialogfragment/color/ColorWheelView$b;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method i(Leltos/simpledialogfragment/color/ColorWheelView$b;)Z
    .locals 5

    iget-object p1, p1, Leltos/simpledialogfragment/color/ColorWheelView$b;->b:[F

    const/4 v0, 0x0

    aget v1, p1, v0

    iget-object v2, p0, Leltos/simpledialogfragment/color/ColorWheelView$b;->b:[F

    aget v3, v2, v0

    const/4 v4, 0x1

    cmpl-float v1, v1, v3

    if-nez v1, :cond_0

    aget v1, p1, v4

    aget v3, v2, v4

    cmpl-float v1, v1, v3

    if-nez v1, :cond_0

    const/4 v1, 0x2

    aget p1, p1, v1

    aget v1, v2, v1

    cmpl-float p1, p1, v1

    if-nez p1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method j()I
    .locals 1

    invoke-virtual {p0}, Leltos/simpledialogfragment/color/ColorWheelView$b;->o()I

    move-result v0

    shr-int/lit8 v0, v0, 0x8

    and-int/lit16 v0, v0, 0xff

    return v0
.end method

.method k()F
    .locals 2

    iget-object v0, p0, Leltos/simpledialogfragment/color/ColorWheelView$b;->b:[F

    const/4 v1, 0x0

    aget v0, v0, v1

    return v0
.end method

.method l(F)Leltos/simpledialogfragment/color/ColorWheelView$b;
    .locals 3

    iget-object v0, p0, Leltos/simpledialogfragment/color/ColorWheelView$b;->b:[F

    iget-object v1, p0, Leltos/simpledialogfragment/color/ColorWheelView$b;->c:Leltos/simpledialogfragment/color/ColorWheelView;

    const/high16 v2, 0x43b40000    # 360.0f

    invoke-static {v1, p1, v2}, Leltos/simpledialogfragment/color/ColorWheelView;->a(Leltos/simpledialogfragment/color/ColorWheelView;FF)F

    move-result p1

    const/4 v1, 0x0

    aput p1, v0, v1

    return-object p0
.end method

.method m()Leltos/simpledialogfragment/color/ColorWheelView$b;
    .locals 6

    new-instance v0, Leltos/simpledialogfragment/color/ColorWheelView$b;

    iget-object v1, p0, Leltos/simpledialogfragment/color/ColorWheelView$b;->c:Leltos/simpledialogfragment/color/ColorWheelView;

    iget v2, p0, Leltos/simpledialogfragment/color/ColorWheelView$b;->a:I

    invoke-virtual {p0}, Leltos/simpledialogfragment/color/ColorWheelView$b;->n()I

    move-result v3

    rsub-int v3, v3, 0xff

    invoke-virtual {p0}, Leltos/simpledialogfragment/color/ColorWheelView$b;->j()I

    move-result v4

    rsub-int v4, v4, 0xff

    invoke-virtual {p0}, Leltos/simpledialogfragment/color/ColorWheelView$b;->e()I

    move-result v5

    rsub-int v5, v5, 0xff

    invoke-static {v2, v3, v4, v5}, Landroid/graphics/Color;->argb(IIII)I

    move-result v2

    invoke-direct {v0, v1, v2}, Leltos/simpledialogfragment/color/ColorWheelView$b;-><init>(Leltos/simpledialogfragment/color/ColorWheelView;I)V

    return-object v0
.end method

.method n()I
    .locals 1

    invoke-virtual {p0}, Leltos/simpledialogfragment/color/ColorWheelView$b;->o()I

    move-result v0

    shr-int/lit8 v0, v0, 0x10

    and-int/lit16 v0, v0, 0xff

    return v0
.end method

.method o()I
    .locals 1

    iget-object v0, p0, Leltos/simpledialogfragment/color/ColorWheelView$b;->b:[F

    invoke-static {v0}, Landroid/graphics/Color;->HSVToColor([F)I

    move-result v0

    return v0
.end method

.method p()I
    .locals 2

    iget v0, p0, Leltos/simpledialogfragment/color/ColorWheelView$b;->a:I

    iget-object v1, p0, Leltos/simpledialogfragment/color/ColorWheelView$b;->b:[F

    invoke-static {v0, v1}, Landroid/graphics/Color;->HSVToColor(I[F)I

    move-result v0

    return v0
.end method

.method q(F)Leltos/simpledialogfragment/color/ColorWheelView$b;
    .locals 7

    new-instance v6, Leltos/simpledialogfragment/color/ColorWheelView$b;

    iget-object v1, p0, Leltos/simpledialogfragment/color/ColorWheelView$b;->c:Leltos/simpledialogfragment/color/ColorWheelView;

    invoke-virtual {p0}, Leltos/simpledialogfragment/color/ColorWheelView$b;->c()I

    move-result v2

    invoke-virtual {p0}, Leltos/simpledialogfragment/color/ColorWheelView$b;->k()F

    move-result v0

    add-float v3, v0, p1

    invoke-virtual {p0}, Leltos/simpledialogfragment/color/ColorWheelView$b;->r()F

    move-result v4

    invoke-virtual {p0}, Leltos/simpledialogfragment/color/ColorWheelView$b;->t()F

    move-result v5

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Leltos/simpledialogfragment/color/ColorWheelView$b;-><init>(Leltos/simpledialogfragment/color/ColorWheelView;IFFF)V

    return-object v6
.end method

.method r()F
    .locals 2

    iget-object v0, p0, Leltos/simpledialogfragment/color/ColorWheelView$b;->b:[F

    const/4 v1, 0x1

    aget v0, v0, v1

    return v0
.end method

.method s(F)Leltos/simpledialogfragment/color/ColorWheelView$b;
    .locals 2

    iget-object v0, p0, Leltos/simpledialogfragment/color/ColorWheelView$b;->b:[F

    const/4 v1, 0x0

    invoke-static {v1, p1}, Ljava/lang/Math;->max(FF)F

    move-result p1

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-static {v1, p1}, Ljava/lang/Math;->min(FF)F

    move-result p1

    const/4 v1, 0x1

    aput p1, v0, v1

    return-object p0
.end method

.method t()F
    .locals 2

    iget-object v0, p0, Leltos/simpledialogfragment/color/ColorWheelView$b;->b:[F

    const/4 v1, 0x2

    aget v0, v0, v1

    return v0
.end method

.method u(F)Leltos/simpledialogfragment/color/ColorWheelView$b;
    .locals 2

    iget-object v0, p0, Leltos/simpledialogfragment/color/ColorWheelView$b;->b:[F

    const/4 v1, 0x0

    invoke-static {v1, p1}, Ljava/lang/Math;->max(FF)F

    move-result p1

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-static {v1, p1}, Ljava/lang/Math;->min(FF)F

    move-result p1

    const/4 v1, 0x2

    aput p1, v0, v1

    return-object p0
.end method
