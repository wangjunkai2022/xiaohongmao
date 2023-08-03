.class public Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/adapter/a;
.super Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;
.source "DotsIndicatorDecoration.java"


# instance fields
.field private final a:I

.field private final b:I

.field private final c:I

.field private final d:Landroid/graphics/Paint;

.field private final e:Landroid/graphics/Paint;

.field private f:Z

.field private g:I

.field private h:I


# direct methods
.method public constructor <init>(IIIII)V
    .locals 4
    .param p4    # I
        .annotation build Landroidx/annotation/ColorInt;
        .end annotation
    .end param
    .param p5    # I
        .annotation build Landroidx/annotation/ColorInt;
        .end annotation
    .end param

    .line 1
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;-><init>()V

    .line 2
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/adapter/a;->d:Landroid/graphics/Paint;

    .line 3
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    iput-object v1, p0, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/adapter/a;->e:Landroid/graphics/Paint;

    .line 4
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    iget v2, v2, Landroid/util/DisplayMetrics;->density:F

    const/high16 v3, 0x3f800000    # 1.0f

    mul-float v2, v2, v3

    .line 5
    iput p1, p0, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/adapter/a;->c:I

    .line 6
    sget-object p1, Landroid/graphics/Paint$Cap;->ROUND:Landroid/graphics/Paint$Cap;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    .line 7
    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 8
    sget-object p1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    const/4 p1, 0x1

    .line 9
    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 10
    invoke-virtual {v0, p4}, Landroid/graphics/Paint;->setColor(I)V

    .line 11
    sget-object p4, Landroid/graphics/Paint$Cap;->ROUND:Landroid/graphics/Paint$Cap;

    invoke-virtual {v1, p4}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    .line 12
    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 13
    sget-object p4, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v1, p4}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 14
    invoke-virtual {v1, p1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 15
    invoke-virtual {v1, p5}, Landroid/graphics/Paint;->setColor(I)V

    .line 16
    iput p2, p0, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/adapter/a;->b:I

    .line 17
    iput p3, p0, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/adapter/a;->a:I

    return-void
.end method

.method private a(Landroid/graphics/Canvas;FFI)V
    .locals 3

    .line 1
    iget v0, p0, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/adapter/a;->c:I

    mul-int/lit8 v1, v0, 0x2

    iget v2, p0, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/adapter/a;->b:I

    add-int/2addr v1, v2

    int-to-float v1, v1

    int-to-float v2, v0

    add-float/2addr p2, v2

    int-to-float p4, p4

    mul-float v1, v1, p4

    add-float/2addr p2, v1

    int-to-float p4, v0

    .line 2
    iget-object v0, p0, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/adapter/a;->e:Landroid/graphics/Paint;

    invoke-virtual {p1, p2, p3, p4, v0}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    return-void
.end method

.method private b(Landroid/graphics/Canvas;FFI)V
    .locals 4

    .line 1
    iget v0, p0, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/adapter/a;->c:I

    mul-int/lit8 v1, v0, 0x2

    iget v2, p0, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/adapter/a;->b:I

    add-int/2addr v1, v2

    int-to-float v1, v1

    int-to-float v0, v0

    add-float/2addr p2, v0

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p4, :cond_0

    .line 2
    iget v2, p0, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/adapter/a;->c:I

    int-to-float v2, v2

    iget-object v3, p0, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/adapter/a;->d:Landroid/graphics/Paint;

    invoke-virtual {p1, p2, p3, v2, v3}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    add-float/2addr p2, v1

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private c(Landroidx/recyclerview/widget/RecyclerView;)I
    .locals 1
    .param p1    # Landroidx/recyclerview/widget/RecyclerView;
        .annotation build Lm8/g;
        .end annotation
    .end param

    .line 1
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    move-result-object v0

    instance-of v0, v0, Landroidx/recyclerview/widget/GridLayoutManager;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    move-result-object p1

    check-cast p1, Landroidx/recyclerview/widget/GridLayoutManager;

    invoke-virtual {p1}, Landroidx/recyclerview/widget/LinearLayoutManager;->findFirstCompletelyVisibleItemPosition()I

    move-result p1

    return p1

    .line 3
    :cond_0
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    move-result-object v0

    instance-of v0, v0, Landroidx/recyclerview/widget/LinearLayoutManager;

    if-eqz v0, :cond_1

    .line 4
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    move-result-object p1

    check-cast p1, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {p1}, Landroidx/recyclerview/widget/LinearLayoutManager;->findFirstCompletelyVisibleItemPosition()I

    move-result p1

    return p1

    :cond_1
    const/4 p1, -0x1

    return p1
.end method

.method private d(Landroidx/recyclerview/widget/RecyclerView;)I
    .locals 1
    .param p1    # Landroidx/recyclerview/widget/RecyclerView;
        .annotation build Lm8/g;
        .end annotation
    .end param

    .line 1
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    move-result-object v0

    instance-of v0, v0, Landroidx/recyclerview/widget/GridLayoutManager;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    move-result-object p1

    check-cast p1, Landroidx/recyclerview/widget/GridLayoutManager;

    invoke-virtual {p1}, Landroidx/recyclerview/widget/LinearLayoutManager;->findLastCompletelyVisibleItemPosition()I

    move-result p1

    return p1

    .line 3
    :cond_0
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    move-result-object v0

    instance-of v0, v0, Landroidx/recyclerview/widget/LinearLayoutManager;

    if-eqz v0, :cond_1

    .line 4
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    move-result-object p1

    check-cast p1, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {p1}, Landroidx/recyclerview/widget/LinearLayoutManager;->findLastCompletelyVisibleItemPosition()I

    move-result p1

    return p1

    :cond_1
    const/4 p1, -0x1

    return p1
.end method


# virtual methods
.method public getItemOffsets(Landroid/graphics/Rect;Landroid/view/View;Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$State;)V
    .locals 0
    .param p1    # Landroid/graphics/Rect;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .param p2    # Landroid/view/View;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .param p3    # Landroidx/recyclerview/widget/RecyclerView;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .param p4    # Landroidx/recyclerview/widget/RecyclerView$State;
        .annotation build Lm8/g;
        .end annotation
    .end param

    .line 1
    invoke-super {p0, p1, p2, p3, p4}, Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;->getItemOffsets(Landroid/graphics/Rect;Landroid/view/View;Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$State;)V

    .line 2
    iget p2, p0, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/adapter/a;->a:I

    iput p2, p1, Landroid/graphics/Rect;->bottom:I

    return-void
.end method

.method public onDrawOver(Landroid/graphics/Canvas;Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$State;)V
    .locals 3
    .param p1    # Landroid/graphics/Canvas;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .param p2    # Landroidx/recyclerview/widget/RecyclerView;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .param p3    # Landroidx/recyclerview/widget/RecyclerView$State;
        .annotation build Lm8/g;
        .end annotation
    .end param

    .line 1
    invoke-super {p0, p1, p2, p3}, Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;->onDrawOver(Landroid/graphics/Canvas;Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$State;)V

    .line 2
    invoke-virtual {p2}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object p3

    if-nez p3, :cond_0

    return-void

    .line 3
    :cond_0
    iget-boolean v0, p0, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/adapter/a;->f:Z

    const/4 v1, 0x1

    if-nez v0, :cond_1

    .line 4
    invoke-direct {p0, p2}, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/adapter/a;->c(Landroidx/recyclerview/widget/RecyclerView;)I

    move-result v0

    .line 5
    invoke-direct {p0, p2}, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/adapter/a;->d(Landroidx/recyclerview/widget/RecyclerView;)I

    move-result v2

    sub-int/2addr v2, v0

    add-int/2addr v2, v1

    .line 6
    iput v2, p0, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/adapter/a;->h:I

    .line 7
    invoke-virtual {p3}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->getItemCount()I

    move-result p3

    iget v0, p0, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/adapter/a;->h:I

    div-int/2addr p3, v0

    iput p3, p0, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/adapter/a;->g:I

    .line 8
    iput-boolean v1, p0, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/adapter/a;->f:Z

    .line 9
    :cond_1
    iget p3, p0, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/adapter/a;->c:I

    mul-int/lit8 p3, p3, 0x2

    iget v0, p0, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/adapter/a;->g:I

    mul-int p3, p3, v0

    int-to-float p3, p3

    const/4 v2, 0x0

    sub-int/2addr v0, v1

    .line 10
    invoke-static {v2, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    iget v1, p0, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/adapter/a;->b:I

    mul-int v0, v0, v1

    int-to-float v0, v0

    add-float/2addr p3, v0

    .line 11
    invoke-virtual {p2}, Landroid/view/ViewGroup;->getWidth()I

    move-result v0

    int-to-float v0, v0

    sub-float/2addr v0, p3

    const/high16 p3, 0x40000000    # 2.0f

    div-float/2addr v0, p3

    .line 12
    invoke-virtual {p2}, Landroid/view/ViewGroup;->getHeight()I

    move-result v1

    int-to-float v1, v1

    iget v2, p0, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/adapter/a;->a:I

    int-to-float v2, v2

    div-float/2addr v2, p3

    sub-float/2addr v1, v2

    .line 13
    iget p3, p0, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/adapter/a;->g:I

    invoke-direct {p0, p1, v0, v1, p3}, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/adapter/a;->b(Landroid/graphics/Canvas;FFI)V

    .line 14
    invoke-direct {p0, p2}, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/adapter/a;->d(Landroidx/recyclerview/widget/RecyclerView;)I

    move-result p2

    iget p3, p0, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/adapter/a;->h:I

    div-int/2addr p2, p3

    const/4 p3, -0x1

    if-gt p2, p3, :cond_2

    return-void

    .line 15
    :cond_2
    invoke-direct {p0, p1, v0, v1, p2}, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/adapter/a;->a(Landroid/graphics/Canvas;FFI)V

    return-void
.end method
