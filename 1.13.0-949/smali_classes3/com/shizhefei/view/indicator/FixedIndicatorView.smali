.class public Lcom/shizhefei/view/indicator/FixedIndicatorView;
.super Landroid/widget/LinearLayout;
.source "FixedIndicatorView.java"

# interfaces
.implements Lcom/shizhefei/view/indicator/c;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/shizhefei/view/indicator/FixedIndicatorView$d;
    }
.end annotation


# static fields
.field public static final x:I = 0x0

.field public static final y:I = 0x1

.field public static final z:I = 0x2


# instance fields
.field private a:Lcom/shizhefei/view/indicator/c$b;

.field private b:Lcom/shizhefei/view/indicator/c$d;

.field private c:Lcom/shizhefei/view/indicator/c$c;

.field private d:I

.field private e:I

.field private f:I

.field private g:Z

.field private h:I

.field private i:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/view/ViewGroup;",
            ">;"
        }
    .end annotation
.end field

.field private j:Lcom/shizhefei/view/indicator/c$a;

.field private k:Landroid/view/View$OnClickListener;

.field private l:Lcom/shizhefei/view/indicator/slidebar/ScrollBar;

.field private m:Lcom/shizhefei/view/indicator/FixedIndicatorView$d;

.field private n:Landroid/graphics/Bitmap;

.field private o:Landroid/graphics/Matrix;

.field private p:Landroid/graphics/Canvas;

