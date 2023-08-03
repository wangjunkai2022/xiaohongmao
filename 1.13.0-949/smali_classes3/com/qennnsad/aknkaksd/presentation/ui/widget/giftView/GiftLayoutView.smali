.class public Lcom/qennnsad/aknkaksd/presentation/ui/widget/giftView/GiftLayoutView;
.super Landroid/widget/RelativeLayout;
.source "GiftLayoutView.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# static fields
.field private static final C:I = 0x2

.field private static final D:I = 0x4

.field private static final E:I = 0x7f08045b

.field private static final F:I = 0x7f08045a

.field private static final G:I = 0x5

.field private static final H:I


# instance fields
.field private A:F

.field private B:I

.field private a:Landroid/content/Context;

.field private b:Landroidx/viewpager/widget/ViewPager;

.field private c:Landroid/widget/LinearLayout;

.field private d:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private e:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/qennnsad/aknkaksd/presentation/ui/widget/giftView/b;",
            ">;"
        }
    .end annotation
.end field

.field private f:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/qennnsad/aknkaksd/data/bean/gift/Gift;",
            ">;"
        }
    .end annotation
.end field

.field private g:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/util/List<",
            "Lcom/qennnsad/aknkaksd/data/bean/gift/Gift;",
            ">;>;"
        }
    .end annotation
.end field

.field private h:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/widget/ImageView;",
            ">;"
        }
    .end annotation
.end field

.field private i:Lcom/qennnsad/aknkaksd/presentation/ui/widget/giftView/a;

.field private j:I

.field private k:I

.field private l:I

.field private m:I

.field private n:I

.field private o:I

.field private p:I

.field private q:I

.field private r:I

.field private s:Landroid/widget/RelativeLayout$LayoutParams;

.field private t:Landroid/widget/RelativeLayout$LayoutParams;

.field private u:I

.field private v:I

.field w:Lcom/qennnsad/aknkaksd/data/bean/gift/Gift;

.field private x:Z

.field private y:I

