.class Lcom/tangxiaolv/telegramgallery/Components/g$d;
.super Landroid/widget/FrameLayout;
.source "PhotoPickerSearchCell.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tangxiaolv/telegramgallery/Components/g;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "d"
.end annotation


# instance fields
.field private a:Landroid/widget/TextView;

.field private b:Landroid/widget/TextView;

.field private c:Landroid/widget/ImageView;

.field private d:Landroid/view/View;

.field final synthetic e:Lcom/tangxiaolv/telegramgallery/Components/g;


# direct methods
.method public constructor <init>(Lcom/tangxiaolv/telegramgallery/Components/g;Landroid/content/Context;)V
    .locals 10

    .line 1
    iput-object p1, p0, Lcom/tangxiaolv/telegramgallery/Components/g$d;->e:Lcom/tangxiaolv/telegramgallery/Components/g;

    .line 2
    invoke-direct {p0, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    const p1, -0xe5e5e6

    .line 3
    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->setBackgroundColor(I)V

    .line 4
    new-instance p1, Landroid/view/View;

    invoke-direct {p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/tangxiaolv/telegramgallery/Components/g$d;->d:Landroid/view/View;

    .line 5
    sget v0, Lcom/tangxiaolv/telegramgallery/q$h;->Y1:I

    invoke-virtual {p1, v0}, Landroid/view/View;->setBackgroundResource(I)V

    .line 6
    iget-object p1, p0, Lcom/tangxiaolv/telegramgallery/Components/g$d;->d:Landroid/view/View;

    const/4 v0, -0x1

    const/high16 v1, -0x40800000    # -1.0f

    invoke-static {v0, v1}, Lcom/tangxiaolv/telegramgallery/Utils/f;->a(IF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v1

    invoke-virtual {p0, p1, v1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 7
    new-instance p1, Landroid/widget/ImageView;

    invoke-direct {p1, p2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/tangxiaolv/telegramgallery/Components/g$d;->c:Landroid/widget/ImageView;

    .line 8
    sget-object v1, Landroid/widget/ImageView$ScaleType;->CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 9
    iget-object p1, p0, Lcom/tangxiaolv/telegramgallery/Components/g$d;->c:Landroid/widget/ImageView;

    const/16 v1, 0x30

    const/16 v2, 0x33

    invoke-static {v1, v1, v2}, Lcom/tangxiaolv/telegramgallery/Utils/f;->c(III)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v1

    invoke-virtual {p0, p1, v1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 10
    new-instance p1, Landroid/widget/TextView;

    invoke-direct {p1, p2}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/tangxiaolv/telegramgallery/Components/g$d;->a:Landroid/widget/TextView;

    const/16 v1, 0x10

    .line 11
    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setGravity(I)V

    .line 12
    iget-object p1, p0, Lcom/tangxiaolv/telegramgallery/Components/g$d;->a:Landroid/widget/TextView;

    const/4 v2, 0x1

    const/high16 v3, 0x41600000    # 14.0f

    invoke-virtual {p1, v2, v3}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 13
    iget-object p1, p0, Lcom/tangxiaolv/telegramgallery/Components/g$d;->a:Landroid/widget/TextView;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 14
    iget-object p1, p0, Lcom/tangxiaolv/telegramgallery/Components/g$d;->a:Landroid/widget/TextView;

    invoke-virtual {p1, v2}, Landroid/widget/TextView;->setSingleLine(Z)V

    .line 15
    iget-object p1, p0, Lcom/tangxiaolv/telegramgallery/Components/g$d;->a:Landroid/widget/TextView;

    sget-object v0, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 16
    iget-object p1, p0, Lcom/tangxiaolv/telegramgallery/Components/g$d;->a:Landroid/widget/TextView;

    const/4 v3, -0x1

    const/high16 v4, -0x40000000    # -2.0f

    const/16 v5, 0x33

    const/high16 v6, 0x424c0000    # 51.0f

    const/high16 v7, 0x41000000    # 8.0f

    const/high16 v8, 0x40800000    # 4.0f

    const/4 v9, 0x0

    invoke-static/range {v3 .. v9}, Lcom/tangxiaolv/telegramgallery/Utils/f;->b(IFIFFFF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 17
    new-instance p1, Landroid/widget/TextView;

    invoke-direct {p1, p2}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/tangxiaolv/telegramgallery/Components/g$d;->b:Landroid/widget/TextView;

    .line 18
    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setGravity(I)V

    .line 19
    iget-object p1, p0, Lcom/tangxiaolv/telegramgallery/Components/g$d;->b:Landroid/widget/TextView;

    const/high16 p2, 0x41200000    # 10.0f

    invoke-virtual {p1, v2, p2}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 20
    iget-object p1, p0, Lcom/tangxiaolv/telegramgallery/Components/g$d;->b:Landroid/widget/TextView;

    const p2, -0x99999a

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 21
    iget-object p1, p0, Lcom/tangxiaolv/telegramgallery/Components/g$d;->b:Landroid/widget/TextView;

    invoke-virtual {p1, v2}, Landroid/widget/TextView;->setSingleLine(Z)V

    .line 22
    iget-object p1, p0, Lcom/tangxiaolv/telegramgallery/Components/g$d;->b:Landroid/widget/TextView;

    sget-object p2, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 23
    iget-object p1, p0, Lcom/tangxiaolv/telegramgallery/Components/g$d;->b:Landroid/widget/TextView;

    const/4 v0, -0x1

    const/high16 v1, -0x40000000    # -2.0f

    const/16 v2, 0x33

    const/high16 v3, 0x424c0000    # 51.0f

    const/high16 v4, 0x41d00000    # 26.0f

    const/high16 v5, 0x40800000    # 4.0f

    const/4 v6, 0x0

    invoke-static/range {v0 .. v6}, Lcom/tangxiaolv/telegramgallery/Utils/f;->b(IFIFFFF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method static synthetic a(Lcom/tangxiaolv/telegramgallery/Components/g$d;)Landroid/widget/TextView;
    .locals 0

    iget-object p0, p0, Lcom/tangxiaolv/telegramgallery/Components/g$d;->a:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic b(Lcom/tangxiaolv/telegramgallery/Components/g$d;)Landroid/widget/TextView;
    .locals 0

    iget-object p0, p0, Lcom/tangxiaolv/telegramgallery/Components/g$d;->b:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic c(Lcom/tangxiaolv/telegramgallery/Components/g$d;)Landroid/widget/ImageView;
    .locals 0

    iget-object p0, p0, Lcom/tangxiaolv/telegramgallery/Components/g$d;->c:Landroid/widget/ImageView;

    return-object p0
.end method


# virtual methods
.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/tangxiaolv/telegramgallery/Components/g$d;->d:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/view/View;->drawableHotspotChanged(FF)V

    .line 2
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method
