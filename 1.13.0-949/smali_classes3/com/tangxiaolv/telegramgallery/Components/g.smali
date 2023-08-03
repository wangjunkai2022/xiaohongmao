.class public Lcom/tangxiaolv/telegramgallery/Components/g;
.super Landroid/widget/LinearLayout;
.source "PhotoPickerSearchCell.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tangxiaolv/telegramgallery/Components/g$d;,
        Lcom/tangxiaolv/telegramgallery/Components/g$c;
    }
.end annotation


# instance fields
.field private a:Lcom/tangxiaolv/telegramgallery/Components/g$c;


# direct methods
.method public constructor <init>(Landroid/content/Context;Z)V
    .locals 7

    .line 1
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x0

    .line 2
    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 3
    new-instance v1, Lcom/tangxiaolv/telegramgallery/Components/g$d;

    invoke-direct {v1, p0, p1}, Lcom/tangxiaolv/telegramgallery/Components/g$d;-><init>(Lcom/tangxiaolv/telegramgallery/Components/g;Landroid/content/Context;)V

    .line 4
    invoke-static {v1}, Lcom/tangxiaolv/telegramgallery/Components/g$d;->a(Lcom/tangxiaolv/telegramgallery/Components/g$d;)Landroid/widget/TextView;

    move-result-object v2

    sget v3, Lcom/tangxiaolv/telegramgallery/q$o;->u:I

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(I)V

    .line 5
    invoke-static {v1}, Lcom/tangxiaolv/telegramgallery/Components/g$d;->b(Lcom/tangxiaolv/telegramgallery/Components/g$d;)Landroid/widget/TextView;

    move-result-object v2

    sget v3, Lcom/tangxiaolv/telegramgallery/q$o;->v:I

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(I)V

    .line 6
    invoke-static {v1}, Lcom/tangxiaolv/telegramgallery/Components/g$d;->c(Lcom/tangxiaolv/telegramgallery/Components/g$d;)Landroid/widget/ImageView;

    move-result-object v2

    sget v3, Lcom/tangxiaolv/telegramgallery/q$h;->T2:I

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 7
    invoke-virtual {p0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 8
    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout$LayoutParams;

    const/high16 v3, 0x3f000000    # 0.5f

    .line 9
    iput v3, v2, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    const/high16 v4, 0x40800000    # 4.0f

    .line 10
    invoke-static {v4}, Lcom/tangxiaolv/telegramgallery/Utils/a;->g(F)I

    move-result v5

    iput v5, v2, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    const/high16 v5, 0x42400000    # 48.0f

    .line 11
    invoke-static {v5}, Lcom/tangxiaolv/telegramgallery/Utils/a;->g(F)I

    move-result v6

    iput v6, v2, Landroid/widget/LinearLayout$LayoutParams;->height:I

    .line 12
    iput v0, v2, Landroid/widget/LinearLayout$LayoutParams;->width:I

    .line 13
    invoke-virtual {v1, v2}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 14
    new-instance v2, Lcom/tangxiaolv/telegramgallery/Components/g$a;

    invoke-direct {v2, p0}, Lcom/tangxiaolv/telegramgallery/Components/g$a;-><init>(Lcom/tangxiaolv/telegramgallery/Components/g;)V

    invoke-virtual {v1, v2}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 15
    new-instance v1, Landroid/widget/FrameLayout;

    invoke-direct {v1, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 16
    invoke-virtual {v1, v0}, Landroid/widget/FrameLayout;->setBackgroundColor(I)V

    .line 17
    invoke-virtual {p0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 18
    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout$LayoutParams;

    .line 19
    invoke-static {v4}, Lcom/tangxiaolv/telegramgallery/Utils/a;->g(F)I

    move-result v6

    iput v6, v2, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    .line 20
    invoke-static {v5}, Lcom/tangxiaolv/telegramgallery/Utils/a;->g(F)I

    move-result v6

    iput v6, v2, Landroid/widget/LinearLayout$LayoutParams;->height:I

    .line 21
    invoke-static {v4}, Lcom/tangxiaolv/telegramgallery/Utils/a;->g(F)I

    move-result v6

    iput v6, v2, Landroid/widget/LinearLayout$LayoutParams;->width:I

    .line 22
    invoke-virtual {v1, v2}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 23
    new-instance v1, Lcom/tangxiaolv/telegramgallery/Components/g$d;

    invoke-direct {v1, p0, p1}, Lcom/tangxiaolv/telegramgallery/Components/g$d;-><init>(Lcom/tangxiaolv/telegramgallery/Components/g;Landroid/content/Context;)V

    .line 24
    invoke-static {v1}, Lcom/tangxiaolv/telegramgallery/Components/g$d;->a(Lcom/tangxiaolv/telegramgallery/Components/g$d;)Landroid/widget/TextView;

    move-result-object p1

    sget v2, Lcom/tangxiaolv/telegramgallery/q$o;->s:I

    invoke-virtual {p1, v2}, Landroid/widget/TextView;->setText(I)V

    .line 25
    invoke-static {v1}, Lcom/tangxiaolv/telegramgallery/Components/g$d;->b(Lcom/tangxiaolv/telegramgallery/Components/g$d;)Landroid/widget/TextView;

    move-result-object p1

    const-string v2, "GIPHY"

    invoke-virtual {p1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 26
    invoke-static {v1}, Lcom/tangxiaolv/telegramgallery/Components/g$d;->c(Lcom/tangxiaolv/telegramgallery/Components/g$d;)Landroid/widget/ImageView;

    move-result-object p1

    sget v2, Lcom/tangxiaolv/telegramgallery/q$h;->S2:I

    invoke-virtual {p1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 27
    invoke-virtual {p0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 28
    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    check-cast p1, Landroid/widget/LinearLayout$LayoutParams;

    .line 29
    iput v3, p1, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    .line 30
    invoke-static {v4}, Lcom/tangxiaolv/telegramgallery/Utils/a;->g(F)I

    move-result v2

    iput v2, p1, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    .line 31
    invoke-static {v5}, Lcom/tangxiaolv/telegramgallery/Utils/a;->g(F)I

    move-result v2

    iput v2, p1, Landroid/widget/LinearLayout$LayoutParams;->height:I

    .line 32
    iput v0, p1, Landroid/widget/LinearLayout$LayoutParams;->width:I

    .line 33
    invoke-virtual {v1, p1}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    if-eqz p2, :cond_0

    .line 34
    new-instance p1, Lcom/tangxiaolv/telegramgallery/Components/g$b;

    invoke-direct {p1, p0}, Lcom/tangxiaolv/telegramgallery/Components/g$b;-><init>(Lcom/tangxiaolv/telegramgallery/Components/g;)V

    invoke-virtual {v1, p1}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0

    .line 35
    :cond_0
    invoke-virtual {v1, v3}, Landroid/widget/FrameLayout;->setAlpha(F)V

    :goto_0
    return-void
.end method

.method static synthetic a(Lcom/tangxiaolv/telegramgallery/Components/g;)Lcom/tangxiaolv/telegramgallery/Components/g$c;
    .locals 0

    iget-object p0, p0, Lcom/tangxiaolv/telegramgallery/Components/g;->a:Lcom/tangxiaolv/telegramgallery/Components/g$c;

    return-object p0
.end method


# virtual methods
.method protected onMeasure(II)V
    .locals 1

    const/high16 p2, 0x42500000    # 52.0f

    invoke-static {p2}, Lcom/tangxiaolv/telegramgallery/Utils/a;->g(F)I

    move-result p2

    const/high16 v0, 0x40000000    # 2.0f

    invoke-static {p2, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p2

    invoke-super {p0, p1, p2}, Landroid/widget/LinearLayout;->onMeasure(II)V

    return-void
.end method

.method public setDelegate(Lcom/tangxiaolv/telegramgallery/Components/g$c;)V
    .locals 0

    iput-object p1, p0, Lcom/tangxiaolv/telegramgallery/Components/g;->a:Lcom/tangxiaolv/telegramgallery/Components/g$c;

    return-void
.end method
