.class public Lcom/tangxiaolv/telegramgallery/Components/e;
.super Landroid/widget/FrameLayout;
.source "PhotoPickerAlbumsCell.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tangxiaolv/telegramgallery/Components/e$b;,
        Lcom/tangxiaolv/telegramgallery/Components/e$c;
    }
.end annotation


# instance fields
.field private a:[Lcom/tangxiaolv/telegramgallery/Components/e$b;

.field private b:[Lcom/tangxiaolv/telegramgallery/Utils/g$d;

.field private c:I

.field private d:Lcom/tangxiaolv/telegramgallery/Components/e$c;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 4

    .line 1
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x4

    new-array v1, v0, [Lcom/tangxiaolv/telegramgallery/Utils/g$d;

    .line 2
    iput-object v1, p0, Lcom/tangxiaolv/telegramgallery/Components/e;->b:[Lcom/tangxiaolv/telegramgallery/Utils/g$d;

    new-array v1, v0, [Lcom/tangxiaolv/telegramgallery/Components/e$b;

    .line 3
    iput-object v1, p0, Lcom/tangxiaolv/telegramgallery/Components/e;->a:[Lcom/tangxiaolv/telegramgallery/Components/e$b;

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    .line 4
    iget-object v2, p0, Lcom/tangxiaolv/telegramgallery/Components/e;->a:[Lcom/tangxiaolv/telegramgallery/Components/e$b;

    new-instance v3, Lcom/tangxiaolv/telegramgallery/Components/e$b;

    invoke-direct {v3, p0, p1}, Lcom/tangxiaolv/telegramgallery/Components/e$b;-><init>(Lcom/tangxiaolv/telegramgallery/Components/e;Landroid/content/Context;)V

    aput-object v3, v2, v1

    .line 5
    iget-object v2, p0, Lcom/tangxiaolv/telegramgallery/Components/e;->a:[Lcom/tangxiaolv/telegramgallery/Components/e$b;

    aget-object v2, v2, v1

    invoke-virtual {p0, v2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 6
    iget-object v2, p0, Lcom/tangxiaolv/telegramgallery/Components/e;->a:[Lcom/tangxiaolv/telegramgallery/Components/e$b;

    aget-object v2, v2, v1

    invoke-virtual {v2, v0}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 7
    iget-object v2, p0, Lcom/tangxiaolv/telegramgallery/Components/e;->a:[Lcom/tangxiaolv/telegramgallery/Components/e$b;

    aget-object v2, v2, v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/FrameLayout;->setTag(Ljava/lang/Object;)V

    .line 8
    iget-object v2, p0, Lcom/tangxiaolv/telegramgallery/Components/e;->a:[Lcom/tangxiaolv/telegramgallery/Components/e$b;

    aget-object v2, v2, v1

    new-instance v3, Lcom/tangxiaolv/telegramgallery/Components/e$a;

    invoke-direct {v3, p0}, Lcom/tangxiaolv/telegramgallery/Components/e$a;-><init>(Lcom/tangxiaolv/telegramgallery/Components/e;)V

    invoke-virtual {v2, v3}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method static synthetic a(Lcom/tangxiaolv/telegramgallery/Components/e;)Lcom/tangxiaolv/telegramgallery/Components/e$c;
    .locals 0

    iget-object p0, p0, Lcom/tangxiaolv/telegramgallery/Components/e;->d:Lcom/tangxiaolv/telegramgallery/Components/e$c;

    return-object p0
.end method

.method static synthetic b(Lcom/tangxiaolv/telegramgallery/Components/e;)[Lcom/tangxiaolv/telegramgallery/Utils/g$d;
    .locals 0

    iget-object p0, p0, Lcom/tangxiaolv/telegramgallery/Components/e;->b:[Lcom/tangxiaolv/telegramgallery/Utils/g$d;

    return-object p0
.end method


# virtual methods
.method public c(ILcom/tangxiaolv/telegramgallery/Utils/g$d;)V
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/tangxiaolv/telegramgallery/Components/e;->b:[Lcom/tangxiaolv/telegramgallery/Utils/g$d;

    aput-object p2, v0, p1

    if-eqz p2, :cond_2

    .line 2
    iget-object v0, p0, Lcom/tangxiaolv/telegramgallery/Components/e;->a:[Lcom/tangxiaolv/telegramgallery/Components/e$b;

    aget-object p1, v0, p1

    .line 3
    invoke-static {p1}, Lcom/tangxiaolv/telegramgallery/Components/e$b;->a(Lcom/tangxiaolv/telegramgallery/Components/e$b;)Lcom/tangxiaolv/telegramgallery/Components/BackupImageView;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/tangxiaolv/telegramgallery/Components/BackupImageView;->j(IZ)V

    .line 4
    iget-object v0, p2, Lcom/tangxiaolv/telegramgallery/Utils/g$d;->c:Lcom/tangxiaolv/telegramgallery/Utils/g$k;

    if-eqz v0, :cond_1

    iget-object v0, v0, Lcom/tangxiaolv/telegramgallery/Utils/g$k;->e:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 5
    invoke-static {p1}, Lcom/tangxiaolv/telegramgallery/Components/e$b;->a(Lcom/tangxiaolv/telegramgallery/Components/e$b;)Lcom/tangxiaolv/telegramgallery/Components/BackupImageView;

    move-result-object v0

    iget-object v3, p2, Lcom/tangxiaolv/telegramgallery/Utils/g$d;->c:Lcom/tangxiaolv/telegramgallery/Utils/g$k;

    iget v3, v3, Lcom/tangxiaolv/telegramgallery/Utils/g$k;->f:I

    invoke-virtual {v0, v3, v2}, Lcom/tangxiaolv/telegramgallery/Components/BackupImageView;->j(IZ)V

    .line 6
    iget-object v0, p2, Lcom/tangxiaolv/telegramgallery/Utils/g$d;->c:Lcom/tangxiaolv/telegramgallery/Utils/g$k;

    iget-boolean v0, v0, Lcom/tangxiaolv/telegramgallery/Utils/g$k;->i:Z

    const/4 v3, 0x0

    const-string v4, ":"

    if-eqz v0, :cond_0

    .line 7
    invoke-static {p1}, Lcom/tangxiaolv/telegramgallery/Components/e$b;->a(Lcom/tangxiaolv/telegramgallery/Components/e$b;)Lcom/tangxiaolv/telegramgallery/Components/BackupImageView;

    move-result-object v0

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "vthumb://"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, p2, Lcom/tangxiaolv/telegramgallery/Utils/g$d;->c:Lcom/tangxiaolv/telegramgallery/Utils/g$k;

    iget v6, v6, Lcom/tangxiaolv/telegramgallery/Utils/g$k;->c:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p2, Lcom/tangxiaolv/telegramgallery/Utils/g$d;->c:Lcom/tangxiaolv/telegramgallery/Utils/g$k;

    iget-object v4, v4, Lcom/tangxiaolv/telegramgallery/Utils/g$k;->e:Ljava/lang/String;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 8
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    sget v6, Lcom/tangxiaolv/telegramgallery/q$h;->w2:I

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    .line 9
    invoke-virtual {v0, v4, v3, v5}, Lcom/tangxiaolv/telegramgallery/Components/BackupImageView;->i(Ljava/lang/String;Ljava/lang/String;Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 10
    :cond_0
    invoke-static {p1}, Lcom/tangxiaolv/telegramgallery/Components/e$b;->a(Lcom/tangxiaolv/telegramgallery/Components/e$b;)Lcom/tangxiaolv/telegramgallery/Components/BackupImageView;

    move-result-object v0

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "thumb://"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, p2, Lcom/tangxiaolv/telegramgallery/Utils/g$d;->c:Lcom/tangxiaolv/telegramgallery/Utils/g$k;

    iget v6, v6, Lcom/tangxiaolv/telegramgallery/Utils/g$k;->c:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p2, Lcom/tangxiaolv/telegramgallery/Utils/g$d;->c:Lcom/tangxiaolv/telegramgallery/Utils/g$k;

    iget-object v4, v4, Lcom/tangxiaolv/telegramgallery/Utils/g$k;->e:Ljava/lang/String;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 11
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    sget v6, Lcom/tangxiaolv/telegramgallery/q$h;->w2:I

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    .line 12
    invoke-virtual {v0, v4, v3, v5}, Lcom/tangxiaolv/telegramgallery/Components/BackupImageView;->i(Ljava/lang/String;Ljava/lang/String;Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 13
    :cond_1
    invoke-static {p1}, Lcom/tangxiaolv/telegramgallery/Components/e$b;->a(Lcom/tangxiaolv/telegramgallery/Components/e$b;)Lcom/tangxiaolv/telegramgallery/Components/BackupImageView;

    move-result-object v0

    sget v3, Lcom/tangxiaolv/telegramgallery/q$h;->w2:I

    invoke-virtual {v0, v3}, Lcom/tangxiaolv/telegramgallery/Components/BackupImageView;->setImageResource(I)V

    .line 14
    :goto_0
    invoke-static {p1}, Lcom/tangxiaolv/telegramgallery/Components/e$b;->b(Lcom/tangxiaolv/telegramgallery/Components/e$b;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v3, p2, Lcom/tangxiaolv/telegramgallery/Utils/g$d;->b:Ljava/lang/String;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 15
    invoke-static {p1}, Lcom/tangxiaolv/telegramgallery/Components/e$b;->c(Lcom/tangxiaolv/telegramgallery/Components/e$b;)Landroid/widget/TextView;

    move-result-object p1

    new-array v0, v2, [Ljava/lang/Object;

    iget-object p2, p2, Lcom/tangxiaolv/telegramgallery/Utils/g$d;->d:Ljava/util/ArrayList;

    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result p2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    aput-object p2, v0, v1

    const-string p2, "%d"

    invoke-static {p2, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 16
    :cond_2
    iget-object p2, p0, Lcom/tangxiaolv/telegramgallery/Components/e;->a:[Lcom/tangxiaolv/telegramgallery/Components/e$b;

    aget-object p1, p2, p1

    const/4 p2, 0x4

    invoke-virtual {p1, p2}, Landroid/widget/FrameLayout;->setVisibility(I)V

    :goto_1
    return-void
.end method

.method protected onMeasure(II)V
    .locals 4

    .line 1
    invoke-static {}, Lcom/tangxiaolv/telegramgallery/Utils/a;->z()Z

    move-result p2

    const/high16 v0, 0x40800000    # 4.0f

    if-eqz p2, :cond_0

    const/high16 p2, 0x43f50000    # 490.0f

    .line 2
    invoke-static {p2}, Lcom/tangxiaolv/telegramgallery/Utils/a;->g(F)I

    move-result p2

    iget v1, p0, Lcom/tangxiaolv/telegramgallery/Components/e;->c:I

    add-int/lit8 v1, v1, 0x1

    invoke-static {v0}, Lcom/tangxiaolv/telegramgallery/Utils/a;->g(F)I

    move-result v2

    mul-int v1, v1, v2

    sub-int/2addr p2, v1

    iget v1, p0, Lcom/tangxiaolv/telegramgallery/Components/e;->c:I

    div-int/2addr p2, v1

    goto :goto_0

    .line 3
    :cond_0
    sget-object p2, Lcom/tangxiaolv/telegramgallery/Utils/a;->d:Landroid/graphics/Point;

    iget p2, p2, Landroid/graphics/Point;->x:I

    iget v1, p0, Lcom/tangxiaolv/telegramgallery/Components/e;->c:I

    add-int/lit8 v1, v1, 0x1

    .line 4
    invoke-static {v0}, Lcom/tangxiaolv/telegramgallery/Utils/a;->g(F)I

    move-result v2

    mul-int v1, v1, v2

    sub-int/2addr p2, v1

    iget v1, p0, Lcom/tangxiaolv/telegramgallery/Components/e;->c:I

    div-int/2addr p2, v1

    :goto_0
    const/4 v1, 0x0

    .line 5
    :goto_1
    iget v2, p0, Lcom/tangxiaolv/telegramgallery/Components/e;->c:I

    if-ge v1, v2, :cond_1

    .line 6
    iget-object v2, p0, Lcom/tangxiaolv/telegramgallery/Components/e;->a:[Lcom/tangxiaolv/telegramgallery/Components/e$b;

    aget-object v2, v2, v1

    invoke-virtual {v2}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/widget/FrameLayout$LayoutParams;

    .line 7
    invoke-static {v0}, Lcom/tangxiaolv/telegramgallery/Utils/a;->g(F)I

    move-result v3

    iput v3, v2, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 8
    invoke-static {v0}, Lcom/tangxiaolv/telegramgallery/Utils/a;->g(F)I

    move-result v3

    add-int/2addr v3, p2

    mul-int v3, v3, v1

    iput v3, v2, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    .line 9
    iput p2, v2, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 10
    iput p2, v2, Landroid/widget/FrameLayout$LayoutParams;->height:I

    const/16 v3, 0x33

    .line 11
    iput v3, v2, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 12
    iget-object v3, p0, Lcom/tangxiaolv/telegramgallery/Components/e;->a:[Lcom/tangxiaolv/telegramgallery/Components/e$b;

    aget-object v3, v3, v1

    invoke-virtual {v3, v2}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 13
    :cond_1
    invoke-static {v0}, Lcom/tangxiaolv/telegramgallery/Utils/a;->g(F)I

    move-result v0

    add-int/2addr v0, p2

    const/high16 p2, 0x40000000    # 2.0f

    invoke-static {v0, p2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p2

    .line 14
    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->onMeasure(II)V

    return-void
.end method

.method public setAlbumsCount(I)V
    .locals 4

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 1
    :goto_0
    iget-object v2, p0, Lcom/tangxiaolv/telegramgallery/Components/e;->a:[Lcom/tangxiaolv/telegramgallery/Components/e$b;

    array-length v3, v2

    if-ge v1, v3, :cond_1

    .line 2
    aget-object v2, v2, v1

    if-ge v1, p1, :cond_0

    const/4 v3, 0x0

    goto :goto_1

    :cond_0
    const/4 v3, 0x4

    :goto_1
    invoke-virtual {v2, v3}, Landroid/widget/FrameLayout;->setVisibility(I)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 3
    :cond_1
    iput p1, p0, Lcom/tangxiaolv/telegramgallery/Components/e;->c:I

    return-void
.end method

.method public setDelegate(Lcom/tangxiaolv/telegramgallery/Components/e$c;)V
    .locals 0

    iput-object p1, p0, Lcom/tangxiaolv/telegramgallery/Components/e;->d:Lcom/tangxiaolv/telegramgallery/Components/e$c;

    return-void
.end method
