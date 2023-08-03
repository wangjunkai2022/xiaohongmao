.class public Lcom/qennnsad/aknkaksd/presentation/ui/room/view/a;
.super Ljava/lang/Object;
.source "AndroidBug5497Workaround.java"


# instance fields
.field private a:Landroid/view/View;

.field private b:I

.field private c:Landroid/widget/FrameLayout$LayoutParams;

.field private d:I

.field private e:Z

.field private f:I


# direct methods
.method private constructor <init>(Landroid/app/Activity;)V
    .locals 4

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lcom/qennnsad/aknkaksd/presentation/ui/room/view/a;->e:Z

    .line 3
    invoke-virtual {p1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const-string v1, "status_bar_height"

    const-string v2, "dimen"

    const-string v3, "android"

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 4
    invoke-virtual {p1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/qennnsad/aknkaksd/presentation/ui/room/view/a;->f:I

    const v0, 0x1020002

    .line 5
    invoke-virtual {p1, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/FrameLayout;

    const/4 v0, 0x0

    .line 6
    invoke-virtual {p1, v0}, Landroid/widget/FrameLayout;->getChildAt(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/qennnsad/aknkaksd/presentation/ui/room/view/a;->a:Landroid/view/View;

    .line 7
    invoke-virtual {p1}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object p1

    new-instance v0, Lcom/qennnsad/aknkaksd/presentation/ui/room/view/a$a;

    invoke-direct {v0, p0}, Lcom/qennnsad/aknkaksd/presentation/ui/room/view/a$a;-><init>(Lcom/qennnsad/aknkaksd/presentation/ui/room/view/a;)V

    invoke-virtual {p1, v0}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 8
    iget-object p1, p0, Lcom/qennnsad/aknkaksd/presentation/ui/room/view/a;->a:Landroid/view/View;

    .line 9
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    check-cast p1, Landroid/widget/FrameLayout$LayoutParams;

    iput-object p1, p0, Lcom/qennnsad/aknkaksd/presentation/ui/room/view/a;->c:Landroid/widget/FrameLayout$LayoutParams;

    return-void
.end method

.method static synthetic a(Lcom/qennnsad/aknkaksd/presentation/ui/room/view/a;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/qennnsad/aknkaksd/presentation/ui/room/view/a;->e:Z

    return p0
.end method

.method static synthetic b(Lcom/qennnsad/aknkaksd/presentation/ui/room/view/a;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/qennnsad/aknkaksd/presentation/ui/room/view/a;->e:Z

    return p1
.end method

.method static synthetic c(Lcom/qennnsad/aknkaksd/presentation/ui/room/view/a;I)I
    .locals 0

    iput p1, p0, Lcom/qennnsad/aknkaksd/presentation/ui/room/view/a;->d:I

    return p1
.end method

.method static synthetic d(Lcom/qennnsad/aknkaksd/presentation/ui/room/view/a;)Landroid/view/View;
    .locals 0

    iget-object p0, p0, Lcom/qennnsad/aknkaksd/presentation/ui/room/view/a;->a:Landroid/view/View;

    return-object p0
.end method

.method static synthetic e(Lcom/qennnsad/aknkaksd/presentation/ui/room/view/a;)V
    .locals 0

    invoke-direct {p0}, Lcom/qennnsad/aknkaksd/presentation/ui/room/view/a;->h()V

    return-void
.end method

.method public static f(Landroid/app/Activity;)V
    .locals 1

    new-instance v0, Lcom/qennnsad/aknkaksd/presentation/ui/room/view/a;

    invoke-direct {v0, p0}, Lcom/qennnsad/aknkaksd/presentation/ui/room/view/a;-><init>(Landroid/app/Activity;)V

    return-void
.end method

.method private g()I
    .locals 2

    .line 1
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 2
    iget-object v1, p0, Lcom/qennnsad/aknkaksd/presentation/ui/room/view/a;->a:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->getWindowVisibleDisplayFrame(Landroid/graphics/Rect;)V

    .line 3
    iget v1, v0, Landroid/graphics/Rect;->bottom:I

    iget v0, v0, Landroid/graphics/Rect;->top:I

    sub-int/2addr v1, v0

    return v1
.end method

.method private h()V
    .locals 4

    .line 1
    invoke-direct {p0}, Lcom/qennnsad/aknkaksd/presentation/ui/room/view/a;->g()I

    move-result v0

    .line 2
    iget v1, p0, Lcom/qennnsad/aknkaksd/presentation/ui/room/view/a;->b:I

    if-eq v0, v1, :cond_1

    .line 3
    iget-object v1, p0, Lcom/qennnsad/aknkaksd/presentation/ui/room/view/a;->a:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    move-result v1

    sub-int v2, v1, v0

    .line 4
    div-int/lit8 v3, v1, 0x4

    if-le v2, v3, :cond_0

    .line 5
    iget-object v3, p0, Lcom/qennnsad/aknkaksd/presentation/ui/room/view/a;->c:Landroid/widget/FrameLayout$LayoutParams;

    sub-int/2addr v1, v2

    iget v2, p0, Lcom/qennnsad/aknkaksd/presentation/ui/room/view/a;->f:I

    add-int/2addr v1, v2

    iput v1, v3, Landroid/widget/FrameLayout$LayoutParams;->height:I

    goto :goto_0

    .line 6
    :cond_0
    iget-object v1, p0, Lcom/qennnsad/aknkaksd/presentation/ui/room/view/a;->c:Landroid/widget/FrameLayout$LayoutParams;

    iget v2, p0, Lcom/qennnsad/aknkaksd/presentation/ui/room/view/a;->d:I

    iput v2, v1, Landroid/widget/FrameLayout$LayoutParams;->height:I

    .line 7
    :goto_0
    iget-object v1, p0, Lcom/qennnsad/aknkaksd/presentation/ui/room/view/a;->a:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->requestLayout()V

    .line 8
    iput v0, p0, Lcom/qennnsad/aknkaksd/presentation/ui/room/view/a;->b:I

    :cond_1
    return-void
.end method
