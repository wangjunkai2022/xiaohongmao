.class public Lcom/tangxiaolv/telegramgallery/Components/h;
.super Landroid/widget/FrameLayout;
.source "PickerBottomLayout.java"


# instance fields
.field public a:Landroid/widget/LinearLayout;

.field public b:Landroid/widget/TextView;

.field public c:Landroid/widget/TextView;

.field public d:Landroid/widget/TextView;

.field public e:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 14

    .line 1
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lcom/tangxiaolv/telegramgallery/Components/h;->e:I

    .line 3
    invoke-static {p1}, Lcom/tangxiaolv/telegramgallery/r;->f(Landroid/content/Context;)I

    move-result v1

    invoke-virtual {p0, v1}, Landroid/widget/FrameLayout;->setBackgroundColor(I)V

    .line 4
    new-instance v1, Landroid/widget/TextView;

    invoke-direct {v1, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/tangxiaolv/telegramgallery/Components/h;->b:Landroid/widget/TextView;

    const/4 v2, 0x2

    const/high16 v3, 0x41900000    # 18.0f

    .line 5
    invoke-virtual {v1, v2, v3}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 6
    iget-object v1, p0, Lcom/tangxiaolv/telegramgallery/Components/h;->b:Landroid/widget/TextView;

    invoke-static {p1}, Lcom/tangxiaolv/telegramgallery/r;->e(Landroid/content/Context;)I

    move-result v4

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setTextColor(I)V

    .line 7
    iget-object v1, p0, Lcom/tangxiaolv/telegramgallery/Components/h;->b:Landroid/widget/TextView;

    const/16 v4, 0x11

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setGravity(I)V

    .line 8
    iget-object v1, p0, Lcom/tangxiaolv/telegramgallery/Components/h;->b:Landroid/widget/TextView;

    .line 9
    invoke-static {p1}, Lcom/tangxiaolv/telegramgallery/r;->f(Landroid/content/Context;)I

    move-result v5

    invoke-static {v5}, Lcom/tangxiaolv/telegramgallery/r;->b(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    .line 10
    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 11
    iget-object v1, p0, Lcom/tangxiaolv/telegramgallery/Components/h;->b:Landroid/widget/TextView;

    const/high16 v5, 0x41e80000    # 29.0f

    invoke-static {v5}, Lcom/tangxiaolv/telegramgallery/Utils/a;->g(F)I

    move-result v6

    invoke-static {v5}, Lcom/tangxiaolv/telegramgallery/Utils/a;->g(F)I

    move-result v7

    invoke-virtual {v1, v6, v0, v7, v0}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 12
    iget-object v1, p0, Lcom/tangxiaolv/telegramgallery/Components/h;->b:Landroid/widget/TextView;

    sget v6, Lcom/tangxiaolv/telegramgallery/q$o;->r:I

    invoke-virtual {v1, v6}, Landroid/widget/TextView;->setText(I)V

    .line 13
    iget-object v1, p0, Lcom/tangxiaolv/telegramgallery/Components/h;->b:Landroid/widget/TextView;

    const/4 v6, -0x2

    const/4 v7, -0x1

    const/16 v8, 0x33

    invoke-static {v6, v7, v8}, Lcom/tangxiaolv/telegramgallery/Utils/f;->c(III)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v8

    invoke-virtual {p0, v1, v8}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 14
    new-instance v1, Landroid/widget/LinearLayout;

    invoke-direct {v1, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/tangxiaolv/telegramgallery/Components/h;->a:Landroid/widget/LinearLayout;

    .line 15
    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 16
    iget-object v1, p0, Lcom/tangxiaolv/telegramgallery/Components/h;->a:Landroid/widget/LinearLayout;

    .line 17
    invoke-static {p1}, Lcom/tangxiaolv/telegramgallery/r;->f(Landroid/content/Context;)I

    move-result v8

    invoke-static {v8}, Lcom/tangxiaolv/telegramgallery/r;->b(I)Landroid/graphics/drawable/Drawable;

    move-result-object v8

    .line 18
    invoke-virtual {v1, v8}, Landroid/widget/LinearLayout;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 19
    iget-object v1, p0, Lcom/tangxiaolv/telegramgallery/Components/h;->a:Landroid/widget/LinearLayout;

    invoke-static {v5}, Lcom/tangxiaolv/telegramgallery/Utils/a;->g(F)I

    move-result v8

    invoke-static {v5}, Lcom/tangxiaolv/telegramgallery/Utils/a;->g(F)I

    move-result v5

    invoke-virtual {v1, v8, v0, v5, v0}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 20
    iget-object v1, p0, Lcom/tangxiaolv/telegramgallery/Components/h;->a:Landroid/widget/LinearLayout;

    const/16 v5, 0x35

    invoke-static {v6, v7, v5}, Lcom/tangxiaolv/telegramgallery/Utils/f;->c(III)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v5

    invoke-virtual {p0, v1, v5}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 21
    new-instance v1, Landroid/widget/TextView;

    invoke-direct {v1, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/tangxiaolv/telegramgallery/Components/h;->d:Landroid/widget/TextView;

    const/high16 v5, 0x41400000    # 12.0f

    .line 22
    invoke-virtual {v1, v2, v5}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 23
    iget-object v1, p0, Lcom/tangxiaolv/telegramgallery/Components/h;->d:Landroid/widget/TextView;

    invoke-virtual {v1, v7}, Landroid/widget/TextView;->setTextColor(I)V

    .line 24
    iget-object v1, p0, Lcom/tangxiaolv/telegramgallery/Components/h;->d:Landroid/widget/TextView;

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setGravity(I)V

    .line 25
    iget-object v1, p0, Lcom/tangxiaolv/telegramgallery/Components/h;->d:Landroid/widget/TextView;

    sget v5, Lcom/tangxiaolv/telegramgallery/q$h;->M2:I

    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 26
    iget-object v1, p0, Lcom/tangxiaolv/telegramgallery/Components/h;->d:Landroid/widget/TextView;

    invoke-static {p1}, Lcom/tangxiaolv/telegramgallery/r;->d(Landroid/content/Context;)I

    move-result v5

    invoke-static {v5}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v5

    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setBackgroundTintList(Landroid/content/res/ColorStateList;)V

    .line 27
    iget-object v1, p0, Lcom/tangxiaolv/telegramgallery/Components/h;->d:Landroid/widget/TextView;

    const/high16 v5, 0x41000000    # 8.0f

    invoke-static {v5}, Lcom/tangxiaolv/telegramgallery/Utils/a;->g(F)I

    move-result v7

    invoke-static {v5}, Lcom/tangxiaolv/telegramgallery/Utils/a;->g(F)I

    move-result v8

    const/high16 v9, 0x3f800000    # 1.0f

    invoke-static {v9}, Lcom/tangxiaolv/telegramgallery/Utils/a;->g(F)I

    move-result v9

    invoke-virtual {v1, v7, v0, v8, v9}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 28
    iget-object v0, p0, Lcom/tangxiaolv/telegramgallery/Components/h;->a:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/tangxiaolv/telegramgallery/Components/h;->d:Landroid/widget/TextView;

    const/16 v7, 0x18

    const/16 v8, 0x18

    const/16 v9, 0x10

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/16 v12, 0x8

    const/4 v13, 0x0

    invoke-static/range {v7 .. v13}, Lcom/tangxiaolv/telegramgallery/Utils/f;->k(IIIIIII)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v7

    invoke-virtual {v0, v1, v7}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 29
    new-instance v0, Landroid/widget/TextView;

    invoke-direct {v0, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/tangxiaolv/telegramgallery/Components/h;->c:Landroid/widget/TextView;

    .line 30
    invoke-virtual {v0, v2, v3}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 31
    iget-object v0, p0, Lcom/tangxiaolv/telegramgallery/Components/h;->c:Landroid/widget/TextView;

    iget v1, p0, Lcom/tangxiaolv/telegramgallery/Components/h;->e:I

    if-nez v1, :cond_0

    invoke-static {p1}, Lcom/tangxiaolv/telegramgallery/r;->e(Landroid/content/Context;)I

    move-result v1

    :cond_0
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 32
    iget-object p1, p0, Lcom/tangxiaolv/telegramgallery/Components/h;->c:Landroid/widget/TextView;

    invoke-virtual {p1, v4}, Landroid/widget/TextView;->setGravity(I)V

    .line 33
    iget-object p1, p0, Lcom/tangxiaolv/telegramgallery/Components/h;->c:Landroid/widget/TextView;

    invoke-static {v5}, Lcom/tangxiaolv/telegramgallery/Utils/a;->g(F)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setCompoundDrawablePadding(I)V

    .line 34
    iget-object p1, p0, Lcom/tangxiaolv/telegramgallery/Components/h;->c:Landroid/widget/TextView;

    sget v0, Lcom/tangxiaolv/telegramgallery/q$o;->x:I

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(I)V

    .line 35
    iget-object p1, p0, Lcom/tangxiaolv/telegramgallery/Components/h;->a:Landroid/widget/LinearLayout;

    iget-object v0, p0, Lcom/tangxiaolv/telegramgallery/Components/h;->c:Landroid/widget/TextView;

    const/16 v1, 0x10

    invoke-static {v6, v6, v1}, Lcom/tangxiaolv/telegramgallery/Utils/f;->j(III)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method


# virtual methods
.method public a(IZ)V
    .locals 4

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-nez p1, :cond_2

    .line 1
    iget-object p1, p0, Lcom/tangxiaolv/telegramgallery/Components/h;->d:Landroid/widget/TextView;

    const/16 v2, 0x8

    invoke-virtual {p1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    const p1, -0x666667

    if-eqz p2, :cond_0

    .line 2
    iget-object p2, p0, Lcom/tangxiaolv/telegramgallery/Components/h;->c:Landroid/widget/TextView;

    invoke-virtual {p2, p1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 3
    iget-object p2, p0, Lcom/tangxiaolv/telegramgallery/Components/h;->b:Landroid/widget/TextView;

    invoke-virtual {p2, p1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 4
    iget-object p1, p0, Lcom/tangxiaolv/telegramgallery/Components/h;->a:Landroid/widget/LinearLayout;

    invoke-virtual {p1, v1}, Landroid/widget/LinearLayout;->setEnabled(Z)V

    .line 5
    iget-object p1, p0, Lcom/tangxiaolv/telegramgallery/Components/h;->b:Landroid/widget/TextView;

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setEnabled(Z)V

    goto :goto_0

    .line 6
    :cond_0
    iget-object p2, p0, Lcom/tangxiaolv/telegramgallery/Components/h;->c:Landroid/widget/TextView;

    .line 7
    sget v1, Lcom/tangxiaolv/telegramgallery/m;->F:I

    if-ne v1, v0, :cond_1

    iget p1, p0, Lcom/tangxiaolv/telegramgallery/Components/h;->e:I

    if-nez p1, :cond_1

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/tangxiaolv/telegramgallery/r;->e(Landroid/content/Context;)I

    move-result p1

    .line 8
    :cond_1
    invoke-virtual {p2, p1}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_0

    .line 9
    :cond_2
    iget-object v2, p0, Lcom/tangxiaolv/telegramgallery/Components/h;->c:Landroid/widget/TextView;

    invoke-virtual {v2, v1, v1, v1, v1}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(IIII)V

    .line 10
    iget-object v2, p0, Lcom/tangxiaolv/telegramgallery/Components/h;->d:Landroid/widget/TextView;

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 11
    iget-object v2, p0, Lcom/tangxiaolv/telegramgallery/Components/h;->d:Landroid/widget/TextView;

    new-array v3, v0, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v3, v1

    const-string p1, "%d"

    invoke-static {p1, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 12
    iget-object p1, p0, Lcom/tangxiaolv/telegramgallery/Components/h;->c:Landroid/widget/TextView;

    iget v1, p0, Lcom/tangxiaolv/telegramgallery/Components/h;->e:I

    if-nez v1, :cond_3

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/tangxiaolv/telegramgallery/r;->e(Landroid/content/Context;)I

    move-result v1

    :cond_3
    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 13
    iget-object p1, p0, Lcom/tangxiaolv/telegramgallery/Components/h;->b:Landroid/widget/TextView;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/tangxiaolv/telegramgallery/r;->e(Landroid/content/Context;)I

    move-result v1

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setTextColor(I)V

    if-eqz p2, :cond_4

    .line 14
    iget-object p1, p0, Lcom/tangxiaolv/telegramgallery/Components/h;->a:Landroid/widget/LinearLayout;

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->setEnabled(Z)V

    .line 15
    iget-object p1, p0, Lcom/tangxiaolv/telegramgallery/Components/h;->b:Landroid/widget/TextView;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setEnabled(Z)V

    :cond_4
    :goto_0
    return-void
.end method

.method public setActiveTextColor(I)V
    .locals 0

    iput p1, p0, Lcom/tangxiaolv/telegramgallery/Components/h;->e:I

    return-void
.end method
