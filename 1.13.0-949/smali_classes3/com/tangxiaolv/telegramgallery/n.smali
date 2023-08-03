.class public Lcom/tangxiaolv/telegramgallery/n;
.super Lcom/tangxiaolv/telegramgallery/Actionbar/f;
.source "PhotoPickerActivity.java"

# interfaces
.implements Lcom/tangxiaolv/telegramgallery/Utils/h$c;
.implements Lcom/tangxiaolv/telegramgallery/o$b0;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tangxiaolv/telegramgallery/n$j;,
        Lcom/tangxiaolv/telegramgallery/n$k;
    }
.end annotation


# instance fields
.field private A:Lcom/tangxiaolv/telegramgallery/Components/h;

.field private B:Landroid/widget/FrameLayout;

.field private C:Landroid/widget/TextView;

.field private D:Lcom/tangxiaolv/telegramgallery/Actionbar/d;

.field private E:I

.field private F:Z

.field private G:Z

.field private H:Lcom/tangxiaolv/telegramgallery/n$k;

.field private k:I

.field private l:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Lcom/tangxiaolv/telegramgallery/Utils/g$k;",
            ">;"
        }
    .end annotation
.end field

.field private m:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/tangxiaolv/telegramgallery/Utils/g$l;",
            ">;"
        }
    .end annotation
.end field

.field private n:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/tangxiaolv/telegramgallery/Utils/g$l;",
            ">;"
        }
    .end annotation
.end field

.field private o:Z

.field private p:Ljava/lang/String;

.field private q:Z

.field private r:Ljava/lang/String;

.field private s:Z

.field private t:I

.field private u:I

.field private v:I

.field private final w:I

.field private x:Lcom/tangxiaolv/telegramgallery/Utils/g$d;

.field private y:Landroid/widget/GridView;

.field private z:Lcom/tangxiaolv/telegramgallery/n$j;


# direct methods
.method public constructor <init>(IILcom/tangxiaolv/telegramgallery/Utils/g$d;Ljava/util/HashMap;Ljava/util/ArrayList;Z)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Lcom/tangxiaolv/telegramgallery/Utils/g$d;",
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Lcom/tangxiaolv/telegramgallery/Utils/g$k;",
            ">;",
            "Ljava/util/ArrayList<",
            "Lcom/tangxiaolv/telegramgallery/Utils/g$l;",
            ">;Z)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lcom/tangxiaolv/telegramgallery/Actionbar/f;-><init>()V

    .line 2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/tangxiaolv/telegramgallery/n;->n:Ljava/util/ArrayList;

    const/4 v0, 0x1

    .line 3
    iput-boolean v0, p0, Lcom/tangxiaolv/telegramgallery/n;->q:Z

    const/16 v0, 0x64

    .line 4
    iput v0, p0, Lcom/tangxiaolv/telegramgallery/n;->E:I

    .line 5
    iput p2, p0, Lcom/tangxiaolv/telegramgallery/n;->w:I

    .line 6
    iput-object p3, p0, Lcom/tangxiaolv/telegramgallery/n;->x:Lcom/tangxiaolv/telegramgallery/Utils/g$d;

    .line 7
    iput-object p4, p0, Lcom/tangxiaolv/telegramgallery/n;->l:Ljava/util/HashMap;

    .line 8
    iput p1, p0, Lcom/tangxiaolv/telegramgallery/n;->k:I

    .line 9
    iput-object p5, p0, Lcom/tangxiaolv/telegramgallery/n;->m:Ljava/util/ArrayList;

    .line 10
    iput-boolean p6, p0, Lcom/tangxiaolv/telegramgallery/n;->G:Z

    return-void
.end method

.method private A0()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/tangxiaolv/telegramgallery/n;->z:Lcom/tangxiaolv/telegramgallery/n$j;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    .line 3
    :cond_0
    iget-boolean v0, p0, Lcom/tangxiaolv/telegramgallery/n;->o:Z

    const/4 v1, 0x0

    const/16 v2, 0x8

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/tangxiaolv/telegramgallery/n;->n:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    :cond_1
    iget-boolean v0, p0, Lcom/tangxiaolv/telegramgallery/n;->s:Z

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/tangxiaolv/telegramgallery/n;->r:Ljava/lang/String;

    if-nez v0, :cond_3

    .line 4
    :cond_2
    iget-object v0, p0, Lcom/tangxiaolv/telegramgallery/n;->B:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 5
    iget-object v0, p0, Lcom/tangxiaolv/telegramgallery/n;->y:Landroid/widget/GridView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/GridView;->setEmptyView(Landroid/view/View;)V

    .line 6
    iget-object v0, p0, Lcom/tangxiaolv/telegramgallery/n;->C:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    .line 7
    :cond_3
    iget-object v0, p0, Lcom/tangxiaolv/telegramgallery/n;->B:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v2}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 8
    iget-object v0, p0, Lcom/tangxiaolv/telegramgallery/n;->C:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 9
    iget-object v0, p0, Lcom/tangxiaolv/telegramgallery/n;->y:Landroid/widget/GridView;

    iget-object v1, p0, Lcom/tangxiaolv/telegramgallery/n;->C:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/GridView;->setEmptyView(Landroid/view/View;)V

    :goto_0
    return-void
.end method

.method static synthetic b0(Lcom/tangxiaolv/telegramgallery/n;)Lcom/tangxiaolv/telegramgallery/n$k;
    .locals 0

    iget-object p0, p0, Lcom/tangxiaolv/telegramgallery/n;->H:Lcom/tangxiaolv/telegramgallery/n$k;

    return-object p0
.end method

.method static synthetic c0(Lcom/tangxiaolv/telegramgallery/n;)Lcom/tangxiaolv/telegramgallery/Utils/g$d;
    .locals 0

    iget-object p0, p0, Lcom/tangxiaolv/telegramgallery/n;->x:Lcom/tangxiaolv/telegramgallery/Utils/g$d;

    return-object p0
.end method

.method static synthetic d0(Lcom/tangxiaolv/telegramgallery/n;)V
    .locals 0

    invoke-direct {p0}, Lcom/tangxiaolv/telegramgallery/n;->v0()V

    return-void
.end method

.method static synthetic e0(Lcom/tangxiaolv/telegramgallery/n;)Landroid/widget/GridView;
    .locals 0

    iget-object p0, p0, Lcom/tangxiaolv/telegramgallery/n;->y:Landroid/widget/GridView;

    return-object p0
.end method

.method static synthetic f0(Lcom/tangxiaolv/telegramgallery/n;)I
    .locals 0

    iget p0, p0, Lcom/tangxiaolv/telegramgallery/n;->k:I

    return p0
.end method

