.class public Lcom/tangxiaolv/telegramgallery/Actionbar/b$q;
.super Landroid/widget/LinearLayout;
.source "ActionBarLayout.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tangxiaolv/telegramgallery/Actionbar/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "q"
.end annotation


# instance fields
.field private a:Landroid/graphics/Rect;

.field private b:Z

.field final synthetic c:Lcom/tangxiaolv/telegramgallery/Actionbar/b;


# direct methods
.method public constructor <init>(Lcom/tangxiaolv/telegramgallery/Actionbar/b;Landroid/content/Context;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/tangxiaolv/telegramgallery/Actionbar/b$q;->c:Lcom/tangxiaolv/telegramgallery/Actionbar/b;

    .line 2
    invoke-direct {p0, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 3
    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    iput-object p1, p0, Lcom/tangxiaolv/telegramgallery/Actionbar/b$q;->a:Landroid/graphics/Rect;

    const/4 p1, 0x1

    .line 4
    invoke-virtual {p0, p1}, Landroid/widget/LinearLayout;->setOrientation(I)V

    return-void
.end method

.method static synthetic a(Lcom/tangxiaolv/telegramgallery/Actionbar/b$q;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/tangxiaolv/telegramgallery/Actionbar/b$q;->b:Z

    return p0
.end method


# virtual methods
.method protected drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z
    .locals 5

    .line 1
    instance-of v0, p2, Lcom/tangxiaolv/telegramgallery/Actionbar/a;

    if-eqz v0, :cond_0

    .line 2
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/LinearLayout;->drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z

    move-result p1

    return p1

    .line 3
    :cond_0
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_3

    .line 4
    invoke-virtual {p0, v2}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    if-ne v3, p2, :cond_1

    goto :goto_1

    .line 5
    :cond_1
    instance-of v4, v3, Lcom/tangxiaolv/telegramgallery/Actionbar/a;

    if-eqz v4, :cond_2

    invoke-virtual {v3}, Landroid/view/View;->getVisibility()I

    move-result v4

    if-nez v4, :cond_2

    .line 6
    move-object v0, v3

    check-cast v0, Lcom/tangxiaolv/telegramgallery/Actionbar/a;

    invoke-virtual {v0}, Lcom/tangxiaolv/telegramgallery/Actionbar/a;->getCastShadows()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 7
    invoke-virtual {v3}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    goto :goto_2

    :cond_2
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_3
    const/4 v0, 0x0

    .line 8
    :goto_2
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/LinearLayout;->drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z

    move-result p2

    if-eqz v0, :cond_4

    .line 9
    invoke-static {}, Lcom/tangxiaolv/telegramgallery/Actionbar/b;->a()Landroid/graphics/drawable/Drawable;

    move-result-object p3

    if-eqz p3, :cond_4

    .line 10
    invoke-static {}, Lcom/tangxiaolv/telegramgallery/Actionbar/b;->a()Landroid/graphics/drawable/Drawable;

    move-result-object p3

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getMeasuredWidth()I

    move-result p4

    .line 11
    invoke-static {}, Lcom/tangxiaolv/telegramgallery/Actionbar/b;->a()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v2

    add-int/2addr v2, v0

    .line 12
    invoke-virtual {p3, v1, v0, p4, v2}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 13
    invoke-static {}, Lcom/tangxiaolv/telegramgallery/Actionbar/b;->a()Landroid/graphics/drawable/Drawable;

    move-result-object p3

    invoke-virtual {p3, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    :cond_4
    return p2
.end method

.method public hasOverlappingRendering()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method protected onLayout(ZIIII)V
    .locals 0

    .line 1
    invoke-super/range {p0 .. p5}, Landroid/widget/LinearLayout;->onLayout(ZIIII)V

    .line 2
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getRootView()Landroid/view/View;

    move-result-object p1

    .line 3
    iget-object p2, p0, Lcom/tangxiaolv/telegramgallery/Actionbar/b$q;->a:Landroid/graphics/Rect;

    invoke-virtual {p0, p2}, Landroid/widget/LinearLayout;->getWindowVisibleDisplayFrame(Landroid/graphics/Rect;)V

    .line 4
    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result p2

    .line 5
    iget-object p3, p0, Lcom/tangxiaolv/telegramgallery/Actionbar/b$q;->a:Landroid/graphics/Rect;

    iget p3, p3, Landroid/graphics/Rect;->top:I

    const/4 p4, 0x0

    if-eqz p3, :cond_0

    sget p3, Lcom/tangxiaolv/telegramgallery/Utils/a;->b:I

    goto :goto_0

    :cond_0
    const/4 p3, 0x0

    :goto_0
    sub-int/2addr p2, p3

    .line 6
    invoke-static {p1}, Lcom/tangxiaolv/telegramgallery/Utils/a;->s(Landroid/view/View;)I

    move-result p1

    sub-int/2addr p2, p1

    .line 7
    iget-object p1, p0, Lcom/tangxiaolv/telegramgallery/Actionbar/b$q;->a:Landroid/graphics/Rect;

    iget p3, p1, Landroid/graphics/Rect;->bottom:I

    iget p1, p1, Landroid/graphics/Rect;->top:I

    sub-int/2addr p3, p1

    sub-int/2addr p2, p3

    if-lez p2, :cond_1

    const/4 p4, 0x1

    :cond_1
    iput-boolean p4, p0, Lcom/tangxiaolv/telegramgallery/Actionbar/b$q;->b:Z

    .line 8
    iget-object p1, p0, Lcom/tangxiaolv/telegramgallery/Actionbar/b$q;->c:Lcom/tangxiaolv/telegramgallery/Actionbar/b;

    invoke-static {p1}, Lcom/tangxiaolv/telegramgallery/Actionbar/b;->b(Lcom/tangxiaolv/telegramgallery/Actionbar/b;)Ljava/lang/Runnable;

    move-result-object p1

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/tangxiaolv/telegramgallery/Actionbar/b$q;->c:Lcom/tangxiaolv/telegramgallery/Actionbar/b;

    invoke-static {p1}, Lcom/tangxiaolv/telegramgallery/Actionbar/b;->p(Lcom/tangxiaolv/telegramgallery/Actionbar/b;)Lcom/tangxiaolv/telegramgallery/Actionbar/b$q;

    move-result-object p1

    iget-boolean p1, p1, Lcom/tangxiaolv/telegramgallery/Actionbar/b$q;->b:Z

    if-nez p1, :cond_2

    iget-object p1, p0, Lcom/tangxiaolv/telegramgallery/Actionbar/b$q;->c:Lcom/tangxiaolv/telegramgallery/Actionbar/b;

    .line 9
    invoke-static {p1}, Lcom/tangxiaolv/telegramgallery/Actionbar/b;->q(Lcom/tangxiaolv/telegramgallery/Actionbar/b;)Lcom/tangxiaolv/telegramgallery/Actionbar/b$q;

    move-result-object p1

    iget-boolean p1, p1, Lcom/tangxiaolv/telegramgallery/Actionbar/b$q;->b:Z

    if-nez p1, :cond_2

    .line 10
    iget-object p1, p0, Lcom/tangxiaolv/telegramgallery/Actionbar/b$q;->c:Lcom/tangxiaolv/telegramgallery/Actionbar/b;

    invoke-static {p1}, Lcom/tangxiaolv/telegramgallery/Actionbar/b;->b(Lcom/tangxiaolv/telegramgallery/Actionbar/b;)Ljava/lang/Runnable;

    move-result-object p1

    invoke-static {p1}, Lcom/tangxiaolv/telegramgallery/Utils/a;->c(Ljava/lang/Runnable;)V

    .line 11
    iget-object p1, p0, Lcom/tangxiaolv/telegramgallery/Actionbar/b$q;->c:Lcom/tangxiaolv/telegramgallery/Actionbar/b;

    invoke-static {p1}, Lcom/tangxiaolv/telegramgallery/Actionbar/b;->b(Lcom/tangxiaolv/telegramgallery/Actionbar/b;)Ljava/lang/Runnable;

    move-result-object p1

    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    .line 12
    iget-object p1, p0, Lcom/tangxiaolv/telegramgallery/Actionbar/b$q;->c:Lcom/tangxiaolv/telegramgallery/Actionbar/b;

    const/4 p2, 0x0

    invoke-static {p1, p2}, Lcom/tangxiaolv/telegramgallery/Actionbar/b;->d(Lcom/tangxiaolv/telegramgallery/Actionbar/b;Ljava/lang/Runnable;)Ljava/lang/Runnable;

    :cond_2
    return-void
.end method
