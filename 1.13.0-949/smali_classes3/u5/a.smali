.class public Lu5/a;
.super Ljava/lang/Object;
.source "ColorGradient.java"


# instance fields
.field private a:I

.field private b:I

.field private c:I

.field private d:[I

.field private e:[I


# direct methods
.method public constructor <init>(III)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput p1, p0, Lu5/a;->a:I

    .line 3
    iput p2, p0, Lu5/a;->b:I

    .line 4
    iput p3, p0, Lu5/a;->c:I

    .line 5
    invoke-direct {p0, p1}, Lu5/a;->e(I)[I

    move-result-object p1

    iput-object p1, p0, Lu5/a;->d:[I

    .line 6
    invoke-direct {p0, p2}, Lu5/a;->e(I)[I

    move-result-object p1

    iput-object p1, p0, Lu5/a;->e:[I

    return-void
.end method

.method private e(I)[I
    .locals 3

    const/4 v0, 0x4

    new-array v0, v0, [I

    .line 1
    invoke-static {p1}, Landroid/graphics/Color;->alpha(I)I

    move-result v1

    const/4 v2, 0x0

    aput v1, v0, v2

    .line 2
    invoke-static {p1}, Landroid/graphics/Color;->red(I)I

    move-result v1

    const/4 v2, 0x1

    aput v1, v0, v2

    .line 3
    invoke-static {p1}, Landroid/graphics/Color;->green(I)I

    move-result v1

    const/4 v2, 0x2

    aput v1, v0, v2

    .line 4
    invoke-static {p1}, Landroid/graphics/Color;->blue(I)I

    move-result p1

    const/4 v1, 0x3

    aput p1, v0, v1

    return-object v0
.end method


# virtual methods
.method public a(I)I
    .locals 9

    const/4 v0, 0x4

    new-array v0, v0, [I

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 1
    :goto_0
    iget-object v3, p0, Lu5/a;->e:[I

    array-length v4, v3

    if-ge v2, v4, :cond_0

    .line 2
    iget-object v4, p0, Lu5/a;->d:[I

    aget v5, v4, v2

    int-to-double v5, v5

    aget v3, v3, v2

    aget v4, v4, v2

    sub-int/2addr v3, v4

    int-to-double v3, v3

    const-wide/high16 v7, 0x3ff0000000000000L    # 1.0

    mul-double v3, v3, v7

    iget v7, p0, Lu5/a;->c:I

    int-to-double v7, v7

    div-double/2addr v3, v7

    int-to-double v7, p1

    mul-double v3, v3, v7

    add-double/2addr v5, v3

    double-to-int v3, v5

    aput v3, v0, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    aget p1, v0, v1

    const/4 v1, 0x1

    aget v1, v0, v1

    const/4 v2, 0x2

    aget v2, v0, v2

    const/4 v3, 0x3

    aget v0, v0, v3

    .line 3
    invoke-static {p1, v1, v2, v0}, Landroid/graphics/Color;->argb(IIII)I

    move-result p1

    return p1
.end method

.method public b()I
    .locals 1

    iget v0, p0, Lu5/a;->a:I

    return v0
.end method

.method public c()I
    .locals 1

    iget v0, p0, Lu5/a;->b:I

    return v0
.end method

.method public d()I
    .locals 1

    iget v0, p0, Lu5/a;->c:I

    return v0
.end method