.method static synthetic g0(Lcom/tangxiaolv/telegramgallery/n;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/tangxiaolv/telegramgallery/n;->p:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic h0(Lcom/tangxiaolv/telegramgallery/n;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/tangxiaolv/telegramgallery/n;->q:Z

    return p0
.end method

.method static synthetic i0(Lcom/tangxiaolv/telegramgallery/n;)Ljava/util/HashMap;
    .locals 0

    iget-object p0, p0, Lcom/tangxiaolv/telegramgallery/n;->l:Ljava/util/HashMap;

    return-object p0
.end method

.method static synthetic j0(Lcom/tangxiaolv/telegramgallery/n;)I
    .locals 0

    iget p0, p0, Lcom/tangxiaolv/telegramgallery/n;->w:I

    return p0
.end method

.method static synthetic k0(Lcom/tangxiaolv/telegramgallery/n;)Lcom/tangxiaolv/telegramgallery/Components/h;
    .locals 0

    iget-object p0, p0, Lcom/tangxiaolv/telegramgallery/n;->A:Lcom/tangxiaolv/telegramgallery/Components/h;

    return-object p0
.end method

.method static synthetic l0(Lcom/tangxiaolv/telegramgallery/n;)I
    .locals 0

    iget p0, p0, Lcom/tangxiaolv/telegramgallery/n;->E:I

    return p0
.end method

.method static synthetic m0(Lcom/tangxiaolv/telegramgallery/n;)Ljava/util/ArrayList;
    .locals 0

    iget-object p0, p0, Lcom/tangxiaolv/telegramgallery/n;->n:Ljava/util/ArrayList;

    return-object p0
.end method

.method static synthetic n0(Lcom/tangxiaolv/telegramgallery/n;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/tangxiaolv/telegramgallery/n;->r:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic o0(Lcom/tangxiaolv/telegramgallery/n;)Ljava/util/ArrayList;
    .locals 0

    iget-object p0, p0, Lcom/tangxiaolv/telegramgallery/n;->m:Ljava/util/ArrayList;

    return-object p0
.end method

.method static synthetic p0(Lcom/tangxiaolv/telegramgallery/n;)Lcom/tangxiaolv/telegramgallery/Actionbar/d;
    .locals 0

    iget-object p0, p0, Lcom/tangxiaolv/telegramgallery/n;->D:Lcom/tangxiaolv/telegramgallery/Actionbar/d;

    return-object p0
.end method

.method static synthetic q0(Lcom/tangxiaolv/telegramgallery/n;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/tangxiaolv/telegramgallery/n;->G:Z

    return p0
.end method

.method static synthetic r0(Lcom/tangxiaolv/telegramgallery/n;)Lcom/tangxiaolv/telegramgallery/n$j;
    .locals 0

    iget-object p0, p0, Lcom/tangxiaolv/telegramgallery/n;->z:Lcom/tangxiaolv/telegramgallery/n$j;

    return-object p0
.end method

.method static synthetic s0(Lcom/tangxiaolv/telegramgallery/n;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/tangxiaolv/telegramgallery/n;->o:Z

    return p0
.end method

.method static synthetic t0(Lcom/tangxiaolv/telegramgallery/n;)V
    .locals 0

    invoke-direct {p0}, Lcom/tangxiaolv/telegramgallery/n;->x0()V

    return-void
.end method

.method private u0()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/tangxiaolv/telegramgallery/n;->y:Landroid/widget/GridView;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Landroid/widget/GridView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    .line 3
    new-instance v1, Lcom/tangxiaolv/telegramgallery/n$i;

    invoke-direct {v1, p0}, Lcom/tangxiaolv/telegramgallery/n$i;-><init>(Lcom/tangxiaolv/telegramgallery/n;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    :cond_0
    return-void
.end method

.method private v0()V
    .locals 5

    .line 1
    invoke-virtual {p0}, Lcom/tangxiaolv/telegramgallery/Actionbar/f;->y()Lcom/tangxiaolv/telegramgallery/GalleryActivity;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/tangxiaolv/telegramgallery/n;->y:Landroid/widget/GridView;

    invoke-virtual {v0}, Landroid/widget/GridView;->getFirstVisiblePosition()I

    move-result v0

    .line 3
    sget-object v1, Lcom/tangxiaolv/telegramgallery/e;->a:Landroid/app/Application;

    const-string v2, "window"

    .line 4
    invoke-virtual {v1, v2}, Landroid/app/Application;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/WindowManager;

    .line 5
    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Display;->getRotation()I

    move-result v1

    .line 6
    invoke-static {}, Lcom/tangxiaolv/telegramgallery/Utils/a;->z()Z

    move-result v2

    const/4 v3, 0x3

    if-eqz v2, :cond_1

    goto :goto_0

    :cond_1
    if-eq v1, v3, :cond_2

    const/4 v2, 0x1

    if-ne v1, v2, :cond_3

    :cond_2
    const/4 v3, 0x5

    .line 7
    :cond_3
    :goto_0
    iget-object v1, p0, Lcom/tangxiaolv/telegramgallery/n;->y:Landroid/widget/GridView;

    invoke-virtual {v1, v3}, Landroid/widget/GridView;->setNumColumns(I)V

    .line 8
    invoke-static {}, Lcom/tangxiaolv/telegramgallery/Utils/a;->z()Z

    move-result v1

    const/high16 v2, 0x40800000    # 4.0f

    if-eqz v1, :cond_4

    const/high16 v1, 0x43f50000    # 490.0f

    .line 9
    invoke-static {v1}, Lcom/tangxiaolv/telegramgallery/Utils/a;->g(F)I

    move-result v1

    add-int/lit8 v4, v3, 0x1

    invoke-static {v2}, Lcom/tangxiaolv/telegramgallery/Utils/a;->g(F)I

    move-result v2

    mul-int v4, v4, v2

    sub-int/2addr v1, v4

    div-int/2addr v1, v3

    iput v1, p0, Lcom/tangxiaolv/telegramgallery/n;->E:I

    goto :goto_1

    .line 10
    :cond_4
    sget-object v1, Lcom/tangxiaolv/telegramgallery/Utils/a;->d:Landroid/graphics/Point;

    iget v1, v1, Landroid/graphics/Point;->x:I

    add-int/lit8 v4, v3, 0x1

    .line 11
    invoke-static {v2}, Lcom/tangxiaolv/telegramgallery/Utils/a;->g(F)I

    move-result v2

    mul-int v4, v4, v2

    sub-int/2addr v1, v4

    div-int/2addr v1, v3

    iput v1, p0, Lcom/tangxiaolv/telegramgallery/n;->E:I

    .line 12
    :goto_1
    iget-object v1, p0, Lcom/tangxiaolv/telegramgallery/n;->y:Landroid/widget/GridView;

    iget v2, p0, Lcom/tangxiaolv/telegramgallery/n;->E:I

    invoke-virtual {v1, v2}, Landroid/widget/GridView;->setColumnWidth(I)V

    .line 13
    iget-object v1, p0, Lcom/tangxiaolv/telegramgallery/n;->z:Lcom/tangxiaolv/telegramgallery/n$j;

    invoke-virtual {v1}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    .line 14
    iget-object v1, p0, Lcom/tangxiaolv/telegramgallery/n;->y:Landroid/widget/GridView;

    invoke-virtual {v1, v0}, Landroid/widget/GridView;->setSelection(I)V

    .line 15
    iget-object v0, p0, Lcom/tangxiaolv/telegramgallery/n;->x:Lcom/tangxiaolv/telegramgallery/Utils/g$d;

    if-nez v0, :cond_5

    .line 16
    iget-object v0, p0, Lcom/tangxiaolv/telegramgallery/n;->C:Landroid/widget/TextView;

    sget-object v1, Lcom/tangxiaolv/telegramgallery/Utils/a;->d:Landroid/graphics/Point;

    iget v1, v1, Landroid/graphics/Point;->y:I

    .line 17
    invoke-static {}, Lcom/tangxiaolv/telegramgallery/Actionbar/a;->getCurrentActionBarHeight()I

    move-result v2

    sub-int/2addr v1, v2

    int-to-float v1, v1

    const v2, 0x3ecccccd    # 0.4f

    mul-float v1, v1, v2

    float-to-int v1, v1

    const/4 v2, 0x0

    .line 18
    invoke-virtual {v0, v2, v2, v2, v1}, Landroid/widget/TextView;->setPadding(IIII)V

    :cond_5
    return-void
.end method

.method private w0(I)Lcom/tangxiaolv/telegramgallery/Components/f;
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/tangxiaolv/telegramgallery/n;->y:Landroid/widget/GridView;

    invoke-virtual {v0}, Landroid/widget/GridView;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_4

    .line 2
    iget-object v2, p0, Lcom/tangxiaolv/telegramgallery/n;->y:Landroid/widget/GridView;

    invoke-virtual {v2, v1}, Landroid/widget/GridView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 3
    instance-of v3, v2, Lcom/tangxiaolv/telegramgallery/Components/f;

    if-eqz v3, :cond_3

    .line 4
    check-cast v2, Lcom/tangxiaolv/telegramgallery/Components/f;

    .line 5
    iget-object v3, v2, Lcom/tangxiaolv/telegramgallery/Components/f;->a:Lcom/tangxiaolv/telegramgallery/Components/BackupImageView;

    invoke-virtual {v3}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 6
    iget-object v4, p0, Lcom/tangxiaolv/telegramgallery/n;->x:Lcom/tangxiaolv/telegramgallery/Utils/g$d;

    if-eqz v4, :cond_0

    if-ltz v3, :cond_3

    .line 7
    iget-object v4, v4, Lcom/tangxiaolv/telegramgallery/Utils/g$d;->d:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-lt v3, v4, :cond_2

    goto :goto_2

    .line 8
    :cond_0
    iget-object v4, p0, Lcom/tangxiaolv/telegramgallery/n;->n:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_1

    iget-object v4, p0, Lcom/tangxiaolv/telegramgallery/n;->r:Ljava/lang/String;

    if-nez v4, :cond_1

    .line 9
    iget-object v4, p0, Lcom/tangxiaolv/telegramgallery/n;->m:Ljava/util/ArrayList;

    goto :goto_1

    .line 10
    :cond_1
    iget-object v4, p0, Lcom/tangxiaolv/telegramgallery/n;->n:Ljava/util/ArrayList;

    :goto_1
    if-ltz v3, :cond_3

    .line 11
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-lt v3, v4, :cond_2

    goto :goto_2

    :cond_2
    if-ne v3, p1, :cond_3

    return-object v2

    :cond_3
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_4
    const/4 p1, 0x0

    return-object p1
.end method

.method private x0()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/tangxiaolv/telegramgallery/n;->l:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/tangxiaolv/telegramgallery/n;->H:Lcom/tangxiaolv/telegramgallery/n$k;

    if-eqz v0, :cond_1

    iget-boolean v1, p0, Lcom/tangxiaolv/telegramgallery/n;->F:Z

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x1

    .line 2
    iput-boolean v1, p0, Lcom/tangxiaolv/telegramgallery/n;->F:Z

    const/4 v1, 0x0

    .line 3
    invoke-interface {v0, v1}, Lcom/tangxiaolv/telegramgallery/n$k;->g(Z)V

    .line 4
    invoke-virtual {p0}, Lcom/tangxiaolv/telegramgallery/Actionbar/f;->t()V

    :cond_1
    :goto_0
    return-void
.end method


# virtual methods
.method public F(Landroid/content/res/Configuration;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lcom/tangxiaolv/telegramgallery/Actionbar/f;->F(Landroid/content/res/Configuration;)V

    .line 2
    invoke-direct {p0}, Lcom/tangxiaolv/telegramgallery/n;->u0()V

    return-void
.end method

.method public I()Z
    .locals 1

    invoke-super {p0}, Lcom/tangxiaolv/telegramgallery/Actionbar/f;->I()Z

    move-result v0

    return v0
.end method

.method public J()V
    .locals 0

    invoke-super {p0}, Lcom/tangxiaolv/telegramgallery/Actionbar/f;->J()V

    return-void
.end method

.method public N()V
    .locals 2

    .line 1
    invoke-super {p0}, Lcom/tangxiaolv/telegramgallery/Actionbar/f;->N()V

    .line 2
    iget-object v0, p0, Lcom/tangxiaolv/telegramgallery/n;->z:Lcom/tangxiaolv/telegramgallery/n$j;

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {v0}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    .line 4
    :cond_0
    iget-object v0, p0, Lcom/tangxiaolv/telegramgallery/n;->D:Lcom/tangxiaolv/telegramgallery/Actionbar/d;

    if-eqz v0, :cond_1

    const/4 v1, 0x1

    .line 5
    invoke-virtual {v0, v1}, Lcom/tangxiaolv/telegramgallery/Actionbar/d;->o(Z)V

    .line 6
    invoke-virtual {p0}, Lcom/tangxiaolv/telegramgallery/Actionbar/f;->y()Lcom/tangxiaolv/telegramgallery/GalleryActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x20

    .line 7
    invoke-virtual {v0, v1}, Landroid/view/Window;->setSoftInputMode(I)V

    .line 8
    :cond_1
    invoke-direct {p0}, Lcom/tangxiaolv/telegramgallery/n;->u0()V

    return-void
.end method

.method public O(ZZ)V
    .locals 0

    if-eqz p1, :cond_0

    .line 1
    iget-object p1, p0, Lcom/tangxiaolv/telegramgallery/n;->D:Lcom/tangxiaolv/telegramgallery/Actionbar/d;

    if-eqz p1, :cond_0

    .line 2
    invoke-virtual {p1}, Lcom/tangxiaolv/telegramgallery/Actionbar/d;->getSearchField()Landroid/widget/EditText;

    move-result-object p1

    invoke-static {p1}, Lcom/tangxiaolv/telegramgallery/Utils/a;->I(Landroid/view/View;)V

    :cond_0
    return-void
.end method

.method public a(I)Z
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/tangxiaolv/telegramgallery/n;->x:Lcom/tangxiaolv/telegramgallery/Utils/g$d;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    if-ltz p1, :cond_0

    .line 2
    iget-object v0, v0, Lcom/tangxiaolv/telegramgallery/Utils/g$d;->d:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge p1, v0, :cond_0

    iget-object v0, p0, Lcom/tangxiaolv/telegramgallery/n;->l:Ljava/util/HashMap;

    iget-object v2, p0, Lcom/tangxiaolv/telegramgallery/n;->x:Lcom/tangxiaolv/telegramgallery/Utils/g$d;

    iget-object v2, v2, Lcom/tangxiaolv/telegramgallery/Utils/g$d;->d:Ljava/util/ArrayList;

    .line 3
    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/tangxiaolv/telegramgallery/Utils/g$k;

    iget p1, p1, Lcom/tangxiaolv/telegramgallery/Utils/g$k;->c:I

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1
.end method

.method public b()V
    .locals 1

    iget-object v0, p0, Lcom/tangxiaolv/telegramgallery/n;->H:Lcom/tangxiaolv/telegramgallery/n$k;

    invoke-interface {v0}, Lcom/tangxiaolv/telegramgallery/n$k;->b()V

    return-void
.end method

.method public c()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/tangxiaolv/telegramgallery/n;->z:Lcom/tangxiaolv/telegramgallery/n$j;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    :cond_0
    return-void
.end method

.method public d()I
    .locals 1

    iget-object v0, p0, Lcom/tangxiaolv/telegramgallery/n;->l:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    move-result v0

    return v0
.end method

.method public e(Lcom/tangxiaolv/telegramgallery/TL/d;I)V
    .locals 5

    .line 1
    iget-object p1, p0, Lcom/tangxiaolv/telegramgallery/n;->y:Landroid/widget/GridView;

    invoke-virtual {p1}, Landroid/widget/GridView;->getChildCount()I

    move-result p1

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, p1, :cond_5

    .line 2
    iget-object v2, p0, Lcom/tangxiaolv/telegramgallery/n;->y:Landroid/widget/GridView;

    invoke-virtual {v2, v1}, Landroid/widget/GridView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 3
    invoke-virtual {v2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v3

    if-nez v3, :cond_0

    goto :goto_2

    .line 4
    :cond_0
    move-object v3, v2

    check-cast v3, Lcom/tangxiaolv/telegramgallery/Components/f;

    .line 5
    invoke-virtual {v2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 6
    iget-object v4, p0, Lcom/tangxiaolv/telegramgallery/n;->x:Lcom/tangxiaolv/telegramgallery/Utils/g$d;

    if-eqz v4, :cond_1

    if-ltz v2, :cond_4

    .line 7
    iget-object v4, v4, Lcom/tangxiaolv/telegramgallery/Utils/g$d;->d:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-lt v2, v4, :cond_3

    goto :goto_2

    .line 8
    :cond_1
    iget-object v4, p0, Lcom/tangxiaolv/telegramgallery/n;->n:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_2

    iget-object v4, p0, Lcom/tangxiaolv/telegramgallery/n;->r:Ljava/lang/String;

    if-nez v4, :cond_2

    .line 9
    iget-object v4, p0, Lcom/tangxiaolv/telegramgallery/n;->m:Ljava/util/ArrayList;

    goto :goto_1

    .line 10
    :cond_2
    iget-object v4, p0, Lcom/tangxiaolv/telegramgallery/n;->n:Ljava/util/ArrayList;

    :goto_1
    if-ltz v2, :cond_4

    .line 11
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-lt v2, v4, :cond_3

    goto :goto_2

    :cond_3
    if-ne v2, p2, :cond_4

    .line 12
    iget-object p1, v3, Lcom/tangxiaolv/telegramgallery/Components/f;->c:Lcom/tangxiaolv/telegramgallery/Components/b;

    invoke-virtual {p1, v0}, Lcom/tangxiaolv/telegramgallery/Components/b;->setVisibility(I)V

    goto :goto_3

    :cond_4
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_5
    :goto_3
    return-void
.end method

.method public f(I)V
    .locals 8

    .line 1
    iget-object v0, p0, Lcom/tangxiaolv/telegramgallery/n;->x:Lcom/tangxiaolv/telegramgallery/Utils/g$d;

    const/4 v1, -0x1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v0, :cond_4

    if-ltz p1, :cond_3

    .line 2
    iget-object v0, v0, Lcom/tangxiaolv/telegramgallery/Utils/g$d;->d:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lt p1, v0, :cond_0

    goto :goto_0

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/tangxiaolv/telegramgallery/n;->x:Lcom/tangxiaolv/telegramgallery/Utils/g$d;

    iget-object v0, v0, Lcom/tangxiaolv/telegramgallery/Utils/g$d;->d:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tangxiaolv/telegramgallery/Utils/g$k;

    .line 4
    iget v4, v0, Lcom/tangxiaolv/telegramgallery/Utils/g$k;->c:I

    .line 5
    iget-object v5, p0, Lcom/tangxiaolv/telegramgallery/n;->l:Ljava/util/HashMap;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 6
    iput v1, v0, Lcom/tangxiaolv/telegramgallery/Utils/g$k;->a:I

    .line 7
    iget-object v1, p0, Lcom/tangxiaolv/telegramgallery/n;->l:Ljava/util/HashMap;

    iget v5, v0, Lcom/tangxiaolv/telegramgallery/Utils/g$k;->c:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 8
    iget-object v1, p0, Lcom/tangxiaolv/telegramgallery/n;->H:Lcom/tangxiaolv/telegramgallery/n$k;

    iget v0, v0, Lcom/tangxiaolv/telegramgallery/Utils/g$k;->c:I

    invoke-interface {v1, v0}, Lcom/tangxiaolv/telegramgallery/n$k;->c(I)V

    move v1, v4

    const/4 v0, 0x0

    goto :goto_2

    .line 9
    :cond_1
    iget-object v1, p0, Lcom/tangxiaolv/telegramgallery/n;->l:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->size()I

    move-result v1

    iget v5, p0, Lcom/tangxiaolv/telegramgallery/n;->w:I

    if-ge v1, v5, :cond_2

    .line 10
    iget-object v1, p0, Lcom/tangxiaolv/telegramgallery/n;->l:Ljava/util/HashMap;

    iget v5, v0, Lcom/tangxiaolv/telegramgallery/Utils/g$k;->c:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v1, v5, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 11
    iget-object v1, p0, Lcom/tangxiaolv/telegramgallery/n;->H:Lcom/tangxiaolv/telegramgallery/n$k;

    invoke-interface {v1}, Lcom/tangxiaolv/telegramgallery/n$k;->e()I

    move-result v1

    .line 12
    iput v1, v0, Lcom/tangxiaolv/telegramgallery/Utils/g$k;->a:I

    .line 13
    iget-object v5, p0, Lcom/tangxiaolv/telegramgallery/n;->H:Lcom/tangxiaolv/telegramgallery/n$k;

    iget v0, v0, Lcom/tangxiaolv/telegramgallery/Utils/g$k;->c:I

    invoke-interface {v5, v0, v1}, Lcom/tangxiaolv/telegramgallery/n$k;->h(II)V

    :cond_2
    move v1, v4

    goto :goto_1

    :cond_3
    :goto_0
    return-void

    :cond_4
    :goto_1
    const/4 v0, 0x1

    .line 14
    :goto_2
    iget-object v4, p0, Lcom/tangxiaolv/telegramgallery/n;->l:Ljava/util/HashMap;

    invoke-virtual {v4}, Ljava/util/HashMap;->size()I

    move-result v4

    iget v5, p0, Lcom/tangxiaolv/telegramgallery/n;->w:I

    if-gt v4, v5, :cond_7

    .line 15
    iget-object v4, p0, Lcom/tangxiaolv/telegramgallery/n;->y:Landroid/widget/GridView;

    invoke-virtual {v4}, Landroid/widget/GridView;->getChildCount()I

    move-result v4

    const/4 v5, 0x0

    :goto_3
    if-ge v5, v4, :cond_6

    .line 16
    iget-object v6, p0, Lcom/tangxiaolv/telegramgallery/n;->y:Landroid/widget/GridView;

    invoke-virtual {v6, v5}, Landroid/widget/GridView;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    .line 17
    invoke-virtual {v6}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    if-ne v7, p1, :cond_5

    .line 18
    check-cast v6, Lcom/tangxiaolv/telegramgallery/Components/f;

    iget-object p1, p0, Lcom/tangxiaolv/telegramgallery/n;->H:Lcom/tangxiaolv/telegramgallery/n$k;

    invoke-interface {p1, v1}, Lcom/tangxiaolv/telegramgallery/n$k;->d(I)I

    move-result p1

    invoke-virtual {v6, p1, v0, v2}, Lcom/tangxiaolv/telegramgallery/Components/f;->c(IZZ)V

    goto :goto_4

    :cond_5
    add-int/lit8 v5, v5, 0x1

    goto :goto_3

    .line 19
    :cond_6
    :goto_4
    iget-object p1, p0, Lcom/tangxiaolv/telegramgallery/n;->A:Lcom/tangxiaolv/telegramgallery/Components/h;

    iget-object v0, p0, Lcom/tangxiaolv/telegramgallery/n;->l:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    move-result v0

    invoke-virtual {p1, v0, v3}, Lcom/tangxiaolv/telegramgallery/Components/h;->a(IZ)V

    .line 20
    iget-object p1, p0, Lcom/tangxiaolv/telegramgallery/n;->H:Lcom/tangxiaolv/telegramgallery/n$k;

    invoke-interface {p1}, Lcom/tangxiaolv/telegramgallery/n$k;->f()V

    :cond_7
    return-void
.end method

.method public g()Z
    .locals 1

    iget-boolean v0, p0, Lcom/tangxiaolv/telegramgallery/n;->G:Z

    return v0
.end method

.method public varargs h(I[Ljava/lang/Object;)V
    .locals 2

    .line 1
    sget v0, Lcom/tangxiaolv/telegramgallery/Utils/h;->k:I

    if-ne p1, v0, :cond_0

    .line 2
    invoke-virtual {p0}, Lcom/tangxiaolv/telegramgallery/Actionbar/f;->T()V

    goto :goto_0

    .line 3
    :cond_0
    sget v0, Lcom/tangxiaolv/telegramgallery/Utils/h;->q:I

    if-ne p1, v0, :cond_1

    .line 4
    iget-object p1, p0, Lcom/tangxiaolv/telegramgallery/n;->x:Lcom/tangxiaolv/telegramgallery/Utils/g$d;

    if-nez p1, :cond_1

    iget p1, p0, Lcom/tangxiaolv/telegramgallery/n;->k:I

    const/4 v0, 0x0

    aget-object v1, p2, v0

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-ne p1, v1, :cond_1

    const/4 p1, 0x1

    .line 5
    aget-object p1, p2, p1

    check-cast p1, Ljava/util/ArrayList;

    iput-object p1, p0, Lcom/tangxiaolv/telegramgallery/n;->m:Ljava/util/ArrayList;

    .line 6
    iput-boolean v0, p0, Lcom/tangxiaolv/telegramgallery/n;->s:Z

    .line 7
    invoke-direct {p0}, Lcom/tangxiaolv/telegramgallery/n;->A0()V

    :cond_1
    :goto_0
    return-void
.end method

.method public i(I)V
    .locals 6

    .line 1
    invoke-direct {p0, p1}, Lcom/tangxiaolv/telegramgallery/n;->w0(I)Lcom/tangxiaolv/telegramgallery/Components/f;

    move-result-object v0

    if-eqz v0, :cond_8

    .line 2
    iget-object v1, p0, Lcom/tangxiaolv/telegramgallery/n;->x:Lcom/tangxiaolv/telegramgallery/Utils/g$d;

    const/4 v2, 0x0

    if-eqz v1, :cond_3

    .line 3
    iget-object v1, v0, Lcom/tangxiaolv/telegramgallery/Components/f;->a:Lcom/tangxiaolv/telegramgallery/Components/BackupImageView;

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-virtual {v1, v3, v4}, Lcom/tangxiaolv/telegramgallery/Components/BackupImageView;->j(IZ)V

    .line 4
    iget-object v1, p0, Lcom/tangxiaolv/telegramgallery/n;->x:Lcom/tangxiaolv/telegramgallery/Utils/g$d;

    iget-object v1, v1, Lcom/tangxiaolv/telegramgallery/Utils/g$d;->d:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/tangxiaolv/telegramgallery/Utils/g$k;

    .line 5
    iget-object v1, p1, Lcom/tangxiaolv/telegramgallery/Utils/g$k;->g:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 6
    iget-object p1, v0, Lcom/tangxiaolv/telegramgallery/Components/f;->a:Lcom/tangxiaolv/telegramgallery/Components/BackupImageView;

    .line 7
    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v3, Lcom/tangxiaolv/telegramgallery/q$h;->w2:I

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 8
    invoke-virtual {p1, v1, v2, v0}, Lcom/tangxiaolv/telegramgallery/Components/BackupImageView;->i(Ljava/lang/String;Ljava/lang/String;Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_1

    .line 9
    :cond_0
    iget-object v1, p1, Lcom/tangxiaolv/telegramgallery/Utils/g$k;->e:Ljava/lang/String;

    if-eqz v1, :cond_2

    .line 10
    iget-object v1, v0, Lcom/tangxiaolv/telegramgallery/Components/f;->a:Lcom/tangxiaolv/telegramgallery/Components/BackupImageView;

    iget v3, p1, Lcom/tangxiaolv/telegramgallery/Utils/g$k;->f:I

    invoke-virtual {v1, v3, v4}, Lcom/tangxiaolv/telegramgallery/Components/BackupImageView;->j(IZ)V

    .line 11
    iget-boolean v1, p1, Lcom/tangxiaolv/telegramgallery/Utils/g$k;->i:Z

    const-string v3, ":"

    if-eqz v1, :cond_1

    .line 12
    iget-object v1, v0, Lcom/tangxiaolv/telegramgallery/Components/f;->a:Lcom/tangxiaolv/telegramgallery/Components/BackupImageView;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "vthumb://"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, p1, Lcom/tangxiaolv/telegramgallery/Utils/g$k;->c:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p1, Lcom/tangxiaolv/telegramgallery/Utils/g$k;->e:Ljava/lang/String;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 13
    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v3, Lcom/tangxiaolv/telegramgallery/q$h;->w2:I

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 14
    invoke-virtual {v1, p1, v2, v0}, Lcom/tangxiaolv/telegramgallery/Components/BackupImageView;->i(Ljava/lang/String;Ljava/lang/String;Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_1

    .line 15
    :cond_1
    iget-object v1, v0, Lcom/tangxiaolv/telegramgallery/Components/f;->a:Lcom/tangxiaolv/telegramgallery/Components/BackupImageView;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "thumb://"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, p1, Lcom/tangxiaolv/telegramgallery/Utils/g$k;->c:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p1, Lcom/tangxiaolv/telegramgallery/Utils/g$k;->e:Ljava/lang/String;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 16
    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v3, Lcom/tangxiaolv/telegramgallery/q$h;->w2:I

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 17
    invoke-virtual {v1, p1, v2, v0}, Lcom/tangxiaolv/telegramgallery/Components/BackupImageView;->i(Ljava/lang/String;Ljava/lang/String;Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_1

    .line 18
    :cond_2
    iget-object p1, v0, Lcom/tangxiaolv/telegramgallery/Components/f;->a:Lcom/tangxiaolv/telegramgallery/Components/BackupImageView;

    sget v0, Lcom/tangxiaolv/telegramgallery/q$h;->w2:I

    invoke-virtual {p1, v0}, Lcom/tangxiaolv/telegramgallery/Components/BackupImageView;->setImageResource(I)V

    goto/16 :goto_1

    .line 19
    :cond_3
    iget-object v1, p0, Lcom/tangxiaolv/telegramgallery/n;->n:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/tangxiaolv/telegramgallery/n;->r:Ljava/lang/String;

    if-nez v1, :cond_4

    .line 20
    iget-object v1, p0, Lcom/tangxiaolv/telegramgallery/n;->m:Ljava/util/ArrayList;

    goto :goto_0

    .line 21
    :cond_4
    iget-object v1, p0, Lcom/tangxiaolv/telegramgallery/n;->n:Ljava/util/ArrayList;

    .line 22
    :goto_0
    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/tangxiaolv/telegramgallery/Utils/g$l;

    .line 23
    iget-object v1, p1, Lcom/tangxiaolv/telegramgallery/Utils/g$l;->m:Lcom/tangxiaolv/telegramgallery/TL/b;

    if-eqz v1, :cond_5

    iget-object v1, v1, Lcom/tangxiaolv/telegramgallery/TL/b;->j:Lcom/tangxiaolv/telegramgallery/TL/l;

    if-eqz v1, :cond_5

    .line 24
    iget-object p1, v0, Lcom/tangxiaolv/telegramgallery/Components/f;->a:Lcom/tangxiaolv/telegramgallery/Components/BackupImageView;

    iget-object v1, v1, Lcom/tangxiaolv/telegramgallery/TL/l;->d:Lcom/tangxiaolv/telegramgallery/TL/d;

    .line 25
    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v3, Lcom/tangxiaolv/telegramgallery/q$h;->w2:I

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 26
    invoke-virtual {p1, v1, v2, v0}, Lcom/tangxiaolv/telegramgallery/Components/BackupImageView;->d(Lcom/tangxiaolv/telegramgallery/TL/m;Ljava/lang/String;Landroid/graphics/drawable/Drawable;)V

    goto :goto_1

    .line 27
    :cond_5
    iget-object v1, p1, Lcom/tangxiaolv/telegramgallery/Utils/g$l;->j:Ljava/lang/String;

    if-eqz v1, :cond_6

    .line 28
    iget-object p1, v0, Lcom/tangxiaolv/telegramgallery/Components/f;->a:Lcom/tangxiaolv/telegramgallery/Components/BackupImageView;

    .line 29
    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v3, Lcom/tangxiaolv/telegramgallery/q$h;->w2:I

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 30
    invoke-virtual {p1, v1, v2, v0}, Lcom/tangxiaolv/telegramgallery/Components/BackupImageView;->i(Ljava/lang/String;Ljava/lang/String;Landroid/graphics/drawable/Drawable;)V

    goto :goto_1

    .line 31
    :cond_6
    iget-object v1, p1, Lcom/tangxiaolv/telegramgallery/Utils/g$l;->c:Ljava/lang/String;

    if-eqz v1, :cond_7

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_7

    .line 32
    iget-object v1, v0, Lcom/tangxiaolv/telegramgallery/Components/f;->a:Lcom/tangxiaolv/telegramgallery/Components/BackupImageView;

    iget-object p1, p1, Lcom/tangxiaolv/telegramgallery/Utils/g$l;->c:Ljava/lang/String;

    .line 33
    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v3, Lcom/tangxiaolv/telegramgallery/q$h;->w2:I

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 34
    invoke-virtual {v1, p1, v2, v0}, Lcom/tangxiaolv/telegramgallery/Components/BackupImageView;->i(Ljava/lang/String;Ljava/lang/String;Landroid/graphics/drawable/Drawable;)V

    goto :goto_1

    .line 35
    :cond_7
    iget-object p1, v0, Lcom/tangxiaolv/telegramgallery/Components/f;->a:Lcom/tangxiaolv/telegramgallery/Components/BackupImageView;

    sget v0, Lcom/tangxiaolv/telegramgallery/q$h;->w2:I

    invoke-virtual {p1, v0}, Lcom/tangxiaolv/telegramgallery/Components/BackupImageView;->setImageResource(I)V

    :cond_8
    :goto_1
    return-void
.end method

.method public j(Lcom/tangxiaolv/telegramgallery/TL/d;I)Landroid/graphics/Bitmap;
    .locals 0

    .line 1
    invoke-direct {p0, p2}, Lcom/tangxiaolv/telegramgallery/n;->w0(I)Lcom/tangxiaolv/telegramgallery/Components/f;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 2
    iget-object p1, p1, Lcom/tangxiaolv/telegramgallery/Components/f;->a:Lcom/tangxiaolv/telegramgallery/Components/BackupImageView;

    invoke-virtual {p1}, Lcom/tangxiaolv/telegramgallery/Components/BackupImageView;->getImageReceiver()Lcom/tangxiaolv/telegramgallery/k;

    move-result-object p1

    invoke-virtual {p1}, Lcom/tangxiaolv/telegramgallery/k;->g()Landroid/graphics/Bitmap;

    move-result-object p1

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public k()Z
    .locals 2

    iget-object v0, p0, Lcom/tangxiaolv/telegramgallery/n;->l:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    move-result v0

    iget v1, p0, Lcom/tangxiaolv/telegramgallery/n;->w:I

    if-gt v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public l()Z
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/tangxiaolv/telegramgallery/n;->H:Lcom/tangxiaolv/telegramgallery/n$k;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lcom/tangxiaolv/telegramgallery/n$k;->g(Z)V

    .line 2
    invoke-virtual {p0}, Lcom/tangxiaolv/telegramgallery/Actionbar/f;->t()V

    return v1
.end method

.method public m(I)V
    .locals 2

    .line 1
    iget-boolean v0, p0, Lcom/tangxiaolv/telegramgallery/n;->G:Z

    if-eqz v0, :cond_2

    .line 2
    iget-object v0, p0, Lcom/tangxiaolv/telegramgallery/n;->l:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    if-ltz p1, :cond_1

    .line 3
    iget-object v0, p0, Lcom/tangxiaolv/telegramgallery/n;->x:Lcom/tangxiaolv/telegramgallery/Utils/g$d;

    iget-object v0, v0, Lcom/tangxiaolv/telegramgallery/Utils/g$d;->d:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lt p1, v0, :cond_0

    goto :goto_0

    .line 4
    :cond_0
    iget-object v0, p0, Lcom/tangxiaolv/telegramgallery/n;->x:Lcom/tangxiaolv/telegramgallery/Utils/g$d;

    iget-object v0, v0, Lcom/tangxiaolv/telegramgallery/Utils/g$d;->d:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/tangxiaolv/telegramgallery/Utils/g$k;

    const/4 v0, 0x1

    .line 5
    iput v0, p1, Lcom/tangxiaolv/telegramgallery/Utils/g$k;->a:I

    .line 6
    iget-object v0, p0, Lcom/tangxiaolv/telegramgallery/n;->l:Ljava/util/HashMap;

    iget v1, p1, Lcom/tangxiaolv/telegramgallery/Utils/g$k;->c:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    :cond_1
    :goto_0
    return-void

    .line 7
    :cond_2
    iget-object v0, p0, Lcom/tangxiaolv/telegramgallery/n;->x:Lcom/tangxiaolv/telegramgallery/Utils/g$d;

    if-eqz v0, :cond_5

    .line 8
    iget-object v0, p0, Lcom/tangxiaolv/telegramgallery/n;->l:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_5

    if-ltz p1, :cond_4

    .line 9
    iget-object v0, p0, Lcom/tangxiaolv/telegramgallery/n;->x:Lcom/tangxiaolv/telegramgallery/Utils/g$d;

    iget-object v0, v0, Lcom/tangxiaolv/telegramgallery/Utils/g$d;->d:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lt p1, v0, :cond_3

    goto :goto_1

    .line 10
    :cond_3
    iget-object v0, p0, Lcom/tangxiaolv/telegramgallery/n;->x:Lcom/tangxiaolv/telegramgallery/Utils/g$d;

    iget-object v0, v0, Lcom/tangxiaolv/telegramgallery/Utils/g$d;->d:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/tangxiaolv/telegramgallery/Utils/g$k;

    .line 11
    iget-object v0, p0, Lcom/tangxiaolv/telegramgallery/n;->l:Ljava/util/HashMap;

    iget v1, p1, Lcom/tangxiaolv/telegramgallery/Utils/g$k;->c:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    :cond_4
    :goto_1
    return-void

    .line 12
    :cond_5
    :goto_2
    invoke-direct {p0}, Lcom/tangxiaolv/telegramgallery/n;->x0()V

    return-void
.end method

.method public n(I)I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/tangxiaolv/telegramgallery/n;->x:Lcom/tangxiaolv/telegramgallery/Utils/g$d;

    iget-object v0, v0, Lcom/tangxiaolv/telegramgallery/Utils/g$d;->d:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/tangxiaolv/telegramgallery/Utils/g$k;

    iget p1, p1, Lcom/tangxiaolv/telegramgallery/Utils/g$k;->c:I

    .line 2
    iget-object v0, p0, Lcom/tangxiaolv/telegramgallery/n;->H:Lcom/tangxiaolv/telegramgallery/n$k;

    invoke-interface {v0, p1}, Lcom/tangxiaolv/telegramgallery/n$k;->d(I)I

    move-result p1

    return p1
.end method

.method public o(Lcom/tangxiaolv/telegramgallery/TL/d;I)Lcom/tangxiaolv/telegramgallery/o$c0;
    .locals 2

    .line 1
    invoke-direct {p0, p2}, Lcom/tangxiaolv/telegramgallery/n;->w0(I)Lcom/tangxiaolv/telegramgallery/Components/f;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 p2, 0x2

    new-array p2, p2, [I

    .line 2
    iget-object v0, p1, Lcom/tangxiaolv/telegramgallery/Components/f;->a:Lcom/tangxiaolv/telegramgallery/Components/BackupImageView;

    invoke-virtual {v0, p2}, Landroid/view/View;->getLocationInWindow([I)V

    .line 3
    new-instance v0, Lcom/tangxiaolv/telegramgallery/o$c0;

    invoke-direct {v0}, Lcom/tangxiaolv/telegramgallery/o$c0;-><init>()V

    const/4 v1, 0x0

    aget v1, p2, v1

    .line 4
    iput v1, v0, Lcom/tangxiaolv/telegramgallery/o$c0;->b:I

    const/4 v1, 0x1

    aget p2, p2, v1

    .line 5
    sget v1, Lcom/tangxiaolv/telegramgallery/Utils/a;->b:I

    sub-int/2addr p2, v1

    iput p2, v0, Lcom/tangxiaolv/telegramgallery/o$c0;->c:I

    .line 6
    iget-object p2, p0, Lcom/tangxiaolv/telegramgallery/n;->y:Landroid/widget/GridView;

    iput-object p2, v0, Lcom/tangxiaolv/telegramgallery/o$c0;->d:Landroid/view/View;

    .line 7
    iget-object p2, p1, Lcom/tangxiaolv/telegramgallery/Components/f;->a:Lcom/tangxiaolv/telegramgallery/Components/BackupImageView;

    invoke-virtual {p2}, Lcom/tangxiaolv/telegramgallery/Components/BackupImageView;->getImageReceiver()Lcom/tangxiaolv/telegramgallery/k;

    move-result-object p2

    iput-object p2, v0, Lcom/tangxiaolv/telegramgallery/o$c0;->a:Lcom/tangxiaolv/telegramgallery/k;

    .line 8
    invoke-virtual {p2}, Lcom/tangxiaolv/telegramgallery/k;->g()Landroid/graphics/Bitmap;

    move-result-object p2

    iput-object p2, v0, Lcom/tangxiaolv/telegramgallery/o$c0;->e:Landroid/graphics/Bitmap;

    .line 9
    iget-object p2, p1, Lcom/tangxiaolv/telegramgallery/Components/f;->a:Lcom/tangxiaolv/telegramgallery/Components/BackupImageView;

    invoke-virtual {p2}, Landroid/view/View;->getScaleX()F

    move-result p2

    iput p2, v0, Lcom/tangxiaolv/telegramgallery/o$c0;->l:F

    .line 10
    iget-object p1, p1, Lcom/tangxiaolv/telegramgallery/Components/f;->c:Lcom/tangxiaolv/telegramgallery/Components/b;

    const/16 p2, 0x8

    invoke-virtual {p1, p2}, Lcom/tangxiaolv/telegramgallery/Components/b;->setVisibility(I)V

    return-object v0

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public r(Landroid/content/Context;)Landroid/view/View;
    .locals 11

    .line 1
    iget-object v0, p0, Lcom/tangxiaolv/telegramgallery/Actionbar/f;->e:Lcom/tangxiaolv/telegramgallery/Actionbar/a;

    invoke-static {p1}, Lcom/tangxiaolv/telegramgallery/r;->f(Landroid/content/Context;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setBackgroundColor(I)V

    .line 2
    iget-object v0, p0, Lcom/tangxiaolv/telegramgallery/Actionbar/f;->e:Lcom/tangxiaolv/telegramgallery/Actionbar/a;

    invoke-static {p1}, Lcom/tangxiaolv/telegramgallery/r;->f(Landroid/content/Context;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/tangxiaolv/telegramgallery/Actionbar/a;->setItemsBackgroundColor(I)V

    .line 3
    iget-object v0, p0, Lcom/tangxiaolv/telegramgallery/Actionbar/f;->e:Lcom/tangxiaolv/telegramgallery/Actionbar/a;

    sget v1, Lcom/tangxiaolv/telegramgallery/q$h;->r1:I

    invoke-virtual {v0, v1}, Lcom/tangxiaolv/telegramgallery/Actionbar/a;->setBackButtonImage(I)V

    .line 4
    iget-object v0, p0, Lcom/tangxiaolv/telegramgallery/n;->x:Lcom/tangxiaolv/telegramgallery/Utils/g$d;

    if-eqz v0, :cond_0

    .line 5
    iget-object v1, p0, Lcom/tangxiaolv/telegramgallery/Actionbar/f;->e:Lcom/tangxiaolv/telegramgallery/Actionbar/a;

    iget-object v0, v0, Lcom/tangxiaolv/telegramgallery/Utils/g$d;->b:Ljava/lang/String;

    invoke-virtual {v1, v0}, Lcom/tangxiaolv/telegramgallery/Actionbar/a;->setTitle(Ljava/lang/CharSequence;)V

    .line 6
    :cond_0
    iget-object v0, p0, Lcom/tangxiaolv/telegramgallery/Actionbar/f;->e:Lcom/tangxiaolv/telegramgallery/Actionbar/a;

    new-instance v1, Lcom/tangxiaolv/telegramgallery/n$a;

    invoke-direct {v1, p0}, Lcom/tangxiaolv/telegramgallery/n$a;-><init>(Lcom/tangxiaolv/telegramgallery/n;)V

    invoke-virtual {v0, v1}, Lcom/tangxiaolv/telegramgallery/Actionbar/a;->setActionBarMenuOnItemClick(Lcom/tangxiaolv/telegramgallery/Actionbar/a$e;)V

    .line 7
    iget-object v0, p0, Lcom/tangxiaolv/telegramgallery/Actionbar/f;->e:Lcom/tangxiaolv/telegramgallery/Actionbar/a;

    invoke-virtual {v0}, Lcom/tangxiaolv/telegramgallery/Actionbar/a;->m()Lcom/tangxiaolv/telegramgallery/Actionbar/c;

    move-result-object v0

    .line 8
    new-instance v1, Landroid/widget/TextView;

    invoke-direct {v1, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    const/4 v2, -0x2

    const/4 v3, -0x1

    .line 9
    invoke-static {v2, v3}, Lcom/tangxiaolv/telegramgallery/Utils/f;->d(II)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v4

    const/high16 v5, 0x41900000    # 18.0f

    .line 10
    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setTextSize(F)V

    .line 11
    sget v5, Lcom/tangxiaolv/telegramgallery/q$o;->e:I

    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setText(I)V

    .line 12
    invoke-static {p1}, Lcom/tangxiaolv/telegramgallery/r;->e(Landroid/content/Context;)I

    move-result v5

    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setTextColor(I)V

    const/16 v5, 0x15

    .line 13
    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setGravity(I)V

    const/high16 v5, 0x41000000    # 8.0f

    .line 14
    invoke-static {v5}, Lcom/tangxiaolv/telegramgallery/Utils/a;->g(F)I

    move-result v5

    const/4 v6, 0x0

    invoke-virtual {v4, v6, v6, v5, v6}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 15
    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 16
    new-instance v4, Lcom/tangxiaolv/telegramgallery/n$b;

    invoke-direct {v4, p0}, Lcom/tangxiaolv/telegramgallery/n$b;-><init>(Lcom/tangxiaolv/telegramgallery/n;)V

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 17
    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 18
    iget-object v0, p0, Lcom/tangxiaolv/telegramgallery/n;->x:Lcom/tangxiaolv/telegramgallery/Utils/g$d;

    const/4 v1, 0x1

    if-nez v0, :cond_2

    .line 19
    iget v0, p0, Lcom/tangxiaolv/telegramgallery/n;->k:I

    if-nez v0, :cond_1

    .line 20
    iget-object v0, p0, Lcom/tangxiaolv/telegramgallery/n;->D:Lcom/tangxiaolv/telegramgallery/Actionbar/d;

    invoke-virtual {v0}, Lcom/tangxiaolv/telegramgallery/Actionbar/d;->getSearchField()Landroid/widget/EditText;

    move-result-object v0

    sget v4, Lcom/tangxiaolv/telegramgallery/q$o;->w:I

    invoke-virtual {v0, v4}, Landroid/widget/EditText;->setHint(I)V

    goto :goto_0

    :cond_1
    if-ne v0, v1, :cond_2

    .line 21
    iget-object v0, p0, Lcom/tangxiaolv/telegramgallery/n;->D:Lcom/tangxiaolv/telegramgallery/Actionbar/d;

    invoke-virtual {v0}, Lcom/tangxiaolv/telegramgallery/Actionbar/d;->getSearchField()Landroid/widget/EditText;

    move-result-object v0

    sget v4, Lcom/tangxiaolv/telegramgallery/q$o;->t:I

    invoke-virtual {v0, v4}, Landroid/widget/EditText;->setHint(I)V

    .line 22
    :cond_2
    :goto_0
    new-instance v0, Landroid/widget/FrameLayout;

    invoke-direct {v0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/tangxiaolv/telegramgallery/Actionbar/f;->c:Landroid/view/View;

    .line 23
    move-object v4, v0

    check-cast v4, Landroid/widget/FrameLayout;

    const v4, -0x111112

    .line 24
    invoke-virtual {v0, v4}, Landroid/widget/FrameLayout;->setBackgroundColor(I)V

    .line 25
    new-instance v4, Landroid/widget/GridView;

    invoke-direct {v4, p1}, Landroid/widget/GridView;-><init>(Landroid/content/Context;)V

    iput-object v4, p0, Lcom/tangxiaolv/telegramgallery/n;->y:Landroid/widget/GridView;

    const/high16 v5, 0x40800000    # 4.0f

    .line 26
    invoke-static {v5}, Lcom/tangxiaolv/telegramgallery/Utils/a;->g(F)I

    move-result v7

    invoke-static {v5}, Lcom/tangxiaolv/telegramgallery/Utils/a;->g(F)I

    move-result v8

    invoke-static {v5}, Lcom/tangxiaolv/telegramgallery/Utils/a;->g(F)I

    move-result v9

    .line 27
    invoke-static {v5}, Lcom/tangxiaolv/telegramgallery/Utils/a;->g(F)I

    move-result v10

    .line 28
    invoke-virtual {v4, v7, v8, v9, v10}, Landroid/widget/GridView;->setPadding(IIII)V

    .line 29
    iget-object v4, p0, Lcom/tangxiaolv/telegramgallery/n;->y:Landroid/widget/GridView;

    invoke-virtual {v4, v6}, Landroid/widget/GridView;->setClipToPadding(Z)V

    .line 30
    iget-object v4, p0, Lcom/tangxiaolv/telegramgallery/n;->y:Landroid/widget/GridView;

    invoke-virtual {v4, v1}, Landroid/widget/GridView;->setDrawSelectorOnTop(Z)V

    .line 31
    iget-object v4, p0, Lcom/tangxiaolv/telegramgallery/n;->y:Landroid/widget/GridView;

    const/4 v7, 0x2

    invoke-virtual {v4, v7}, Landroid/widget/GridView;->setStretchMode(I)V

    .line 32
    iget-object v4, p0, Lcom/tangxiaolv/telegramgallery/n;->y:Landroid/widget/GridView;

    invoke-virtual {v4, v6}, Landroid/widget/GridView;->setHorizontalScrollBarEnabled(Z)V

    .line 33
    iget-object v4, p0, Lcom/tangxiaolv/telegramgallery/n;->y:Landroid/widget/GridView;

    invoke-virtual {v4, v6}, Landroid/widget/GridView;->setVerticalScrollBarEnabled(Z)V

    .line 34
    iget-object v4, p0, Lcom/tangxiaolv/telegramgallery/n;->y:Landroid/widget/GridView;

    invoke-virtual {v4, v3}, Landroid/widget/GridView;->setNumColumns(I)V

    .line 35
    iget-object v4, p0, Lcom/tangxiaolv/telegramgallery/n;->y:Landroid/widget/GridView;

    invoke-static {v5}, Lcom/tangxiaolv/telegramgallery/Utils/a;->g(F)I

    move-result v7

    invoke-virtual {v4, v7}, Landroid/widget/GridView;->setVerticalSpacing(I)V

    .line 36
    iget-object v4, p0, Lcom/tangxiaolv/telegramgallery/n;->y:Landroid/widget/GridView;

    invoke-static {v5}, Lcom/tangxiaolv/telegramgallery/Utils/a;->g(F)I

    move-result v5

    invoke-virtual {v4, v5}, Landroid/widget/GridView;->setHorizontalSpacing(I)V

    .line 37
    iget-object v4, p0, Lcom/tangxiaolv/telegramgallery/n;->y:Landroid/widget/GridView;

    sget v5, Lcom/tangxiaolv/telegramgallery/q$h;->Y1:I

    invoke-virtual {v4, v5}, Landroid/widget/GridView;->setSelector(I)V

    .line 38
    iget-object v4, p0, Lcom/tangxiaolv/telegramgallery/n;->y:Landroid/widget/GridView;

    invoke-virtual {v0, v4}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 39
    iget-object v4, p0, Lcom/tangxiaolv/telegramgallery/n;->y:Landroid/widget/GridView;

    .line 40
    invoke-virtual {v4}, Landroid/widget/GridView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    check-cast v4, Landroid/widget/FrameLayout$LayoutParams;

    .line 41
    iput v3, v4, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 42
    iput v3, v4, Landroid/widget/FrameLayout$LayoutParams;->height:I

    .line 43
    iget-boolean v5, p0, Lcom/tangxiaolv/telegramgallery/n;->G:Z

    const/high16 v7, 0x42400000    # 48.0f

    if-eqz v5, :cond_3

    const/4 v5, 0x0

    goto :goto_1

    :cond_3
    invoke-static {v7}, Lcom/tangxiaolv/telegramgallery/Utils/a;->g(F)I

    move-result v5

    :goto_1
    iput v5, v4, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    .line 44
    iget-object v5, p0, Lcom/tangxiaolv/telegramgallery/n;->y:Landroid/widget/GridView;

    invoke-virtual {v5, v4}, Landroid/widget/GridView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 45
    iget-object v4, p0, Lcom/tangxiaolv/telegramgallery/n;->y:Landroid/widget/GridView;

    new-instance v5, Lcom/tangxiaolv/telegramgallery/n$j;

    invoke-direct {v5, p0, p1}, Lcom/tangxiaolv/telegramgallery/n$j;-><init>(Lcom/tangxiaolv/telegramgallery/n;Landroid/content/Context;)V

    iput-object v5, p0, Lcom/tangxiaolv/telegramgallery/n;->z:Lcom/tangxiaolv/telegramgallery/n$j;

    invoke-virtual {v4, v5}, Landroid/widget/GridView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 46
    iget-object v4, p0, Lcom/tangxiaolv/telegramgallery/n;->y:Landroid/widget/GridView;

    const v5, -0xcccccd

    invoke-static {v4, v5}, Lcom/tangxiaolv/telegramgallery/Utils/a;->F(Landroid/widget/AbsListView;I)V

    .line 47
    iget-object v4, p0, Lcom/tangxiaolv/telegramgallery/n;->y:Landroid/widget/GridView;

    new-instance v5, Lcom/tangxiaolv/telegramgallery/n$c;

    invoke-direct {v5, p0}, Lcom/tangxiaolv/telegramgallery/n$c;-><init>(Lcom/tangxiaolv/telegramgallery/n;)V

    invoke-virtual {v4, v5}, Landroid/widget/GridView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 48
    iget-object v4, p0, Lcom/tangxiaolv/telegramgallery/n;->x:Lcom/tangxiaolv/telegramgallery/Utils/g$d;

    if-nez v4, :cond_4

    .line 49
    iget-object v4, p0, Lcom/tangxiaolv/telegramgallery/n;->y:Landroid/widget/GridView;

    new-instance v5, Lcom/tangxiaolv/telegramgallery/n$d;

    invoke-direct {v5, p0}, Lcom/tangxiaolv/telegramgallery/n$d;-><init>(Lcom/tangxiaolv/telegramgallery/n;)V

    invoke-virtual {v4, v5}, Landroid/widget/GridView;->setOnItemLongClickListener(Landroid/widget/AdapterView$OnItemLongClickListener;)V

    .line 50
    :cond_4
    new-instance v4, Landroid/widget/TextView;

    invoke-direct {v4, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v4, p0, Lcom/tangxiaolv/telegramgallery/n;->C:Landroid/widget/TextView;

    const v5, -0x7f7f80

    .line 51
    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setTextColor(I)V

    .line 52
    iget-object v4, p0, Lcom/tangxiaolv/telegramgallery/n;->C:Landroid/widget/TextView;

    const/high16 v5, 0x41a00000    # 20.0f

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setTextSize(F)V

    .line 53
    iget-object v4, p0, Lcom/tangxiaolv/telegramgallery/n;->C:Landroid/widget/TextView;

    const/16 v5, 0x11

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setGravity(I)V

    .line 54
    iget-object v4, p0, Lcom/tangxiaolv/telegramgallery/n;->C:Landroid/widget/TextView;

    const/16 v8, 0x8

    invoke-virtual {v4, v8}, Landroid/widget/TextView;->setVisibility(I)V

    .line 55
    iget-object v4, p0, Lcom/tangxiaolv/telegramgallery/n;->x:Lcom/tangxiaolv/telegramgallery/Utils/g$d;

    if-eqz v4, :cond_5

    .line 56
    iget-object v4, p0, Lcom/tangxiaolv/telegramgallery/n;->C:Landroid/widget/TextView;

    sget v9, Lcom/tangxiaolv/telegramgallery/q$o;->j:I

    invoke-virtual {v4, v9}, Landroid/widget/TextView;->setText(I)V

    goto :goto_2

    .line 57
    :cond_5
    iget v4, p0, Lcom/tangxiaolv/telegramgallery/n;->k:I

    if-nez v4, :cond_6

    .line 58
    iget-object v4, p0, Lcom/tangxiaolv/telegramgallery/n;->C:Landroid/widget/TextView;

    sget v9, Lcom/tangxiaolv/telegramgallery/q$o;->l:I

    invoke-virtual {v4, v9}, Landroid/widget/TextView;->setText(I)V

    goto :goto_2

    :cond_6
    if-ne v4, v1, :cond_7

    .line 59
    iget-object v4, p0, Lcom/tangxiaolv/telegramgallery/n;->C:Landroid/widget/TextView;

    sget v9, Lcom/tangxiaolv/telegramgallery/q$o;->k:I

    .line 60
    invoke-virtual {v4, v9}, Landroid/widget/TextView;->setText(I)V

    .line 61
    :cond_7
    :goto_2
    iget-object v4, p0, Lcom/tangxiaolv/telegramgallery/n;->C:Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 62
    iget-object v4, p0, Lcom/tangxiaolv/telegramgallery/n;->C:Landroid/widget/TextView;

    invoke-virtual {v4}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    check-cast v4, Landroid/widget/FrameLayout$LayoutParams;

    .line 63
    iput v3, v4, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 64
    iput v3, v4, Landroid/widget/FrameLayout$LayoutParams;->height:I

    .line 65
    iget-boolean v9, p0, Lcom/tangxiaolv/telegramgallery/n;->G:Z

    if-eqz v9, :cond_8

    const/4 v9, 0x0

    goto :goto_3

    :cond_8
    invoke-static {v7}, Lcom/tangxiaolv/telegramgallery/Utils/a;->g(F)I

    move-result v9

    :goto_3
    iput v9, v4, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    .line 66
    iget-object v9, p0, Lcom/tangxiaolv/telegramgallery/n;->C:Landroid/widget/TextView;

    invoke-virtual {v9, v4}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 67
    iget-object v4, p0, Lcom/tangxiaolv/telegramgallery/n;->C:Landroid/widget/TextView;

    new-instance v9, Lcom/tangxiaolv/telegramgallery/n$e;

    invoke-direct {v9, p0}, Lcom/tangxiaolv/telegramgallery/n$e;-><init>(Lcom/tangxiaolv/telegramgallery/n;)V

    invoke-virtual {v4, v9}, Landroid/widget/TextView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 68
    iget-object v4, p0, Lcom/tangxiaolv/telegramgallery/n;->x:Lcom/tangxiaolv/telegramgallery/Utils/g$d;

    if-nez v4, :cond_a

    .line 69
    iget-object v4, p0, Lcom/tangxiaolv/telegramgallery/n;->y:Landroid/widget/GridView;

    new-instance v9, Lcom/tangxiaolv/telegramgallery/n$f;

    invoke-direct {v9, p0}, Lcom/tangxiaolv/telegramgallery/n$f;-><init>(Lcom/tangxiaolv/telegramgallery/n;)V

    invoke-virtual {v4, v9}, Landroid/widget/GridView;->setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V

    .line 70
    new-instance v4, Landroid/widget/FrameLayout;

    invoke-direct {v4, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object v4, p0, Lcom/tangxiaolv/telegramgallery/n;->B:Landroid/widget/FrameLayout;

    .line 71
    invoke-virtual {v4, v8}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 72
    iget-object v4, p0, Lcom/tangxiaolv/telegramgallery/n;->B:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v4}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 73
    iget-object v4, p0, Lcom/tangxiaolv/telegramgallery/n;->B:Landroid/widget/FrameLayout;

    invoke-virtual {v4}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    check-cast v4, Landroid/widget/FrameLayout$LayoutParams;

    .line 74
    iput v3, v4, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 75
    iput v3, v4, Landroid/widget/FrameLayout$LayoutParams;->height:I

    .line 76
    iget-boolean v9, p0, Lcom/tangxiaolv/telegramgallery/n;->G:Z

    if-eqz v9, :cond_9

    goto :goto_4

    :cond_9
    invoke-static {v7}, Lcom/tangxiaolv/telegramgallery/Utils/a;->g(F)I

    move-result v6

    :goto_4
    iput v6, v4, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    .line 77
    iget-object v6, p0, Lcom/tangxiaolv/telegramgallery/n;->B:Landroid/widget/FrameLayout;

    invoke-virtual {v6, v4}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 78
    new-instance v4, Landroid/widget/ProgressBar;

    invoke-direct {v4, p1}, Landroid/widget/ProgressBar;-><init>(Landroid/content/Context;)V

    .line 79
    iget-object v6, p0, Lcom/tangxiaolv/telegramgallery/n;->B:Landroid/widget/FrameLayout;

    invoke-virtual {v6, v4}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 80
    invoke-virtual {v4}, Landroid/widget/ProgressBar;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v6

    check-cast v6, Landroid/widget/FrameLayout$LayoutParams;

    .line 81
    iput v2, v6, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 82
    iput v2, v6, Landroid/widget/FrameLayout$LayoutParams;->height:I

    .line 83
    iput v5, v6, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 84
    invoke-virtual {v4, v6}, Landroid/widget/ProgressBar;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 85
    invoke-direct {p0}, Lcom/tangxiaolv/telegramgallery/n;->A0()V

    .line 86
    :cond_a
    new-instance v2, Lcom/tangxiaolv/telegramgallery/Components/h;

    invoke-direct {v2, p1}, Lcom/tangxiaolv/telegramgallery/Components/h;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/tangxiaolv/telegramgallery/n;->A:Lcom/tangxiaolv/telegramgallery/Components/h;

    .line 87
    invoke-virtual {v0, v2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 88
    iget-object p1, p0, Lcom/tangxiaolv/telegramgallery/n;->A:Lcom/tangxiaolv/telegramgallery/Components/h;

    invoke-virtual {p1}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    check-cast p1, Landroid/widget/FrameLayout$LayoutParams;

    .line 89
    iput v3, p1, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 90
    invoke-static {v7}, Lcom/tangxiaolv/telegramgallery/Utils/a;->g(F)I

    move-result v0

    iput v0, p1, Landroid/widget/FrameLayout$LayoutParams;->height:I

    const/16 v0, 0x50

    .line 91
    iput v0, p1, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 92
    iget-object v0, p0, Lcom/tangxiaolv/telegramgallery/n;->A:Lcom/tangxiaolv/telegramgallery/Components/h;

    invoke-virtual {v0, p1}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 93
    iget-object p1, p0, Lcom/tangxiaolv/telegramgallery/n;->A:Lcom/tangxiaolv/telegramgallery/Components/h;

    iget-object p1, p1, Lcom/tangxiaolv/telegramgallery/Components/h;->b:Landroid/widget/TextView;

    new-instance v0, Lcom/tangxiaolv/telegramgallery/n$g;

    invoke-direct {v0, p0}, Lcom/tangxiaolv/telegramgallery/n$g;-><init>(Lcom/tangxiaolv/telegramgallery/n;)V

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 94
    iget-object p1, p0, Lcom/tangxiaolv/telegramgallery/n;->A:Lcom/tangxiaolv/telegramgallery/Components/h;

    iget-object p1, p1, Lcom/tangxiaolv/telegramgallery/Components/h;->a:Landroid/widget/LinearLayout;

    new-instance v0, Lcom/tangxiaolv/telegramgallery/n$h;

    invoke-direct {v0, p0}, Lcom/tangxiaolv/telegramgallery/n$h;-><init>(Lcom/tangxiaolv/telegramgallery/n;)V

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 95
    iget-boolean p1, p0, Lcom/tangxiaolv/telegramgallery/n;->G:Z

    if-eqz p1, :cond_b

    .line 96
    iget-object p1, p0, Lcom/tangxiaolv/telegramgallery/n;->A:Lcom/tangxiaolv/telegramgallery/Components/h;

    invoke-virtual {p1, v8}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 97
    :cond_b
    iget-object p1, p0, Lcom/tangxiaolv/telegramgallery/n;->y:Landroid/widget/GridView;

    iget-object v0, p0, Lcom/tangxiaolv/telegramgallery/n;->C:Landroid/widget/TextView;

    invoke-virtual {p1, v0}, Landroid/widget/GridView;->setEmptyView(Landroid/view/View;)V

    .line 98
    iget-object p1, p0, Lcom/tangxiaolv/telegramgallery/n;->A:Lcom/tangxiaolv/telegramgallery/Components/h;

    iget-object v0, p0, Lcom/tangxiaolv/telegramgallery/n;->l:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    move-result v0

    invoke-virtual {p1, v0, v1}, Lcom/tangxiaolv/telegramgallery/Components/h;->a(IZ)V

    .line 99
    iget-object p1, p0, Lcom/tangxiaolv/telegramgallery/Actionbar/f;->c:Landroid/view/View;

    return-object p1
.end method

.method public y0(Lcom/tangxiaolv/telegramgallery/n$k;)V
    .locals 0

    iput-object p1, p0, Lcom/tangxiaolv/telegramgallery/n;->H:Lcom/tangxiaolv/telegramgallery/n$k;

    return-void
.end method

.method public z0(Lcom/tangxiaolv/telegramgallery/Utils/g$k;)V
    .locals 5

    .line 1
    iget v0, p1, Lcom/tangxiaolv/telegramgallery/Utils/g$k;->c:I

    .line 2
    iget-object v1, p0, Lcom/tangxiaolv/telegramgallery/n;->x:Lcom/tangxiaolv/telegramgallery/Utils/g$d;

    if-eqz v1, :cond_4

    .line 3
    iget-object v1, v1, Lcom/tangxiaolv/telegramgallery/Utils/g$d;->d:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    const/4 v3, -0x1

    if-ge v2, v1, :cond_1

    .line 4
    iget-object v4, p0, Lcom/tangxiaolv/telegramgallery/n;->x:Lcom/tangxiaolv/telegramgallery/Utils/g$d;

    iget-object v4, v4, Lcom/tangxiaolv/telegramgallery/Utils/g$d;->d:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/tangxiaolv/telegramgallery/Utils/g$k;

    iget v4, v4, Lcom/tangxiaolv/telegramgallery/Utils/g$k;->c:I

    if-ne v0, v4, :cond_0

    goto :goto_1

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    const/4 v2, -0x1

    :goto_1
    if-eq v2, v3, :cond_2

    .line 5
    invoke-virtual {p0, v2}, Lcom/tangxiaolv/telegramgallery/n;->f(I)V

    goto :goto_3

    .line 6
    :cond_2
    iget-object v1, p0, Lcom/tangxiaolv/telegramgallery/n;->l:Ljava/util/HashMap;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/tangxiaolv/telegramgallery/Utils/g$k;

    if-eqz v1, :cond_3

    .line 7
    iput v3, v1, Lcom/tangxiaolv/telegramgallery/Utils/g$k;->a:I

    .line 8
    iget-object p1, p0, Lcom/tangxiaolv/telegramgallery/n;->l:Ljava/util/HashMap;

    iget v1, v1, Lcom/tangxiaolv/telegramgallery/Utils/g$k;->c:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 9
    iget-object p1, p0, Lcom/tangxiaolv/telegramgallery/n;->H:Lcom/tangxiaolv/telegramgallery/n$k;

    invoke-interface {p1, v0}, Lcom/tangxiaolv/telegramgallery/n$k;->c(I)V

    goto :goto_2

    .line 10
    :cond_3
    iget-object v1, p0, Lcom/tangxiaolv/telegramgallery/n;->l:Ljava/util/HashMap;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 11
    iget-object v1, p0, Lcom/tangxiaolv/telegramgallery/n;->H:Lcom/tangxiaolv/telegramgallery/n$k;

    invoke-interface {v1}, Lcom/tangxiaolv/telegramgallery/n$k;->e()I

    move-result v1

    .line 12
    iput v1, p1, Lcom/tangxiaolv/telegramgallery/Utils/g$k;->a:I

    .line 13
    iget-object p1, p0, Lcom/tangxiaolv/telegramgallery/n;->H:Lcom/tangxiaolv/telegramgallery/n$k;

    invoke-interface {p1, v0, v1}, Lcom/tangxiaolv/telegramgallery/n$k;->h(II)V

    .line 14
    :goto_2
    iget-object p1, p0, Lcom/tangxiaolv/telegramgallery/n;->A:Lcom/tangxiaolv/telegramgallery/Components/h;

    iget-object v0, p0, Lcom/tangxiaolv/telegramgallery/n;->l:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    move-result v0

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Lcom/tangxiaolv/telegramgallery/Components/h;->a(IZ)V

    :cond_4
    :goto_3
    return-void
.end method
