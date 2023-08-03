.class Lcom/tangxiaolv/telegramgallery/Components/e$b;
.super Landroid/widget/FrameLayout;
.source "PhotoPickerAlbumsCell.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tangxiaolv/telegramgallery/Components/e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "b"
.end annotation


# instance fields
.field private a:Lcom/tangxiaolv/telegramgallery/Components/BackupImageView;

.field private b:Landroid/widget/TextView;

.field private c:Landroid/widget/TextView;

.field private d:Landroid/view/View;

.field final synthetic e:Lcom/tangxiaolv/telegramgallery/Components/e;


# direct methods
.method public constructor <init>(Lcom/tangxiaolv/telegramgallery/Components/e;Landroid/content/Context;)V
    .locals 13

    .line 1
    iput-object p1, p0, Lcom/tangxiaolv/telegramgallery/Components/e$b;->e:Lcom/tangxiaolv/telegramgallery/Components/e;

    .line 2
    invoke-direct {p0, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 3
    new-instance p1, Lcom/tangxiaolv/telegramgallery/Components/BackupImageView;

    invoke-direct {p1, p2}, Lcom/tangxiaolv/telegramgallery/Components/BackupImageView;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/tangxiaolv/telegramgallery/Components/e$b;->a:Lcom/tangxiaolv/telegramgallery/Components/BackupImageView;

    const/4 v0, -0x1

    const/high16 v1, -0x40800000    # -1.0f

    .line 4
    invoke-static {v0, v1}, Lcom/tangxiaolv/telegramgallery/Utils/f;->a(IF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v2

    .line 5
    invoke-virtual {p0, p1, v2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 6
    new-instance p1, Landroid/widget/LinearLayout;

    invoke-direct {p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    const/4 v2, 0x0

    .line 7
    invoke-virtual {p1, v2}, Landroid/widget/LinearLayout;->setOrientation(I)V

    const/high16 v2, 0x7f000000

    .line 8
    invoke-virtual {p1, v2}, Landroid/widget/LinearLayout;->setBackgroundColor(I)V

    const/16 v2, 0x1c

    const/16 v3, 0x53

    .line 9
    invoke-static {v0, v2, v3}, Lcom/tangxiaolv/telegramgallery/Utils/f;->c(III)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v2

    invoke-virtual {p0, p1, v2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 10
    new-instance v2, Landroid/widget/TextView;

    invoke-direct {v2, p2}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/tangxiaolv/telegramgallery/Components/e$b;->b:Landroid/widget/TextView;

    const/4 v3, 0x1

    const/high16 v4, 0x41500000    # 13.0f

    .line 11
    invoke-virtual {v2, v3, v4}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 12
    iget-object v2, p0, Lcom/tangxiaolv/telegramgallery/Components/e$b;->b:Landroid/widget/TextView;

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 13
    iget-object v2, p0, Lcom/tangxiaolv/telegramgallery/Components/e$b;->b:Landroid/widget/TextView;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setSingleLine(Z)V

    .line 14
    iget-object v2, p0, Lcom/tangxiaolv/telegramgallery/Components/e$b;->b:Landroid/widget/TextView;

    sget-object v5, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 15
    iget-object v2, p0, Lcom/tangxiaolv/telegramgallery/Components/e$b;->b:Landroid/widget/TextView;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setMaxLines(I)V

    .line 16
    iget-object v2, p0, Lcom/tangxiaolv/telegramgallery/Components/e$b;->b:Landroid/widget/TextView;

    const/16 v5, 0x10

    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setGravity(I)V

    .line 17
    iget-object v2, p0, Lcom/tangxiaolv/telegramgallery/Components/e$b;->b:Landroid/widget/TextView;

    const/4 v6, 0x0

    const/4 v7, -0x1

    const/high16 v8, 0x3f800000    # 1.0f

    const/16 v9, 0x8

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    .line 18
    invoke-static/range {v6 .. v12}, Lcom/tangxiaolv/telegramgallery/Utils/f;->h(IIFIIII)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v6

    .line 19
    invoke-virtual {p1, v2, v6}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 20
    new-instance v2, Landroid/widget/TextView;

    invoke-direct {v2, p2}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/tangxiaolv/telegramgallery/Components/e$b;->c:Landroid/widget/TextView;

    .line 21
    invoke-virtual {v2, v3, v4}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 22
    iget-object v2, p0, Lcom/tangxiaolv/telegramgallery/Components/e$b;->c:Landroid/widget/TextView;

    const v4, -0x555556

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setTextColor(I)V

    .line 23
    iget-object v2, p0, Lcom/tangxiaolv/telegramgallery/Components/e$b;->c:Landroid/widget/TextView;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setSingleLine(Z)V

    .line 24
    iget-object v2, p0, Lcom/tangxiaolv/telegramgallery/Components/e$b;->c:Landroid/widget/TextView;

    sget-object v4, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 25
    iget-object v2, p0, Lcom/tangxiaolv/telegramgallery/Components/e$b;->c:Landroid/widget/TextView;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setMaxLines(I)V

    .line 26
    iget-object v2, p0, Lcom/tangxiaolv/telegramgallery/Components/e$b;->c:Landroid/widget/TextView;

    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setGravity(I)V

    .line 27
    iget-object v2, p0, Lcom/tangxiaolv/telegramgallery/Components/e$b;->c:Landroid/widget/TextView;

    const/4 v3, -0x2

    const/4 v4, -0x1

    const/high16 v5, 0x40800000    # 4.0f

    const/4 v6, 0x0

    const/high16 v7, 0x40800000    # 4.0f

    const/4 v8, 0x0

    invoke-static/range {v3 .. v8}, Lcom/tangxiaolv/telegramgallery/Utils/f;->f(IIFFFF)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v3

    invoke-virtual {p1, v2, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 28
    new-instance p1, Landroid/view/View;

    invoke-direct {p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/tangxiaolv/telegramgallery/Components/e$b;->d:Landroid/view/View;

    .line 29
    sget p2, Lcom/tangxiaolv/telegramgallery/q$h;->Y1:I

    invoke-virtual {p1, p2}, Landroid/view/View;->setBackgroundResource(I)V

    .line 30
    iget-object p1, p0, Lcom/tangxiaolv/telegramgallery/Components/e$b;->d:Landroid/view/View;

    .line 31
    invoke-static {v0, v1}, Lcom/tangxiaolv/telegramgallery/Utils/f;->a(IF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object p2

    .line 32
    invoke-virtual {p0, p1, p2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method static synthetic a(Lcom/tangxiaolv/telegramgallery/Components/e$b;)Lcom/tangxiaolv/telegramgallery/Components/BackupImageView;
    .locals 0

    iget-object p0, p0, Lcom/tangxiaolv/telegramgallery/Components/e$b;->a:Lcom/tangxiaolv/telegramgallery/Components/BackupImageView;

    return-object p0
.end method

.method static synthetic b(Lcom/tangxiaolv/telegramgallery/Components/e$b;)Landroid/widget/TextView;
    .locals 0

    iget-object p0, p0, Lcom/tangxiaolv/telegramgallery/Components/e$b;->b:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic c(Lcom/tangxiaolv/telegramgallery/Components/e$b;)Landroid/widget/TextView;
    .locals 0

    iget-object p0, p0, Lcom/tangxiaolv/telegramgallery/Components/e$b;->c:Landroid/widget/TextView;

    return-object p0
.end method


# virtual methods
.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/tangxiaolv/telegramgallery/Components/e$b;->d:Landroid/view/View;

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
