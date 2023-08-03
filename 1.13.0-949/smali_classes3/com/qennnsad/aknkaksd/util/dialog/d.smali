.class public Lcom/qennnsad/aknkaksd/util/dialog/d;
.super Landroid/app/Dialog;
.source "MenuDialog.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/qennnsad/aknkaksd/util/dialog/d$b;
    }
.end annotation


# instance fields
.field private a:Landroid/content/Context;

.field private b:Landroid/view/ViewGroup;

.field private c:Landroid/widget/LinearLayout;

.field private d:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private e:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private f:Lcom/qennnsad/aknkaksd/util/dialog/d$b;

.field private g:Z

.field private h:I

.field private i:I

.field private j:I

.field private k:Landroid/util/DisplayMetrics;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/List;IILcom/qennnsad/aknkaksd/util/dialog/d$b;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;II",
            "Lcom/qennnsad/aknkaksd/util/dialog/d$b;",
            ")V"
        }
    .end annotation

    .line 10
    invoke-direct {p0, p1, p2, p5}, Lcom/qennnsad/aknkaksd/util/dialog/d;-><init>(Landroid/content/Context;Ljava/util/List;Lcom/qennnsad/aknkaksd/util/dialog/d$b;)V

    if-ltz p3, :cond_0

    .line 11
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p2

    if-ge p3, p2, :cond_0

    const/4 p2, 0x1

    .line 12
    iput-boolean p2, p0, Lcom/qennnsad/aknkaksd/util/dialog/d;->g:Z

    .line 13
    iput p3, p0, Lcom/qennnsad/aknkaksd/util/dialog/d;->h:I

    .line 14
    iput p3, p0, Lcom/qennnsad/aknkaksd/util/dialog/d;->j:I

    .line 15
    iput p4, p0, Lcom/qennnsad/aknkaksd/util/dialog/d;->i:I

    .line 16
    :cond_0
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p1

    iput-object p1, p0, Lcom/qennnsad/aknkaksd/util/dialog/d;->k:Landroid/util/DisplayMetrics;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/util/List;Lcom/qennnsad/aknkaksd/util/dialog/d$b;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/qennnsad/aknkaksd/util/dialog/d$b;",
            ")V"
        }
    .end annotation

    const v0, 0x7f14036d

    .line 1
    invoke-direct {p0, p1, v0}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lcom/qennnsad/aknkaksd/util/dialog/d;->g:Z

    const/4 v0, -0x1

    .line 3
    iput v0, p0, Lcom/qennnsad/aknkaksd/util/dialog/d;->h:I

    .line 4
    iput v0, p0, Lcom/qennnsad/aknkaksd/util/dialog/d;->i:I

    .line 5
    iput v0, p0, Lcom/qennnsad/aknkaksd/util/dialog/d;->j:I

    .line 6
    iput-object p1, p0, Lcom/qennnsad/aknkaksd/util/dialog/d;->a:Landroid/content/Context;

    .line 7
    iput-object p2, p0, Lcom/qennnsad/aknkaksd/util/dialog/d;->d:Ljava/util/List;

    .line 8
    iput-object p3, p0, Lcom/qennnsad/aknkaksd/util/dialog/d;->f:Lcom/qennnsad/aknkaksd/util/dialog/d$b;

    .line 9
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p1

    iput-object p1, p0, Lcom/qennnsad/aknkaksd/util/dialog/d;->k:Landroid/util/DisplayMetrics;

    return-void
.end method

.method private a()V
    .locals 4

    .line 1
    iget-boolean v0, p0, Lcom/qennnsad/aknkaksd/util/dialog/d;->g:Z

    if-eqz v0, :cond_2

    iget v0, p0, Lcom/qennnsad/aknkaksd/util/dialog/d;->h:I

    if-ltz v0, :cond_2

    iget-object v1, p0, Lcom/qennnsad/aknkaksd/util/dialog/d;->d:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_2

    iget-object v0, p0, Lcom/qennnsad/aknkaksd/util/dialog/d;->e:Ljava/util/List;

    if-eqz v0, :cond_2

    .line 2
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_2

    :cond_0
    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 3
    :goto_0
    iget-object v2, p0, Lcom/qennnsad/aknkaksd/util/dialog/d;->e:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_2

    .line 4
    iget-object v2, p0, Lcom/qennnsad/aknkaksd/util/dialog/d;->e:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    const v3, 0x7f0a0485

    .line 5
    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iget v3, p0, Lcom/qennnsad/aknkaksd/util/dialog/d;->h:I

    if-ne v3, v1, :cond_1

    const/4 v3, 0x0

    goto :goto_1

    :cond_1
    const/16 v3, 0x8

    :goto_1
    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    :goto_2
    return-void
