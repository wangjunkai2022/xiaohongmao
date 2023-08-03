.class public Lcom/tangxiaolv/telegramgallery/Components/i;
.super Landroid/widget/FrameLayout;
.source "SizeNotifierFrameLayoutPhoto.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tangxiaolv/telegramgallery/Components/i$b;
    }
.end annotation


# instance fields
.field private a:Landroid/graphics/Rect;

.field private b:I

.field private c:Lcom/tangxiaolv/telegramgallery/Components/i$b;

.field private d:Landroid/view/WindowManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 2
    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    iput-object p1, p0, Lcom/tangxiaolv/telegramgallery/Components/i;->a:Landroid/graphics/Rect;

    return-void
.end method

.method static synthetic a(Lcom/tangxiaolv/telegramgallery/Components/i;)Lcom/tangxiaolv/telegramgallery/Components/i$b;
    .locals 0

    iget-object p0, p0, Lcom/tangxiaolv/telegramgallery/Components/i;->c:Lcom/tangxiaolv/telegramgallery/Components/i$b;

    return-object p0
.end method

.method static synthetic b(Lcom/tangxiaolv/telegramgallery/Components/i;)I
    .locals 0

    iget p0, p0, Lcom/tangxiaolv/telegramgallery/Components/i;->b:I

    return p0
.end method


# virtual methods
.method public c()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/tangxiaolv/telegramgallery/Components/i;->c:Lcom/tangxiaolv/telegramgallery/Components/i$b;

    if-eqz v0, :cond_1

    .line 2
    invoke-virtual {p0}, Lcom/tangxiaolv/telegramgallery/Components/i;->getKeyboardHeight()I

    move-result v0

    iput v0, p0, Lcom/tangxiaolv/telegramgallery/Components/i;->b:I

    .line 3
    sget-object v0, Lcom/tangxiaolv/telegramgallery/Utils/a;->d:Landroid/graphics/Point;

    iget v1, v0, Landroid/graphics/Point;->x:I

    iget v0, v0, Landroid/graphics/Point;->y:I

    if-le v1, v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 4
    :goto_0
    new-instance v1, Lcom/tangxiaolv/telegramgallery/Components/i$a;

    invoke-direct {v1, p0, v0}, Lcom/tangxiaolv/telegramgallery/Components/i$a;-><init>(Lcom/tangxiaolv/telegramgallery/Components/i;Z)V

    invoke-virtual {p0, v1}, Landroid/widget/FrameLayout;->post(Ljava/lang/Runnable;)Z

    :cond_1
    return-void
.end method

.method public getKeyboardHeight()I
    .locals 3

    .line 1
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getRootView()Landroid/view/View;

    move-result-object v0

    .line 2
    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v1

    invoke-static {v0}, Lcom/tangxiaolv/telegramgallery/Utils/a;->s(Landroid/view/View;)I

    move-result v0

    sub-int/2addr v1, v0

    .line 3
    iget-object v0, p0, Lcom/tangxiaolv/telegramgallery/Components/i;->a:Landroid/graphics/Rect;

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->getWindowVisibleDisplayFrame(Landroid/graphics/Rect;)V

    .line 4
    iget-object v0, p0, Lcom/tangxiaolv/telegramgallery/Components/i;->a:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->top:I

    .line 5
    sget-object v2, Lcom/tangxiaolv/telegramgallery/Utils/a;->d:Landroid/graphics/Point;

    iget v2, v2, Landroid/graphics/Point;->y:I

    sub-int/2addr v2, v0

    sub-int/2addr v2, v1

    const/high16 v0, 0x41200000    # 10.0f

    .line 6
    invoke-static {v0}, Lcom/tangxiaolv/telegramgallery/Utils/a;->g(F)I

    move-result v0

    if-gt v2, v0, :cond_0

    const/4 v2, 0x0

    :cond_0
    return v2
.end method

.method protected onLayout(ZIIII)V
    .locals 0

    .line 1
    invoke-super/range {p0 .. p5}, Landroid/widget/FrameLayout;->onLayout(ZIIII)V

    .line 2
    invoke-virtual {p0}, Lcom/tangxiaolv/telegramgallery/Components/i;->c()V

    return-void
.end method

.method public setDelegate(Lcom/tangxiaolv/telegramgallery/Components/i$b;)V
    .locals 0

    iput-object p1, p0, Lcom/tangxiaolv/telegramgallery/Components/i;->c:Lcom/tangxiaolv/telegramgallery/Components/i$b;

    return-void
.end method