.field private q:[I

.field private r:I

.field private s:I

.field private t:F

.field private u:Lcom/shizhefei/view/indicator/c$e;

.field private v:Landroid/view/View;

.field private w:Landroid/widget/LinearLayout$LayoutParams;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 1
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    const/4 p1, -0x1

    .line 2
    iput p1, p0, Lcom/shizhefei/view/indicator/FixedIndicatorView;->d:I

    const/4 v0, 0x0

    .line 3
    iput v0, p0, Lcom/shizhefei/view/indicator/FixedIndicatorView;->e:I

    .line 4
    iput v0, p0, Lcom/shizhefei/view/indicator/FixedIndicatorView;->f:I

    const/4 v0, 0x1

    .line 5
    iput-boolean v0, p0, Lcom/shizhefei/view/indicator/FixedIndicatorView;->g:Z

    .line 6
    iput p1, p0, Lcom/shizhefei/view/indicator/FixedIndicatorView;->h:I

    .line 7
    new-instance p1, Ljava/util/LinkedList;

    invoke-direct {p1}, Ljava/util/LinkedList;-><init>()V

    iput-object p1, p0, Lcom/shizhefei/view/indicator/FixedIndicatorView;->i:Ljava/util/List;

    .line 8
    new-instance p1, Lcom/shizhefei/view/indicator/FixedIndicatorView$a;

    invoke-direct {p1, p0}, Lcom/shizhefei/view/indicator/FixedIndicatorView$a;-><init>(Lcom/shizhefei/view/indicator/FixedIndicatorView;)V

    iput-object p1, p0, Lcom/shizhefei/view/indicator/FixedIndicatorView;->j:Lcom/shizhefei/view/indicator/c$a;

    .line 9
    new-instance p1, Lcom/shizhefei/view/indicator/FixedIndicatorView$b;

    invoke-direct {p1, p0}, Lcom/shizhefei/view/indicator/FixedIndicatorView$b;-><init>(Lcom/shizhefei/view/indicator/FixedIndicatorView;)V

    iput-object p1, p0, Lcom/shizhefei/view/indicator/FixedIndicatorView;->k:Landroid/view/View$OnClickListener;

    .line 10
    new-instance p1, Landroid/graphics/Matrix;

    invoke-direct {p1}, Landroid/graphics/Matrix;-><init>()V

    iput-object p1, p0, Lcom/shizhefei/view/indicator/FixedIndicatorView;->o:Landroid/graphics/Matrix;

    .line 11
    new-instance p1, Landroid/graphics/Canvas;

    invoke-direct {p1}, Landroid/graphics/Canvas;-><init>()V

    iput-object p1, p0, Lcom/shizhefei/view/indicator/FixedIndicatorView;->p:Landroid/graphics/Canvas;

    const/4 p1, 0x2

    new-array p1, p1, [I

    .line 12
    fill-array-data p1, :array_0

    iput-object p1, p0, Lcom/shizhefei/view/indicator/FixedIndicatorView;->q:[I

    .line 13
    invoke-direct {p0}, Lcom/shizhefei/view/indicator/FixedIndicatorView;->w()V

    return-void

    nop

    :array_0
    .array-data 4
        -0x1
        -0x1
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 27
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p1, -0x1

    .line 28
    iput p1, p0, Lcom/shizhefei/view/indicator/FixedIndicatorView;->d:I

    const/4 p2, 0x0

    .line 29
    iput p2, p0, Lcom/shizhefei/view/indicator/FixedIndicatorView;->e:I

    .line 30
    iput p2, p0, Lcom/shizhefei/view/indicator/FixedIndicatorView;->f:I

    const/4 p2, 0x1

    .line 31
    iput-boolean p2, p0, Lcom/shizhefei/view/indicator/FixedIndicatorView;->g:Z

    .line 32
    iput p1, p0, Lcom/shizhefei/view/indicator/FixedIndicatorView;->h:I

    .line 33
    new-instance p1, Ljava/util/LinkedList;

    invoke-direct {p1}, Ljava/util/LinkedList;-><init>()V

    iput-object p1, p0, Lcom/shizhefei/view/indicator/FixedIndicatorView;->i:Ljava/util/List;

    .line 34
    new-instance p1, Lcom/shizhefei/view/indicator/FixedIndicatorView$a;

    invoke-direct {p1, p0}, Lcom/shizhefei/view/indicator/FixedIndicatorView$a;-><init>(Lcom/shizhefei/view/indicator/FixedIndicatorView;)V

    iput-object p1, p0, Lcom/shizhefei/view/indicator/FixedIndicatorView;->j:Lcom/shizhefei/view/indicator/c$a;

    .line 35
    new-instance p1, Lcom/shizhefei/view/indicator/FixedIndicatorView$b;

    invoke-direct {p1, p0}, Lcom/shizhefei/view/indicator/FixedIndicatorView$b;-><init>(Lcom/shizhefei/view/indicator/FixedIndicatorView;)V

    iput-object p1, p0, Lcom/shizhefei/view/indicator/FixedIndicatorView;->k:Landroid/view/View$OnClickListener;

    .line 36
    new-instance p1, Landroid/graphics/Matrix;

    invoke-direct {p1}, Landroid/graphics/Matrix;-><init>()V

    iput-object p1, p0, Lcom/shizhefei/view/indicator/FixedIndicatorView;->o:Landroid/graphics/Matrix;

    .line 37
    new-instance p1, Landroid/graphics/Canvas;

    invoke-direct {p1}, Landroid/graphics/Canvas;-><init>()V

    iput-object p1, p0, Lcom/shizhefei/view/indicator/FixedIndicatorView;->p:Landroid/graphics/Canvas;

    const/4 p1, 0x2

    new-array p1, p1, [I

    .line 38
    fill-array-data p1, :array_0

    iput-object p1, p0, Lcom/shizhefei/view/indicator/FixedIndicatorView;->q:[I

    .line 39
    invoke-direct {p0}, Lcom/shizhefei/view/indicator/FixedIndicatorView;->w()V

    return-void

    nop

    :array_0
    .array-data 4
        -0x1
        -0x1
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .line 14
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p1, -0x1

    .line 15
    iput p1, p0, Lcom/shizhefei/view/indicator/FixedIndicatorView;->d:I

    const/4 p2, 0x0

    .line 16
    iput p2, p0, Lcom/shizhefei/view/indicator/FixedIndicatorView;->e:I

    .line 17
    iput p2, p0, Lcom/shizhefei/view/indicator/FixedIndicatorView;->f:I

    const/4 p2, 0x1

    .line 18
    iput-boolean p2, p0, Lcom/shizhefei/view/indicator/FixedIndicatorView;->g:Z

    .line 19
    iput p1, p0, Lcom/shizhefei/view/indicator/FixedIndicatorView;->h:I

    .line 20
    new-instance p1, Ljava/util/LinkedList;

    invoke-direct {p1}, Ljava/util/LinkedList;-><init>()V

    iput-object p1, p0, Lcom/shizhefei/view/indicator/FixedIndicatorView;->i:Ljava/util/List;

    .line 21
    new-instance p1, Lcom/shizhefei/view/indicator/FixedIndicatorView$a;

    invoke-direct {p1, p0}, Lcom/shizhefei/view/indicator/FixedIndicatorView$a;-><init>(Lcom/shizhefei/view/indicator/FixedIndicatorView;)V

    iput-object p1, p0, Lcom/shizhefei/view/indicator/FixedIndicatorView;->j:Lcom/shizhefei/view/indicator/c$a;

    .line 22
    new-instance p1, Lcom/shizhefei/view/indicator/FixedIndicatorView$b;

    invoke-direct {p1, p0}, Lcom/shizhefei/view/indicator/FixedIndicatorView$b;-><init>(Lcom/shizhefei/view/indicator/FixedIndicatorView;)V

    iput-object p1, p0, Lcom/shizhefei/view/indicator/FixedIndicatorView;->k:Landroid/view/View$OnClickListener;

    .line 23
    new-instance p1, Landroid/graphics/Matrix;

    invoke-direct {p1}, Landroid/graphics/Matrix;-><init>()V

    iput-object p1, p0, Lcom/shizhefei/view/indicator/FixedIndicatorView;->o:Landroid/graphics/Matrix;

    .line 24
    new-instance p1, Landroid/graphics/Canvas;

    invoke-direct {p1}, Landroid/graphics/Canvas;-><init>()V

    iput-object p1, p0, Lcom/shizhefei/view/indicator/FixedIndicatorView;->p:Landroid/graphics/Canvas;

    const/4 p1, 0x2

    new-array p1, p1, [I

    .line 25
    fill-array-data p1, :array_0

    iput-object p1, p0, Lcom/shizhefei/view/indicator/FixedIndicatorView;->q:[I

    .line 26
    invoke-direct {p0}, Lcom/shizhefei/view/indicator/FixedIndicatorView;->w()V

    return-void

    nop

    :array_0
    .array-data 4
        -0x1
        -0x1
    .end array-data
.end method

.method private D(I)V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/shizhefei/view/indicator/FixedIndicatorView;->a:Lcom/shizhefei/view/indicator/c$b;

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-virtual {v0}, Lcom/shizhefei/view/indicator/c$b;->a()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_3

    .line 3
    invoke-direct {p0, v2}, Lcom/shizhefei/view/indicator/FixedIndicatorView;->v(I)Landroid/view/View;

    move-result-object v3

    if-eqz v3, :cond_2

    if-ne p1, v2, :cond_1

    const/4 v4, 0x1

    goto :goto_1

    :cond_1
    const/4 v4, 0x0

    .line 4
    :goto_1
    invoke-virtual {v3, v4}, Landroid/view/View;->setSelected(Z)V

    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_3
    return-void
.end method

.method static synthetic d(Lcom/shizhefei/view/indicator/FixedIndicatorView;)Lcom/shizhefei/view/indicator/FixedIndicatorView$d;
    .locals 0

    iget-object p0, p0, Lcom/shizhefei/view/indicator/FixedIndicatorView;->m:Lcom/shizhefei/view/indicator/FixedIndicatorView$d;

    return-object p0
.end method

.method static synthetic e(Lcom/shizhefei/view/indicator/FixedIndicatorView;)I
    .locals 0

    invoke-direct {p0}, Lcom/shizhefei/view/indicator/FixedIndicatorView;->getTabCountInLayout()I

    move-result p0

    return p0
.end method

.method static synthetic f(Lcom/shizhefei/view/indicator/FixedIndicatorView;)I
    .locals 0

    iget p0, p0, Lcom/shizhefei/view/indicator/FixedIndicatorView;->h:I

    return p0
.end method

.method static synthetic g(Lcom/shizhefei/view/indicator/FixedIndicatorView;I)I
    .locals 0

    iput p1, p0, Lcom/shizhefei/view/indicator/FixedIndicatorView;->h:I

    return p1
.end method

.method private getTabCountInLayout()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/shizhefei/view/indicator/FixedIndicatorView;->v:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    return v0

    .line 3
    :cond_0
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v0

    return v0
.end method

.method static synthetic h(Lcom/shizhefei/view/indicator/FixedIndicatorView;)V
    .locals 0

    invoke-direct {p0}, Lcom/shizhefei/view/indicator/FixedIndicatorView;->y()V

    return-void
.end method

.method static synthetic i(Lcom/shizhefei/view/indicator/FixedIndicatorView;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/shizhefei/view/indicator/FixedIndicatorView;->g:Z

    return p0
.end method

.method static synthetic j(Lcom/shizhefei/view/indicator/FixedIndicatorView;)Lcom/shizhefei/view/indicator/c$c;
    .locals 0

    iget-object p0, p0, Lcom/shizhefei/view/indicator/FixedIndicatorView;->c:Lcom/shizhefei/view/indicator/c$c;

    return-object p0
.end method

.method static synthetic k(Lcom/shizhefei/view/indicator/FixedIndicatorView;)Lcom/shizhefei/view/indicator/c$d;
    .locals 0

    iget-object p0, p0, Lcom/shizhefei/view/indicator/FixedIndicatorView;->b:Lcom/shizhefei/view/indicator/c$d;

    return-object p0
.end method

.method static synthetic l(Lcom/shizhefei/view/indicator/FixedIndicatorView;)Lcom/shizhefei/view/indicator/c$b;
    .locals 0

    iget-object p0, p0, Lcom/shizhefei/view/indicator/FixedIndicatorView;->a:Lcom/shizhefei/view/indicator/c$b;

    return-object p0
.end method

.method static synthetic m(Lcom/shizhefei/view/indicator/FixedIndicatorView;)Ljava/util/List;
    .locals 0

    iget-object p0, p0, Lcom/shizhefei/view/indicator/FixedIndicatorView;->i:Ljava/util/List;

    return-object p0
.end method

.method static synthetic n(Lcom/shizhefei/view/indicator/FixedIndicatorView;I)Landroid/view/View;
    .locals 0

    invoke-direct {p0, p1}, Lcom/shizhefei/view/indicator/FixedIndicatorView;->u(I)Landroid/view/View;

    move-result-object p0

    return-object p0
.end method

.method static synthetic o(Lcom/shizhefei/view/indicator/FixedIndicatorView;)Lcom/shizhefei/view/indicator/c$e;
    .locals 0

    iget-object p0, p0, Lcom/shizhefei/view/indicator/FixedIndicatorView;->u:Lcom/shizhefei/view/indicator/c$e;

    return-object p0
.end method

.method static synthetic p(Lcom/shizhefei/view/indicator/FixedIndicatorView;)I
    .locals 0

    iget p0, p0, Lcom/shizhefei/view/indicator/FixedIndicatorView;->d:I

    return p0
.end method

.method static synthetic q(Lcom/shizhefei/view/indicator/FixedIndicatorView;)Landroid/view/View$OnClickListener;
    .locals 0

    iget-object p0, p0, Lcom/shizhefei/view/indicator/FixedIndicatorView;->k:Landroid/view/View$OnClickListener;

    return-object p0
.end method

.method static synthetic r(Lcom/shizhefei/view/indicator/FixedIndicatorView;)Landroid/view/View;
    .locals 0

    iget-object p0, p0, Lcom/shizhefei/view/indicator/FixedIndicatorView;->v:Landroid/view/View;

    return-object p0
.end method

.method static synthetic s(Lcom/shizhefei/view/indicator/FixedIndicatorView;)Landroid/widget/LinearLayout$LayoutParams;
    .locals 0

    iget-object p0, p0, Lcom/shizhefei/view/indicator/FixedIndicatorView;->w:Landroid/widget/LinearLayout$LayoutParams;

    return-object p0
.end method

.method private t(Landroid/graphics/Canvas;)V
    .locals 14

    .line 1
    iget-object v0, p0, Lcom/shizhefei/view/indicator/FixedIndicatorView;->a:Lcom/shizhefei/view/indicator/c$b;

    if-eqz v0, :cond_d

    iget-object v1, p0, Lcom/shizhefei/view/indicator/FixedIndicatorView;->l:Lcom/shizhefei/view/indicator/slidebar/ScrollBar;

    if-nez v1, :cond_0

    goto/16 :goto_6

    .line 2
    :cond_0
    invoke-virtual {v0}, Lcom/shizhefei/view/indicator/c$b;->a()I

    move-result v0

    if-nez v0, :cond_1

    .line 3
    iget-object p1, p0, Lcom/shizhefei/view/indicator/FixedIndicatorView;->m:Lcom/shizhefei/view/indicator/FixedIndicatorView$d;

    invoke-virtual {p1}, Lcom/shizhefei/view/indicator/FixedIndicatorView$d;->e()V

    return-void

    .line 4
    :cond_1
    invoke-virtual {p0}, Lcom/shizhefei/view/indicator/FixedIndicatorView;->getCurrentItem()I

    move-result v1

    const/4 v2, 0x1

    if-lt v1, v0, :cond_2

    sub-int/2addr v0, v2

    .line 5
    invoke-virtual {p0, v0}, Lcom/shizhefei/view/indicator/FixedIndicatorView;->setCurrentItem(I)V

    .line 6
    iget-object p1, p0, Lcom/shizhefei/view/indicator/FixedIndicatorView;->m:Lcom/shizhefei/view/indicator/FixedIndicatorView$d;

    invoke-virtual {p1}, Lcom/shizhefei/view/indicator/FixedIndicatorView$d;->e()V

    return-void

    .line 7
    :cond_2
    sget-object v1, Lcom/shizhefei/view/indicator/FixedIndicatorView$c;->a:[I

    iget-object v3, p0, Lcom/shizhefei/view/indicator/FixedIndicatorView;->l:Lcom/shizhefei/view/indicator/slidebar/ScrollBar;

    invoke-interface {v3}, Lcom/shizhefei/view/indicator/slidebar/ScrollBar;->getGravity()Lcom/shizhefei/view/indicator/slidebar/ScrollBar$Gravity;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Enum;->ordinal()I

    move-result v3

    aget v1, v1, v3

    const/4 v3, 0x2

    const/4 v4, 0x0

    if-eq v1, v3, :cond_4

    const/4 v5, 0x3

    if-eq v1, v5, :cond_3

    const/4 v5, 0x4

    if-eq v1, v5, :cond_3

    const/4 v5, 0x5

    if-eq v1, v5, :cond_4

    .line 8
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getHeight()I

    move-result v1

    iget-object v5, p0, Lcom/shizhefei/view/indicator/FixedIndicatorView;->l:Lcom/shizhefei/view/indicator/slidebar/ScrollBar;

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getHeight()I

    move-result v6

    invoke-interface {v5, v6}, Lcom/shizhefei/view/indicator/slidebar/ScrollBar;->a(I)I

    move-result v5

    sub-int/2addr v1, v5

    :goto_0
    int-to-float v1, v1

    goto :goto_1

    .line 9
    :cond_3
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getHeight()I

    move-result v1

    iget-object v5, p0, Lcom/shizhefei/view/indicator/FixedIndicatorView;->l:Lcom/shizhefei/view/indicator/slidebar/ScrollBar;

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getHeight()I

    move-result v6

    invoke-interface {v5, v6}, Lcom/shizhefei/view/indicator/slidebar/ScrollBar;->a(I)I

    move-result v5

    sub-int/2addr v1, v5

    div-int/2addr v1, v3

    goto :goto_0

    :cond_4
    const/4 v1, 0x0

    .line 10
    :goto_1
    iget-object v5, p0, Lcom/shizhefei/view/indicator/FixedIndicatorView;->m:Lcom/shizhefei/view/indicator/FixedIndicatorView$d;

    invoke-virtual {v5}, Lcom/shizhefei/view/indicator/FixedIndicatorView$d;->c()Z

    move-result v5

    const/4 v6, 0x0

    const/4 v7, 0x0

    if-nez v5, :cond_7

    iget-object v5, p0, Lcom/shizhefei/view/indicator/FixedIndicatorView;->m:Lcom/shizhefei/view/indicator/FixedIndicatorView$d;

    invoke-virtual {v5}, Lcom/shizhefei/view/indicator/FixedIndicatorView$d;->a()Z

    move-result v5

    if-eqz v5, :cond_7

    .line 11
    iget-object v5, p0, Lcom/shizhefei/view/indicator/FixedIndicatorView;->m:Lcom/shizhefei/view/indicator/FixedIndicatorView$d;

    invoke-virtual {v5}, Lcom/shizhefei/view/indicator/FixedIndicatorView$d;->b()I

    move-result v5

    int-to-float v5, v5

    move-object v9, v6

    const/4 v8, 0x0

    :goto_2
    if-ge v8, v0, :cond_6

    .line 12
    invoke-direct {p0, v8}, Lcom/shizhefei/view/indicator/FixedIndicatorView;->u(I)Landroid/view/View;

    move-result-object v9

    .line 13
    invoke-virtual {v9}, Landroid/view/View;->getLeft()I

    move-result v10

    int-to-float v10, v10

    cmpg-float v10, v10, v5

    if-gtz v10, :cond_5

    invoke-virtual {v9}, Landroid/view/View;->getRight()I

    move-result v10

    int-to-float v10, v10

    cmpg-float v10, v5, v10

    if-gez v10, :cond_5

    goto :goto_3

    :cond_5
    add-int/lit8 v8, v8, 0x1

    goto :goto_2

    :cond_6
    const/4 v8, 0x0

    .line 14
    :goto_3
    invoke-virtual {v9}, Landroid/view/View;->getWidth()I

    move-result v0

    .line 15
    invoke-virtual {v9}, Landroid/view/View;->getLeft()I

    move-result v10

    int-to-float v10, v10

    sub-float v10, v5, v10

    float-to-int v10, v10

    .line 16
    invoke-virtual {v9}, Landroid/view/View;->getLeft()I

    move-result v9

    int-to-float v9, v9

    sub-float v9, v5, v9

    int-to-float v0, v0

    div-float/2addr v9, v0

    .line 17
    invoke-direct {p0, v8, v9, v10}, Lcom/shizhefei/view/indicator/FixedIndicatorView;->z(IFI)V

    .line 18
    invoke-direct {p0, v8, v9, v2}, Lcom/shizhefei/view/indicator/FixedIndicatorView;->x(IFZ)I

    move-result v0

    goto :goto_4

    .line 19
    :cond_7
    iget v0, p0, Lcom/shizhefei/view/indicator/FixedIndicatorView;->f:I

    if-eqz v0, :cond_8

    .line 20
    iget v0, p0, Lcom/shizhefei/view/indicator/FixedIndicatorView;->r:I

    invoke-direct {p0, v0}, Lcom/shizhefei/view/indicator/FixedIndicatorView;->u(I)Landroid/view/View;

    move-result-object v0

    .line 21
    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v5

    .line 22
    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    move-result v0

    int-to-float v0, v0

    int-to-float v5, v5

    iget v8, p0, Lcom/shizhefei/view/indicator/FixedIndicatorView;->t:F

    mul-float v5, v5, v8

    add-float/2addr v5, v0

    .line 23
    iget v0, p0, Lcom/shizhefei/view/indicator/FixedIndicatorView;->r:I

    iget v9, p0, Lcom/shizhefei/view/indicator/FixedIndicatorView;->s:I

    invoke-direct {p0, v0, v8, v9}, Lcom/shizhefei/view/indicator/FixedIndicatorView;->z(IFI)V

    .line 24
    iget v0, p0, Lcom/shizhefei/view/indicator/FixedIndicatorView;->r:I

    iget v8, p0, Lcom/shizhefei/view/indicator/FixedIndicatorView;->t:F

    invoke-direct {p0, v0, v8, v2}, Lcom/shizhefei/view/indicator/FixedIndicatorView;->x(IFZ)I

    move-result v0

    goto :goto_4

    .line 25
    :cond_8
    iget v0, p0, Lcom/shizhefei/view/indicator/FixedIndicatorView;->d:I

    invoke-direct {p0, v0, v4, v2}, Lcom/shizhefei/view/indicator/FixedIndicatorView;->x(IFZ)I

    move-result v0

    .line 26
    iget v2, p0, Lcom/shizhefei/view/indicator/FixedIndicatorView;->d:I

    invoke-direct {p0, v2}, Lcom/shizhefei/view/indicator/FixedIndicatorView;->u(I)Landroid/view/View;

    move-result-object v2

    if-nez v2, :cond_9

    return-void

    .line 27
    :cond_9
    invoke-virtual {v2}, Landroid/view/View;->getLeft()I

    move-result v2

    int-to-float v5, v2

    .line 28
    :goto_4
    iget-object v2, p0, Lcom/shizhefei/view/indicator/FixedIndicatorView;->l:Lcom/shizhefei/view/indicator/slidebar/ScrollBar;

    invoke-interface {v2}, Lcom/shizhefei/view/indicator/slidebar/ScrollBar;->getSlideView()Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getHeight()I

    move-result v2

    .line 29
    iget-object v8, p0, Lcom/shizhefei/view/indicator/FixedIndicatorView;->l:Lcom/shizhefei/view/indicator/slidebar/ScrollBar;

    invoke-interface {v8}, Lcom/shizhefei/view/indicator/slidebar/ScrollBar;->getSlideView()Landroid/view/View;

    move-result-object v8

    invoke-virtual {v8}, Landroid/view/View;->getWidth()I

    move-result v8

    sub-int v9, v0, v8

    .line 30
    div-int/2addr v9, v3

    int-to-float v3, v9

    add-float/2addr v5, v3

    .line 31
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v3

    .line 32
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getMeasuredWidth()I

    move-result v9

    .line 33
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getMeasuredHeight()I

    move-result v10

    .line 34
    iget-object v11, p0, Lcom/shizhefei/view/indicator/FixedIndicatorView;->a:Lcom/shizhefei/view/indicator/c$b;

    invoke-virtual {v11}, Lcom/shizhefei/view/indicator/c$b;->c()Z

    move-result v11

    if-eqz v11, :cond_c

    int-to-float v11, v8

    add-float/2addr v11, v5

    int-to-float v12, v9

    cmpl-float v13, v11, v12

    if-lez v13, :cond_c

    .line 35
    iget-object v13, p0, Lcom/shizhefei/view/indicator/FixedIndicatorView;->n:Landroid/graphics/Bitmap;

    if-eqz v13, :cond_a

    invoke-virtual {v13}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v13

    if-lt v13, v8, :cond_a

    iget-object v13, p0, Lcom/shizhefei/view/indicator/FixedIndicatorView;->n:Landroid/graphics/Bitmap;

    invoke-virtual {v13}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v13

    if-ge v13, v2, :cond_b

    .line 36
    :cond_a
    sget-object v13, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v9, v10, v13}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v9

    iput-object v9, p0, Lcom/shizhefei/view/indicator/FixedIndicatorView;->n:Landroid/graphics/Bitmap;

    .line 37
    iget-object v10, p0, Lcom/shizhefei/view/indicator/FixedIndicatorView;->p:Landroid/graphics/Canvas;

    invoke-virtual {v10, v9}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    :cond_b
    sub-float/2addr v11, v12

    .line 38
    iget-object v9, p0, Lcom/shizhefei/view/indicator/FixedIndicatorView;->p:Landroid/graphics/Canvas;

    invoke-virtual {v9}, Landroid/graphics/Canvas;->save()I

    .line 39
    iget-object v9, p0, Lcom/shizhefei/view/indicator/FixedIndicatorView;->p:Landroid/graphics/Canvas;

    invoke-virtual {v9, v7, v7, v8, v2}, Landroid/graphics/Canvas;->clipRect(IIII)Z

    .line 40
    iget-object v9, p0, Lcom/shizhefei/view/indicator/FixedIndicatorView;->p:Landroid/graphics/Canvas;

    sget-object v10, Landroid/graphics/PorterDuff$Mode;->CLEAR:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v9, v7, v10}, Landroid/graphics/Canvas;->drawColor(ILandroid/graphics/PorterDuff$Mode;)V

    .line 41
    iget-object v9, p0, Lcom/shizhefei/view/indicator/FixedIndicatorView;->l:Lcom/shizhefei/view/indicator/slidebar/ScrollBar;

    invoke-interface {v9}, Lcom/shizhefei/view/indicator/slidebar/ScrollBar;->getSlideView()Landroid/view/View;

    move-result-object v9

    iget-object v10, p0, Lcom/shizhefei/view/indicator/FixedIndicatorView;->p:Landroid/graphics/Canvas;

    invoke-virtual {v9, v10}, Landroid/view/View;->draw(Landroid/graphics/Canvas;)V

    .line 42
    iget-object v9, p0, Lcom/shizhefei/view/indicator/FixedIndicatorView;->p:Landroid/graphics/Canvas;

    invoke-virtual {v9}, Landroid/graphics/Canvas;->restore()V

    .line 43
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v9

    .line 44
    invoke-virtual {p1, v5, v1}, Landroid/graphics/Canvas;->translate(FF)V

    .line 45
    invoke-virtual {p1, v7, v7, v8, v2}, Landroid/graphics/Canvas;->clipRect(IIII)Z

    .line 46
    iget-object v1, p0, Lcom/shizhefei/view/indicator/FixedIndicatorView;->n:Landroid/graphics/Bitmap;

    invoke-virtual {p1, v1, v4, v4, v6}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 47
    invoke-virtual {p1, v9}, Landroid/graphics/Canvas;->restoreToCount(I)V

    int-to-float v1, v2

    .line 48
    invoke-virtual {p1, v4, v4, v11, v1}, Landroid/graphics/Canvas;->clipRect(FFFF)Z

    .line 49
    iget-object v1, p0, Lcom/shizhefei/view/indicator/FixedIndicatorView;->o:Landroid/graphics/Matrix;

    int-to-float v0, v0

    sub-float/2addr v11, v0

    invoke-virtual {v1, v11, v4}, Landroid/graphics/Matrix;->setTranslate(FF)V

    .line 50
    iget-object v0, p0, Lcom/shizhefei/view/indicator/FixedIndicatorView;->n:Landroid/graphics/Bitmap;

    iget-object v1, p0, Lcom/shizhefei/view/indicator/FixedIndicatorView;->o:Landroid/graphics/Matrix;

    invoke-virtual {p1, v0, v1, v6}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Matrix;Landroid/graphics/Paint;)V

    goto :goto_5

    .line 51
    :cond_c
    invoke-virtual {p1, v5, v1}, Landroid/graphics/Canvas;->translate(FF)V

    .line 52
    invoke-virtual {p1, v7, v7, v8, v2}, Landroid/graphics/Canvas;->clipRect(IIII)Z

    .line 53
    iget-object v0, p0, Lcom/shizhefei/view/indicator/FixedIndicatorView;->l:Lcom/shizhefei/view/indicator/slidebar/ScrollBar;

    invoke-interface {v0}, Lcom/shizhefei/view/indicator/slidebar/ScrollBar;->getSlideView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/view/View;->draw(Landroid/graphics/Canvas;)V

    .line 54
    :goto_5
    invoke-virtual {p1, v3}, Landroid/graphics/Canvas;->restoreToCount(I)V

    return-void

    .line 55
    :cond_d
    :goto_6
    iget-object p1, p0, Lcom/shizhefei/view/indicator/FixedIndicatorView;->m:Lcom/shizhefei/view/indicator/FixedIndicatorView$d;

    invoke-virtual {p1}, Lcom/shizhefei/view/indicator/FixedIndicatorView$d;->e()V

    return-void
.end method

.method private u(I)Landroid/view/View;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/shizhefei/view/indicator/FixedIndicatorView;->v:Landroid/view/View;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    div-int/lit8 v0, v0, 0x2

    if-lt p1, v0, :cond_0

    add-int/lit8 p1, p1, 0x1

    .line 2
    :cond_0
    invoke-virtual {p0, p1}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method private v(I)Landroid/view/View;
    .locals 1

    .line 1
    invoke-direct {p0, p1}, Lcom/shizhefei/view/indicator/FixedIndicatorView;->u(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/view/ViewGroup;

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    :cond_0
    const/4 v0, 0x0

    .line 2
    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method private w()V
    .locals 1

    new-instance v0, Lcom/shizhefei/view/indicator/FixedIndicatorView$d;

    invoke-direct {v0, p0}, Lcom/shizhefei/view/indicator/FixedIndicatorView$d;-><init>(Lcom/shizhefei/view/indicator/FixedIndicatorView;)V

    iput-object v0, p0, Lcom/shizhefei/view/indicator/FixedIndicatorView;->m:Lcom/shizhefei/view/indicator/FixedIndicatorView$d;

    return-void
.end method

.method private x(IFZ)I
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/shizhefei/view/indicator/FixedIndicatorView;->l:Lcom/shizhefei/view/indicator/slidebar/ScrollBar;

    const/4 v1, 0x0

    if-eqz v0, :cond_5

    iget-object v2, p0, Lcom/shizhefei/view/indicator/FixedIndicatorView;->a:Lcom/shizhefei/view/indicator/c$b;

    if-nez v2, :cond_0

    goto :goto_2

    .line 2
    :cond_0
    invoke-interface {v0}, Lcom/shizhefei/view/indicator/slidebar/ScrollBar;->getSlideView()Landroid/view/View;

    move-result-object v0

    .line 3
    invoke-virtual {v0}, Landroid/view/View;->isLayoutRequested()Z

    move-result v2

    if-nez v2, :cond_1

    if-eqz p3, :cond_4

    .line 4
    :cond_1
    invoke-direct {p0, p1}, Lcom/shizhefei/view/indicator/FixedIndicatorView;->u(I)Landroid/view/View;

    move-result-object p3

    add-int/lit8 p1, p1, 0x1

    .line 5
    iget-object v2, p0, Lcom/shizhefei/view/indicator/FixedIndicatorView;->a:Lcom/shizhefei/view/indicator/c$b;

    invoke-virtual {v2}, Lcom/shizhefei/view/indicator/c$b;->a()I

    move-result v2

    if-ge p1, v2, :cond_2

    .line 6
    invoke-direct {p0, p1}, Lcom/shizhefei/view/indicator/FixedIndicatorView;->u(I)Landroid/view/View;

    move-result-object p1

    goto :goto_0

    .line 7
    :cond_2
    invoke-direct {p0, v1}, Lcom/shizhefei/view/indicator/FixedIndicatorView;->u(I)Landroid/view/View;

    move-result-object p1

    :goto_0
    if-eqz p3, :cond_4

    .line 8
    invoke-virtual {p3}, Landroid/view/View;->getWidth()I

    move-result p3

    int-to-float p3, p3

    const/high16 v2, 0x3f800000    # 1.0f

    sub-float/2addr v2, p2

    mul-float p3, p3, v2

    if-nez p1, :cond_3

    const/4 p1, 0x0

    goto :goto_1

    :cond_3
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result p1

    int-to-float p1, p1

    mul-float p1, p1, p2

    :goto_1
    add-float/2addr p3, p1

    float-to-int p1, p3

    .line 9
    iget-object p2, p0, Lcom/shizhefei/view/indicator/FixedIndicatorView;->l:Lcom/shizhefei/view/indicator/slidebar/ScrollBar;

    invoke-interface {p2, p1}, Lcom/shizhefei/view/indicator/slidebar/ScrollBar;->b(I)I

    move-result p2

    .line 10
    iget-object p3, p0, Lcom/shizhefei/view/indicator/FixedIndicatorView;->l:Lcom/shizhefei/view/indicator/slidebar/ScrollBar;

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getHeight()I

    move-result v2

    invoke-interface {p3, v2}, Lcom/shizhefei/view/indicator/slidebar/ScrollBar;->a(I)I

    move-result p3

    .line 11
    invoke-virtual {v0, p2, p3}, Landroid/view/View;->measure(II)V

    .line 12
    invoke-virtual {v0, v1, v1, p2, p3}, Landroid/view/View;->layout(IIII)V

    return p1

    .line 13
    :cond_4
    iget-object p1, p0, Lcom/shizhefei/view/indicator/FixedIndicatorView;->l:Lcom/shizhefei/view/indicator/slidebar/ScrollBar;

    invoke-interface {p1}, Lcom/shizhefei/view/indicator/slidebar/ScrollBar;->getSlideView()Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result p1

    return p1

    :cond_5
    :goto_2
    return v1
.end method

.method private y()V
    .locals 6

    .line 1
    invoke-direct {p0}, Lcom/shizhefei/view/indicator/FixedIndicatorView;->getTabCountInLayout()I

    move-result v0

    .line 2
    iget v1, p0, Lcom/shizhefei/view/indicator/FixedIndicatorView;->e:I

    const/high16 v2, 0x3f800000    # 1.0f

    const/4 v3, 0x0

    if-eqz v1, :cond_2

    const/4 v4, -0x2

    const/4 v5, 0x1

    if-eq v1, v5, :cond_1

    const/4 v2, 0x2

    if-eq v1, v2, :cond_0

    goto :goto_3

    :cond_0
    :goto_0
    if-ge v3, v0, :cond_3

    .line 3
    invoke-direct {p0, v3}, Lcom/shizhefei/view/indicator/FixedIndicatorView;->u(I)Landroid/view/View;

    move-result-object v1

    .line 4
    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout$LayoutParams;

    .line 5
    iput v4, v2, Landroid/widget/LinearLayout$LayoutParams;->width:I

    const/4 v5, 0x0

    .line 6
    iput v5, v2, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    .line 7
    invoke-virtual {v1, v2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    if-ge v3, v0, :cond_3

    .line 8
    invoke-direct {p0, v3}, Lcom/shizhefei/view/indicator/FixedIndicatorView;->u(I)Landroid/view/View;

    move-result-object v1

    .line 9
    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    check-cast v5, Landroid/widget/LinearLayout$LayoutParams;

    .line 10
    iput v4, v5, Landroid/widget/LinearLayout$LayoutParams;->width:I

    .line 11
    iput v2, v5, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    .line 12
    invoke-virtual {v1, v5}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_2
    const/4 v1, 0x0

    :goto_2
    if-ge v1, v0, :cond_3

    .line 13
    invoke-direct {p0, v1}, Lcom/shizhefei/view/indicator/FixedIndicatorView;->u(I)Landroid/view/View;

    move-result-object v4

    .line 14
    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    check-cast v5, Landroid/widget/LinearLayout$LayoutParams;

    .line 15
    iput v3, v5, Landroid/widget/LinearLayout$LayoutParams;->width:I

    .line 16
    iput v2, v5, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    .line 17
    invoke-virtual {v4, v5}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_3
    :goto_3
    return-void
.end method

.method private z(IFI)V
    .locals 8

    if-ltz p1, :cond_6

    .line 1
    invoke-virtual {p0}, Lcom/shizhefei/view/indicator/FixedIndicatorView;->getCount()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    if-le p1, v0, :cond_0

    goto :goto_1

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/shizhefei/view/indicator/FixedIndicatorView;->l:Lcom/shizhefei/view/indicator/slidebar/ScrollBar;

    if-eqz v0, :cond_1

    .line 3
    invoke-interface {v0, p1, p2, p3}, Lcom/shizhefei/view/indicator/slidebar/ScrollBar;->onPageScrolled(IFI)V

    .line 4
    :cond_1
    iget-object p3, p0, Lcom/shizhefei/view/indicator/FixedIndicatorView;->u:Lcom/shizhefei/view/indicator/c$e;

    if-eqz p3, :cond_6

    .line 5
    iget-object p3, p0, Lcom/shizhefei/view/indicator/FixedIndicatorView;->q:[I

    array-length v0, p3

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    const/4 v4, 0x0

    if-ge v3, v0, :cond_3

    aget v5, p3, v3

    if-eq v5, p1, :cond_2

    add-int/lit8 v6, p1, 0x1

    if-eq v5, v6, :cond_2

    .line 6
    invoke-virtual {p0, v5}, Lcom/shizhefei/view/indicator/FixedIndicatorView;->a(I)Landroid/view/View;

    move-result-object v6

    if-eqz v6, :cond_2

    .line 7
    iget-object v7, p0, Lcom/shizhefei/view/indicator/FixedIndicatorView;->u:Lcom/shizhefei/view/indicator/c$e;

    invoke-interface {v7, v6, v5, v4}, Lcom/shizhefei/view/indicator/c$e;->a(Landroid/view/View;IF)V

    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 8
    :cond_3
    iget-object p3, p0, Lcom/shizhefei/view/indicator/FixedIndicatorView;->q:[I

    aput p1, p3, v2

    add-int/lit8 v0, p1, 0x1

    .line 9
    aput v0, p3, v1

    .line 10
    iget p3, p0, Lcom/shizhefei/view/indicator/FixedIndicatorView;->h:I

    invoke-virtual {p0, p3}, Lcom/shizhefei/view/indicator/FixedIndicatorView;->a(I)Landroid/view/View;

    move-result-object p3

    if-eqz p3, :cond_4

    .line 11
    iget-object v1, p0, Lcom/shizhefei/view/indicator/FixedIndicatorView;->u:Lcom/shizhefei/view/indicator/c$e;

    iget v2, p0, Lcom/shizhefei/view/indicator/FixedIndicatorView;->h:I

    invoke-interface {v1, p3, v2, v4}, Lcom/shizhefei/view/indicator/c$e;->a(Landroid/view/View;IF)V

    .line 12
    :cond_4
    invoke-virtual {p0, p1}, Lcom/shizhefei/view/indicator/FixedIndicatorView;->a(I)Landroid/view/View;

    move-result-object p3

    if-eqz p3, :cond_5

    .line 13
    iget-object v1, p0, Lcom/shizhefei/view/indicator/FixedIndicatorView;->u:Lcom/shizhefei/view/indicator/c$e;

    const/high16 v2, 0x3f800000    # 1.0f

    sub-float/2addr v2, p2

    invoke-interface {v1, p3, p1, v2}, Lcom/shizhefei/view/indicator/c$e;->a(Landroid/view/View;IF)V

    .line 14
    :cond_5
    invoke-virtual {p0, v0}, Lcom/shizhefei/view/indicator/FixedIndicatorView;->a(I)Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_6

    .line 15
    iget-object p3, p0, Lcom/shizhefei/view/indicator/FixedIndicatorView;->u:Lcom/shizhefei/view/indicator/c$e;

    invoke-interface {p3, p1, v0, p2}, Lcom/shizhefei/view/indicator/c$e;->a(Landroid/view/View;IF)V

    :cond_6
    :goto_1
    return-void
.end method


# virtual methods
.method public A()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/shizhefei/view/indicator/FixedIndicatorView;->v:Landroid/view/View;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->removeView(Landroid/view/View;)V

    .line 3
    iput-object v1, p0, Lcom/shizhefei/view/indicator/FixedIndicatorView;->v:Landroid/view/View;

    .line 4
    :cond_0
    iput-object v1, p0, Lcom/shizhefei/view/indicator/FixedIndicatorView;->w:Landroid/widget/LinearLayout$LayoutParams;

    return-void
.end method

.method public B(Landroid/view/View;II)V
    .locals 1

    .line 1
    iput-object p1, p0, Lcom/shizhefei/view/indicator/FixedIndicatorView;->v:Landroid/view/View;

    .line 2
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v0, p2, p3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    const/16 p2, 0x10

    .line 3
    iput p2, v0, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    .line 4
    invoke-virtual {p0, p1, v0}, Lcom/shizhefei/view/indicator/FixedIndicatorView;->C(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method public C(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/shizhefei/view/indicator/FixedIndicatorView;->A()V

    if-nez p2, :cond_0

    .line 2
    new-instance p2, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v0, -0x2

    const/4 v1, -0x1

    invoke-direct {p2, v0, v1}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    goto :goto_0

    .line 3
    :cond_0
    invoke-virtual {p0, p2}, Landroid/widget/LinearLayout;->generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object p2

    .line 4
    :goto_0
    iput-object p2, p0, Lcom/shizhefei/view/indicator/FixedIndicatorView;->w:Landroid/widget/LinearLayout$LayoutParams;

    .line 5
    iput-object p1, p0, Lcom/shizhefei/view/indicator/FixedIndicatorView;->v:Landroid/view/View;

    .line 6
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    .line 7
    invoke-virtual {p0, p1, v0, p2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method public a(I)Landroid/view/View;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/shizhefei/view/indicator/FixedIndicatorView;->a:Lcom/shizhefei/view/indicator/c$b;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    :cond_0
    if-ltz p1, :cond_2

    .line 2
    invoke-virtual {v0}, Lcom/shizhefei/view/indicator/c$b;->a()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    if-le p1, v0, :cond_1

    goto :goto_0

    .line 3
    :cond_1
    invoke-direct {p0, p1}, Lcom/shizhefei/view/indicator/FixedIndicatorView;->v(I)Landroid/view/View;

    move-result-object p1

    return-object p1

    :cond_2
    :goto_0
    return-object v1
.end method

.method public b(IZ)V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/shizhefei/view/indicator/FixedIndicatorView;->getCount()I

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v1, 0x0

    if-gez p1, :cond_1

    const/4 p1, 0x0

    goto :goto_0

    :cond_1
    add-int/lit8 v0, v0, -0x1

    if-le p1, v0, :cond_2

    move p1, v0

    .line 2
    :cond_2
    :goto_0
    iget v0, p0, Lcom/shizhefei/view/indicator/FixedIndicatorView;->d:I

    if-eq v0, p1, :cond_6

    .line 3
    iput v0, p0, Lcom/shizhefei/view/indicator/FixedIndicatorView;->h:I

    .line 4
    iput p1, p0, Lcom/shizhefei/view/indicator/FixedIndicatorView;->d:I

    .line 5
    iget-object v0, p0, Lcom/shizhefei/view/indicator/FixedIndicatorView;->m:Lcom/shizhefei/view/indicator/FixedIndicatorView$d;

    invoke-virtual {v0}, Lcom/shizhefei/view/indicator/FixedIndicatorView$d;->c()Z

    move-result v0

    if-nez v0, :cond_3

    .line 6
    iget-object v0, p0, Lcom/shizhefei/view/indicator/FixedIndicatorView;->m:Lcom/shizhefei/view/indicator/FixedIndicatorView$d;

    invoke-virtual {v0}, Lcom/shizhefei/view/indicator/FixedIndicatorView$d;->e()V

    .line 7
    :cond_3
    iget v0, p0, Lcom/shizhefei/view/indicator/FixedIndicatorView;->f:I

    if-nez v0, :cond_5

    .line 8
    invoke-direct {p0, p1}, Lcom/shizhefei/view/indicator/FixedIndicatorView;->D(I)V

    if-eqz p2, :cond_4

    .line 9
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getMeasuredWidth()I

    move-result p2

    if-eqz p2, :cond_4

    invoke-direct {p0, p1}, Lcom/shizhefei/view/indicator/FixedIndicatorView;->u(I)Landroid/view/View;

    move-result-object p2

    invoke-virtual {p2}, Landroid/view/View;->getMeasuredWidth()I

    move-result p2

    if-eqz p2, :cond_4

    iget p2, p0, Lcom/shizhefei/view/indicator/FixedIndicatorView;->h:I

    if-ltz p2, :cond_4

    invoke-direct {p0}, Lcom/shizhefei/view/indicator/FixedIndicatorView;->getTabCountInLayout()I

    move-result v0

    if-ge p2, v0, :cond_4

    .line 10
    iget p2, p0, Lcom/shizhefei/view/indicator/FixedIndicatorView;->h:I

    invoke-direct {p0, p2}, Lcom/shizhefei/view/indicator/FixedIndicatorView;->u(I)Landroid/view/View;

    move-result-object p2

    invoke-virtual {p2}, Landroid/view/View;->getLeft()I

    move-result p2

    .line 11
    invoke-direct {p0, p1}, Lcom/shizhefei/view/indicator/FixedIndicatorView;->u(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    move-result v0

    sub-int v1, v0, p2

    .line 12
    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v1

    int-to-float v1, v1

    invoke-direct {p0, p1}, Lcom/shizhefei/view/indicator/FixedIndicatorView;->u(I)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result p1

    int-to-float p1, p1

    div-float/2addr v1, p1

    const/high16 p1, 0x3f800000    # 1.0f

    add-float/2addr v1, p1

    const/high16 p1, 0x42c80000    # 100.0f

    mul-float v1, v1, p1

    float-to-int p1, v1

    const/16 v1, 0x258

    .line 13
    invoke-static {p1, v1}, Ljava/lang/Math;->min(II)I

    move-result p1

    .line 14
    iget-object v1, p0, Lcom/shizhefei/view/indicator/FixedIndicatorView;->m:Lcom/shizhefei/view/indicator/FixedIndicatorView$d;

    invoke-virtual {v1, p2, v0, p1}, Lcom/shizhefei/view/indicator/FixedIndicatorView$d;->d(III)V

    goto :goto_1

    :cond_4
    const/4 p2, 0x0

    .line 15
    invoke-direct {p0, p1, p2, v1}, Lcom/shizhefei/view/indicator/FixedIndicatorView;->z(IFI)V

    goto :goto_1

    .line 16
    :cond_5
    iget-object p2, p0, Lcom/shizhefei/view/indicator/FixedIndicatorView;->u:Lcom/shizhefei/view/indicator/c$e;

    if-nez p2, :cond_6

    .line 17
    invoke-direct {p0, p1}, Lcom/shizhefei/view/indicator/FixedIndicatorView;->D(I)V

    :cond_6
    :goto_1
    return-void
.end method

.method public c()Z
    .locals 1

    iget-boolean v0, p0, Lcom/shizhefei/view/indicator/FixedIndicatorView;->g:Z

    return v0
.end method

.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/shizhefei/view/indicator/FixedIndicatorView;->l:Lcom/shizhefei/view/indicator/slidebar/ScrollBar;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/shizhefei/view/indicator/slidebar/ScrollBar;->getGravity()Lcom/shizhefei/view/indicator/slidebar/ScrollBar$Gravity;

    move-result-object v0

    sget-object v1, Lcom/shizhefei/view/indicator/slidebar/ScrollBar$Gravity;->CENTENT_BACKGROUND:Lcom/shizhefei/view/indicator/slidebar/ScrollBar$Gravity;

    if-ne v0, v1, :cond_0

    .line 2
    invoke-direct {p0, p1}, Lcom/shizhefei/view/indicator/FixedIndicatorView;->t(Landroid/graphics/Canvas;)V

    .line 3
    :cond_0
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->dispatchDraw(Landroid/graphics/Canvas;)V

    .line 4
    iget-object v0, p0, Lcom/shizhefei/view/indicator/FixedIndicatorView;->l:Lcom/shizhefei/view/indicator/slidebar/ScrollBar;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Lcom/shizhefei/view/indicator/slidebar/ScrollBar;->getGravity()Lcom/shizhefei/view/indicator/slidebar/ScrollBar$Gravity;

    move-result-object v0

    sget-object v1, Lcom/shizhefei/view/indicator/slidebar/ScrollBar$Gravity;->CENTENT_BACKGROUND:Lcom/shizhefei/view/indicator/slidebar/ScrollBar$Gravity;

    if-eq v0, v1, :cond_1

    .line 5
    invoke-direct {p0, p1}, Lcom/shizhefei/view/indicator/FixedIndicatorView;->t(Landroid/graphics/Canvas;)V

    :cond_1
    return-void
.end method

.method public getCenterView()Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/shizhefei/view/indicator/FixedIndicatorView;->v:Landroid/view/View;

    return-object v0
.end method

.method public getCount()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/shizhefei/view/indicator/FixedIndicatorView;->a:Lcom/shizhefei/view/indicator/c$b;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    .line 2
    :cond_0
    invoke-virtual {v0}, Lcom/shizhefei/view/indicator/c$b;->a()I

    move-result v0

    return v0
.end method

.method public getCurrentItem()I
    .locals 1

    iget v0, p0, Lcom/shizhefei/view/indicator/FixedIndicatorView;->d:I

    return v0
.end method

.method public getIndicatorAdapter()Lcom/shizhefei/view/indicator/c$b;
    .locals 1

    iget-object v0, p0, Lcom/shizhefei/view/indicator/FixedIndicatorView;->a:Lcom/shizhefei/view/indicator/c$b;

    return-object v0
.end method

.method public getOnIndicatorItemClickListener()Lcom/shizhefei/view/indicator/c$c;
    .locals 1

    iget-object v0, p0, Lcom/shizhefei/view/indicator/FixedIndicatorView;->c:Lcom/shizhefei/view/indicator/c$c;

    return-object v0
.end method

.method public getOnItemSelectListener()Lcom/shizhefei/view/indicator/c$d;
    .locals 1

    iget-object v0, p0, Lcom/shizhefei/view/indicator/FixedIndicatorView;->b:Lcom/shizhefei/view/indicator/c$d;

    return-object v0
.end method

.method public getOnTransitionListener()Lcom/shizhefei/view/indicator/c$e;
    .locals 1

    iget-object v0, p0, Lcom/shizhefei/view/indicator/FixedIndicatorView;->u:Lcom/shizhefei/view/indicator/c$e;

    return-object v0
.end method

.method public getPreSelectItem()I
    .locals 1

    iget v0, p0, Lcom/shizhefei/view/indicator/FixedIndicatorView;->h:I

    return v0
.end method

.method public getScrollBar()Lcom/shizhefei/view/indicator/slidebar/ScrollBar;
    .locals 1

    iget-object v0, p0, Lcom/shizhefei/view/indicator/FixedIndicatorView;->l:Lcom/shizhefei/view/indicator/slidebar/ScrollBar;

    return-object v0
.end method

.method public getSplitMethod()I
    .locals 1

    iget v0, p0, Lcom/shizhefei/view/indicator/FixedIndicatorView;->e:I

    return v0
.end method

.method protected measureChildren(II)V
    .locals 0

    invoke-super {p0, p1, p2}, Landroid/widget/LinearLayout;->measureChildren(II)V

    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    .line 1
    invoke-super {p0}, Landroid/widget/LinearLayout;->onDetachedFromWindow()V

    .line 2
    iget-object v0, p0, Lcom/shizhefei/view/indicator/FixedIndicatorView;->m:Lcom/shizhefei/view/indicator/FixedIndicatorView$d;

    invoke-virtual {v0}, Lcom/shizhefei/view/indicator/FixedIndicatorView$d;->e()V

    return-void
.end method

.method protected onFinishInflate()V
    .locals 2

    .line 1
    invoke-super {p0}, Landroid/widget/LinearLayout;->onFinishInflate()V

    .line 2
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    .line 3
    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/shizhefei/view/indicator/FixedIndicatorView;->v:Landroid/view/View;

    .line 4
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    iput-object v0, p0, Lcom/shizhefei/view/indicator/FixedIndicatorView;->w:Landroid/widget/LinearLayout$LayoutParams;

    :cond_0
    return-void
.end method

.method public onPageScrollStateChanged(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/shizhefei/view/indicator/FixedIndicatorView;->f:I

    if-nez p1, :cond_0

    .line 2
    iget p1, p0, Lcom/shizhefei/view/indicator/FixedIndicatorView;->d:I

    invoke-direct {p0, p1}, Lcom/shizhefei/view/indicator/FixedIndicatorView;->D(I)V

    :cond_0
    return-void
.end method

.method public onPageScrolled(IFI)V
    .locals 1

    .line 1
    iput p1, p0, Lcom/shizhefei/view/indicator/FixedIndicatorView;->r:I

    .line 2
    iput p2, p0, Lcom/shizhefei/view/indicator/FixedIndicatorView;->t:F

    .line 3
    iput p3, p0, Lcom/shizhefei/view/indicator/FixedIndicatorView;->s:I

    .line 4
    iget-object v0, p0, Lcom/shizhefei/view/indicator/FixedIndicatorView;->l:Lcom/shizhefei/view/indicator/slidebar/ScrollBar;

    if-eqz v0, :cond_0

    .line 5
    invoke-static {p0}, Landroidx/core/view/ViewCompat;->postInvalidateOnAnimation(Landroid/view/View;)V

    goto :goto_0

    .line 6
    :cond_0
    invoke-direct {p0, p1, p2, p3}, Lcom/shizhefei/view/indicator/FixedIndicatorView;->z(IFI)V

    :goto_0
    return-void
.end method

.method protected onSizeChanged(IIII)V
    .locals 0

    .line 1
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/LinearLayout;->onSizeChanged(IIII)V

    .line 2
    iget p1, p0, Lcom/shizhefei/view/indicator/FixedIndicatorView;->d:I

    const/high16 p2, 0x3f800000    # 1.0f

    const/4 p3, 0x1

    invoke-direct {p0, p1, p2, p3}, Lcom/shizhefei/view/indicator/FixedIndicatorView;->x(IFZ)I

    return-void
.end method

.method public setAdapter(Lcom/shizhefei/view/indicator/c$b;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/shizhefei/view/indicator/FixedIndicatorView;->a:Lcom/shizhefei/view/indicator/c$b;

    if-eqz v0, :cond_0

    .line 2
    iget-object v1, p0, Lcom/shizhefei/view/indicator/FixedIndicatorView;->j:Lcom/shizhefei/view/indicator/c$a;

    invoke-virtual {v0, v1}, Lcom/shizhefei/view/indicator/c$b;->g(Lcom/shizhefei/view/indicator/c$a;)V

    .line 3
    :cond_0
    iput-object p1, p0, Lcom/shizhefei/view/indicator/FixedIndicatorView;->a:Lcom/shizhefei/view/indicator/c$b;

    .line 4
    iget-object v0, p0, Lcom/shizhefei/view/indicator/FixedIndicatorView;->j:Lcom/shizhefei/view/indicator/c$a;

    invoke-virtual {p1, v0}, Lcom/shizhefei/view/indicator/c$b;->e(Lcom/shizhefei/view/indicator/c$a;)V

    .line 5
    invoke-virtual {p1}, Lcom/shizhefei/view/indicator/c$b;->d()V

    return-void
.end method

.method public setCenterView(Landroid/view/View;)V
    .locals 1

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/shizhefei/view/indicator/FixedIndicatorView;->C(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method public setCurrentItem(I)V
    .locals 1

    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/shizhefei/view/indicator/FixedIndicatorView;->b(IZ)V

    return-void
.end method

.method public setItemClickable(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/shizhefei/view/indicator/FixedIndicatorView;->g:Z

    return-void
.end method

.method public setOnIndicatorItemClickListener(Lcom/shizhefei/view/indicator/c$c;)V
    .locals 0

    iput-object p1, p0, Lcom/shizhefei/view/indicator/FixedIndicatorView;->c:Lcom/shizhefei/view/indicator/c$c;

    return-void
.end method

.method public setOnItemSelectListener(Lcom/shizhefei/view/indicator/c$d;)V
    .locals 0

    iput-object p1, p0, Lcom/shizhefei/view/indicator/FixedIndicatorView;->b:Lcom/shizhefei/view/indicator/c$d;

    return-void
.end method

.method public setOnTransitionListener(Lcom/shizhefei/view/indicator/c$e;)V
    .locals 3

    .line 1
    iput-object p1, p0, Lcom/shizhefei/view/indicator/FixedIndicatorView;->u:Lcom/shizhefei/view/indicator/c$e;

    .line 2
    iget v0, p0, Lcom/shizhefei/view/indicator/FixedIndicatorView;->d:I

    invoke-direct {p0, v0}, Lcom/shizhefei/view/indicator/FixedIndicatorView;->D(I)V

    .line 3
    iget-object v0, p0, Lcom/shizhefei/view/indicator/FixedIndicatorView;->a:Lcom/shizhefei/view/indicator/c$b;

    if-eqz v0, :cond_2

    const/4 v0, 0x0

    .line 4
    :goto_0
    iget-object v1, p0, Lcom/shizhefei/view/indicator/FixedIndicatorView;->a:Lcom/shizhefei/view/indicator/c$b;

    invoke-virtual {v1}, Lcom/shizhefei/view/indicator/c$b;->a()I

    move-result v1

    if-ge v0, v1, :cond_2

    .line 5
    invoke-virtual {p0, v0}, Lcom/shizhefei/view/indicator/FixedIndicatorView;->a(I)Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 6
    iget v2, p0, Lcom/shizhefei/view/indicator/FixedIndicatorView;->d:I

    if-ne v2, v0, :cond_0

    const/high16 v2, 0x3f800000    # 1.0f

    goto :goto_1

    :cond_0
    const/4 v2, 0x0

    :goto_1
    invoke-interface {p1, v1, v0, v2}, Lcom/shizhefei/view/indicator/c$e;->a(Landroid/view/View;IF)V

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method public setScrollBar(Lcom/shizhefei/view/indicator/slidebar/ScrollBar;)V
    .locals 6

    .line 1
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getPaddingBottom()I

    move-result v0

    .line 2
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getPaddingTop()I

    move-result v1

    .line 3
    iget-object v2, p0, Lcom/shizhefei/view/indicator/FixedIndicatorView;->l:Lcom/shizhefei/view/indicator/slidebar/ScrollBar;

    const/4 v3, 0x2

    const/4 v4, 0x1

    if-eqz v2, :cond_2

    .line 4
    sget-object v5, Lcom/shizhefei/view/indicator/FixedIndicatorView$c;->a:[I

    invoke-interface {v2}, Lcom/shizhefei/view/indicator/slidebar/ScrollBar;->getGravity()Lcom/shizhefei/view/indicator/slidebar/ScrollBar$Gravity;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    aget v2, v5, v2

    if-eq v2, v4, :cond_1

    if-eq v2, v3, :cond_0

    goto :goto_0

    .line 5
    :cond_0
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getHeight()I

    move-result v2

    invoke-interface {p1, v2}, Lcom/shizhefei/view/indicator/slidebar/ScrollBar;->a(I)I

    move-result v2

    sub-int/2addr v1, v2

    goto :goto_0

    .line 6
    :cond_1
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getHeight()I

    move-result v2

    invoke-interface {p1, v2}, Lcom/shizhefei/view/indicator/slidebar/ScrollBar;->a(I)I

    move-result v2

    sub-int/2addr v0, v2

    .line 7
    :cond_2
    :goto_0
    iput-object p1, p0, Lcom/shizhefei/view/indicator/FixedIndicatorView;->l:Lcom/shizhefei/view/indicator/slidebar/ScrollBar;

    .line 8
    sget-object v2, Lcom/shizhefei/view/indicator/FixedIndicatorView$c;->a:[I

    invoke-interface {p1}, Lcom/shizhefei/view/indicator/slidebar/ScrollBar;->getGravity()Lcom/shizhefei/view/indicator/slidebar/ScrollBar$Gravity;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Enum;->ordinal()I

    move-result v5

    aget v2, v2, v5

    if-eq v2, v4, :cond_4

    if-eq v2, v3, :cond_3

    goto :goto_1

    .line 9
    :cond_3
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getHeight()I

    move-result v2

    invoke-interface {p1, v2}, Lcom/shizhefei/view/indicator/slidebar/ScrollBar;->a(I)I

    move-result p1

    add-int/2addr v1, p1

    goto :goto_1

    .line 10
    :cond_4
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getHeight()I

    move-result v2

    invoke-interface {p1, v2}, Lcom/shizhefei/view/indicator/slidebar/ScrollBar;->a(I)I

    move-result p1

    add-int/2addr v0, p1

    .line 11
    :goto_1
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getPaddingLeft()I

    move-result p1

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getPaddingRight()I

    move-result v2

    invoke-virtual {p0, p1, v1, v2, v0}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    return-void
.end method

.method public setSplitMethod(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/shizhefei/view/indicator/FixedIndicatorView;->e:I

    .line 2
    invoke-direct {p0}, Lcom/shizhefei/view/indicator/FixedIndicatorView;->y()V

    return-void
.end method