.end method


# virtual methods
.method public b()V
    .locals 2

    .line 1
    iget-boolean v0, p0, Lcom/qennnsad/aknkaksd/util/dialog/d;->g:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/qennnsad/aknkaksd/util/dialog/d;->j:I

    if-ltz v0, :cond_0

    iget-object v1, p0, Lcom/qennnsad/aknkaksd/util/dialog/d;->d:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 2
    iget v0, p0, Lcom/qennnsad/aknkaksd/util/dialog/d;->j:I

    iput v0, p0, Lcom/qennnsad/aknkaksd/util/dialog/d;->h:I

    .line 3
    invoke-direct {p0}, Lcom/qennnsad/aknkaksd/util/dialog/d;->a()V

    :cond_0
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 1
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    .line 2
    iget-boolean v0, p0, Lcom/qennnsad/aknkaksd/util/dialog/d;->g:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/qennnsad/aknkaksd/util/dialog/d;->i:I

    if-eq p1, v0, :cond_0

    .line 3
    iget v0, p0, Lcom/qennnsad/aknkaksd/util/dialog/d;->h:I

    iput v0, p0, Lcom/qennnsad/aknkaksd/util/dialog/d;->j:I

    .line 4
    iput p1, p0, Lcom/qennnsad/aknkaksd/util/dialog/d;->h:I

    .line 5
    invoke-direct {p0}, Lcom/qennnsad/aknkaksd/util/dialog/d;->a()V

    .line 6
    :cond_0
    iget-object v0, p0, Lcom/qennnsad/aknkaksd/util/dialog/d;->d:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    .line 7
    iget-object v0, p0, Lcom/qennnsad/aknkaksd/util/dialog/d;->f:Lcom/qennnsad/aknkaksd/util/dialog/d$b;

    if-eqz v0, :cond_1

    .line 8
    invoke-interface {v0, p1}, Lcom/qennnsad/aknkaksd/util/dialog/d$b;->a(Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 8

    .line 1
    invoke-super {p0, p1}, Landroid/app/Dialog;->onCreate(Landroid/os/Bundle;)V

    .line 2
    invoke-virtual {p0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object p1

    const/4 v0, -0x1

    invoke-virtual {p1, v0, v0}, Landroid/view/Window;->setLayout(II)V

    .line 3
    iget-object p1, p0, Lcom/qennnsad/aknkaksd/util/dialog/d;->a:Landroid/content/Context;

    const v1, 0x7f0d0167

    const/4 v2, 0x0

    invoke-static {p1, v1, v2}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/view/ViewGroup;

    iput-object p1, p0, Lcom/qennnsad/aknkaksd/util/dialog/d;->b:Landroid/view/ViewGroup;

    const v1, 0x7f0a0483

    .line 4
    invoke-virtual {p1, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/LinearLayout;

    iput-object p1, p0, Lcom/qennnsad/aknkaksd/util/dialog/d;->c:Landroid/widget/LinearLayout;

    .line 5
    iget-boolean p1, p0, Lcom/qennnsad/aknkaksd/util/dialog/d;->g:Z

    if-eqz p1, :cond_0

    .line 6
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/qennnsad/aknkaksd/util/dialog/d;->e:Ljava/util/List;

    :cond_0
    const/4 p1, 0x0

    const/4 v1, 0x0

    .line 7
    :goto_0
    iget-object v3, p0, Lcom/qennnsad/aknkaksd/util/dialog/d;->d:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v1, v3, :cond_6

    .line 8
    iget-object v3, p0, Lcom/qennnsad/aknkaksd/util/dialog/d;->a:Landroid/content/Context;

    const v4, 0x7f0d0168

    invoke-static {v3, v4, v2}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    const v4, 0x7f0a0480

    .line 9
    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    .line 10
    iget-object v5, p0, Lcom/qennnsad/aknkaksd/util/dialog/d;->d:Ljava/util/List;

    invoke-interface {v5, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/CharSequence;

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v4, 0x7f0a0481

    .line 11
    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/RelativeLayout;

    const v5, 0x7f080522

    if-nez v1, :cond_1

    .line 12
    iget-object v6, p0, Lcom/qennnsad/aknkaksd/util/dialog/d;->d:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    const/4 v7, 0x2

    if-ne v6, v7, :cond_1

    .line 13
    invoke-virtual {v4, v5}, Landroid/widget/RelativeLayout;->setBackgroundResource(I)V

    goto :goto_1

    :cond_1
    if-nez v1, :cond_2

    const v5, 0x7f080524

    .line 14
    invoke-virtual {v4, v5}, Landroid/widget/RelativeLayout;->setBackgroundResource(I)V

    goto :goto_1

    :cond_2
    add-int/lit8 v6, v1, 0x1

    .line 15
    iget-object v7, p0, Lcom/qennnsad/aknkaksd/util/dialog/d;->d:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v7

    if-ne v6, v7, :cond_3

    .line 16
    invoke-virtual {v4, v5}, Landroid/widget/RelativeLayout;->setBackgroundResource(I)V

    .line 17
    new-instance v5, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v6, -0x2

    invoke-direct {v5, v0, v6}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/16 v6, 0x14

    .line 18
    invoke-virtual {v5, p1, v6, p1, p1}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    .line 19
    invoke-virtual {v4, v5}, Landroid/widget/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_1

    :cond_3
    add-int/lit8 v5, v1, 0x2

    .line 20
    iget-object v6, p0, Lcom/qennnsad/aknkaksd/util/dialog/d;->d:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    if-ne v5, v6, :cond_4

    const v5, 0x7f080521

    .line 21
    invoke-virtual {v4, v5}, Landroid/widget/RelativeLayout;->setBackgroundResource(I)V

    goto :goto_1

    :cond_4
    const v5, 0x7f080523

    .line 22
    invoke-virtual {v4, v5}, Landroid/widget/RelativeLayout;->setBackgroundResource(I)V

    .line 23
    :goto_1
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 24
    invoke-virtual {v3, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 25
    iget-boolean v4, p0, Lcom/qennnsad/aknkaksd/util/dialog/d;->g:Z

    if-eqz v4, :cond_5

    .line 26
    iget-object v4, p0, Lcom/qennnsad/aknkaksd/util/dialog/d;->e:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 27
    :cond_5
    iget-object v4, p0, Lcom/qennnsad/aknkaksd/util/dialog/d;->c:Landroid/widget/LinearLayout;

    invoke-virtual {v4, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_0

    .line 28
    :cond_6
    invoke-direct {p0}, Lcom/qennnsad/aknkaksd/util/dialog/d;->a()V

    .line 29
    iget-object p1, p0, Lcom/qennnsad/aknkaksd/util/dialog/d;->b:Landroid/view/ViewGroup;

    new-instance v0, Lcom/qennnsad/aknkaksd/util/dialog/d$a;

    invoke-direct {v0, p0}, Lcom/qennnsad/aknkaksd/util/dialog/d$a;-><init>(Lcom/qennnsad/aknkaksd/util/dialog/d;)V

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 30
    iget-object p1, p0, Lcom/qennnsad/aknkaksd/util/dialog/d;->b:Landroid/view/ViewGroup;

    invoke-virtual {p0, p1}, Landroid/app/Dialog;->setContentView(Landroid/view/View;)V

    return-void
.end method

.method public show()V
    .locals 2

    .line 1
    invoke-super {p0}, Landroid/app/Dialog;->show()V

    .line 2
    invoke-virtual {p0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    .line 3
    iget-object v1, p0, Lcom/qennnsad/aknkaksd/util/dialog/d;->k:Landroid/util/DisplayMetrics;

    iget v1, v1, Landroid/util/DisplayMetrics;->widthPixels:I

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->width:I

    const/4 v1, -0x1

    .line 4
    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->height:I

    const/16 v1, 0x50

    .line 5
    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 6
    invoke-virtual {p0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 7
    invoke-virtual {p0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    iget-object v1, p0, Lcom/qennnsad/aknkaksd/util/dialog/d;->b:Landroid/view/ViewGroup;

    invoke-virtual {v0, v1}, Landroid/view/Window;->setContentView(Landroid/view/View;)V

    return-void
.end method