.field private z:F


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .line 1
    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x2

    .line 2
    iput v0, p0, Lcom/qennnsad/aknkaksd/presentation/ui/widget/giftView/GiftLayoutView;->j:I

    const/4 v0, 0x4

    iput v0, p0, Lcom/qennnsad/aknkaksd/presentation/ui/widget/giftView/GiftLayoutView;->k:I

    const/4 v0, 0x5

    .line 3
    iput v0, p0, Lcom/qennnsad/aknkaksd/presentation/ui/widget/giftView/GiftLayoutView;->l:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/qennnsad/aknkaksd/presentation/ui/widget/giftView/GiftLayoutView;->m:I

    const v1, 0x7f08045a

    .line 4
    iput v1, p0, Lcom/qennnsad/aknkaksd/presentation/ui/widget/giftView/GiftLayoutView;->n:I

    const v1, 0x7f08045b

    iput v1, p0, Lcom/qennnsad/aknkaksd/presentation/ui/widget/giftView/GiftLayoutView;->o:I

    .line 5
    iput v0, p0, Lcom/qennnsad/aknkaksd/presentation/ui/widget/giftView/GiftLayoutView;->p:I

    const/4 v1, -0x1

    .line 6
    iput v1, p0, Lcom/qennnsad/aknkaksd/presentation/ui/widget/giftView/GiftLayoutView;->u:I

    iput v1, p0, Lcom/qennnsad/aknkaksd/presentation/ui/widget/giftView/GiftLayoutView;->v:I

    const/4 v1, 0x0

    .line 7
    iput v1, p0, Lcom/qennnsad/aknkaksd/presentation/ui/widget/giftView/GiftLayoutView;->z:F

    .line 8
    iput v1, p0, Lcom/qennnsad/aknkaksd/presentation/ui/widget/giftView/GiftLayoutView;->A:F

    .line 9
    iput v0, p0, Lcom/qennnsad/aknkaksd/presentation/ui/widget/giftView/GiftLayoutView;->B:I

    .line 10
    iput-object p1, p0, Lcom/qennnsad/aknkaksd/presentation/ui/widget/giftView/GiftLayoutView;->a:Landroid/content/Context;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2

    .line 11
    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 v0, 0x2

    .line 12
    iput v0, p0, Lcom/qennnsad/aknkaksd/presentation/ui/widget/giftView/GiftLayoutView;->j:I

    const/4 v0, 0x4

    iput v0, p0, Lcom/qennnsad/aknkaksd/presentation/ui/widget/giftView/GiftLayoutView;->k:I

    const/4 v0, 0x5

    .line 13
    iput v0, p0, Lcom/qennnsad/aknkaksd/presentation/ui/widget/giftView/GiftLayoutView;->l:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/qennnsad/aknkaksd/presentation/ui/widget/giftView/GiftLayoutView;->m:I

    const v1, 0x7f08045a

    .line 14
    iput v1, p0, Lcom/qennnsad/aknkaksd/presentation/ui/widget/giftView/GiftLayoutView;->n:I

    const v1, 0x7f08045b

    iput v1, p0, Lcom/qennnsad/aknkaksd/presentation/ui/widget/giftView/GiftLayoutView;->o:I

    .line 15
    iput v0, p0, Lcom/qennnsad/aknkaksd/presentation/ui/widget/giftView/GiftLayoutView;->p:I

    const/4 v1, -0x1

    .line 16
    iput v1, p0, Lcom/qennnsad/aknkaksd/presentation/ui/widget/giftView/GiftLayoutView;->u:I

    iput v1, p0, Lcom/qennnsad/aknkaksd/presentation/ui/widget/giftView/GiftLayoutView;->v:I

    const/4 v1, 0x0

    .line 17
    iput v1, p0, Lcom/qennnsad/aknkaksd/presentation/ui/widget/giftView/GiftLayoutView;->z:F

    .line 18
    iput v1, p0, Lcom/qennnsad/aknkaksd/presentation/ui/widget/giftView/GiftLayoutView;->A:F

    .line 19
    iput v0, p0, Lcom/qennnsad/aknkaksd/presentation/ui/widget/giftView/GiftLayoutView;->B:I

    .line 20
    invoke-direct {p0, p1, p2}, Lcom/qennnsad/aknkaksd/presentation/ui/widget/giftView/GiftLayoutView;->h(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    .line 21
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p3, 0x2

    .line 22
    iput p3, p0, Lcom/qennnsad/aknkaksd/presentation/ui/widget/giftView/GiftLayoutView;->j:I

    const/4 p3, 0x4

    iput p3, p0, Lcom/qennnsad/aknkaksd/presentation/ui/widget/giftView/GiftLayoutView;->k:I

    const/4 p3, 0x5

    .line 23
    iput p3, p0, Lcom/qennnsad/aknkaksd/presentation/ui/widget/giftView/GiftLayoutView;->l:I

    const/4 p3, 0x0

    iput p3, p0, Lcom/qennnsad/aknkaksd/presentation/ui/widget/giftView/GiftLayoutView;->m:I

    const v0, 0x7f08045a

    .line 24
    iput v0, p0, Lcom/qennnsad/aknkaksd/presentation/ui/widget/giftView/GiftLayoutView;->n:I

    const v0, 0x7f08045b

    iput v0, p0, Lcom/qennnsad/aknkaksd/presentation/ui/widget/giftView/GiftLayoutView;->o:I

    .line 25
    iput p3, p0, Lcom/qennnsad/aknkaksd/presentation/ui/widget/giftView/GiftLayoutView;->p:I

    const/4 v0, -0x1

    .line 26
    iput v0, p0, Lcom/qennnsad/aknkaksd/presentation/ui/widget/giftView/GiftLayoutView;->u:I

    iput v0, p0, Lcom/qennnsad/aknkaksd/presentation/ui/widget/giftView/GiftLayoutView;->v:I

    const/4 v0, 0x0

    .line 27
    iput v0, p0, Lcom/qennnsad/aknkaksd/presentation/ui/widget/giftView/GiftLayoutView;->z:F

    .line 28
    iput v0, p0, Lcom/qennnsad/aknkaksd/presentation/ui/widget/giftView/GiftLayoutView;->A:F

    .line 29
    iput p3, p0, Lcom/qennnsad/aknkaksd/presentation/ui/widget/giftView/GiftLayoutView;->B:I

    .line 30
    invoke-direct {p0, p1, p2}, Lcom/qennnsad/aknkaksd/presentation/ui/widget/giftView/GiftLayoutView;->h(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method private a(Ljava/util/List;)Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/qennnsad/aknkaksd/data/bean/gift/Gift;",
            ">;)",
            "Ljava/util/List<",
            "Lcom/qennnsad/aknkaksd/data/bean/gift/Gift;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 1
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_2

    const/4 v2, 0x0

    .line 2
    :goto_1
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    if-ge v2, v3, :cond_1

    .line 3
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/qennnsad/aknkaksd/data/bean/gift/Gift;

    invoke-virtual {v3}, Lcom/qennnsad/aknkaksd/data/bean/gift/Gift;->getPrice()I

    move-result v3

    add-int/lit8 v4, v2, 0x1

    invoke-interface {p1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/qennnsad/aknkaksd/data/bean/gift/Gift;

    invoke-virtual {v5}, Lcom/qennnsad/aknkaksd/data/bean/gift/Gift;->getPrice()I

    move-result v5

    if-le v3, v5, :cond_0

    .line 4
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/qennnsad/aknkaksd/data/bean/gift/Gift;

    .line 5
    invoke-interface {p1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/qennnsad/aknkaksd/data/bean/gift/Gift;

    invoke-interface {p1, v2, v5}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 6
    invoke-interface {p1, v4, v3}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    :cond_0
    move v2, v4

    goto :goto_1

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    return-object p1
.end method

.method static synthetic b(Lcom/qennnsad/aknkaksd/presentation/ui/widget/giftView/GiftLayoutView;)I
    .locals 0

    iget p0, p0, Lcom/qennnsad/aknkaksd/presentation/ui/widget/giftView/GiftLayoutView;->n:I

    return p0
.end method

.method static synthetic c(Lcom/qennnsad/aknkaksd/presentation/ui/widget/giftView/GiftLayoutView;)I
    .locals 0

    iget p0, p0, Lcom/qennnsad/aknkaksd/presentation/ui/widget/giftView/GiftLayoutView;->r:I

    return p0
.end method

.method static synthetic d(Lcom/qennnsad/aknkaksd/presentation/ui/widget/giftView/GiftLayoutView;I)I
    .locals 0

    iput p1, p0, Lcom/qennnsad/aknkaksd/presentation/ui/widget/giftView/GiftLayoutView;->r:I

    return p1
.end method

.method static synthetic e(Lcom/qennnsad/aknkaksd/presentation/ui/widget/giftView/GiftLayoutView;)Ljava/util/ArrayList;
    .locals 0

    iget-object p0, p0, Lcom/qennnsad/aknkaksd/presentation/ui/widget/giftView/GiftLayoutView;->h:Ljava/util/ArrayList;

    return-object p0
.end method

.method static synthetic f(Lcom/qennnsad/aknkaksd/presentation/ui/widget/giftView/GiftLayoutView;)I
    .locals 0

    iget p0, p0, Lcom/qennnsad/aknkaksd/presentation/ui/widget/giftView/GiftLayoutView;->o:I

    return p0
.end method

.method private h(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2

    .line 1
    iput-object p1, p0, Lcom/qennnsad/aknkaksd/presentation/ui/widget/giftView/GiftLayoutView;->a:Landroid/content/Context;

    .line 2
    sget-object v0, Lcom/qennnsad/aknkaksd/g$u;->GL:[I

    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p1

    const/4 p2, 0x5

    const/4 v0, 0x2

    .line 3
    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result p2

    iput p2, p0, Lcom/qennnsad/aknkaksd/presentation/ui/widget/giftView/GiftLayoutView;->j:I

    const/4 p2, 0x0

    const/4 v1, 0x4

    .line 4
    invoke-virtual {p1, p2, v1}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result p2

    iput p2, p0, Lcom/qennnsad/aknkaksd/presentation/ui/widget/giftView/GiftLayoutView;->k:I

    const p2, 0x7f08045b

    .line 5
    invoke-virtual {p1, v1, p2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result p2

    iput p2, p0, Lcom/qennnsad/aknkaksd/presentation/ui/widget/giftView/GiftLayoutView;->o:I

    const/4 p2, 0x3

    const v1, 0x7f08045a

    .line 6
    invoke-virtual {p1, p2, v1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result p2

    iput p2, p0, Lcom/qennnsad/aknkaksd/presentation/ui/widget/giftView/GiftLayoutView;->n:I

    const/high16 p2, 0x40a00000    # 5.0f

    .line 7
    invoke-virtual {p1, v0, p2}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result p2

    float-to-int p2, p2

    iput p2, p0, Lcom/qennnsad/aknkaksd/presentation/ui/widget/giftView/GiftLayoutView;->l:I

    const/4 p2, 0x1

    const/4 v0, 0x0

    .line 8
    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result p2

    float-to-int p2, p2

    iput p2, p0, Lcom/qennnsad/aknkaksd/presentation/ui/widget/giftView/GiftLayoutView;->m:I

    .line 9
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    return-void
.end method

.method private i()V
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/qennnsad/aknkaksd/presentation/ui/widget/giftView/GiftLayoutView;->f:Ljava/util/List;

    if-eqz v0, :cond_2

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_2

    .line 2
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/qennnsad/aknkaksd/presentation/ui/widget/giftView/GiftLayoutView;->g:Ljava/util/List;

    .line 3
    iget v0, p0, Lcom/qennnsad/aknkaksd/presentation/ui/widget/giftView/GiftLayoutView;->j:I

    iget v1, p0, Lcom/qennnsad/aknkaksd/presentation/ui/widget/giftView/GiftLayoutView;->k:I

    mul-int v0, v0, v1

    iput v0, p0, Lcom/qennnsad/aknkaksd/presentation/ui/widget/giftView/GiftLayoutView;->q:I

    .line 4
    iget-object v0, p0, Lcom/qennnsad/aknkaksd/presentation/ui/widget/giftView/GiftLayoutView;->f:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    int-to-double v0, v0

    iget v2, p0, Lcom/qennnsad/aknkaksd/presentation/ui/widget/giftView/GiftLayoutView;->q:I

    int-to-double v2, v2

    const-wide/high16 v4, 0x3ff0000000000000L    # 1.0

    mul-double v2, v2, v4

    div-double/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v0

    double-to-int v0, v0

    iput v0, p0, Lcom/qennnsad/aknkaksd/presentation/ui/widget/giftView/GiftLayoutView;->p:I

    const/4 v0, 0x0

    .line 5
    iget-object v1, p0, Lcom/qennnsad/aknkaksd/presentation/ui/widget/giftView/GiftLayoutView;->f:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    :goto_0
    if-ge v0, v1, :cond_2

    .line 6
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    sub-int v3, v1, v0

    .line 7
    iget v4, p0, Lcom/qennnsad/aknkaksd/presentation/ui/widget/giftView/GiftLayoutView;->q:I

    if-le v3, v4, :cond_1

    .line 8
    iget-object v3, p0, Lcom/qennnsad/aknkaksd/presentation/ui/widget/giftView/GiftLayoutView;->f:Ljava/util/List;

    add-int/2addr v4, v0

    invoke-interface {v3, v0, v4}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 9
    iget v3, p0, Lcom/qennnsad/aknkaksd/presentation/ui/widget/giftView/GiftLayoutView;->q:I

    add-int/2addr v0, v3

    goto :goto_1

    .line 10
    :cond_1
    iget-object v3, p0, Lcom/qennnsad/aknkaksd/presentation/ui/widget/giftView/GiftLayoutView;->f:Ljava/util/List;

    invoke-interface {v3, v0, v1}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    move v0, v1

    .line 11
    :goto_1
    iget-object v3, p0, Lcom/qennnsad/aknkaksd/presentation/ui/widget/giftView/GiftLayoutView;->g:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    :goto_2
    return-void
.end method

.method private j()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/qennnsad/aknkaksd/presentation/ui/widget/giftView/GiftLayoutView;->f:Ljava/util/List;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_1

    .line 2
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/qennnsad/aknkaksd/presentation/ui/widget/giftView/GiftLayoutView;->h:Ljava/util/ArrayList;

    const/4 v0, 0x0

    .line 3
    :goto_0
    iget v1, p0, Lcom/qennnsad/aknkaksd/presentation/ui/widget/giftView/GiftLayoutView;->p:I

    if-ge v0, v1, :cond_1

    .line 4
    new-instance v1, Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/qennnsad/aknkaksd/presentation/ui/widget/giftView/GiftLayoutView;->a:Landroid/content/Context;

    invoke-direct {v1, v2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 5
    iget v2, p0, Lcom/qennnsad/aknkaksd/presentation/ui/widget/giftView/GiftLayoutView;->n:I

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 6
    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    new-instance v3, Landroid/view/ViewGroup$LayoutParams;

    const/4 v4, -0x2

    invoke-direct {v3, v4, v4}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-direct {v2, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    .line 7
    iget v3, p0, Lcom/qennnsad/aknkaksd/presentation/ui/widget/giftView/GiftLayoutView;->l:I

    invoke-virtual {v2, v3, v3, v3, v3}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 8
    iget-object v3, p0, Lcom/qennnsad/aknkaksd/presentation/ui/widget/giftView/GiftLayoutView;->h:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 9
    iget-object v3, p0, Lcom/qennnsad/aknkaksd/presentation/ui/widget/giftView/GiftLayoutView;->c:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    return-void
.end method

.method private k()V
    .locals 4
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "ResourceType"
        }
    .end annotation

    .line 1
    new-instance v0, Landroidx/viewpager/widget/ViewPager;

    iget-object v1, p0, Lcom/qennnsad/aknkaksd/presentation/ui/widget/giftView/GiftLayoutView;->a:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroidx/viewpager/widget/ViewPager;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/qennnsad/aknkaksd/presentation/ui/widget/giftView/GiftLayoutView;->b:Landroidx/viewpager/widget/ViewPager;

    .line 2
    new-instance v0, Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/qennnsad/aknkaksd/presentation/ui/widget/giftView/GiftLayoutView;->a:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/qennnsad/aknkaksd/presentation/ui/widget/giftView/GiftLayoutView;->c:Landroid/widget/LinearLayout;

    .line 3
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v1, -0x1

    const/4 v2, -0x2

    invoke-direct {v0, v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    iput-object v0, p0, Lcom/qennnsad/aknkaksd/presentation/ui/widget/giftView/GiftLayoutView;->s:Landroid/widget/RelativeLayout$LayoutParams;

    .line 4
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v0, v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    iput-object v0, p0, Lcom/qennnsad/aknkaksd/presentation/ui/widget/giftView/GiftLayoutView;->t:Landroid/widget/RelativeLayout$LayoutParams;

    .line 5
    iget-object v0, p0, Lcom/qennnsad/aknkaksd/presentation/ui/widget/giftView/GiftLayoutView;->s:Landroid/widget/RelativeLayout$LayoutParams;

    iget-object v2, p0, Lcom/qennnsad/aknkaksd/presentation/ui/widget/giftView/GiftLayoutView;->c:Landroid/widget/LinearLayout;

    invoke-virtual {v2}, Landroid/widget/LinearLayout;->getId()I

    move-result v2

    const/4 v3, 0x2

    invoke-virtual {v0, v3, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 6
    iget-object v0, p0, Lcom/qennnsad/aknkaksd/presentation/ui/widget/giftView/GiftLayoutView;->t:Landroid/widget/RelativeLayout$LayoutParams;

    const/16 v2, 0xc

    invoke-virtual {v0, v2, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 7
    iget-object v0, p0, Lcom/qennnsad/aknkaksd/presentation/ui/widget/giftView/GiftLayoutView;->c:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/qennnsad/aknkaksd/presentation/ui/widget/giftView/GiftLayoutView;->t:Landroid/widget/RelativeLayout$LayoutParams;

    invoke-virtual {p0, v0, v1}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 8
    iget-object v0, p0, Lcom/qennnsad/aknkaksd/presentation/ui/widget/giftView/GiftLayoutView;->b:Landroidx/viewpager/widget/ViewPager;

    iget-object v1, p0, Lcom/qennnsad/aknkaksd/presentation/ui/widget/giftView/GiftLayoutView;->s:Landroid/widget/RelativeLayout$LayoutParams;

    invoke-virtual {p0, v0, v1}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 9
    iget-object v0, p0, Lcom/qennnsad/aknkaksd/presentation/ui/widget/giftView/GiftLayoutView;->c:Landroid/widget/LinearLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 10
    iget-object v0, p0, Lcom/qennnsad/aknkaksd/presentation/ui/widget/giftView/GiftLayoutView;->c:Landroid/widget/LinearLayout;

    const/16 v1, 0x11

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 11
    invoke-direct {p0}, Lcom/qennnsad/aknkaksd/presentation/ui/widget/giftView/GiftLayoutView;->i()V

    .line 12
    invoke-direct {p0}, Lcom/qennnsad/aknkaksd/presentation/ui/widget/giftView/GiftLayoutView;->l()V

    .line 13
    invoke-direct {p0}, Lcom/qennnsad/aknkaksd/presentation/ui/widget/giftView/GiftLayoutView;->j()V

    .line 14
    invoke-direct {p0}, Lcom/qennnsad/aknkaksd/presentation/ui/widget/giftView/GiftLayoutView;->m()V

    return-void
.end method

.method private l()V
    .locals 11

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/qennnsad/aknkaksd/presentation/ui/widget/giftView/GiftLayoutView;->d:Ljava/util/ArrayList;

    .line 2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/qennnsad/aknkaksd/presentation/ui/widget/giftView/GiftLayoutView;->e:Ljava/util/ArrayList;

    .line 3
    iget-object v0, p0, Lcom/qennnsad/aknkaksd/presentation/ui/widget/giftView/GiftLayoutView;->g:Ljava/util/List;

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 4
    :goto_0
    iget-object v2, p0, Lcom/qennnsad/aknkaksd/presentation/ui/widget/giftView/GiftLayoutView;->g:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 5
    new-instance v2, Landroid/widget/GridView;

    iget-object v3, p0, Lcom/qennnsad/aknkaksd/presentation/ui/widget/giftView/GiftLayoutView;->a:Landroid/content/Context;

    invoke-direct {v2, v3}, Landroid/widget/GridView;-><init>(Landroid/content/Context;)V

    .line 6
    new-instance v3, Lcom/qennnsad/aknkaksd/presentation/ui/widget/giftView/b;

    iget-object v5, p0, Lcom/qennnsad/aknkaksd/presentation/ui/widget/giftView/GiftLayoutView;->a:Landroid/content/Context;

    iget-object v4, p0, Lcom/qennnsad/aknkaksd/presentation/ui/widget/giftView/GiftLayoutView;->g:Ljava/util/List;

    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    move-object v6, v4

    check-cast v6, Ljava/util/List;

    iget v7, p0, Lcom/qennnsad/aknkaksd/presentation/ui/widget/giftView/GiftLayoutView;->m:I

    iget v4, p0, Lcom/qennnsad/aknkaksd/presentation/ui/widget/giftView/GiftLayoutView;->y:I

    const/4 v10, 0x1

    if-ne v4, v10, :cond_0

    const/4 v8, 0x1

    goto :goto_1

    :cond_0
    const/4 v8, 0x0

    :goto_1
    iget-boolean v9, p0, Lcom/qennnsad/aknkaksd/presentation/ui/widget/giftView/GiftLayoutView;->x:Z

    move-object v4, v3

    invoke-direct/range {v4 .. v9}, Lcom/qennnsad/aknkaksd/presentation/ui/widget/giftView/b;-><init>(Landroid/content/Context;Ljava/util/List;IZZ)V

    .line 7
    invoke-virtual {v2, v3}, Landroid/widget/GridView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 8
    iget-object v4, p0, Lcom/qennnsad/aknkaksd/presentation/ui/widget/giftView/GiftLayoutView;->e:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 9
    invoke-virtual {v2, p0}, Landroid/widget/GridView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 10
    iget v3, p0, Lcom/qennnsad/aknkaksd/presentation/ui/widget/giftView/GiftLayoutView;->k:I

    invoke-virtual {v2, v3}, Landroid/widget/GridView;->setNumColumns(I)V

    .line 11
    invoke-virtual {v2, v0}, Landroid/widget/GridView;->setBackgroundColor(I)V

    .line 12
    invoke-virtual {v2, v10}, Landroid/widget/GridView;->setHorizontalSpacing(I)V

    .line 13
    invoke-virtual {v2, v10}, Landroid/widget/GridView;->setVerticalSpacing(I)V

    const/4 v3, 0x2

    .line 14
    invoke-virtual {v2, v3}, Landroid/widget/GridView;->setStretchMode(I)V

    .line 15
    invoke-virtual {v2, v0}, Landroid/widget/GridView;->setCacheColorHint(I)V

    .line 16
    new-instance v3, Landroid/graphics/drawable/ColorDrawable;

    invoke-direct {v3, v0}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v2, v3}, Landroid/widget/GridView;->setSelector(Landroid/graphics/drawable/Drawable;)V

    .line 17
    new-instance v3, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v4, -0x1

    const/4 v5, -0x2

    invoke-direct {v3, v4, v5}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v2, v3}, Landroid/widget/GridView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const/16 v3, 0x11

    .line 18
    invoke-virtual {v2, v3}, Landroid/widget/GridView;->setGravity(I)V

    .line 19
    iget-object v3, p0, Lcom/qennnsad/aknkaksd/presentation/ui/widget/giftView/GiftLayoutView;->d:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method private m()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/qennnsad/aknkaksd/presentation/ui/widget/giftView/GiftLayoutView;->f:Ljava/util/List;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/qennnsad/aknkaksd/presentation/ui/widget/giftView/GiftLayoutView;->b:Landroidx/viewpager/widget/ViewPager;

    new-instance v1, Lcom/qennnsad/aknkaksd/presentation/ui/widget/giftView/c;

    iget-object v2, p0, Lcom/qennnsad/aknkaksd/presentation/ui/widget/giftView/GiftLayoutView;->d:Ljava/util/ArrayList;

    invoke-direct {v1, v2}, Lcom/qennnsad/aknkaksd/presentation/ui/widget/giftView/c;-><init>(Ljava/util/List;)V

    invoke-virtual {v0, v1}, Landroidx/viewpager/widget/ViewPager;->setAdapter(Landroidx/viewpager/widget/PagerAdapter;)V

    const/4 v0, 0x0

    .line 3
    iput v0, p0, Lcom/qennnsad/aknkaksd/presentation/ui/widget/giftView/GiftLayoutView;->r:I

    .line 4
    iget-object v1, p0, Lcom/qennnsad/aknkaksd/presentation/ui/widget/giftView/GiftLayoutView;->b:Landroidx/viewpager/widget/ViewPager;

    invoke-virtual {v1, v0}, Landroidx/viewpager/widget/ViewPager;->setCurrentItem(I)V

    .line 5
    iget-object v0, p0, Lcom/qennnsad/aknkaksd/presentation/ui/widget/giftView/GiftLayoutView;->h:Ljava/util/ArrayList;

    iget v1, p0, Lcom/qennnsad/aknkaksd/presentation/ui/widget/giftView/GiftLayoutView;->r:I

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iget v1, p0, Lcom/qennnsad/aknkaksd/presentation/ui/widget/giftView/GiftLayoutView;->o:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 6
    iget-object v0, p0, Lcom/qennnsad/aknkaksd/presentation/ui/widget/giftView/GiftLayoutView;->b:Landroidx/viewpager/widget/ViewPager;

    new-instance v1, Lcom/qennnsad/aknkaksd/presentation/ui/widget/giftView/GiftLayoutView$a;

    invoke-direct {v1, p0}, Lcom/qennnsad/aknkaksd/presentation/ui/widget/giftView/GiftLayoutView$a;-><init>(Lcom/qennnsad/aknkaksd/presentation/ui/widget/giftView/GiftLayoutView;)V

    invoke-virtual {v0, v1}, Landroidx/viewpager/widget/ViewPager;->addOnPageChangeListener(Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;)V

    :cond_1
    :goto_0
    return-void
.end method


# virtual methods
.method public g()Z
    .locals 1

    iget-object v0, p0, Lcom/qennnsad/aknkaksd/presentation/ui/widget/giftView/GiftLayoutView;->f:Ljava/util/List;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public getSelectedGift()Lcom/qennnsad/aknkaksd/data/bean/gift/Gift;
    .locals 2
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1
    iget v0, p0, Lcom/qennnsad/aknkaksd/presentation/ui/widget/giftView/GiftLayoutView;->u:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/qennnsad/aknkaksd/presentation/ui/widget/giftView/GiftLayoutView;->w:Lcom/qennnsad/aknkaksd/data/bean/gift/Gift;

    return-object v0
.end method

.method public getToyStatus()I
    .locals 1

    iget v0, p0, Lcom/qennnsad/aknkaksd/presentation/ui/widget/giftView/GiftLayoutView;->y:I

    return v0
.end method

.method public n(Ljava/util/List;IZ)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/qennnsad/aknkaksd/data/bean/gift/Gift;",
            ">;IZ)V"
        }
    .end annotation

    .line 1
    iput-boolean p3, p0, Lcom/qennnsad/aknkaksd/presentation/ui/widget/giftView/GiftLayoutView;->x:Z

    if-eqz p1, :cond_1

    .line 2
    invoke-direct {p0, p1}, Lcom/qennnsad/aknkaksd/presentation/ui/widget/giftView/GiftLayoutView;->a(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/qennnsad/aknkaksd/presentation/ui/widget/giftView/GiftLayoutView;->f:Ljava/util/List;

    .line 3
    iput p2, p0, Lcom/qennnsad/aknkaksd/presentation/ui/widget/giftView/GiftLayoutView;->y:I

    if-eqz p3, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x2

    .line 4
    :goto_0
    iput p1, p0, Lcom/qennnsad/aknkaksd/presentation/ui/widget/giftView/GiftLayoutView;->j:I

    const/4 p1, -0x1

    .line 5
    iput p1, p0, Lcom/qennnsad/aknkaksd/presentation/ui/widget/giftView/GiftLayoutView;->u:I

    .line 6
    iput p1, p0, Lcom/qennnsad/aknkaksd/presentation/ui/widget/giftView/GiftLayoutView;->v:I

    .line 7
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->removeAllViews()V

    .line 8
    invoke-direct {p0}, Lcom/qennnsad/aknkaksd/presentation/ui/widget/giftView/GiftLayoutView;->k()V

    :cond_1
    return-void
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 5

    .line 1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_3

    if-eq v0, v1, :cond_4

    const/4 v3, 0x2

    if-eq v0, v3, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    const/4 v3, 0x0

    cmpg-float v0, v0, v3

    if-gez v0, :cond_1

    .line 3
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    invoke-interface {v0, v2}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    .line 4
    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    iget v3, p0, Lcom/qennnsad/aknkaksd/presentation/ui/widget/giftView/GiftLayoutView;->A:F

    sub-float/2addr v0, v3

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    .line 5
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result p1

    iget v3, p0, Lcom/qennnsad/aknkaksd/presentation/ui/widget/giftView/GiftLayoutView;->z:F

    sub-float/2addr p1, v3

    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result p1

    .line 6
    iget v3, p0, Lcom/qennnsad/aknkaksd/presentation/ui/widget/giftView/GiftLayoutView;->B:I

    mul-int/lit8 v4, v3, 0x3

    int-to-float v4, v4

    cmpl-float v4, v0, v4

    if-gez v4, :cond_4

    cmpl-float v0, v0, p1

    if-lez v0, :cond_2

    goto :goto_0

    :cond_2
    mul-int/lit8 v3, v3, 0x3

    int-to-float v0, v3

    cmpl-float p1, p1, v0

    if-ltz p1, :cond_4

    goto :goto_1

    .line 7
    :cond_3
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    invoke-interface {v0, v1}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    .line 8
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iput v0, p0, Lcom/qennnsad/aknkaksd/presentation/ui/widget/giftView/GiftLayoutView;->z:F

    .line 9
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    iput p1, p0, Lcom/qennnsad/aknkaksd/presentation/ui/widget/giftView/GiftLayoutView;->A:F

    :cond_4
    :goto_0
    const/4 v1, 0x0

    .line 10
    :goto_1
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "myswipeview---intercept:"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "viewintercept"

    invoke-static {v0, p1}, Lcom/qennnsad/aknkaksd/util/o0;->g(Ljava/lang/String;Ljava/lang/String;)V

    return v1
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView<",
            "*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .line 1
    iget p1, p0, Lcom/qennnsad/aknkaksd/presentation/ui/widget/giftView/GiftLayoutView;->u:I

    const/4 p2, -0x1

    if-eq p1, p2, :cond_1

    iget p4, p0, Lcom/qennnsad/aknkaksd/presentation/ui/widget/giftView/GiftLayoutView;->r:I

    if-ne p1, p4, :cond_1

    .line 2
    iget p4, p0, Lcom/qennnsad/aknkaksd/presentation/ui/widget/giftView/GiftLayoutView;->v:I

    if-ne p3, p4, :cond_0

    .line 3
    iget-object p3, p0, Lcom/qennnsad/aknkaksd/presentation/ui/widget/giftView/GiftLayoutView;->e:Ljava/util/ArrayList;

    invoke-virtual {p3, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/qennnsad/aknkaksd/presentation/ui/widget/giftView/b;

    iget p3, p0, Lcom/qennnsad/aknkaksd/presentation/ui/widget/giftView/GiftLayoutView;->v:I

    invoke-virtual {p1, p2, p3}, Lcom/qennnsad/aknkaksd/presentation/ui/widget/giftView/b;->d(II)V

    .line 4
    iput p2, p0, Lcom/qennnsad/aknkaksd/presentation/ui/widget/giftView/GiftLayoutView;->u:I

    .line 5
    iput p2, p0, Lcom/qennnsad/aknkaksd/presentation/ui/widget/giftView/GiftLayoutView;->v:I

    const/4 p1, 0x0

    .line 6
    iput-object p1, p0, Lcom/qennnsad/aknkaksd/presentation/ui/widget/giftView/GiftLayoutView;->w:Lcom/qennnsad/aknkaksd/data/bean/gift/Gift;

    goto :goto_0

    .line 7
    :cond_0
    iget-object p4, p0, Lcom/qennnsad/aknkaksd/presentation/ui/widget/giftView/GiftLayoutView;->e:Ljava/util/ArrayList;

    invoke-virtual {p4, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/qennnsad/aknkaksd/presentation/ui/widget/giftView/b;

    iget p4, p0, Lcom/qennnsad/aknkaksd/presentation/ui/widget/giftView/GiftLayoutView;->v:I

    invoke-virtual {p1, p3, p4}, Lcom/qennnsad/aknkaksd/presentation/ui/widget/giftView/b;->d(II)V

    .line 8
    iget p1, p0, Lcom/qennnsad/aknkaksd/presentation/ui/widget/giftView/GiftLayoutView;->r:I

    iput p1, p0, Lcom/qennnsad/aknkaksd/presentation/ui/widget/giftView/GiftLayoutView;->u:I

    .line 9
    iput p3, p0, Lcom/qennnsad/aknkaksd/presentation/ui/widget/giftView/GiftLayoutView;->v:I

    .line 10
    iget-object p3, p0, Lcom/qennnsad/aknkaksd/presentation/ui/widget/giftView/GiftLayoutView;->g:Ljava/util/List;

    invoke-interface {p3, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    iget p3, p0, Lcom/qennnsad/aknkaksd/presentation/ui/widget/giftView/GiftLayoutView;->v:I

    invoke-interface {p1, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/qennnsad/aknkaksd/data/bean/gift/Gift;

    iput-object p1, p0, Lcom/qennnsad/aknkaksd/presentation/ui/widget/giftView/GiftLayoutView;->w:Lcom/qennnsad/aknkaksd/data/bean/gift/Gift;

    goto :goto_0

    :cond_1
    if-eq p1, p2, :cond_2

    .line 11
    iget-object p4, p0, Lcom/qennnsad/aknkaksd/presentation/ui/widget/giftView/GiftLayoutView;->e:Ljava/util/ArrayList;

    invoke-virtual {p4, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/qennnsad/aknkaksd/presentation/ui/widget/giftView/b;

    iget p4, p0, Lcom/qennnsad/aknkaksd/presentation/ui/widget/giftView/GiftLayoutView;->v:I

    invoke-virtual {p1, p2, p4}, Lcom/qennnsad/aknkaksd/presentation/ui/widget/giftView/b;->d(II)V

    .line 12
    :cond_2
    iget-object p1, p0, Lcom/qennnsad/aknkaksd/presentation/ui/widget/giftView/GiftLayoutView;->e:Ljava/util/ArrayList;

    iget p4, p0, Lcom/qennnsad/aknkaksd/presentation/ui/widget/giftView/GiftLayoutView;->r:I

    invoke-virtual {p1, p4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/qennnsad/aknkaksd/presentation/ui/widget/giftView/b;

    invoke-virtual {p1, p3, p2}, Lcom/qennnsad/aknkaksd/presentation/ui/widget/giftView/b;->d(II)V

    .line 13
    iget p1, p0, Lcom/qennnsad/aknkaksd/presentation/ui/widget/giftView/GiftLayoutView;->r:I

    iput p1, p0, Lcom/qennnsad/aknkaksd/presentation/ui/widget/giftView/GiftLayoutView;->u:I

    .line 14
    iput p3, p0, Lcom/qennnsad/aknkaksd/presentation/ui/widget/giftView/GiftLayoutView;->v:I

    .line 15
    iget-object p3, p0, Lcom/qennnsad/aknkaksd/presentation/ui/widget/giftView/GiftLayoutView;->g:Ljava/util/List;

    invoke-interface {p3, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    iget p3, p0, Lcom/qennnsad/aknkaksd/presentation/ui/widget/giftView/GiftLayoutView;->v:I

    invoke-interface {p1, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/qennnsad/aknkaksd/data/bean/gift/Gift;

    iput-object p1, p0, Lcom/qennnsad/aknkaksd/presentation/ui/widget/giftView/GiftLayoutView;->w:Lcom/qennnsad/aknkaksd/data/bean/gift/Gift;

    .line 16
    :goto_0
    iget-object p1, p0, Lcom/qennnsad/aknkaksd/presentation/ui/widget/giftView/GiftLayoutView;->i:Lcom/qennnsad/aknkaksd/presentation/ui/widget/giftView/a;

    if-eqz p1, :cond_4

    .line 17
    iget p3, p0, Lcom/qennnsad/aknkaksd/presentation/ui/widget/giftView/GiftLayoutView;->u:I

    if-eq p3, p2, :cond_3

    const/4 p2, 0x1

    .line 18
    invoke-interface {p1, p2}, Lcom/qennnsad/aknkaksd/presentation/ui/widget/giftView/a;->a(Z)V

    const-string p1, "zh"

    const-string p2, "click item"

    .line 19
    invoke-static {p1, p2}, Lcom/qennnsad/aknkaksd/util/o0;->g(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_3
    const/4 p2, 0x0

    .line 20
    invoke-interface {p1, p2}, Lcom/qennnsad/aknkaksd/presentation/ui/widget/giftView/a;->a(Z)V

    :cond_4
    :goto_1
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 0

    const/4 p1, 0x1

    return p1
.end method

.method public setGiftSelectChangeListener(Lcom/qennnsad/aknkaksd/presentation/ui/widget/giftView/a;)V
    .locals 0

    iput-object p1, p0, Lcom/qennnsad/aknkaksd/presentation/ui/widget/giftView/GiftLayoutView;->i:Lcom/qennnsad/aknkaksd/presentation/ui/widget/giftView/a;

    return-void
.end method
