.class public Leltos/simpledialogfragment/color/ColorView;
.super Landroid/widget/FrameLayout;
.source "ColorView.java"

# interfaces
.implements Landroid/widget/Checkable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Leltos/simpledialogfragment/color/ColorView$Style;
    }
.end annotation


# static fields
.field public static final m:I = 0x0

.field public static final n:I = 0xffffff


# instance fields
.field private a:I
    .annotation build Landroidx/annotation/ColorInt;
    .end annotation
.end field

.field private b:Z

.field private c:I

.field private d:I
    .annotation build Landroidx/annotation/ColorInt;
    .end annotation
.end field

.field private e:Landroid/widget/ImageView;

.field private f:Landroid/widget/FrameLayout;

.field private g:Landroid/widget/FrameLayout;

.field private final h:Landroid/view/animation/Animation;

.field private final i:Landroid/view/animation/Animation;

.field private j:Leltos/simpledialogfragment/color/ColorView$Style;

.field private k:Landroid/graphics/drawable/Drawable;

.field private l:Landroid/graphics/drawable/Drawable;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, v0}, Leltos/simpledialogfragment/color/ColorView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 2
    invoke-direct {p0, p1, p2, v0}, Leltos/simpledialogfragment/color/ColorView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 3
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p1, 0x0

    .line 4
    iput-boolean p1, p0, Leltos/simpledialogfragment/color/ColorView;->b:Z

    .line 5
    iput p1, p0, Leltos/simpledialogfragment/color/ColorView;->c:I

    const p1, 0xffffff

    .line 6
    iput p1, p0, Leltos/simpledialogfragment/color/ColorView;->d:I

    .line 7
    sget-object p1, Leltos/simpledialogfragment/color/ColorView$Style;->CHECK:Leltos/simpledialogfragment/color/ColorView$Style;

    iput-object p1, p0, Leltos/simpledialogfragment/color/ColorView;->j:Leltos/simpledialogfragment/color/ColorView$Style;

    .line 8
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object p1

    sget p2, Leltos/simpledialogfragment/c$a;->G:I

    invoke-static {p1, p2}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object p1

    iput-object p1, p0, Leltos/simpledialogfragment/color/ColorView;->h:Landroid/view/animation/Animation;

    .line 9
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object p1

    sget p2, Leltos/simpledialogfragment/c$a;->F:I

    invoke-static {p1, p2}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object p1

    iput-object p1, p0, Leltos/simpledialogfragment/color/ColorView;->i:Landroid/view/animation/Animation;

    .line 10
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    sget p2, Leltos/simpledialogfragment/c$l;->I0:I

    const/4 p3, 0x1

    invoke-virtual {p1, p2, p0, p3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 11
    sget p1, Leltos/simpledialogfragment/c$i;->H0:I

    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Leltos/simpledialogfragment/color/ColorView;->e:Landroid/widget/ImageView;

    .line 12
    sget p1, Leltos/simpledialogfragment/c$i;->P0:I

    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/FrameLayout;

    iput-object p1, p0, Leltos/simpledialogfragment/color/ColorView;->f:Landroid/widget/FrameLayout;

    .line 13
    sget p1, Leltos/simpledialogfragment/c$i;->Q3:I

    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/FrameLayout;

    iput-object p1, p0, Leltos/simpledialogfragment/color/ColorView;->g:Landroid/widget/FrameLayout;

    .line 14
    invoke-direct {p0}, Leltos/simpledialogfragment/color/ColorView;->h()V

    return-void
.end method

.method private a()Landroid/graphics/drawable/Drawable;
    .locals 3

    .line 1
    new-instance v0, Landroid/graphics/drawable/GradientDrawable;

    invoke-direct {v0}, Landroid/graphics/drawable/GradientDrawable;-><init>()V

    const/4 v1, 0x1

    .line 2
    invoke-virtual {v0, v1}, Landroid/graphics/drawable/GradientDrawable;->setShape(I)V

    .line 3
    iget v1, p0, Leltos/simpledialogfragment/color/ColorView;->c:I

    if-eqz v1, :cond_2

    .line 4
    iget v1, p0, Leltos/simpledialogfragment/color/ColorView;->d:I

    const v2, 0xffffff

    if-ne v1, v2, :cond_1

    .line 5
    iget v1, p0, Leltos/simpledialogfragment/color/ColorView;->a:I

    invoke-static {v1}, Leltos/simpledialogfragment/color/ColorView;->e(I)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, -0x1

    goto :goto_0

    :cond_0
    const/high16 v1, -0x1000000

    .line 6
    :cond_1
    :goto_0
    iget v2, p0, Leltos/simpledialogfragment/color/ColorView;->c:I

    invoke-virtual {v0, v2, v1}, Landroid/graphics/drawable/GradientDrawable;->setStroke(II)V

    .line 7
    :cond_2
    iget v1, p0, Leltos/simpledialogfragment/color/ColorView;->a:I

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    return-object v0
.end method

.method private b(I)Landroid/graphics/drawable/Drawable;
    .locals 3

    .line 1
    new-instance v0, Landroid/graphics/drawable/GradientDrawable;

    invoke-direct {v0}, Landroid/graphics/drawable/GradientDrawable;-><init>()V

    const/4 v1, 0x1

    .line 2
    invoke-virtual {v0, v1}, Landroid/graphics/drawable/GradientDrawable;->setShape(I)V

    const/high16 v1, -0x1000000

    .line 3
    invoke-virtual {v0, v1}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    .line 4
    new-instance v1, Landroid/graphics/drawable/RippleDrawable;

    invoke-static {p1}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object p1

    const/4 v2, 0x0

    invoke-direct {v1, p1, v2, v0}, Landroid/graphics/drawable/RippleDrawable;-><init>(Landroid/content/res/ColorStateList;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    return-object v1
.end method

.method public static c(I)I
    .locals 3
    .param p0    # I
        .annotation build Landroidx/annotation/ColorInt;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/ColorInt;
    .end annotation

    const/4 v0, 0x3

    new-array v0, v0, [F

    .line 1
    invoke-static {p0, v0}, Landroid/graphics/Color;->colorToHSV(I[F)V

    const/4 p0, 0x2

    aget v1, v0, p0

    const/high16 v2, 0x3f000000    # 0.5f

    mul-float v1, v1, v2

    aput v1, v0, p0

    .line 2
    invoke-static {v0}, Landroid/graphics/Color;->HSVToColor([F)I

    move-result p0

    return p0
.end method

.method public static d(I)I
    .locals 4
    .param p0    # I
        .annotation build Landroidx/annotation/ColorInt;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/ColorInt;
    .end annotation

    const/4 v0, 0x3

    new-array v0, v0, [F

    .line 1
    invoke-static {p0, v0}, Landroid/graphics/Color;->colorToHSV(I[F)V

    const/4 p0, 0x1

    aget v1, v0, p0

    const/high16 v2, 0x3f000000    # 0.5f

    mul-float v1, v1, v2

    aput v1, v0, p0

    const/4 p0, 0x2

    aget v1, v0, p0

    const/high16 v3, 0x3f800000    # 1.0f

    sub-float v1, v3, v1

    mul-float v1, v1, v2

    sub-float/2addr v3, v1

    aput v3, v0, p0

    .line 2
    invoke-static {v0}, Landroid/graphics/Color;->HSVToColor([F)I

    move-result p0

    return p0
.end method

.method public static e(I)Z
    .locals 6
    .param p0    # I
        .annotation build Landroidx/annotation/ColorInt;
        .end annotation
    .end param

    .line 1
    invoke-static {p0}, Landroid/graphics/Color;->red(I)I

    move-result v0

    int-to-double v0, v0

    const-wide v2, 0x3fd322d0e5604189L    # 0.299

    mul-double v0, v0, v2

    .line 2
    invoke-static {p0}, Landroid/graphics/Color;->green(I)I

    move-result v2

    int-to-double v2, v2

    const-wide v4, 0x3fe2c8b439581062L    # 0.587

    mul-double v2, v2, v4

    add-double/2addr v0, v2

    .line 3
    invoke-static {p0}, Landroid/graphics/Color;->blue(I)I

    move-result p0

    int-to-double v2, p0

    const-wide v4, 0x3fbd2f1a9fbe76c9L    # 0.114

    mul-double v2, v2, v4

    add-double/2addr v0, v2

    const-wide v2, 0x4066800000000000L    # 180.0

    cmpg-double p0, v0, v2

    if-gez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private g(Landroid/view/View;ZZZ)V
    .locals 0

    if-eqz p4, :cond_1

    if-nez p2, :cond_0

    if-eqz p3, :cond_0

    .line 1
    iget-object p2, p0, Leltos/simpledialogfragment/color/ColorView;->h:Landroid/view/animation/Animation;

    invoke-virtual {p1, p2}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    goto :goto_0

    :cond_0
    if-eqz p2, :cond_1

    if-nez p3, :cond_1

    .line 2
    iget-object p2, p0, Leltos/simpledialogfragment/color/ColorView;->i:Landroid/view/animation/Animation;

    invoke-virtual {p1, p2}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    :cond_1
    :goto_0
    if-eqz p3, :cond_2

    const/4 p2, 0x0

    goto :goto_1

    :cond_2
    const/4 p2, 0x4

    .line 3
    :goto_1
    invoke-virtual {p1, p2}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method private h()V
    .locals 3

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->setForeground(Landroid/graphics/drawable/Drawable;)V

    .line 2
    iget-object v0, p0, Leltos/simpledialogfragment/color/ColorView;->f:Landroid/widget/FrameLayout;

    invoke-direct {p0}, Leltos/simpledialogfragment/color/ColorView;->a()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 3
    sget-object v0, Leltos/simpledialogfragment/color/ColorView$a;->a:[I

    iget-object v1, p0, Leltos/simpledialogfragment/color/ColorView;->j:Leltos/simpledialogfragment/color/ColorView$Style;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eq v0, v1, :cond_2

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    goto :goto_2

    .line 4
    :cond_0
    iget-object v0, p0, Leltos/simpledialogfragment/color/ColorView;->e:Landroid/widget/ImageView;

    iget v1, p0, Leltos/simpledialogfragment/color/ColorView;->a:I

    if-eqz v1, :cond_1

    sget v1, Leltos/simpledialogfragment/c$h;->V0:I

    goto :goto_0

    .line 5
    :cond_1
    sget v1, Leltos/simpledialogfragment/c$h;->U0:I

    .line 6
    :goto_0
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 7
    iget-object v0, p0, Leltos/simpledialogfragment/color/ColorView;->e:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 8
    iget v0, p0, Leltos/simpledialogfragment/color/ColorView;->a:I

    invoke-static {v0}, Leltos/simpledialogfragment/color/ColorView;->c(I)I

    move-result v0

    invoke-direct {p0, v0}, Leltos/simpledialogfragment/color/ColorView;->b(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Leltos/simpledialogfragment/color/ColorView;->k:Landroid/graphics/drawable/Drawable;

    .line 9
    iget v0, p0, Leltos/simpledialogfragment/color/ColorView;->a:I

    invoke-static {v0}, Leltos/simpledialogfragment/color/ColorView;->d(I)I

    move-result v0

    invoke-direct {p0, v0}, Leltos/simpledialogfragment/color/ColorView;->b(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Leltos/simpledialogfragment/color/ColorView;->l:Landroid/graphics/drawable/Drawable;

    goto :goto_2

    .line 10
    :cond_2
    iget-object v0, p0, Leltos/simpledialogfragment/color/ColorView;->e:Landroid/widget/ImageView;

    sget v1, Leltos/simpledialogfragment/c$h;->O0:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 11
    iget-object v0, p0, Leltos/simpledialogfragment/color/ColorView;->e:Landroid/widget/ImageView;

    iget v1, p0, Leltos/simpledialogfragment/color/ColorView;->a:I

    invoke-static {v1}, Leltos/simpledialogfragment/color/ColorView;->e(I)Z

    move-result v1

    if-eqz v1, :cond_3

    const/4 v1, -0x1

    goto :goto_1

    :cond_3
    const/high16 v1, -0x1000000

    :goto_1
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setColorFilter(I)V

    .line 12
    iget-object v0, p0, Leltos/simpledialogfragment/color/ColorView;->f:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v2}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 13
    iget-object v0, p0, Leltos/simpledialogfragment/color/ColorView;->g:Landroid/widget/FrameLayout;

    iget v1, p0, Leltos/simpledialogfragment/color/ColorView;->a:I

    invoke-static {v1}, Leltos/simpledialogfragment/color/ColorView;->c(I)I

    move-result v1

    invoke-direct {p0, v1}, Leltos/simpledialogfragment/color/ColorView;->b(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setForeground(Landroid/graphics/drawable/Drawable;)V

    .line 14
    :goto_2
    iget-boolean v0, p0, Leltos/simpledialogfragment/color/ColorView;->b:Z

    invoke-virtual {p0, v0, v2}, Leltos/simpledialogfragment/color/ColorView;->f(ZZ)V

    return-void
.end method


# virtual methods
.method public f(ZZ)V
    .locals 2

    .line 1
    sget-object v0, Leltos/simpledialogfragment/color/ColorView$a;->a:[I

    iget-object v1, p0, Leltos/simpledialogfragment/color/ColorView;->j:Leltos/simpledialogfragment/color/ColorView$Style;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_5

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    goto :goto_3

    .line 2
    :cond_0
    iget-object v0, p0, Leltos/simpledialogfragment/color/ColorView;->f:Landroid/widget/FrameLayout;

    iget-boolean v1, p0, Leltos/simpledialogfragment/color/ColorView;->b:Z

    invoke-direct {p0, v0, v1, p1, p2}, Leltos/simpledialogfragment/color/ColorView;->g(Landroid/view/View;ZZZ)V

    .line 3
    iget p2, p0, Leltos/simpledialogfragment/color/ColorView;->a:I

    if-eqz p2, :cond_3

    .line 4
    iget-object v0, p0, Leltos/simpledialogfragment/color/ColorView;->e:Landroid/widget/ImageView;

    if-eqz p1, :cond_2

    .line 5
    invoke-static {p2}, Leltos/simpledialogfragment/color/ColorView;->e(I)Z

    move-result p2

    if-eqz p2, :cond_1

    const/4 p2, -0x1

    goto :goto_0

    :cond_1
    const/high16 p2, -0x1000000

    .line 6
    :cond_2
    :goto_0
    invoke-virtual {v0, p2}, Landroid/widget/ImageView;->setColorFilter(I)V

    goto :goto_1

    .line 7
    :cond_3
    iget-object p2, p0, Leltos/simpledialogfragment/color/ColorView;->e:Landroid/widget/ImageView;

    const/4 v0, 0x0

    invoke-virtual {p2, v0}, Landroid/widget/ImageView;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 8
    :goto_1
    iget-object p2, p0, Leltos/simpledialogfragment/color/ColorView;->g:Landroid/widget/FrameLayout;

    if-eqz p1, :cond_4

    iget-object v0, p0, Leltos/simpledialogfragment/color/ColorView;->k:Landroid/graphics/drawable/Drawable;

    goto :goto_2

    :cond_4
    iget-object v0, p0, Leltos/simpledialogfragment/color/ColorView;->l:Landroid/graphics/drawable/Drawable;

    :goto_2
    invoke-virtual {p2, v0}, Landroid/widget/FrameLayout;->setForeground(Landroid/graphics/drawable/Drawable;)V

    goto :goto_3

    .line 9
    :cond_5
    iget-object v0, p0, Leltos/simpledialogfragment/color/ColorView;->e:Landroid/widget/ImageView;

    iget-boolean v1, p0, Leltos/simpledialogfragment/color/ColorView;->b:Z

    invoke-direct {p0, v0, v1, p1, p2}, Leltos/simpledialogfragment/color/ColorView;->g(Landroid/view/View;ZZZ)V

    .line 10
    :goto_3
    iput-boolean p1, p0, Leltos/simpledialogfragment/color/ColorView;->b:Z

    return-void
.end method

.method public getColor()I
    .locals 1
    .annotation build Landroidx/annotation/ColorInt;
    .end annotation

    iget v0, p0, Leltos/simpledialogfragment/color/ColorView;->a:I

    return v0
.end method

.method public isChecked()Z
    .locals 1

    iget-boolean v0, p0, Leltos/simpledialogfragment/color/ColorView;->b:Z

    return v0
.end method

.method protected onMeasure(II)V
    .locals 0

    invoke-super {p0, p1, p1}, Landroid/widget/FrameLayout;->onMeasure(II)V

    return-void
.end method

.method public setChecked(Z)V
    .locals 1

    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Leltos/simpledialogfragment/color/ColorView;->f(ZZ)V

    return-void
.end method

.method public setColor(I)V
    .locals 2
    .param p1    # I
        .annotation build Landroidx/annotation/ColorInt;
        .end annotation
    .end param

    const/high16 v0, -0x1000000

    and-int v1, p1, v0

    if-nez v1, :cond_0

    if-eqz p1, :cond_0

    or-int/2addr p1, v0

    .line 1
    :cond_0
    iget v0, p0, Leltos/simpledialogfragment/color/ColorView;->a:I

    if-eq v0, p1, :cond_1

    .line 2
    iput p1, p0, Leltos/simpledialogfragment/color/ColorView;->a:I

    .line 3
    invoke-direct {p0}, Leltos/simpledialogfragment/color/ColorView;->h()V

    :cond_1
    return-void
.end method

.method public setOutlineColor(I)V
    .locals 0
    .param p1    # I
        .annotation build Landroidx/annotation/ColorInt;
        .end annotation
    .end param

    .line 1
    iput p1, p0, Leltos/simpledialogfragment/color/ColorView;->d:I

    .line 2
    invoke-direct {p0}, Leltos/simpledialogfragment/color/ColorView;->h()V

    return-void
.end method

.method public setOutlineWidth(I)V
    .locals 0

    .line 1
    iput p1, p0, Leltos/simpledialogfragment/color/ColorView;->c:I

    .line 2
    invoke-direct {p0}, Leltos/simpledialogfragment/color/ColorView;->h()V

    return-void
.end method

.method public setStyle(Leltos/simpledialogfragment/color/ColorView$Style;)V
    .locals 1

    .line 1
    iget-object v0, p0, Leltos/simpledialogfragment/color/ColorView;->j:Leltos/simpledialogfragment/color/ColorView$Style;

    if-eq v0, p1, :cond_0

    .line 2
    iput-object p1, p0, Leltos/simpledialogfragment/color/ColorView;->j:Leltos/simpledialogfragment/color/ColorView$Style;

    .line 3
    invoke-direct {p0}, Leltos/simpledialogfragment/color/ColorView;->h()V

    :cond_0
    return-void
.end method

.method public toggle()V
    .locals 1

    invoke-virtual {p0}, Leltos/simpledialogfragment/color/ColorView;->isChecked()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, v0}, Leltos/simpledialogfragment/color/ColorView;->setChecked(Z)V

    return-void
.end method
