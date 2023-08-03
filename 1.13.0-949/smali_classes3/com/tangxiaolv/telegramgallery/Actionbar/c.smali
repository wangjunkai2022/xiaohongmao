.class public Lcom/tangxiaolv/telegramgallery/Actionbar/c;
.super Landroid/widget/LinearLayout;
.source "ActionBarMenu.java"


# instance fields
.field protected a:Lcom/tangxiaolv/telegramgallery/Actionbar/a;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 4
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/tangxiaolv/telegramgallery/Actionbar/a;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    const/4 p1, 0x0

    .line 2
    invoke-virtual {p0, p1}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 3
    iput-object p2, p0, Lcom/tangxiaolv/telegramgallery/Actionbar/c;->a:Lcom/tangxiaolv/telegramgallery/Actionbar/a;

    return-void
.end method


# virtual methods
.method public a(ILandroid/view/View;)Landroid/view/View;
    .locals 0

    .line 1
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p2, p1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 2
    invoke-virtual {p0, p2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 3
    new-instance p1, Lcom/tangxiaolv/telegramgallery/Actionbar/c$c;

    invoke-direct {p1, p0}, Lcom/tangxiaolv/telegramgallery/Actionbar/c$c;-><init>(Lcom/tangxiaolv/telegramgallery/Actionbar/c;)V

    invoke-virtual {p2, p1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-object p2
.end method

.method public b(II)Lcom/tangxiaolv/telegramgallery/Actionbar/d;
    .locals 1

    iget-object v0, p0, Lcom/tangxiaolv/telegramgallery/Actionbar/c;->a:Lcom/tangxiaolv/telegramgallery/Actionbar/a;

    iget v0, v0, Lcom/tangxiaolv/telegramgallery/Actionbar/a;->s:I

    invoke-virtual {p0, p1, p2, v0}, Lcom/tangxiaolv/telegramgallery/Actionbar/c;->c(III)Lcom/tangxiaolv/telegramgallery/Actionbar/d;

    move-result-object p1

    return-object p1
.end method

.method public c(III)Lcom/tangxiaolv/telegramgallery/Actionbar/d;
    .locals 7

    const/high16 v0, 0x42400000    # 48.0f

    invoke-static {v0}, Lcom/tangxiaolv/telegramgallery/Utils/a;->g(F)I

    move-result v6

    const/4 v5, 0x0

    move-object v1, p0

    move v2, p1

    move v3, p2

    move v4, p3

    invoke-virtual/range {v1 .. v6}, Lcom/tangxiaolv/telegramgallery/Actionbar/c;->d(IIILandroid/graphics/drawable/Drawable;I)Lcom/tangxiaolv/telegramgallery/Actionbar/d;

    move-result-object p1

    return-object p1
.end method

.method public d(IIILandroid/graphics/drawable/Drawable;I)Lcom/tangxiaolv/telegramgallery/Actionbar/d;
    .locals 2

    .line 1
    new-instance v0, Lcom/tangxiaolv/telegramgallery/Actionbar/d;

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p0, p3}, Lcom/tangxiaolv/telegramgallery/Actionbar/d;-><init>(Landroid/content/Context;Lcom/tangxiaolv/telegramgallery/Actionbar/c;I)V

    .line 2
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/FrameLayout;->setTag(Ljava/lang/Object;)V

    if-eqz p4, :cond_0

    .line 3
    iget-object p1, v0, Lcom/tangxiaolv/telegramgallery/Actionbar/d;->f:Landroid/widget/ImageView;

    invoke-virtual {p1, p4}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 4
    :cond_0
    iget-object p1, v0, Lcom/tangxiaolv/telegramgallery/Actionbar/d;->f:Landroid/widget/ImageView;

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 5
    :goto_0
    iget-object p1, v0, Lcom/tangxiaolv/telegramgallery/Actionbar/d;->f:Landroid/widget/ImageView;

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Lcom/tangxiaolv/telegramgallery/r;->e(Landroid/content/Context;)I

    move-result p2

    invoke-static {p2}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setImageTintList(Landroid/content/res/ColorStateList;)V

    .line 6
    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 7
    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    check-cast p1, Landroid/widget/LinearLayout$LayoutParams;

    const/4 p2, -0x1

    .line 8
    iput p2, p1, Landroid/widget/LinearLayout$LayoutParams;->height:I

    .line 9
    iput p5, p1, Landroid/widget/LinearLayout$LayoutParams;->width:I

    .line 10
    invoke-virtual {v0, p1}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 11
    new-instance p1, Lcom/tangxiaolv/telegramgallery/Actionbar/c$b;

    invoke-direct {p1, p0}, Lcom/tangxiaolv/telegramgallery/Actionbar/c$b;-><init>(Lcom/tangxiaolv/telegramgallery/Actionbar/c;)V

    invoke-virtual {v0, p1}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-object v0
.end method

.method public e(ILandroid/graphics/drawable/Drawable;)Lcom/tangxiaolv/telegramgallery/Actionbar/d;
    .locals 7

    iget-object v0, p0, Lcom/tangxiaolv/telegramgallery/Actionbar/c;->a:Lcom/tangxiaolv/telegramgallery/Actionbar/a;

    iget v4, v0, Lcom/tangxiaolv/telegramgallery/Actionbar/a;->s:I

    const/high16 v0, 0x42400000    # 48.0f

    invoke-static {v0}, Lcom/tangxiaolv/telegramgallery/Utils/a;->g(F)I

    move-result v6

    const/4 v3, 0x0

    move-object v1, p0

    move v2, p1

    move-object v5, p2

    invoke-virtual/range {v1 .. v6}, Lcom/tangxiaolv/telegramgallery/Actionbar/c;->d(IIILandroid/graphics/drawable/Drawable;I)Lcom/tangxiaolv/telegramgallery/Actionbar/d;

    move-result-object p1

    return-object p1
.end method

.method public f(II)Landroid/view/View;
    .locals 2

    .line 1
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "layout_inflater"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    const/4 v1, 0x0

    .line 2
    invoke-virtual {v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 3
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p2, p1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 4
    invoke-virtual {p0, p2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 5
    invoke-virtual {p2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    check-cast p1, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v0, -0x1

    .line 6
    iput v0, p1, Landroid/widget/LinearLayout$LayoutParams;->height:I

    .line 7
    iget-object v0, p0, Lcom/tangxiaolv/telegramgallery/Actionbar/c;->a:Lcom/tangxiaolv/telegramgallery/Actionbar/a;

    iget v0, v0, Lcom/tangxiaolv/telegramgallery/Actionbar/a;->s:I

    invoke-static {v0}, Lcom/tangxiaolv/telegramgallery/r;->b(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 8
    invoke-virtual {p2, p1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 9
    new-instance p1, Lcom/tangxiaolv/telegramgallery/Actionbar/c$a;

    invoke-direct {p1, p0}, Lcom/tangxiaolv/telegramgallery/Actionbar/c$a;-><init>(Lcom/tangxiaolv/telegramgallery/Actionbar/c;)V

    invoke-virtual {p2, p1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-object p2
.end method

.method public g(III)Lcom/tangxiaolv/telegramgallery/Actionbar/d;
    .locals 7

    iget-object v0, p0, Lcom/tangxiaolv/telegramgallery/Actionbar/c;->a:Lcom/tangxiaolv/telegramgallery/Actionbar/a;

    iget v4, v0, Lcom/tangxiaolv/telegramgallery/Actionbar/a;->s:I

    const/4 v5, 0x0

    move-object v1, p0

    move v2, p1

    move v3, p2

    move v6, p3

    invoke-virtual/range {v1 .. v6}, Lcom/tangxiaolv/telegramgallery/Actionbar/c;->d(IIILandroid/graphics/drawable/Drawable;I)Lcom/tangxiaolv/telegramgallery/Actionbar/d;

    move-result-object p1

    return-object p1
.end method

.method public h()V
    .locals 0

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->removeAllViews()V

    return-void
.end method

.method public i()V
    .locals 5

    .line 1
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_1

    .line 2
    invoke-virtual {p0, v2}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 3
    instance-of v4, v3, Lcom/tangxiaolv/telegramgallery/Actionbar/d;

    if-eqz v4, :cond_0

    .line 4
    check-cast v3, Lcom/tangxiaolv/telegramgallery/Actionbar/d;

    .line 5
    invoke-virtual {v3}, Lcom/tangxiaolv/telegramgallery/Actionbar/d;->n()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 6
    iget-object v0, p0, Lcom/tangxiaolv/telegramgallery/Actionbar/c;->a:Lcom/tangxiaolv/telegramgallery/Actionbar/a;

    invoke-virtual {v3, v1}, Lcom/tangxiaolv/telegramgallery/Actionbar/d;->t(Z)Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/tangxiaolv/telegramgallery/Actionbar/a;->u(Z)V

    goto :goto_1

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    return-void
.end method

.method public j(I)Lcom/tangxiaolv/telegramgallery/Actionbar/d;
    .locals 1

    .line 1
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/widget/LinearLayout;->findViewWithTag(Ljava/lang/Object;)Landroid/view/View;

    move-result-object p1

    .line 2
    instance-of v0, p1, Lcom/tangxiaolv/telegramgallery/Actionbar/d;

    if-eqz v0, :cond_0

    .line 3
    check-cast p1, Lcom/tangxiaolv/telegramgallery/Actionbar/d;

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public k()V
    .locals 4

    .line 1
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    .line 2
    invoke-virtual {p0, v1}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 3
    instance-of v3, v2, Lcom/tangxiaolv/telegramgallery/Actionbar/d;

    if-eqz v3, :cond_0

    .line 4
    check-cast v2, Lcom/tangxiaolv/telegramgallery/Actionbar/d;

    invoke-virtual {v2}, Lcom/tangxiaolv/telegramgallery/Actionbar/d;->l()V

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public l(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/tangxiaolv/telegramgallery/Actionbar/c;->a:Lcom/tangxiaolv/telegramgallery/Actionbar/a;

    iget-object v0, v0, Lcom/tangxiaolv/telegramgallery/Actionbar/a;->v:Lcom/tangxiaolv/telegramgallery/Actionbar/a$e;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0, p1}, Lcom/tangxiaolv/telegramgallery/Actionbar/a$e;->b(I)V

    :cond_0
    return-void
.end method

.method public m()V
    .locals 4

    .line 1
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_3

    .line 2
    invoke-virtual {p0, v1}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 3
    instance-of v3, v2, Lcom/tangxiaolv/telegramgallery/Actionbar/d;

    if-eqz v3, :cond_2

    .line 4
    check-cast v2, Lcom/tangxiaolv/telegramgallery/Actionbar/d;

    .line 5
    invoke-virtual {v2}, Landroid/widget/FrameLayout;->getVisibility()I

    move-result v3

    if-eqz v3, :cond_0

    goto :goto_1

    .line 6
    :cond_0
    invoke-virtual {v2}, Lcom/tangxiaolv/telegramgallery/Actionbar/d;->m()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 7
    invoke-virtual {v2}, Lcom/tangxiaolv/telegramgallery/Actionbar/d;->u()V

    goto :goto_2

    .line 8
    :cond_1
    iget-boolean v3, v2, Lcom/tangxiaolv/telegramgallery/Actionbar/d;->s:Z

    if-eqz v3, :cond_2

    .line 9
    invoke-virtual {v2}, Landroid/widget/FrameLayout;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/tangxiaolv/telegramgallery/Actionbar/c;->l(I)V

    goto :goto_2

    :cond_2
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_3
    :goto_2
    return-void
.end method

.method public n(ZLjava/lang/String;)V
    .locals 4

    .line 1
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_2

    .line 2
    invoke-virtual {p0, v1}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 3
    instance-of v3, v2, Lcom/tangxiaolv/telegramgallery/Actionbar/d;

    if-eqz v3, :cond_1

    .line 4
    check-cast v2, Lcom/tangxiaolv/telegramgallery/Actionbar/d;

    .line 5
    invoke-virtual {v2}, Lcom/tangxiaolv/telegramgallery/Actionbar/d;->n()Z

    move-result v3

    if-eqz v3, :cond_1

    if-eqz p1, :cond_0

    .line 6
    iget-object p1, p0, Lcom/tangxiaolv/telegramgallery/Actionbar/c;->a:Lcom/tangxiaolv/telegramgallery/Actionbar/a;

    const/4 v0, 0x1

    invoke-virtual {v2, v0}, Lcom/tangxiaolv/telegramgallery/Actionbar/d;->t(Z)Z

    move-result v0

    invoke-virtual {p1, v0}, Lcom/tangxiaolv/telegramgallery/Actionbar/a;->u(Z)V

    .line 7
    :cond_0
    invoke-virtual {v2}, Lcom/tangxiaolv/telegramgallery/Actionbar/d;->getSearchField()Landroid/widget/EditText;

    move-result-object p1

    invoke-virtual {p1, p2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 8
    invoke-virtual {v2}, Lcom/tangxiaolv/telegramgallery/Actionbar/d;->getSearchField()Landroid/widget/EditText;

    move-result-object p1

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/widget/EditText;->setSelection(I)V

    goto :goto_1

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    :goto_1
    return-void
.end method
