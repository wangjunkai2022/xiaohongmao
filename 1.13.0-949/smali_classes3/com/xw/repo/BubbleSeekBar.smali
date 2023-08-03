.class public Lcom/xw/repo/BubbleSeekBar;
.super Landroid/view/View;
.source "BubbleSeekBar.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xw/repo/BubbleSeekBar$i;,
        Lcom/xw/repo/BubbleSeekBar$j;,
        Lcom/xw/repo/BubbleSeekBar$l;,
        Lcom/xw/repo/BubbleSeekBar$k;,
        Lcom/xw/repo/BubbleSeekBar$m;
    }
.end annotation


# static fields
.field static final F2:I = -0x1


# instance fields
.field private A:J

.field private B:Z

.field private C:J

.field private D:Z

.field private E:Z

.field E2:F

.field private F:I

.field private G:I

.field private H:I

.field private I:F

.field private J:F

.field private K:F

.field private L:F

.field private M:F

.field private N:Z

.field private O:I

.field private P:Z

.field private Q:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private R:F

.field private S:Z

.field private T:Lcom/xw/repo/BubbleSeekBar$k;

.field private T1:F

.field private U:F

.field private V:F

.field private V1:F

.field private W:Landroid/graphics/Paint;

.field private a:F

.field private b:F

.field private b1:Landroid/graphics/Rect;

.field private b2:Landroid/view/WindowManager$LayoutParams;

.field private c:F

.field private d:Z

.field private e:I

.field private f:I

.field private g:I

.field private g1:Landroid/view/WindowManager;

.field private g2:[I

.field private h:I

.field private i:I

.field private j:I

.field private k:I

.field private l:I

.field private m:Z

.field private n:Z

.field private o:Z

.field private p:I

.field private p1:Lcom/xw/repo/BubbleSeekBar$i;

.field private p2:Z

.field private q:I

.field private r:I

.field private s:I

.field private t:Z

.field private u:I

.field private v:I

.field private w:Z

.field private x:Z

.field private x1:I

.field private x2:F

.field private y:Z

.field private y1:F

.field private y2:Lcom/xw/repo/a;

.field private z:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, v0}, Lcom/xw/repo/BubbleSeekBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 2
    invoke-direct {p0, p1, p2, v0}, Lcom/xw/repo/BubbleSeekBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 7

    .line 3
    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 v0, -0x1

    .line 4
    iput v0, p0, Lcom/xw/repo/BubbleSeekBar;->r:I

    .line 5
    new-instance v1, Landroid/util/SparseArray;

    invoke-direct {v1}, Landroid/util/SparseArray;-><init>()V

    iput-object v1, p0, Lcom/xw/repo/BubbleSeekBar;->Q:Landroid/util/SparseArray;

    const/4 v1, 0x2

    new-array v2, v1, [I

    .line 6
    iput-object v2, p0, Lcom/xw/repo/BubbleSeekBar;->g2:[I

    const/4 v2, 0x1

    .line 7
    iput-boolean v2, p0, Lcom/xw/repo/BubbleSeekBar;->p2:Z

    .line 8
    sget-object v3, Lz5/b$l;->E3:[I

    const/4 v4, 0x0

    invoke-virtual {p1, p2, v3, p3, v4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p2

    .line 9
    sget p3, Lz5/b$l;->Q3:I

    const/4 v3, 0x0

    invoke-virtual {p2, p3, v3}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result p3

    iput p3, p0, Lcom/xw/repo/BubbleSeekBar;->a:F

    .line 10
    sget p3, Lz5/b$l;->P3:I

    const/high16 v3, 0x42c80000    # 100.0f

    invoke-virtual {p2, p3, v3}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result p3

    iput p3, p0, Lcom/xw/repo/BubbleSeekBar;->b:F

    .line 11
    sget p3, Lz5/b$l;->R3:I

    iget v3, p0, Lcom/xw/repo/BubbleSeekBar;->a:F

    invoke-virtual {p2, p3, v3}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result p3

    iput p3, p0, Lcom/xw/repo/BubbleSeekBar;->c:F

    .line 12
    sget p3, Lz5/b$l;->O3:I

    invoke-virtual {p2, p3, v4}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p3

    iput-boolean p3, p0, Lcom/xw/repo/BubbleSeekBar;->d:Z

    .line 13
    sget p3, Lz5/b$l;->n4:I

    invoke-static {v1}, Lcom/xw/repo/b;->a(I)I

    move-result v3

    invoke-virtual {p2, p3, v3}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p3

    iput p3, p0, Lcom/xw/repo/BubbleSeekBar;->e:I

    .line 14
    sget v3, Lz5/b$l;->U3:I

    .line 15
    invoke-static {v1}, Lcom/xw/repo/b;->a(I)I

    move-result v5

    add-int/2addr p3, v5

    .line 16
    invoke-virtual {p2, v3, p3}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p3

    iput p3, p0, Lcom/xw/repo/BubbleSeekBar;->f:I

    .line 17
    sget v3, Lz5/b$l;->h4:I

    .line 18
    invoke-static {v1}, Lcom/xw/repo/b;->a(I)I

    move-result v5

    add-int/2addr p3, v5

    .line 19
    invoke-virtual {p2, v3, p3}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p3

    iput p3, p0, Lcom/xw/repo/BubbleSeekBar;->g:I

    .line 20
    sget p3, Lz5/b$l;->i4:I

    iget v3, p0, Lcom/xw/repo/BubbleSeekBar;->f:I

    mul-int/lit8 v3, v3, 0x2

    invoke-virtual {p2, p3, v3}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p3

    iput p3, p0, Lcom/xw/repo/BubbleSeekBar;->h:I

    .line 21
    sget p3, Lz5/b$l;->V3:I

    const/16 v3, 0xa

    invoke-virtual {p2, p3, v3}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result p3

    iput p3, p0, Lcom/xw/repo/BubbleSeekBar;->l:I

    .line 22
    sget p3, Lz5/b$l;->m4:I

    sget v3, Lz5/b$d;->M:I

    .line 23
    invoke-static {p1, v3}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v3

    .line 24
    invoke-virtual {p2, p3, v3}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result p3

    iput p3, p0, Lcom/xw/repo/BubbleSeekBar;->i:I

    .line 25
    sget p3, Lz5/b$l;->T3:I

    sget v3, Lz5/b$d;->L:I

    .line 26
    invoke-static {p1, v3}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v3

    .line 27
    invoke-virtual {p2, p3, v3}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result p3

    iput p3, p0, Lcom/xw/repo/BubbleSeekBar;->j:I

    .line 28
    sget v3, Lz5/b$l;->g4:I

    invoke-virtual {p2, v3, p3}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result p3

    iput p3, p0, Lcom/xw/repo/BubbleSeekBar;->k:I

    .line 29
    sget p3, Lz5/b$l;->e4:I

    invoke-virtual {p2, p3, v4}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p3

    iput-boolean p3, p0, Lcom/xw/repo/BubbleSeekBar;->o:Z

    .line 30
    sget p3, Lz5/b$l;->Z3:I

    const/16 v3, 0xe

    invoke-static {v3}, Lcom/xw/repo/b;->c(I)I

    move-result v5

    invoke-virtual {p2, p3, v5}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p3

    iput p3, p0, Lcom/xw/repo/BubbleSeekBar;->p:I

    .line 31
    sget p3, Lz5/b$l;->W3:I

    iget v5, p0, Lcom/xw/repo/BubbleSeekBar;->i:I

    invoke-virtual {p2, p3, v5}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result p3

    iput p3, p0, Lcom/xw/repo/BubbleSeekBar;->q:I

    .line 32
    sget p3, Lz5/b$l;->b4:I

    invoke-virtual {p2, p3, v4}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p3

    iput-boolean p3, p0, Lcom/xw/repo/BubbleSeekBar;->y:Z

    .line 33
    sget p3, Lz5/b$l;->a4:I

    invoke-virtual {p2, p3, v4}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p3

    iput-boolean p3, p0, Lcom/xw/repo/BubbleSeekBar;->z:Z

    .line 34
    sget p3, Lz5/b$l;->Y3:I

    invoke-virtual {p2, p3, v0}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result p3

    if-nez p3, :cond_0

    .line 35
    iput v4, p0, Lcom/xw/repo/BubbleSeekBar;->r:I

    goto :goto_0

    :cond_0
    if-ne p3, v2, :cond_1

    .line 36
    iput v2, p0, Lcom/xw/repo/BubbleSeekBar;->r:I

    goto :goto_0

    :cond_1
    if-ne p3, v1, :cond_2

    .line 37
    iput v1, p0, Lcom/xw/repo/BubbleSeekBar;->r:I

    goto :goto_0

    .line 38
    :cond_2
    iput v0, p0, Lcom/xw/repo/BubbleSeekBar;->r:I

    .line 39
    :goto_0
    sget p3, Lz5/b$l;->X3:I

    invoke-virtual {p2, p3, v2}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result p3

    iput p3, p0, Lcom/xw/repo/BubbleSeekBar;->s:I

    .line 40
    sget p3, Lz5/b$l;->f4:I

    invoke-virtual {p2, p3, v4}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p3

    iput-boolean p3, p0, Lcom/xw/repo/BubbleSeekBar;->t:Z

    .line 41
    sget p3, Lz5/b$l;->k4:I

    invoke-static {v3}, Lcom/xw/repo/b;->c(I)I

    move-result v5

    invoke-virtual {p2, p3, v5}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p3

    iput p3, p0, Lcom/xw/repo/BubbleSeekBar;->u:I

    .line 42
    sget p3, Lz5/b$l;->j4:I

    iget v5, p0, Lcom/xw/repo/BubbleSeekBar;->j:I

    invoke-virtual {p2, p3, v5}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result p3

    iput p3, p0, Lcom/xw/repo/BubbleSeekBar;->v:I

    .line 43
    sget p3, Lz5/b$l;->K3:I

    iget v5, p0, Lcom/xw/repo/BubbleSeekBar;->j:I

    invoke-virtual {p2, p3, v5}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result p3

    iput p3, p0, Lcom/xw/repo/BubbleSeekBar;->F:I

    .line 44
    sget p3, Lz5/b$l;->M3:I

    invoke-static {v3}, Lcom/xw/repo/b;->c(I)I

    move-result v3

    invoke-virtual {p2, p3, v3}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p3

    iput p3, p0, Lcom/xw/repo/BubbleSeekBar;->G:I

    .line 45
    sget p3, Lz5/b$l;->L3:I

    invoke-virtual {p2, p3, v0}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result p3

    iput p3, p0, Lcom/xw/repo/BubbleSeekBar;->H:I

    .line 46
    sget p3, Lz5/b$l;->d4:I

    invoke-virtual {p2, p3, v4}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p3

    iput-boolean p3, p0, Lcom/xw/repo/BubbleSeekBar;->m:Z

    .line 47
    sget p3, Lz5/b$l;->J3:I

    invoke-virtual {p2, p3, v4}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p3

    iput-boolean p3, p0, Lcom/xw/repo/BubbleSeekBar;->n:Z

    .line 48
    sget p3, Lz5/b$l;->c4:I

    invoke-virtual {p2, p3, v4}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p3

    iput-boolean p3, p0, Lcom/xw/repo/BubbleSeekBar;->w:Z

    .line 49
    sget p3, Lz5/b$l;->I3:I

    invoke-virtual {p2, p3, v0}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result p3

    if-gez p3, :cond_3

    const-wide/16 v5, 0xc8

    goto :goto_1

    :cond_3
    int-to-long v5, p3

    .line 50
    :goto_1
    iput-wide v5, p0, Lcom/xw/repo/BubbleSeekBar;->A:J

    .line 51
    sget p3, Lz5/b$l;->l4:I

    invoke-virtual {p2, p3, v4}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p3

    iput-boolean p3, p0, Lcom/xw/repo/BubbleSeekBar;->x:Z

    .line 52
    sget p3, Lz5/b$l;->G3:I

    invoke-virtual {p2, p3, v4}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p3

    iput-boolean p3, p0, Lcom/xw/repo/BubbleSeekBar;->B:Z

    .line 53
    sget p3, Lz5/b$l;->H3:I

    invoke-virtual {p2, p3, v4}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result p3

    if-gez p3, :cond_4

    const-wide/16 v5, 0x0

    goto :goto_2

    :cond_4
    int-to-long v5, p3

    .line 54
    :goto_2
    iput-wide v5, p0, Lcom/xw/repo/BubbleSeekBar;->C:J

    .line 55
    sget p3, Lz5/b$l;->N3:I

    invoke-virtual {p2, p3, v4}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p3

    iput-boolean p3, p0, Lcom/xw/repo/BubbleSeekBar;->D:Z

    .line 56
    sget p3, Lz5/b$l;->S3:I

    invoke-virtual {p2, p3, v4}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p3

    iput-boolean p3, p0, Lcom/xw/repo/BubbleSeekBar;->E:Z

    .line 57
    sget p3, Lz5/b$l;->F3:I

    invoke-virtual {p0}, Landroid/view/View;->isEnabled()Z

    move-result v0

    invoke-virtual {p2, p3, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p3

    invoke-virtual {p0, p3}, Landroid/view/View;->setEnabled(Z)V

    .line 58
    invoke-virtual {p2}, Landroid/content/res/TypedArray;->recycle()V

    .line 59
    new-instance p2, Landroid/graphics/Paint;

    invoke-direct {p2}, Landroid/graphics/Paint;-><init>()V

    iput-object p2, p0, Lcom/xw/repo/BubbleSeekBar;->W:Landroid/graphics/Paint;

    .line 60
    invoke-virtual {p2, v2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 61
    iget-object p2, p0, Lcom/xw/repo/BubbleSeekBar;->W:Landroid/graphics/Paint;

    sget-object p3, Landroid/graphics/Paint$Cap;->ROUND:Landroid/graphics/Paint$Cap;

    invoke-virtual {p2, p3}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    .line 62
    iget-object p2, p0, Lcom/xw/repo/BubbleSeekBar;->W:Landroid/graphics/Paint;

    sget-object p3, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {p2, p3}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 63
    new-instance p2, Landroid/graphics/Rect;

    invoke-direct {p2}, Landroid/graphics/Rect;-><init>()V

    iput-object p2, p0, Lcom/xw/repo/BubbleSeekBar;->b1:Landroid/graphics/Rect;

    .line 64
    invoke-static {v1}, Lcom/xw/repo/b;->a(I)I

    move-result p2

    iput p2, p0, Lcom/xw/repo/BubbleSeekBar;->O:I

    .line 65
    invoke-direct {p0}, Lcom/xw/repo/BubbleSeekBar;->J()V

    .line 66
    iget-boolean p2, p0, Lcom/xw/repo/BubbleSeekBar;->D:Z

    if-eqz p2, :cond_5

    return-void

    :cond_5
    const-string p2, "window"

    .line 67
    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/view/WindowManager;

    iput-object p2, p0, Lcom/xw/repo/BubbleSeekBar;->g1:Landroid/view/WindowManager;

    .line 68
    new-instance p2, Lcom/xw/repo/BubbleSeekBar$i;

    invoke-direct {p2, p0, p1}, Lcom/xw/repo/BubbleSeekBar$i;-><init>(Lcom/xw/repo/BubbleSeekBar;Landroid/content/Context;)V

    iput-object p2, p0, Lcom/xw/repo/BubbleSeekBar;->p1:Lcom/xw/repo/BubbleSeekBar$i;

    .line 69
    iget-boolean p1, p0, Lcom/xw/repo/BubbleSeekBar;->w:Z

    if-eqz p1, :cond_6

    .line 70
    invoke-virtual {p0}, Lcom/xw/repo/BubbleSeekBar;->getProgressFloat()F

    move-result p1

    invoke-static {p1}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object p1

    goto :goto_3

    :cond_6
    invoke-virtual {p0}, Lcom/xw/repo/BubbleSeekBar;->getProgress()I

    move-result p1

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    .line 71
    :goto_3
    invoke-virtual {p2, p1}, Lcom/xw/repo/BubbleSeekBar$i;->a(Ljava/lang/String;)V

    .line 72
    new-instance p1, Landroid/view/WindowManager$LayoutParams;

    invoke-direct {p1}, Landroid/view/WindowManager$LayoutParams;-><init>()V

    iput-object p1, p0, Lcom/xw/repo/BubbleSeekBar;->b2:Landroid/view/WindowManager$LayoutParams;

    const p2, 0x800033

    .line 73
    iput p2, p1, Landroid/view/WindowManager$LayoutParams;->gravity:I

    const/4 p2, -0x2

    .line 74
    iput p2, p1, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 75
    iput p2, p1, Landroid/view/WindowManager$LayoutParams;->height:I

    const/4 p2, -0x3

    .line 76
    iput p2, p1, Landroid/view/WindowManager$LayoutParams;->format:I

    const p2, 0x80028

    .line 77
    iput p2, p1, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 78
    invoke-static {}, Lcom/xw/repo/b;->b()Z

    move-result p1

    if-nez p1, :cond_8

    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 p2, 0x19

    if-lt p1, p2, :cond_7

    goto :goto_4

    .line 79
    :cond_7
    iget-object p1, p0, Lcom/xw/repo/BubbleSeekBar;->b2:Landroid/view/WindowManager$LayoutParams;

    const/16 p2, 0x7d5

    iput p2, p1, Landroid/view/WindowManager$LayoutParams;->type:I

    goto :goto_5

    .line 80
    :cond_8
    :goto_4
    iget-object p1, p0, Lcom/xw/repo/BubbleSeekBar;->b2:Landroid/view/WindowManager$LayoutParams;

    iput v1, p1, Landroid/view/WindowManager$LayoutParams;->type:I

    .line 81
    :goto_5
    invoke-direct {p0}, Lcom/xw/repo/BubbleSeekBar;->D()V

    return-void
.end method

.method private A(F)F
    .locals 4

    .line 1
    iget v0, p0, Lcom/xw/repo/BubbleSeekBar;->U:F

    cmpg-float v1, p1, v0

    if-gtz v1, :cond_0

    return v0

    .line 2
    :cond_0
    iget v0, p0, Lcom/xw/repo/BubbleSeekBar;->V:F

    cmpl-float v1, p1, v0

    if-ltz v1, :cond_1

    return v0

    :cond_1
    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 3
    :goto_0
    iget v2, p0, Lcom/xw/repo/BubbleSeekBar;->l:I

    if-gt v1, v2, :cond_3

    int-to-float v0, v1

    .line 4
    iget v2, p0, Lcom/xw/repo/BubbleSeekBar;->M:F

    mul-float v0, v0, v2

    iget v3, p0, Lcom/xw/repo/BubbleSeekBar;->U:F

    add-float/2addr v0, v3

    cmpg-float v3, v0, p1

    if-gtz v3, :cond_2

    sub-float v3, p1, v0

    cmpg-float v2, v3, v2

    if-gtz v2, :cond_2

    goto :goto_1

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_3
    :goto_1
    sub-float/2addr p1, v0

    .line 5
    iget v2, p0, Lcom/xw/repo/BubbleSeekBar;->M:F

    const/high16 v3, 0x40000000    # 2.0f

    div-float v3, v2, v3

    cmpg-float p1, p1, v3

    if-gtz p1, :cond_4

    return v0

    :cond_4
    add-int/lit8 v1, v1, 0x1

    int-to-float p1, v1

    mul-float p1, p1, v2

    .line 6
    iget v0, p0, Lcom/xw/repo/BubbleSeekBar;->U:F

    add-float/2addr p1, v0

    return p1
.end method

.method private B()F
    .locals 4

    .line 1
    iget-boolean v0, p0, Lcom/xw/repo/BubbleSeekBar;->E:Z

    if-eqz v0, :cond_0

    .line 2
    iget v0, p0, Lcom/xw/repo/BubbleSeekBar;->y1:F

    iget v1, p0, Lcom/xw/repo/BubbleSeekBar;->L:F

    iget v2, p0, Lcom/xw/repo/BubbleSeekBar;->c:F

    iget v3, p0, Lcom/xw/repo/BubbleSeekBar;->a:F

    sub-float/2addr v2, v3

    mul-float v1, v1, v2

    iget v2, p0, Lcom/xw/repo/BubbleSeekBar;->I:F

    div-float/2addr v1, v2

    sub-float/2addr v0, v1

    return v0

    .line 3
    :cond_0
    iget v0, p0, Lcom/xw/repo/BubbleSeekBar;->y1:F

    iget v1, p0, Lcom/xw/repo/BubbleSeekBar;->L:F

    iget v2, p0, Lcom/xw/repo/BubbleSeekBar;->c:F

    iget v3, p0, Lcom/xw/repo/BubbleSeekBar;->a:F

    sub-float/2addr v2, v3

    mul-float v1, v1, v2

    iget v2, p0, Lcom/xw/repo/BubbleSeekBar;->I:F

    div-float/2addr v1, v2

    add-float/2addr v0, v1

    return v0
.end method

.method private C()F
    .locals 2

    .line 1
    iget-boolean v0, p0, Lcom/xw/repo/BubbleSeekBar;->E:Z

    if-eqz v0, :cond_0

    .line 2
    iget v0, p0, Lcom/xw/repo/BubbleSeekBar;->V:F

    iget v1, p0, Lcom/xw/repo/BubbleSeekBar;->K:F

    sub-float/2addr v0, v1

    iget v1, p0, Lcom/xw/repo/BubbleSeekBar;->I:F

    mul-float v0, v0, v1

    iget v1, p0, Lcom/xw/repo/BubbleSeekBar;->L:F

    div-float/2addr v0, v1

    iget v1, p0, Lcom/xw/repo/BubbleSeekBar;->a:F

    :goto_0
    add-float/2addr v0, v1

    return v0

    .line 3
    :cond_0
    iget v0, p0, Lcom/xw/repo/BubbleSeekBar;->K:F

    iget v1, p0, Lcom/xw/repo/BubbleSeekBar;->U:F

    sub-float/2addr v0, v1

    iget v1, p0, Lcom/xw/repo/BubbleSeekBar;->I:F

    mul-float v0, v0, v1

    iget v1, p0, Lcom/xw/repo/BubbleSeekBar;->L:F

    div-float/2addr v0, v1

    iget v1, p0, Lcom/xw/repo/BubbleSeekBar;->a:F

    goto :goto_0
.end method

.method private D()V
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/xw/repo/BubbleSeekBar;->W:Landroid/graphics/Paint;

    iget v1, p0, Lcom/xw/repo/BubbleSeekBar;->G:I

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 2
    iget-boolean v0, p0, Lcom/xw/repo/BubbleSeekBar;->w:Z

    if-eqz v0, :cond_1

    .line 3
    iget-boolean v0, p0, Lcom/xw/repo/BubbleSeekBar;->E:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/xw/repo/BubbleSeekBar;->b:F

    goto :goto_0

    :cond_0
    iget v0, p0, Lcom/xw/repo/BubbleSeekBar;->a:F

    :goto_0
    invoke-direct {p0, v0}, Lcom/xw/repo/BubbleSeekBar;->G(F)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    .line 4
    :cond_1
    iget-boolean v0, p0, Lcom/xw/repo/BubbleSeekBar;->E:Z

    if-eqz v0, :cond_3

    .line 5
    iget-boolean v0, p0, Lcom/xw/repo/BubbleSeekBar;->d:Z

    if-eqz v0, :cond_2

    iget v0, p0, Lcom/xw/repo/BubbleSeekBar;->b:F

    invoke-direct {p0, v0}, Lcom/xw/repo/BubbleSeekBar;->G(F)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :cond_2
    iget v0, p0, Lcom/xw/repo/BubbleSeekBar;->b:F

    float-to-int v0, v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    .line 6
    :cond_3
    iget-boolean v0, p0, Lcom/xw/repo/BubbleSeekBar;->d:Z

    if-eqz v0, :cond_4

    iget v0, p0, Lcom/xw/repo/BubbleSeekBar;->a:F

    invoke-direct {p0, v0}, Lcom/xw/repo/BubbleSeekBar;->G(F)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :cond_4
    iget v0, p0, Lcom/xw/repo/BubbleSeekBar;->a:F

    float-to-int v0, v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    .line 7
    :goto_1
    iget-object v1, p0, Lcom/xw/repo/BubbleSeekBar;->W:Landroid/graphics/Paint;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    iget-object v3, p0, Lcom/xw/repo/BubbleSeekBar;->b1:Landroid/graphics/Rect;

    const/4 v4, 0x0

    invoke-virtual {v1, v0, v4, v2, v3}, Landroid/graphics/Paint;->getTextBounds(Ljava/lang/String;IILandroid/graphics/Rect;)V

    .line 8
    iget-object v0, p0, Lcom/xw/repo/BubbleSeekBar;->b1:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v0

    iget v1, p0, Lcom/xw/repo/BubbleSeekBar;->O:I

    mul-int/lit8 v1, v1, 0x2

    add-int/2addr v0, v1

    shr-int/lit8 v0, v0, 0x1

    .line 9
    iget-boolean v1, p0, Lcom/xw/repo/BubbleSeekBar;->w:Z

    if-eqz v1, :cond_6

    .line 10
    iget-boolean v1, p0, Lcom/xw/repo/BubbleSeekBar;->E:Z

    if-eqz v1, :cond_5

    iget v1, p0, Lcom/xw/repo/BubbleSeekBar;->a:F

    goto :goto_2

    :cond_5
    iget v1, p0, Lcom/xw/repo/BubbleSeekBar;->b:F

    :goto_2
    invoke-direct {p0, v1}, Lcom/xw/repo/BubbleSeekBar;->G(F)Ljava/lang/String;

    move-result-object v1

    goto :goto_3

    .line 11
    :cond_6
    iget-boolean v1, p0, Lcom/xw/repo/BubbleSeekBar;->E:Z

    if-eqz v1, :cond_8

    .line 12
    iget-boolean v1, p0, Lcom/xw/repo/BubbleSeekBar;->d:Z

    if-eqz v1, :cond_7

    iget v1, p0, Lcom/xw/repo/BubbleSeekBar;->a:F

    invoke-direct {p0, v1}, Lcom/xw/repo/BubbleSeekBar;->G(F)Ljava/lang/String;

    move-result-object v1

    goto :goto_3

    :cond_7
    iget v1, p0, Lcom/xw/repo/BubbleSeekBar;->a:F

    float-to-int v1, v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_3

    .line 13
    :cond_8
    iget-boolean v1, p0, Lcom/xw/repo/BubbleSeekBar;->d:Z

    if-eqz v1, :cond_9

    iget v1, p0, Lcom/xw/repo/BubbleSeekBar;->b:F

    invoke-direct {p0, v1}, Lcom/xw/repo/BubbleSeekBar;->G(F)Ljava/lang/String;

    move-result-object v1

    goto :goto_3

    :cond_9
    iget v1, p0, Lcom/xw/repo/BubbleSeekBar;->b:F

    float-to-int v1, v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    .line 14
    :goto_3
    iget-object v2, p0, Lcom/xw/repo/BubbleSeekBar;->W:Landroid/graphics/Paint;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    iget-object v5, p0, Lcom/xw/repo/BubbleSeekBar;->b1:Landroid/graphics/Rect;

    invoke-virtual {v2, v1, v4, v3, v5}, Landroid/graphics/Paint;->getTextBounds(Ljava/lang/String;IILandroid/graphics/Rect;)V

    .line 15
    iget-object v1, p0, Lcom/xw/repo/BubbleSeekBar;->b1:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v1

    iget v2, p0, Lcom/xw/repo/BubbleSeekBar;->O:I

    mul-int/lit8 v2, v2, 0x2

    add-int/2addr v1, v2

    shr-int/lit8 v1, v1, 0x1

    const/16 v2, 0xe

    .line 16
    invoke-static {v2}, Lcom/xw/repo/b;->a(I)I

    move-result v2

    iput v2, p0, Lcom/xw/repo/BubbleSeekBar;->x1:I

    .line 17
    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    invoke-static {v2, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 18
    iget v1, p0, Lcom/xw/repo/BubbleSeekBar;->O:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/xw/repo/BubbleSeekBar;->x1:I

    return-void
.end method

.method private G(F)Ljava/lang/String;
    .locals 0

    invoke-direct {p0, p1}, Lcom/xw/repo/BubbleSeekBar;->H(F)F

    move-result p1

    invoke-static {p1}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private H(F)F
    .locals 2

    float-to-double v0, p1

    .line 1
    invoke-static {v0, v1}, Ljava/math/BigDecimal;->valueOf(D)Ljava/math/BigDecimal;

    move-result-object p1

    const/4 v0, 0x1

    const/4 v1, 0x4

    .line 2
    invoke-virtual {p1, v0, v1}, Ljava/math/BigDecimal;->setScale(II)Ljava/math/BigDecimal;

    move-result-object p1

    invoke-virtual {p1}, Ljava/math/BigDecimal;->floatValue()F

    move-result p1

    return p1
.end method

.method private I()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/xw/repo/BubbleSeekBar;->p1:Lcom/xw/repo/BubbleSeekBar$i;

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/16 v1, 0x8

    .line 2
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 3
    iget-object v0, p0, Lcom/xw/repo/BubbleSeekBar;->p1:Lcom/xw/repo/BubbleSeekBar$i;

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 4
    iget-object v0, p0, Lcom/xw/repo/BubbleSeekBar;->g1:Landroid/view/WindowManager;

    iget-object v1, p0, Lcom/xw/repo/BubbleSeekBar;->p1:Lcom/xw/repo/BubbleSeekBar$i;

    invoke-interface {v0, v1}, Landroid/view/WindowManager;->removeViewImmediate(Landroid/view/View;)V

    :cond_1
    return-void
.end method

.method private J()V
    .locals 6

    .line 1
    iget v0, p0, Lcom/xw/repo/BubbleSeekBar;->a:F

    iget v1, p0, Lcom/xw/repo/BubbleSeekBar;->b:F

    cmpl-float v0, v0, v1

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lcom/xw/repo/BubbleSeekBar;->a:F

    const/high16 v0, 0x42c80000    # 100.0f

    .line 3
    iput v0, p0, Lcom/xw/repo/BubbleSeekBar;->b:F

    .line 4
    :cond_0
    iget v0, p0, Lcom/xw/repo/BubbleSeekBar;->a:F

    iget v1, p0, Lcom/xw/repo/BubbleSeekBar;->b:F

    cmpl-float v2, v0, v1

    if-lez v2, :cond_1

    .line 5
    iput v0, p0, Lcom/xw/repo/BubbleSeekBar;->b:F

    .line 6
    iput v1, p0, Lcom/xw/repo/BubbleSeekBar;->a:F

    .line 7
    :cond_1
    iget v0, p0, Lcom/xw/repo/BubbleSeekBar;->c:F

    iget v1, p0, Lcom/xw/repo/BubbleSeekBar;->a:F

    cmpg-float v0, v0, v1

    if-gez v0, :cond_2

    .line 8
    iput v1, p0, Lcom/xw/repo/BubbleSeekBar;->c:F

    .line 9
    :cond_2
    iget v0, p0, Lcom/xw/repo/BubbleSeekBar;->c:F

    iget v1, p0, Lcom/xw/repo/BubbleSeekBar;->b:F

    cmpl-float v0, v0, v1

    if-lez v0, :cond_3

    .line 10
    iput v1, p0, Lcom/xw/repo/BubbleSeekBar;->c:F

    .line 11
    :cond_3
    iget v0, p0, Lcom/xw/repo/BubbleSeekBar;->f:I

    iget v1, p0, Lcom/xw/repo/BubbleSeekBar;->e:I

    const/4 v2, 0x2

    if-ge v0, v1, :cond_4

    .line 12
    invoke-static {v2}, Lcom/xw/repo/b;->a(I)I

    move-result v0

    add-int/2addr v1, v0

    iput v1, p0, Lcom/xw/repo/BubbleSeekBar;->f:I

    .line 13
    :cond_4
    iget v0, p0, Lcom/xw/repo/BubbleSeekBar;->g:I

    iget v1, p0, Lcom/xw/repo/BubbleSeekBar;->f:I

    if-gt v0, v1, :cond_5

    .line 14
    invoke-static {v2}, Lcom/xw/repo/b;->a(I)I

    move-result v0

    add-int/2addr v1, v0

    iput v1, p0, Lcom/xw/repo/BubbleSeekBar;->g:I

    .line 15
    :cond_5
    iget v0, p0, Lcom/xw/repo/BubbleSeekBar;->h:I

    iget v1, p0, Lcom/xw/repo/BubbleSeekBar;->f:I

    if-gt v0, v1, :cond_6

    mul-int/lit8 v1, v1, 0x2

    .line 16
    iput v1, p0, Lcom/xw/repo/BubbleSeekBar;->h:I

    .line 17
    :cond_6
    iget v0, p0, Lcom/xw/repo/BubbleSeekBar;->l:I

    if-gtz v0, :cond_7

    const/16 v0, 0xa

    .line 18
    iput v0, p0, Lcom/xw/repo/BubbleSeekBar;->l:I

    .line 19
    :cond_7
    iget v0, p0, Lcom/xw/repo/BubbleSeekBar;->b:F

    iget v1, p0, Lcom/xw/repo/BubbleSeekBar;->a:F

    sub-float/2addr v0, v1

    iput v0, p0, Lcom/xw/repo/BubbleSeekBar;->I:F

    .line 20
    iget v1, p0, Lcom/xw/repo/BubbleSeekBar;->l:I

    int-to-float v1, v1

    div-float/2addr v0, v1

    iput v0, p0, Lcom/xw/repo/BubbleSeekBar;->J:F

    const/high16 v1, 0x3f800000    # 1.0f

    const/4 v3, 0x1

    cmpg-float v0, v0, v1

    if-gez v0, :cond_8

    .line 21
    iput-boolean v3, p0, Lcom/xw/repo/BubbleSeekBar;->d:Z

    .line 22
    :cond_8
    iget-boolean v0, p0, Lcom/xw/repo/BubbleSeekBar;->d:Z

    if-eqz v0, :cond_9

    .line 23
    iput-boolean v3, p0, Lcom/xw/repo/BubbleSeekBar;->w:Z

    .line 24
    :cond_9
    iget v0, p0, Lcom/xw/repo/BubbleSeekBar;->r:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_a

    .line 25
    iput-boolean v3, p0, Lcom/xw/repo/BubbleSeekBar;->o:Z

    .line 26
    :cond_a
    iget-boolean v4, p0, Lcom/xw/repo/BubbleSeekBar;->o:Z

    const/4 v5, 0x0

    if-eqz v4, :cond_c

    if-ne v0, v1, :cond_b

    .line 27
    iput v5, p0, Lcom/xw/repo/BubbleSeekBar;->r:I

    .line 28
    :cond_b
    iget v0, p0, Lcom/xw/repo/BubbleSeekBar;->r:I

    if-ne v0, v2, :cond_c

    .line 29
    iput-boolean v3, p0, Lcom/xw/repo/BubbleSeekBar;->m:Z

    .line 30
    :cond_c
    iget v0, p0, Lcom/xw/repo/BubbleSeekBar;->s:I

    if-ge v0, v3, :cond_d

    .line 31
    iput v3, p0, Lcom/xw/repo/BubbleSeekBar;->s:I

    .line 32
    :cond_d
    invoke-direct {p0}, Lcom/xw/repo/BubbleSeekBar;->K()V

    .line 33
    iget-boolean v0, p0, Lcom/xw/repo/BubbleSeekBar;->y:Z

    if-eqz v0, :cond_e

    .line 34
    iput-boolean v5, p0, Lcom/xw/repo/BubbleSeekBar;->z:Z

    .line 35
    iput-boolean v5, p0, Lcom/xw/repo/BubbleSeekBar;->n:Z

    .line 36
    :cond_e
    iget-boolean v0, p0, Lcom/xw/repo/BubbleSeekBar;->n:Z

    if-eqz v0, :cond_f

    iget-boolean v0, p0, Lcom/xw/repo/BubbleSeekBar;->m:Z

    if-nez v0, :cond_f

    .line 37
    iput-boolean v5, p0, Lcom/xw/repo/BubbleSeekBar;->n:Z

    .line 38
    :cond_f
    iget-boolean v0, p0, Lcom/xw/repo/BubbleSeekBar;->z:Z

    if-eqz v0, :cond_11

    .line 39
    iget v0, p0, Lcom/xw/repo/BubbleSeekBar;->a:F

    iput v0, p0, Lcom/xw/repo/BubbleSeekBar;->x2:F

    .line 40
    iget v1, p0, Lcom/xw/repo/BubbleSeekBar;->c:F

    cmpl-float v0, v1, v0

    if-eqz v0, :cond_10

    .line 41
    iget v0, p0, Lcom/xw/repo/BubbleSeekBar;->J:F

    iput v0, p0, Lcom/xw/repo/BubbleSeekBar;->x2:F

    .line 42
    :cond_10
    iput-boolean v3, p0, Lcom/xw/repo/BubbleSeekBar;->m:Z

    .line 43
    iput-boolean v3, p0, Lcom/xw/repo/BubbleSeekBar;->n:Z

    .line 44
    :cond_11
    iget-boolean v0, p0, Lcom/xw/repo/BubbleSeekBar;->D:Z

    if-eqz v0, :cond_12

    .line 45
    iput-boolean v5, p0, Lcom/xw/repo/BubbleSeekBar;->B:Z

    .line 46
    :cond_12
    iget-boolean v0, p0, Lcom/xw/repo/BubbleSeekBar;->B:Z

    if-eqz v0, :cond_13

    .line 47
    iget v0, p0, Lcom/xw/repo/BubbleSeekBar;->c:F

    invoke-virtual {p0, v0}, Lcom/xw/repo/BubbleSeekBar;->setProgress(F)V

    .line 48
    :cond_13
    iget-boolean v0, p0, Lcom/xw/repo/BubbleSeekBar;->d:Z

    if-nez v0, :cond_15

    iget-boolean v0, p0, Lcom/xw/repo/BubbleSeekBar;->z:Z

    if-nez v0, :cond_15

    iget-boolean v0, p0, Lcom/xw/repo/BubbleSeekBar;->o:Z

    if-eqz v0, :cond_14

    iget v0, p0, Lcom/xw/repo/BubbleSeekBar;->r:I

    if-ne v0, v2, :cond_14

    goto :goto_0

    :cond_14
    iget v0, p0, Lcom/xw/repo/BubbleSeekBar;->u:I

    goto :goto_1

    :cond_15
    :goto_0
    iget v0, p0, Lcom/xw/repo/BubbleSeekBar;->p:I

    :goto_1
    iput v0, p0, Lcom/xw/repo/BubbleSeekBar;->u:I

    return-void
.end method

.method private K()V
    .locals 8

    .line 1
    iget v0, p0, Lcom/xw/repo/BubbleSeekBar;->r:I

    const/4 v1, 0x2

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 2
    :goto_0
    iget v4, p0, Lcom/xw/repo/BubbleSeekBar;->s:I

    if-le v4, v3, :cond_1

    iget v4, p0, Lcom/xw/repo/BubbleSeekBar;->l:I

    rem-int/2addr v4, v1

    if-nez v4, :cond_1

    goto :goto_1

    :cond_1
    const/4 v3, 0x0

    .line 3
    :goto_1
    iget v1, p0, Lcom/xw/repo/BubbleSeekBar;->l:I

    if-gt v2, v1, :cond_8

    .line 4
    iget-boolean v4, p0, Lcom/xw/repo/BubbleSeekBar;->E:Z

    if-eqz v4, :cond_2

    iget v5, p0, Lcom/xw/repo/BubbleSeekBar;->b:F

    iget v6, p0, Lcom/xw/repo/BubbleSeekBar;->J:F

    int-to-float v7, v2

    mul-float v6, v6, v7

    sub-float/2addr v5, v6

    goto :goto_2

    :cond_2
    iget v5, p0, Lcom/xw/repo/BubbleSeekBar;->a:F

    iget v6, p0, Lcom/xw/repo/BubbleSeekBar;->J:F

    int-to-float v7, v2

    mul-float v6, v6, v7

    add-float/2addr v5, v6

    :goto_2
    if-eqz v0, :cond_4

    if-eqz v3, :cond_5

    .line 5
    iget v1, p0, Lcom/xw/repo/BubbleSeekBar;->s:I

    rem-int v1, v2, v1

    if-nez v1, :cond_7

    if-eqz v4, :cond_3

    .line 6
    iget v1, p0, Lcom/xw/repo/BubbleSeekBar;->b:F

    iget v4, p0, Lcom/xw/repo/BubbleSeekBar;->J:F

    int-to-float v5, v2

    mul-float v4, v4, v5

    sub-float/2addr v1, v4

    goto :goto_3

    :cond_3
    iget v1, p0, Lcom/xw/repo/BubbleSeekBar;->a:F

    iget v4, p0, Lcom/xw/repo/BubbleSeekBar;->J:F

    int-to-float v5, v2

    mul-float v4, v4, v5

    add-float/2addr v1, v4

    :goto_3
    move v5, v1

    goto :goto_4

    :cond_4
    if-eqz v2, :cond_5

    if-eq v2, v1, :cond_5

    goto :goto_6

    .line 7
    :cond_5
    :goto_4
    iget-object v1, p0, Lcom/xw/repo/BubbleSeekBar;->Q:Landroid/util/SparseArray;

    iget-boolean v4, p0, Lcom/xw/repo/BubbleSeekBar;->d:Z

    if-eqz v4, :cond_6

    invoke-direct {p0, v5}, Lcom/xw/repo/BubbleSeekBar;->G(F)Ljava/lang/String;

    move-result-object v4

    goto :goto_5

    :cond_6
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    float-to-int v5, v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    :goto_5
    invoke-virtual {v1, v2, v4}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    :cond_7
    :goto_6
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_8
    return-void
.end method

.method private L(Landroid/view/MotionEvent;)Z
    .locals 5

    .line 1
    invoke-virtual {p0}, Landroid/view/View;->isEnabled()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 2
    :cond_0
    iget v0, p0, Lcom/xw/repo/BubbleSeekBar;->L:F

    iget v2, p0, Lcom/xw/repo/BubbleSeekBar;->I:F

    div-float/2addr v0, v2

    iget v2, p0, Lcom/xw/repo/BubbleSeekBar;->c:F

    iget v3, p0, Lcom/xw/repo/BubbleSeekBar;->a:F

    sub-float/2addr v2, v3

    mul-float v0, v0, v2

    .line 3
    iget-boolean v2, p0, Lcom/xw/repo/BubbleSeekBar;->E:Z

    if-eqz v2, :cond_1

    iget v2, p0, Lcom/xw/repo/BubbleSeekBar;->V:F

    sub-float/2addr v2, v0

    goto :goto_0

    :cond_1
    iget v2, p0, Lcom/xw/repo/BubbleSeekBar;->U:F

    add-float/2addr v2, v0

    .line 4
    :goto_0
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    int-to-float v0, v0

    const/high16 v3, 0x40000000    # 2.0f

    div-float/2addr v0, v3

    .line 5
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    sub-float/2addr v3, v2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v4

    sub-float/2addr v4, v2

    mul-float v3, v3, v4

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    sub-float/2addr v2, v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    sub-float/2addr p1, v0

    mul-float v2, v2, p1

    add-float/2addr v3, v2

    iget p1, p0, Lcom/xw/repo/BubbleSeekBar;->U:F

    const/16 v0, 0x8

    .line 6
    invoke-static {v0}, Lcom/xw/repo/b;->a(I)I

    move-result v2

    int-to-float v2, v2

    add-float/2addr p1, v2

    iget v2, p0, Lcom/xw/repo/BubbleSeekBar;->U:F

    invoke-static {v0}, Lcom/xw/repo/b;->a(I)I

    move-result v0

    int-to-float v0, v0

    add-float/2addr v2, v0

    mul-float p1, p1, v2

    cmpg-float p1, v3, p1

    if-gtz p1, :cond_2

    const/4 v1, 0x1

    :cond_2
    return v1
.end method

.method private M(Landroid/view/MotionEvent;)Z
    .locals 3

    .line 1
    invoke-virtual {p0}, Landroid/view/View;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    move-result v1

    int-to-float v1, v1

    cmpl-float v0, v0, v1

    if-ltz v0, :cond_0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    invoke-virtual {p0}, Landroid/view/View;->getPaddingRight()I

    move-result v2

    sub-int/2addr v1, v2

    int-to-float v1, v1

    cmpg-float v0, v0, v1

    if-gtz v0, :cond_0

    .line 2
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    move-result v1

    int-to-float v1, v1

    cmpl-float v0, v0, v1

    if-ltz v0, :cond_0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    invoke-virtual {p0}, Landroid/view/View;->getPaddingBottom()I

    move-result v1

    sub-int/2addr v0, v1

    int-to-float v0, v0

    cmpg-float p1, p1, v0

    if-gtz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method private N()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/xw/repo/BubbleSeekBar;->g2:[I

    invoke-virtual {p0, v0}, Landroid/view/View;->getLocationInWindow([I)V

    .line 2
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    .line 3
    instance-of v1, v0, Landroid/view/View;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    check-cast v0, Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    if-lez v1, :cond_0

    .line 4
    iget-object v1, p0, Lcom/xw/repo/BubbleSeekBar;->g2:[I

    aget v3, v1, v2

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    rem-int/2addr v3, v0

    aput v3, v1, v2

    .line 5
    :cond_0
    iget-boolean v0, p0, Lcom/xw/repo/BubbleSeekBar;->E:Z

    const/high16 v1, 0x40000000    # 2.0f

    if-eqz v0, :cond_1

    .line 6
    iget-object v0, p0, Lcom/xw/repo/BubbleSeekBar;->g2:[I

    aget v0, v0, v2

    int-to-float v0, v0

    iget v2, p0, Lcom/xw/repo/BubbleSeekBar;->V:F

    add-float/2addr v0, v2

    iget-object v2, p0, Lcom/xw/repo/BubbleSeekBar;->p1:Lcom/xw/repo/BubbleSeekBar$i;

    invoke-virtual {v2}, Landroid/view/View;->getMeasuredWidth()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v2, v1

    sub-float/2addr v0, v2

    iput v0, p0, Lcom/xw/repo/BubbleSeekBar;->y1:F

    goto :goto_0

    .line 7
    :cond_1
    iget-object v0, p0, Lcom/xw/repo/BubbleSeekBar;->g2:[I

    aget v0, v0, v2

    int-to-float v0, v0

    iget v2, p0, Lcom/xw/repo/BubbleSeekBar;->U:F

    add-float/2addr v0, v2

    iget-object v2, p0, Lcom/xw/repo/BubbleSeekBar;->p1:Lcom/xw/repo/BubbleSeekBar$i;

    invoke-virtual {v2}, Landroid/view/View;->getMeasuredWidth()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v2, v1

    sub-float/2addr v0, v2

    iput v0, p0, Lcom/xw/repo/BubbleSeekBar;->y1:F

    .line 8
    :goto_0
    invoke-direct {p0}, Lcom/xw/repo/BubbleSeekBar;->B()F

    move-result v0

    iput v0, p0, Lcom/xw/repo/BubbleSeekBar;->V1:F

    .line 9
    iget-object v0, p0, Lcom/xw/repo/BubbleSeekBar;->g2:[I

    const/4 v1, 0x1

    aget v0, v0, v1

    iget-object v1, p0, Lcom/xw/repo/BubbleSeekBar;->p1:Lcom/xw/repo/BubbleSeekBar$i;

    invoke-virtual {v1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    sub-int/2addr v0, v1

    int-to-float v0, v0

    iput v0, p0, Lcom/xw/repo/BubbleSeekBar;->T1:F

    const/16 v1, 0x18

    .line 10
    invoke-static {v1}, Lcom/xw/repo/b;->a(I)I

    move-result v1

    int-to-float v1, v1

    sub-float/2addr v0, v1

    iput v0, p0, Lcom/xw/repo/BubbleSeekBar;->T1:F

    .line 11
    invoke-static {}, Lcom/xw/repo/b;->b()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 12
    iget v0, p0, Lcom/xw/repo/BubbleSeekBar;->T1:F

    const/4 v1, 0x4

    invoke-static {v1}, Lcom/xw/repo/b;->a(I)I

    move-result v1

    int-to-float v1, v1

    sub-float/2addr v0, v1

    iput v0, p0, Lcom/xw/repo/BubbleSeekBar;->T1:F

    .line 13
    :cond_2
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 14
    instance-of v1, v0, Landroid/app/Activity;

    if-eqz v1, :cond_3

    .line 15
    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 16
    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    and-int/lit16 v0, v0, 0x400

    if-eqz v0, :cond_3

    .line 17
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v0

    const-string v1, "status_bar_height"

    const-string v2, "dimen"

    const-string v3, "android"

    .line 18
    invoke-virtual {v0, v1, v2, v3}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    .line 19
    iget v2, p0, Lcom/xw/repo/BubbleSeekBar;->T1:F

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    int-to-float v0, v0

    add-float/2addr v2, v0

    iput v2, p0, Lcom/xw/repo/BubbleSeekBar;->T1:F

    :cond_3
    return-void
.end method

.method private O()F
    .locals 6

    .line 1
    iget v0, p0, Lcom/xw/repo/BubbleSeekBar;->c:F

    .line 2
    iget-boolean v1, p0, Lcom/xw/repo/BubbleSeekBar;->z:Z

    if-eqz v1, :cond_8

    iget-boolean v1, p0, Lcom/xw/repo/BubbleSeekBar;->S:Z

    if-eqz v1, :cond_8

    .line 3
    iget v1, p0, Lcom/xw/repo/BubbleSeekBar;->J:F

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr v1, v2

    .line 4
    iget-boolean v2, p0, Lcom/xw/repo/BubbleSeekBar;->x:Z

    if-eqz v2, :cond_4

    .line 5
    iget v2, p0, Lcom/xw/repo/BubbleSeekBar;->a:F

    cmpl-float v2, v0, v2

    if-eqz v2, :cond_3

    iget v2, p0, Lcom/xw/repo/BubbleSeekBar;->b:F

    cmpl-float v2, v0, v2

    if-nez v2, :cond_0

    goto :goto_1

    :cond_0
    const/4 v2, 0x0

    .line 6
    :goto_0
    iget v3, p0, Lcom/xw/repo/BubbleSeekBar;->l:I

    if-gt v2, v3, :cond_4

    int-to-float v3, v2

    .line 7
    iget v4, p0, Lcom/xw/repo/BubbleSeekBar;->J:F

    mul-float v3, v3, v4

    cmpg-float v5, v3, v0

    if-gez v5, :cond_2

    add-float v5, v3, v4

    cmpl-float v5, v5, v0

    if-ltz v5, :cond_2

    add-float/2addr v1, v3

    cmpl-float v0, v1, v0

    if-lez v0, :cond_1

    return v3

    :cond_1
    add-float/2addr v3, v4

    return v3

    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_3
    :goto_1
    return v0

    .line 8
    :cond_4
    iget v2, p0, Lcom/xw/repo/BubbleSeekBar;->x2:F

    cmpl-float v3, v0, v2

    if-ltz v3, :cond_6

    add-float/2addr v1, v2

    cmpl-float v0, v0, v1

    if-ltz v0, :cond_5

    .line 9
    iget v0, p0, Lcom/xw/repo/BubbleSeekBar;->J:F

    add-float/2addr v2, v0

    iput v2, p0, Lcom/xw/repo/BubbleSeekBar;->x2:F

    :cond_5
    return v2

    :cond_6
    sub-float v1, v2, v1

    cmpl-float v0, v0, v1

    if-ltz v0, :cond_7

    return v2

    .line 10
    :cond_7
    iget v0, p0, Lcom/xw/repo/BubbleSeekBar;->J:F

    sub-float/2addr v2, v0

    iput v2, p0, Lcom/xw/repo/BubbleSeekBar;->x2:F

    return v2

    :cond_8
    return v0
.end method

.method private P()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/xw/repo/BubbleSeekBar;->p1:Lcom/xw/repo/BubbleSeekBar$i;

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_0

    goto :goto_2

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/xw/repo/BubbleSeekBar;->b2:Landroid/view/WindowManager$LayoutParams;

    iget v1, p0, Lcom/xw/repo/BubbleSeekBar;->V1:F

    const/high16 v2, 0x3f000000    # 0.5f

    add-float/2addr v1, v2

    float-to-int v1, v1

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 3
    iget v1, p0, Lcom/xw/repo/BubbleSeekBar;->T1:F

    add-float/2addr v1, v2

    float-to-int v1, v1

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 4
    iget-object v0, p0, Lcom/xw/repo/BubbleSeekBar;->p1:Lcom/xw/repo/BubbleSeekBar$i;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    .line 5
    iget-object v0, p0, Lcom/xw/repo/BubbleSeekBar;->p1:Lcom/xw/repo/BubbleSeekBar$i;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 6
    iget-object v0, p0, Lcom/xw/repo/BubbleSeekBar;->p1:Lcom/xw/repo/BubbleSeekBar$i;

    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    iget-boolean v1, p0, Lcom/xw/repo/BubbleSeekBar;->x:Z

    if-eqz v1, :cond_1

    const-wide/16 v1, 0x0

    goto :goto_0

    :cond_1
    iget-wide v1, p0, Lcom/xw/repo/BubbleSeekBar;->A:J

    :goto_0
    invoke-virtual {v0, v1, v2}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    new-instance v1, Lcom/xw/repo/BubbleSeekBar$g;

    invoke-direct {v1, p0}, Lcom/xw/repo/BubbleSeekBar$g;-><init>(Lcom/xw/repo/BubbleSeekBar;)V

    .line 7
    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 8
    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 9
    iget-object v0, p0, Lcom/xw/repo/BubbleSeekBar;->p1:Lcom/xw/repo/BubbleSeekBar$i;

    iget-boolean v1, p0, Lcom/xw/repo/BubbleSeekBar;->w:Z

    if-eqz v1, :cond_2

    .line 10
    invoke-virtual {p0}, Lcom/xw/repo/BubbleSeekBar;->getProgressFloat()F

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    :cond_2
    invoke-virtual {p0}, Lcom/xw/repo/BubbleSeekBar;->getProgress()I

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    .line 11
    :goto_1
    invoke-virtual {v0, v1}, Lcom/xw/repo/BubbleSeekBar$i;->a(Ljava/lang/String;)V

    :cond_3
    :goto_2
    return-void
.end method

.method static synthetic a(Lcom/xw/repo/BubbleSeekBar;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/xw/repo/BubbleSeekBar;->p2:Z

    return p1
.end method

.method static synthetic b(Lcom/xw/repo/BubbleSeekBar;)V
    .locals 0

    invoke-direct {p0}, Lcom/xw/repo/BubbleSeekBar;->z()V

    return-void
.end method

.method static synthetic c(Lcom/xw/repo/BubbleSeekBar;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/xw/repo/BubbleSeekBar;->D:Z

    return p0
.end method

.method static synthetic d(Lcom/xw/repo/BubbleSeekBar;)F
    .locals 0

    iget p0, p0, Lcom/xw/repo/BubbleSeekBar;->V1:F

    return p0
.end method

.method static synthetic e(Lcom/xw/repo/BubbleSeekBar;F)F
    .locals 0

    iput p1, p0, Lcom/xw/repo/BubbleSeekBar;->V1:F

    return p1
.end method

.method static synthetic f(Lcom/xw/repo/BubbleSeekBar;)F
    .locals 0

    invoke-direct {p0}, Lcom/xw/repo/BubbleSeekBar;->B()F

    move-result p0

    return p0
.end method

.method static synthetic g(Lcom/xw/repo/BubbleSeekBar;)Landroid/view/WindowManager$LayoutParams;
    .locals 0

    iget-object p0, p0, Lcom/xw/repo/BubbleSeekBar;->b2:Landroid/view/WindowManager$LayoutParams;

    return-object p0
.end method

.method static synthetic h(Lcom/xw/repo/BubbleSeekBar;)Landroid/view/WindowManager;
    .locals 0

    iget-object p0, p0, Lcom/xw/repo/BubbleSeekBar;->g1:Landroid/view/WindowManager;

    return-object p0
.end method

.method static synthetic i(Lcom/xw/repo/BubbleSeekBar;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/xw/repo/BubbleSeekBar;->w:Z

    return p0
.end method

.method static synthetic j(Lcom/xw/repo/BubbleSeekBar;)F
    .locals 0

    invoke-direct {p0}, Lcom/xw/repo/BubbleSeekBar;->O()F

    move-result p0

    return p0
.end method

.method static synthetic k(Lcom/xw/repo/BubbleSeekBar;)Lcom/xw/repo/BubbleSeekBar$k;
    .locals 0

    iget-object p0, p0, Lcom/xw/repo/BubbleSeekBar;->T:Lcom/xw/repo/BubbleSeekBar$k;

    return-object p0
.end method

.method static synthetic l(Lcom/xw/repo/BubbleSeekBar;)V
    .locals 0

    invoke-direct {p0}, Lcom/xw/repo/BubbleSeekBar;->P()V

    return-void
.end method

.method static synthetic m(Lcom/xw/repo/BubbleSeekBar;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/xw/repo/BubbleSeekBar;->P:Z

    return p1
.end method

.method static synthetic n(Lcom/xw/repo/BubbleSeekBar;)I
    .locals 0

    iget p0, p0, Lcom/xw/repo/BubbleSeekBar;->x1:I

    return p0
.end method

.method static synthetic o(Lcom/xw/repo/BubbleSeekBar;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/xw/repo/BubbleSeekBar;->N:Z

    return p1
.end method

.method static synthetic p(Lcom/xw/repo/BubbleSeekBar;)I
    .locals 0

    iget p0, p0, Lcom/xw/repo/BubbleSeekBar;->F:I

    return p0
.end method

.method static synthetic q(Lcom/xw/repo/BubbleSeekBar;)I
    .locals 0

    iget p0, p0, Lcom/xw/repo/BubbleSeekBar;->G:I

    return p0
.end method

.method static synthetic r(Lcom/xw/repo/BubbleSeekBar;)I
    .locals 0

    iget p0, p0, Lcom/xw/repo/BubbleSeekBar;->H:I

    return p0
.end method

.method static synthetic s(Lcom/xw/repo/BubbleSeekBar;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/xw/repo/BubbleSeekBar;->B:Z

    return p0
.end method

.method static synthetic t(Lcom/xw/repo/BubbleSeekBar;)V
    .locals 0

    invoke-direct {p0}, Lcom/xw/repo/BubbleSeekBar;->I()V

    return-void
.end method

.method static synthetic u(Lcom/xw/repo/BubbleSeekBar;)J
    .locals 2

    iget-wide v0, p0, Lcom/xw/repo/BubbleSeekBar;->A:J

    return-wide v0
.end method

.method static synthetic v(Lcom/xw/repo/BubbleSeekBar;)Lcom/xw/repo/BubbleSeekBar$i;
    .locals 0

    iget-object p0, p0, Lcom/xw/repo/BubbleSeekBar;->p1:Lcom/xw/repo/BubbleSeekBar$i;

    return-object p0
.end method

.method static synthetic w(Lcom/xw/repo/BubbleSeekBar;F)F
    .locals 0

    iput p1, p0, Lcom/xw/repo/BubbleSeekBar;->K:F

    return p1
.end method

.method static synthetic x(Lcom/xw/repo/BubbleSeekBar;F)F
    .locals 0

    iput p1, p0, Lcom/xw/repo/BubbleSeekBar;->c:F

    return p1
.end method

.method static synthetic y(Lcom/xw/repo/BubbleSeekBar;)F
    .locals 0

    invoke-direct {p0}, Lcom/xw/repo/BubbleSeekBar;->C()F

    move-result p0

    return p0
.end method

.method private z()V
    .locals 12

    const/4 v0, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 1
    :goto_0
    iget v4, p0, Lcom/xw/repo/BubbleSeekBar;->l:I

    if-gt v2, v4, :cond_1

    int-to-float v3, v2

    .line 2
    iget v4, p0, Lcom/xw/repo/BubbleSeekBar;->M:F

    mul-float v3, v3, v4

    iget v5, p0, Lcom/xw/repo/BubbleSeekBar;->U:F

    add-float/2addr v3, v5

    .line 3
    iget v5, p0, Lcom/xw/repo/BubbleSeekBar;->K:F

    cmpg-float v6, v3, v5

    if-gtz v6, :cond_0

    sub-float/2addr v5, v3

    cmpg-float v4, v5, v4

    if-gtz v4, :cond_0

    goto :goto_1

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 4
    :cond_1
    :goto_1
    iget v4, p0, Lcom/xw/repo/BubbleSeekBar;->K:F

    float-to-double v4, v4

    invoke-static {v4, v5}, Ljava/math/BigDecimal;->valueOf(D)Ljava/math/BigDecimal;

    move-result-object v4

    const/4 v5, 0x4

    const/4 v6, 0x1

    .line 5
    invoke-virtual {v4, v6, v5}, Ljava/math/BigDecimal;->setScale(II)Ljava/math/BigDecimal;

    move-result-object v4

    invoke-virtual {v4}, Ljava/math/BigDecimal;->floatValue()F

    move-result v4

    cmpl-float v4, v4, v3

    if-nez v4, :cond_2

    const/4 v4, 0x1

    goto :goto_2

    :cond_2
    const/4 v4, 0x0

    .line 6
    :goto_2
    new-instance v5, Landroid/animation/AnimatorSet;

    invoke-direct {v5}, Landroid/animation/AnimatorSet;-><init>()V

    const/4 v7, 0x0

    const/4 v8, 0x2

    if-nez v4, :cond_4

    .line 7
    iget v7, p0, Lcom/xw/repo/BubbleSeekBar;->K:F

    sub-float v9, v7, v3

    iget v10, p0, Lcom/xw/repo/BubbleSeekBar;->M:F

    const/high16 v11, 0x40000000    # 2.0f

    div-float v11, v10, v11

    cmpg-float v9, v9, v11

    if-gtz v9, :cond_3

    new-array v2, v8, [F

    aput v7, v2, v1

    aput v3, v2, v6

    .line 8
    invoke-static {v2}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v2

    goto :goto_3

    :cond_3
    new-array v3, v8, [F

    aput v7, v3, v1

    add-int/2addr v2, v6

    int-to-float v2, v2

    mul-float v2, v2, v10

    .line 9
    iget v7, p0, Lcom/xw/repo/BubbleSeekBar;->U:F

    add-float/2addr v2, v7

    aput v2, v3, v6

    invoke-static {v3}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v2

    :goto_3
    move-object v7, v2

    .line 10
    new-instance v2, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v2}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {v7, v2}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 11
    new-instance v2, Lcom/xw/repo/BubbleSeekBar$e;

    invoke-direct {v2, p0}, Lcom/xw/repo/BubbleSeekBar$e;-><init>(Lcom/xw/repo/BubbleSeekBar;)V

    invoke-virtual {v7, v2}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 12
    :cond_4
    iget-boolean v2, p0, Lcom/xw/repo/BubbleSeekBar;->D:Z

    if-eqz v2, :cond_5

    if-nez v4, :cond_8

    .line 13
    iget-wide v2, p0, Lcom/xw/repo/BubbleSeekBar;->A:J

    invoke-virtual {v5, v2, v3}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    move-result-object v0

    new-array v2, v6, [Landroid/animation/Animator;

    aput-object v7, v2, v1

    invoke-virtual {v0, v2}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    goto :goto_4

    .line 14
    :cond_5
    iget-object v2, p0, Lcom/xw/repo/BubbleSeekBar;->p1:Lcom/xw/repo/BubbleSeekBar$i;

    sget-object v3, Landroid/view/View;->ALPHA:Landroid/util/Property;

    new-array v9, v6, [F

    iget-boolean v10, p0, Lcom/xw/repo/BubbleSeekBar;->B:Z

    if-eqz v10, :cond_6

    const/high16 v0, 0x3f800000    # 1.0f

    :cond_6
    aput v0, v9, v1

    invoke-static {v2, v3, v9}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    if-eqz v4, :cond_7

    .line 15
    iget-wide v1, p0, Lcom/xw/repo/BubbleSeekBar;->A:J

    invoke-virtual {v5, v1, v2}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    goto :goto_4

    .line 16
    :cond_7
    iget-wide v2, p0, Lcom/xw/repo/BubbleSeekBar;->A:J

    invoke-virtual {v5, v2, v3}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    move-result-object v2

    new-array v3, v8, [Landroid/animation/Animator;

    aput-object v7, v3, v1

    aput-object v0, v3, v6

    invoke-virtual {v2, v3}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 17
    :cond_8
    :goto_4
    new-instance v0, Lcom/xw/repo/BubbleSeekBar$f;

    invoke-direct {v0, p0}, Lcom/xw/repo/BubbleSeekBar$f;-><init>(Lcom/xw/repo/BubbleSeekBar;)V

    invoke-virtual {v5, v0}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 18
    invoke-virtual {v5}, Landroid/animation/AnimatorSet;->start()V

    return-void
.end method


# virtual methods
.method E(Lcom/xw/repo/a;)V
    .locals 3

    .line 1
    iget v0, p1, Lcom/xw/repo/a;->a:F

    iput v0, p0, Lcom/xw/repo/BubbleSeekBar;->a:F

    .line 2
    iget v0, p1, Lcom/xw/repo/a;->b:F

    iput v0, p0, Lcom/xw/repo/BubbleSeekBar;->b:F

    .line 3
    iget v0, p1, Lcom/xw/repo/a;->c:F

    iput v0, p0, Lcom/xw/repo/BubbleSeekBar;->c:F

    .line 4
    iget-boolean v0, p1, Lcom/xw/repo/a;->d:Z

    iput-boolean v0, p0, Lcom/xw/repo/BubbleSeekBar;->d:Z

    .line 5
    iget v0, p1, Lcom/xw/repo/a;->e:I

    iput v0, p0, Lcom/xw/repo/BubbleSeekBar;->e:I

    .line 6
    iget v0, p1, Lcom/xw/repo/a;->f:I

    iput v0, p0, Lcom/xw/repo/BubbleSeekBar;->f:I

    .line 7
    iget v0, p1, Lcom/xw/repo/a;->g:I

    iput v0, p0, Lcom/xw/repo/BubbleSeekBar;->g:I

    .line 8
    iget v0, p1, Lcom/xw/repo/a;->h:I

    iput v0, p0, Lcom/xw/repo/BubbleSeekBar;->h:I

    .line 9
    iget v0, p1, Lcom/xw/repo/a;->i:I

    iput v0, p0, Lcom/xw/repo/BubbleSeekBar;->i:I

    .line 10
    iget v0, p1, Lcom/xw/repo/a;->j:I

    iput v0, p0, Lcom/xw/repo/BubbleSeekBar;->j:I

    .line 11
    iget v0, p1, Lcom/xw/repo/a;->k:I

    iput v0, p0, Lcom/xw/repo/BubbleSeekBar;->k:I

    .line 12
    iget v0, p1, Lcom/xw/repo/a;->l:I

    iput v0, p0, Lcom/xw/repo/BubbleSeekBar;->l:I

    .line 13
    iget-boolean v0, p1, Lcom/xw/repo/a;->m:Z

    iput-boolean v0, p0, Lcom/xw/repo/BubbleSeekBar;->m:Z

    .line 14
    iget-boolean v0, p1, Lcom/xw/repo/a;->n:Z

    iput-boolean v0, p0, Lcom/xw/repo/BubbleSeekBar;->n:Z

    .line 15
    iget-boolean v0, p1, Lcom/xw/repo/a;->o:Z

    iput-boolean v0, p0, Lcom/xw/repo/BubbleSeekBar;->o:Z

    .line 16
    iget v0, p1, Lcom/xw/repo/a;->p:I

    iput v0, p0, Lcom/xw/repo/BubbleSeekBar;->p:I

    .line 17
    iget v0, p1, Lcom/xw/repo/a;->q:I

    iput v0, p0, Lcom/xw/repo/BubbleSeekBar;->q:I

    .line 18
    iget v0, p1, Lcom/xw/repo/a;->r:I

    iput v0, p0, Lcom/xw/repo/BubbleSeekBar;->r:I

    .line 19
    iget v0, p1, Lcom/xw/repo/a;->s:I

    iput v0, p0, Lcom/xw/repo/BubbleSeekBar;->s:I

    .line 20
    iget-boolean v0, p1, Lcom/xw/repo/a;->t:Z

    iput-boolean v0, p0, Lcom/xw/repo/BubbleSeekBar;->t:Z

    .line 21
    iget v0, p1, Lcom/xw/repo/a;->u:I

    iput v0, p0, Lcom/xw/repo/BubbleSeekBar;->u:I

    .line 22
    iget v0, p1, Lcom/xw/repo/a;->v:I

    iput v0, p0, Lcom/xw/repo/BubbleSeekBar;->v:I

    .line 23
    iget-boolean v0, p1, Lcom/xw/repo/a;->w:Z

    iput-boolean v0, p0, Lcom/xw/repo/BubbleSeekBar;->w:Z

    .line 24
    iget-wide v0, p1, Lcom/xw/repo/a;->x:J

    iput-wide v0, p0, Lcom/xw/repo/BubbleSeekBar;->A:J

    .line 25
    iget-boolean v0, p1, Lcom/xw/repo/a;->y:Z

    iput-boolean v0, p0, Lcom/xw/repo/BubbleSeekBar;->x:Z

    .line 26
    iget-boolean v0, p1, Lcom/xw/repo/a;->z:Z

    iput-boolean v0, p0, Lcom/xw/repo/BubbleSeekBar;->y:Z

    .line 27
    iget-boolean v0, p1, Lcom/xw/repo/a;->A:Z

    iput-boolean v0, p0, Lcom/xw/repo/BubbleSeekBar;->z:Z

    .line 28
    iget v0, p1, Lcom/xw/repo/a;->B:I

    iput v0, p0, Lcom/xw/repo/BubbleSeekBar;->F:I

    .line 29
    iget v0, p1, Lcom/xw/repo/a;->C:I

    iput v0, p0, Lcom/xw/repo/BubbleSeekBar;->G:I

    .line 30
    iget v0, p1, Lcom/xw/repo/a;->D:I

    iput v0, p0, Lcom/xw/repo/BubbleSeekBar;->H:I

    .line 31
    iget-boolean v0, p1, Lcom/xw/repo/a;->E:Z

    iput-boolean v0, p0, Lcom/xw/repo/BubbleSeekBar;->B:Z

    .line 32
    iget-wide v0, p1, Lcom/xw/repo/a;->F:J

    iput-wide v0, p0, Lcom/xw/repo/BubbleSeekBar;->C:J

    .line 33
    iget-boolean v0, p1, Lcom/xw/repo/a;->G:Z

    iput-boolean v0, p0, Lcom/xw/repo/BubbleSeekBar;->D:Z

    .line 34
    iget-boolean p1, p1, Lcom/xw/repo/a;->H:Z

    iput-boolean p1, p0, Lcom/xw/repo/BubbleSeekBar;->E:Z

    .line 35
    invoke-direct {p0}, Lcom/xw/repo/BubbleSeekBar;->J()V

    .line 36
    invoke-direct {p0}, Lcom/xw/repo/BubbleSeekBar;->D()V

    .line 37
    iget-object p1, p0, Lcom/xw/repo/BubbleSeekBar;->T:Lcom/xw/repo/BubbleSeekBar$k;

    if-eqz p1, :cond_0

    .line 38
    invoke-virtual {p0}, Lcom/xw/repo/BubbleSeekBar;->getProgress()I

    move-result v0

    invoke-virtual {p0}, Lcom/xw/repo/BubbleSeekBar;->getProgressFloat()F

    move-result v1

    const/4 v2, 0x0

    invoke-interface {p1, p0, v0, v1, v2}, Lcom/xw/repo/BubbleSeekBar$k;->a(Lcom/xw/repo/BubbleSeekBar;IFZ)V

    .line 39
    iget-object p1, p0, Lcom/xw/repo/BubbleSeekBar;->T:Lcom/xw/repo/BubbleSeekBar$k;

    invoke-virtual {p0}, Lcom/xw/repo/BubbleSeekBar;->getProgress()I

    move-result v0

    invoke-virtual {p0}, Lcom/xw/repo/BubbleSeekBar;->getProgressFloat()F

    move-result v1

    invoke-interface {p1, p0, v0, v1, v2}, Lcom/xw/repo/BubbleSeekBar$k;->c(Lcom/xw/repo/BubbleSeekBar;IFZ)V

    :cond_0
    const/4 p1, 0x0

    .line 40
    iput-object p1, p0, Lcom/xw/repo/BubbleSeekBar;->y2:Lcom/xw/repo/a;

    .line 41
    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    return-void
.end method

.method public F()V
    .locals 3

    .line 1
    iget-boolean v0, p0, Lcom/xw/repo/BubbleSeekBar;->D:Z

    if-eqz v0, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-direct {p0}, Lcom/xw/repo/BubbleSeekBar;->N()V

    .line 3
    iget-object v0, p0, Lcom/xw/repo/BubbleSeekBar;->p1:Lcom/xw/repo/BubbleSeekBar$i;

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 4
    iget-boolean v0, p0, Lcom/xw/repo/BubbleSeekBar;->B:Z

    if-eqz v0, :cond_1

    .line 5
    iget-object v0, p0, Lcom/xw/repo/BubbleSeekBar;->b2:Landroid/view/WindowManager$LayoutParams;

    iget v1, p0, Lcom/xw/repo/BubbleSeekBar;->T1:F

    const/high16 v2, 0x3f000000    # 0.5f

    add-float/2addr v1, v2

    float-to-int v1, v1

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 6
    iget-object v1, p0, Lcom/xw/repo/BubbleSeekBar;->g1:Landroid/view/WindowManager;

    iget-object v2, p0, Lcom/xw/repo/BubbleSeekBar;->p1:Lcom/xw/repo/BubbleSeekBar$i;

    invoke-interface {v1, v2, v0}, Landroid/view/WindowManager;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0

    .line 7
    :cond_1
    invoke-virtual {p0}, Landroid/view/View;->postInvalidate()V

    :cond_2
    :goto_0
    return-void
.end method

.method public getConfigBuilder()Lcom/xw/repo/a;
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/xw/repo/BubbleSeekBar;->y2:Lcom/xw/repo/a;

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Lcom/xw/repo/a;

    invoke-direct {v0, p0}, Lcom/xw/repo/a;-><init>(Lcom/xw/repo/BubbleSeekBar;)V

    iput-object v0, p0, Lcom/xw/repo/BubbleSeekBar;->y2:Lcom/xw/repo/a;

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/xw/repo/BubbleSeekBar;->y2:Lcom/xw/repo/a;

    iget v1, p0, Lcom/xw/repo/BubbleSeekBar;->a:F

    iput v1, v0, Lcom/xw/repo/a;->a:F

    .line 4
    iget v1, p0, Lcom/xw/repo/BubbleSeekBar;->b:F

    iput v1, v0, Lcom/xw/repo/a;->b:F

    .line 5
    iget v1, p0, Lcom/xw/repo/BubbleSeekBar;->c:F

    iput v1, v0, Lcom/xw/repo/a;->c:F

    .line 6
    iget-boolean v1, p0, Lcom/xw/repo/BubbleSeekBar;->d:Z

    iput-boolean v1, v0, Lcom/xw/repo/a;->d:Z

    .line 7
    iget v1, p0, Lcom/xw/repo/BubbleSeekBar;->e:I

    iput v1, v0, Lcom/xw/repo/a;->e:I

    .line 8
    iget v1, p0, Lcom/xw/repo/BubbleSeekBar;->f:I

    iput v1, v0, Lcom/xw/repo/a;->f:I

    .line 9
    iget v1, p0, Lcom/xw/repo/BubbleSeekBar;->g:I

    iput v1, v0, Lcom/xw/repo/a;->g:I

    .line 10
    iget v1, p0, Lcom/xw/repo/BubbleSeekBar;->h:I

    iput v1, v0, Lcom/xw/repo/a;->h:I

    .line 11
    iget v1, p0, Lcom/xw/repo/BubbleSeekBar;->i:I

    iput v1, v0, Lcom/xw/repo/a;->i:I

    .line 12
    iget v1, p0, Lcom/xw/repo/BubbleSeekBar;->j:I

    iput v1, v0, Lcom/xw/repo/a;->j:I

    .line 13
    iget v1, p0, Lcom/xw/repo/BubbleSeekBar;->k:I

    iput v1, v0, Lcom/xw/repo/a;->k:I

    .line 14
    iget v1, p0, Lcom/xw/repo/BubbleSeekBar;->l:I

    iput v1, v0, Lcom/xw/repo/a;->l:I

    .line 15
    iget-boolean v1, p0, Lcom/xw/repo/BubbleSeekBar;->m:Z

    iput-boolean v1, v0, Lcom/xw/repo/a;->m:Z

    .line 16
    iget-boolean v1, p0, Lcom/xw/repo/BubbleSeekBar;->n:Z

    iput-boolean v1, v0, Lcom/xw/repo/a;->n:Z

    .line 17
    iget-boolean v1, p0, Lcom/xw/repo/BubbleSeekBar;->o:Z

    iput-boolean v1, v0, Lcom/xw/repo/a;->o:Z

    .line 18
    iget v1, p0, Lcom/xw/repo/BubbleSeekBar;->p:I

    iput v1, v0, Lcom/xw/repo/a;->p:I

    .line 19
    iget v1, p0, Lcom/xw/repo/BubbleSeekBar;->q:I

    iput v1, v0, Lcom/xw/repo/a;->q:I

    .line 20
    iget v1, p0, Lcom/xw/repo/BubbleSeekBar;->r:I

    iput v1, v0, Lcom/xw/repo/a;->r:I

    .line 21
    iget v1, p0, Lcom/xw/repo/BubbleSeekBar;->s:I

    iput v1, v0, Lcom/xw/repo/a;->s:I

    .line 22
    iget-boolean v1, p0, Lcom/xw/repo/BubbleSeekBar;->t:Z

    iput-boolean v1, v0, Lcom/xw/repo/a;->t:Z

    .line 23
    iget v1, p0, Lcom/xw/repo/BubbleSeekBar;->u:I

    iput v1, v0, Lcom/xw/repo/a;->u:I

    .line 24
    iget v1, p0, Lcom/xw/repo/BubbleSeekBar;->v:I

    iput v1, v0, Lcom/xw/repo/a;->v:I

    .line 25
    iget-boolean v1, p0, Lcom/xw/repo/BubbleSeekBar;->w:Z

    iput-boolean v1, v0, Lcom/xw/repo/a;->w:Z

    .line 26
    iget-wide v1, p0, Lcom/xw/repo/BubbleSeekBar;->A:J

    iput-wide v1, v0, Lcom/xw/repo/a;->x:J

    .line 27
    iget-boolean v1, p0, Lcom/xw/repo/BubbleSeekBar;->x:Z

    iput-boolean v1, v0, Lcom/xw/repo/a;->y:Z

    .line 28
    iget-boolean v1, p0, Lcom/xw/repo/BubbleSeekBar;->y:Z

    iput-boolean v1, v0, Lcom/xw/repo/a;->z:Z

    .line 29
    iget-boolean v1, p0, Lcom/xw/repo/BubbleSeekBar;->z:Z

    iput-boolean v1, v0, Lcom/xw/repo/a;->A:Z

    .line 30
    iget v1, p0, Lcom/xw/repo/BubbleSeekBar;->F:I

    iput v1, v0, Lcom/xw/repo/a;->B:I

    .line 31
    iget v1, p0, Lcom/xw/repo/BubbleSeekBar;->G:I

    iput v1, v0, Lcom/xw/repo/a;->C:I

    .line 32
    iget v1, p0, Lcom/xw/repo/BubbleSeekBar;->H:I

    iput v1, v0, Lcom/xw/repo/a;->D:I

    .line 33
    iget-boolean v1, p0, Lcom/xw/repo/BubbleSeekBar;->B:Z

    iput-boolean v1, v0, Lcom/xw/repo/a;->E:Z

    .line 34
    iget-wide v1, p0, Lcom/xw/repo/BubbleSeekBar;->C:J

    iput-wide v1, v0, Lcom/xw/repo/a;->F:J

    .line 35
    iget-boolean v1, p0, Lcom/xw/repo/BubbleSeekBar;->D:Z

    iput-boolean v1, v0, Lcom/xw/repo/a;->G:Z

    .line 36
    iget-boolean v1, p0, Lcom/xw/repo/BubbleSeekBar;->E:Z

    iput-boolean v1, v0, Lcom/xw/repo/a;->H:Z

    return-object v0
.end method

.method public getMax()F
    .locals 1

    iget v0, p0, Lcom/xw/repo/BubbleSeekBar;->b:F

    return v0
.end method

.method public getMin()F
    .locals 1

    iget v0, p0, Lcom/xw/repo/BubbleSeekBar;->a:F

    return v0
.end method

.method public getOnProgressChangedListener()Lcom/xw/repo/BubbleSeekBar$k;
    .locals 1

    iget-object v0, p0, Lcom/xw/repo/BubbleSeekBar;->T:Lcom/xw/repo/BubbleSeekBar$k;

    return-object v0
.end method

.method public getProgress()I
    .locals 1

    invoke-direct {p0}, Lcom/xw/repo/BubbleSeekBar;->O()F

    move-result v0

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    return v0
.end method

.method public getProgressFloat()F
    .locals 1

    invoke-direct {p0}, Lcom/xw/repo/BubbleSeekBar;->O()F

    move-result v0

    invoke-direct {p0, v0}, Lcom/xw/repo/BubbleSeekBar;->H(F)F

    move-result v0

    return v0
.end method

.method protected onDetachedFromWindow()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/xw/repo/BubbleSeekBar;->I()V

    .line 2
    invoke-super {p0}, Landroid/view/View;->onDetachedFromWindow()V

    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 17

    move-object/from16 v0, p0

    move-object/from16 v7, p1

    .line 1
    invoke-super/range {p0 .. p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 2
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getPaddingLeft()I

    move-result v1

    int-to-float v1, v1

    .line 3
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v2

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getPaddingRight()I

    move-result v3

    sub-int/2addr v2, v3

    int-to-float v2, v2

    .line 4
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getPaddingTop()I

    move-result v3

    iget v4, v0, Lcom/xw/repo/BubbleSeekBar;->h:I

    add-int/2addr v3, v4

    int-to-float v8, v3

    .line 5
    iget-boolean v3, v0, Lcom/xw/repo/BubbleSeekBar;->o:Z

    const/16 v4, 0xa

    const-string v5, "0123456789"

    const/high16 v6, 0x40000000    # 2.0f

    const/4 v9, 0x1

    const/4 v10, 0x0

    if-eqz v3, :cond_3

    .line 6
    iget-object v3, v0, Lcom/xw/repo/BubbleSeekBar;->W:Landroid/graphics/Paint;

    iget v11, v0, Lcom/xw/repo/BubbleSeekBar;->q:I

    invoke-virtual {v3, v11}, Landroid/graphics/Paint;->setColor(I)V

    .line 7
    iget-object v3, v0, Lcom/xw/repo/BubbleSeekBar;->W:Landroid/graphics/Paint;

    iget v11, v0, Lcom/xw/repo/BubbleSeekBar;->p:I

    int-to-float v11, v11

    invoke-virtual {v3, v11}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 8
    iget-object v3, v0, Lcom/xw/repo/BubbleSeekBar;->W:Landroid/graphics/Paint;

    iget-object v11, v0, Lcom/xw/repo/BubbleSeekBar;->b1:Landroid/graphics/Rect;

    invoke-virtual {v3, v5, v10, v4, v11}, Landroid/graphics/Paint;->getTextBounds(Ljava/lang/String;IILandroid/graphics/Rect;)V

    .line 9
    iget v3, v0, Lcom/xw/repo/BubbleSeekBar;->r:I

    if-nez v3, :cond_0

    .line 10
    iget-object v3, v0, Lcom/xw/repo/BubbleSeekBar;->b1:Landroid/graphics/Rect;

    invoke-virtual {v3}, Landroid/graphics/Rect;->height()I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v3, v6

    add-float/2addr v3, v8

    .line 11
    iget-object v11, v0, Lcom/xw/repo/BubbleSeekBar;->Q:Landroid/util/SparseArray;

    invoke-virtual {v11, v10}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/String;

    .line 12
    iget-object v12, v0, Lcom/xw/repo/BubbleSeekBar;->W:Landroid/graphics/Paint;

    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v13

    iget-object v14, v0, Lcom/xw/repo/BubbleSeekBar;->b1:Landroid/graphics/Rect;

    invoke-virtual {v12, v11, v10, v13, v14}, Landroid/graphics/Paint;->getTextBounds(Ljava/lang/String;IILandroid/graphics/Rect;)V

    .line 13
    iget-object v12, v0, Lcom/xw/repo/BubbleSeekBar;->b1:Landroid/graphics/Rect;

    invoke-virtual {v12}, Landroid/graphics/Rect;->width()I

    move-result v12

    int-to-float v12, v12

    div-float/2addr v12, v6

    add-float/2addr v12, v1

    iget-object v13, v0, Lcom/xw/repo/BubbleSeekBar;->W:Landroid/graphics/Paint;

    invoke-virtual {v7, v11, v12, v3, v13}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 14
    iget-object v11, v0, Lcom/xw/repo/BubbleSeekBar;->b1:Landroid/graphics/Rect;

    invoke-virtual {v11}, Landroid/graphics/Rect;->width()I

    move-result v11

    iget v12, v0, Lcom/xw/repo/BubbleSeekBar;->O:I

    add-int/2addr v11, v12

    int-to-float v11, v11

    add-float/2addr v1, v11

    .line 15
    iget-object v11, v0, Lcom/xw/repo/BubbleSeekBar;->Q:Landroid/util/SparseArray;

    iget v12, v0, Lcom/xw/repo/BubbleSeekBar;->l:I

    invoke-virtual {v11, v12}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/String;

    .line 16
    iget-object v12, v0, Lcom/xw/repo/BubbleSeekBar;->W:Landroid/graphics/Paint;

    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v13

    iget-object v14, v0, Lcom/xw/repo/BubbleSeekBar;->b1:Landroid/graphics/Rect;

    invoke-virtual {v12, v11, v10, v13, v14}, Landroid/graphics/Paint;->getTextBounds(Ljava/lang/String;IILandroid/graphics/Rect;)V

    .line 17
    iget-object v12, v0, Lcom/xw/repo/BubbleSeekBar;->b1:Landroid/graphics/Rect;

    invoke-virtual {v12}, Landroid/graphics/Rect;->width()I

    move-result v12

    int-to-float v12, v12

    const/high16 v13, 0x3f000000    # 0.5f

    add-float/2addr v12, v13

    div-float/2addr v12, v6

    sub-float v12, v2, v12

    iget-object v13, v0, Lcom/xw/repo/BubbleSeekBar;->W:Landroid/graphics/Paint;

    invoke-virtual {v7, v11, v12, v3, v13}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 18
    iget-object v3, v0, Lcom/xw/repo/BubbleSeekBar;->b1:Landroid/graphics/Rect;

    invoke-virtual {v3}, Landroid/graphics/Rect;->width()I

    move-result v3

    iget v11, v0, Lcom/xw/repo/BubbleSeekBar;->O:I

    add-int/2addr v3, v11

    int-to-float v3, v3

    sub-float/2addr v2, v3

    goto :goto_0

    :cond_0
    if-lt v3, v9, :cond_4

    .line 19
    iget v1, v0, Lcom/xw/repo/BubbleSeekBar;->h:I

    int-to-float v1, v1

    add-float/2addr v1, v8

    iget v2, v0, Lcom/xw/repo/BubbleSeekBar;->O:I

    int-to-float v2, v2

    add-float/2addr v1, v2

    .line 20
    iget-object v2, v0, Lcom/xw/repo/BubbleSeekBar;->Q:Landroid/util/SparseArray;

    invoke-virtual {v2, v10}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 21
    iget-object v3, v0, Lcom/xw/repo/BubbleSeekBar;->W:Landroid/graphics/Paint;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v11

    iget-object v12, v0, Lcom/xw/repo/BubbleSeekBar;->b1:Landroid/graphics/Rect;

    invoke-virtual {v3, v2, v10, v11, v12}, Landroid/graphics/Paint;->getTextBounds(Ljava/lang/String;IILandroid/graphics/Rect;)V

    .line 22
    iget-object v3, v0, Lcom/xw/repo/BubbleSeekBar;->b1:Landroid/graphics/Rect;

    invoke-virtual {v3}, Landroid/graphics/Rect;->height()I

    move-result v3

    int-to-float v3, v3

    add-float/2addr v1, v3

    .line 23
    iget v3, v0, Lcom/xw/repo/BubbleSeekBar;->U:F

    .line 24
    iget v11, v0, Lcom/xw/repo/BubbleSeekBar;->r:I

    if-ne v11, v9, :cond_1

    .line 25
    iget-object v11, v0, Lcom/xw/repo/BubbleSeekBar;->W:Landroid/graphics/Paint;

    invoke-virtual {v7, v2, v3, v1, v11}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 26
    :cond_1
    iget-object v2, v0, Lcom/xw/repo/BubbleSeekBar;->Q:Landroid/util/SparseArray;

    iget v11, v0, Lcom/xw/repo/BubbleSeekBar;->l:I

    invoke-virtual {v2, v11}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 27
    iget-object v11, v0, Lcom/xw/repo/BubbleSeekBar;->W:Landroid/graphics/Paint;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v12

    iget-object v13, v0, Lcom/xw/repo/BubbleSeekBar;->b1:Landroid/graphics/Rect;

    invoke-virtual {v11, v2, v10, v12, v13}, Landroid/graphics/Paint;->getTextBounds(Ljava/lang/String;IILandroid/graphics/Rect;)V

    .line 28
    iget v11, v0, Lcom/xw/repo/BubbleSeekBar;->V:F

    .line 29
    iget v12, v0, Lcom/xw/repo/BubbleSeekBar;->r:I

    if-ne v12, v9, :cond_2

    .line 30
    iget-object v12, v0, Lcom/xw/repo/BubbleSeekBar;->W:Landroid/graphics/Paint;

    invoke-virtual {v7, v2, v11, v1, v12}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    :cond_2
    move v1, v3

    move v2, v11

    goto :goto_0

    .line 31
    :cond_3
    iget-boolean v3, v0, Lcom/xw/repo/BubbleSeekBar;->t:Z

    if-eqz v3, :cond_4

    iget v3, v0, Lcom/xw/repo/BubbleSeekBar;->r:I

    const/4 v11, -0x1

    if-ne v3, v11, :cond_4

    .line 32
    iget v1, v0, Lcom/xw/repo/BubbleSeekBar;->U:F

    .line 33
    iget v2, v0, Lcom/xw/repo/BubbleSeekBar;->V:F

    .line 34
    :cond_4
    :goto_0
    iget-boolean v3, v0, Lcom/xw/repo/BubbleSeekBar;->o:Z

    if-nez v3, :cond_5

    iget-boolean v11, v0, Lcom/xw/repo/BubbleSeekBar;->t:Z

    if-eqz v11, :cond_6

    :cond_5
    iget v11, v0, Lcom/xw/repo/BubbleSeekBar;->r:I

    if-nez v11, :cond_7

    .line 35
    :cond_6
    iget v11, v0, Lcom/xw/repo/BubbleSeekBar;->h:I

    int-to-float v12, v11

    add-float/2addr v1, v12

    int-to-float v11, v11

    sub-float/2addr v2, v11

    :cond_7
    move v11, v1

    move v12, v2

    const/4 v1, 0x2

    if-eqz v3, :cond_8

    .line 36
    iget v2, v0, Lcom/xw/repo/BubbleSeekBar;->r:I

    if-ne v2, v1, :cond_8

    const/4 v2, 0x1

    goto :goto_1

    :cond_8
    const/4 v2, 0x0

    :goto_1
    if-nez v2, :cond_9

    .line 37
    iget-boolean v3, v0, Lcom/xw/repo/BubbleSeekBar;->m:Z

    if-eqz v3, :cond_f

    .line 38
    :cond_9
    iget-object v3, v0, Lcom/xw/repo/BubbleSeekBar;->W:Landroid/graphics/Paint;

    iget v13, v0, Lcom/xw/repo/BubbleSeekBar;->p:I

    int-to-float v13, v13

    invoke-virtual {v3, v13}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 39
    iget-object v3, v0, Lcom/xw/repo/BubbleSeekBar;->W:Landroid/graphics/Paint;

    iget-object v13, v0, Lcom/xw/repo/BubbleSeekBar;->b1:Landroid/graphics/Rect;

    invoke-virtual {v3, v5, v10, v4, v13}, Landroid/graphics/Paint;->getTextBounds(Ljava/lang/String;IILandroid/graphics/Rect;)V

    .line 40
    iget-object v3, v0, Lcom/xw/repo/BubbleSeekBar;->b1:Landroid/graphics/Rect;

    invoke-virtual {v3}, Landroid/graphics/Rect;->height()I

    move-result v3

    int-to-float v3, v3

    add-float/2addr v3, v8

    iget v13, v0, Lcom/xw/repo/BubbleSeekBar;->h:I

    int-to-float v14, v13

    add-float/2addr v3, v14

    iget v14, v0, Lcom/xw/repo/BubbleSeekBar;->O:I

    int-to-float v14, v14

    add-float/2addr v3, v14

    .line 41
    invoke-static {v1}, Lcom/xw/repo/b;->a(I)I

    move-result v1

    sub-int/2addr v13, v1

    int-to-float v1, v13

    div-float/2addr v1, v6

    .line 42
    iget-boolean v6, v0, Lcom/xw/repo/BubbleSeekBar;->E:Z

    if-eqz v6, :cond_a

    .line 43
    iget v6, v0, Lcom/xw/repo/BubbleSeekBar;->V:F

    iget v13, v0, Lcom/xw/repo/BubbleSeekBar;->L:F

    iget v14, v0, Lcom/xw/repo/BubbleSeekBar;->I:F

    div-float/2addr v13, v14

    iget v14, v0, Lcom/xw/repo/BubbleSeekBar;->c:F

    iget v15, v0, Lcom/xw/repo/BubbleSeekBar;->a:F

    sub-float/2addr v14, v15

    invoke-static {v14}, Ljava/lang/Math;->abs(F)F

    move-result v14

    mul-float v13, v13, v14

    sub-float/2addr v6, v13

    goto :goto_2

    .line 44
    :cond_a
    iget v6, v0, Lcom/xw/repo/BubbleSeekBar;->U:F

    iget v13, v0, Lcom/xw/repo/BubbleSeekBar;->L:F

    iget v14, v0, Lcom/xw/repo/BubbleSeekBar;->I:F

    div-float/2addr v13, v14

    iget v14, v0, Lcom/xw/repo/BubbleSeekBar;->c:F

    iget v15, v0, Lcom/xw/repo/BubbleSeekBar;->a:F

    sub-float/2addr v14, v15

    invoke-static {v14}, Ljava/lang/Math;->abs(F)F

    move-result v14

    mul-float v13, v13, v14

    add-float/2addr v6, v13

    :goto_2
    const/4 v13, 0x0

    .line 45
    :goto_3
    iget v14, v0, Lcom/xw/repo/BubbleSeekBar;->l:I

    if-gt v13, v14, :cond_f

    int-to-float v14, v13

    .line 46
    iget v15, v0, Lcom/xw/repo/BubbleSeekBar;->M:F

    mul-float v14, v14, v15

    add-float/2addr v14, v11

    .line 47
    iget-boolean v15, v0, Lcom/xw/repo/BubbleSeekBar;->E:Z

    if-eqz v15, :cond_c

    .line 48
    iget-object v15, v0, Lcom/xw/repo/BubbleSeekBar;->W:Landroid/graphics/Paint;

    cmpg-float v16, v14, v6

    if-gtz v16, :cond_b

    iget v9, v0, Lcom/xw/repo/BubbleSeekBar;->i:I

    goto :goto_4

    :cond_b
    iget v9, v0, Lcom/xw/repo/BubbleSeekBar;->j:I

    :goto_4
    invoke-virtual {v15, v9}, Landroid/graphics/Paint;->setColor(I)V

    goto :goto_6

    .line 49
    :cond_c
    iget-object v9, v0, Lcom/xw/repo/BubbleSeekBar;->W:Landroid/graphics/Paint;

    cmpg-float v15, v14, v6

    if-gtz v15, :cond_d

    iget v15, v0, Lcom/xw/repo/BubbleSeekBar;->j:I

    goto :goto_5

    :cond_d
    iget v15, v0, Lcom/xw/repo/BubbleSeekBar;->i:I

    :goto_5
    invoke-virtual {v9, v15}, Landroid/graphics/Paint;->setColor(I)V

    .line 50
    :goto_6
    iget-object v9, v0, Lcom/xw/repo/BubbleSeekBar;->W:Landroid/graphics/Paint;

    invoke-virtual {v7, v14, v8, v1, v9}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    if-eqz v2, :cond_e

    .line 51
    iget-object v9, v0, Lcom/xw/repo/BubbleSeekBar;->W:Landroid/graphics/Paint;

    iget v15, v0, Lcom/xw/repo/BubbleSeekBar;->q:I

    invoke-virtual {v9, v15}, Landroid/graphics/Paint;->setColor(I)V

    .line 52
    iget-object v9, v0, Lcom/xw/repo/BubbleSeekBar;->Q:Landroid/util/SparseArray;

    const/4 v15, 0x0

    invoke-virtual {v9, v13, v15}, Landroid/util/SparseArray;->get(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    if-eqz v9, :cond_e

    .line 53
    iget-object v9, v0, Lcom/xw/repo/BubbleSeekBar;->Q:Landroid/util/SparseArray;

    invoke-virtual {v9, v13}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    iget-object v15, v0, Lcom/xw/repo/BubbleSeekBar;->W:Landroid/graphics/Paint;

    invoke-virtual {v7, v9, v14, v3, v15}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    :cond_e
    add-int/lit8 v13, v13, 0x1

    const/4 v9, 0x1

    goto :goto_3

    .line 54
    :cond_f
    iget-boolean v1, v0, Lcom/xw/repo/BubbleSeekBar;->N:Z

    if-eqz v1, :cond_10

    iget-boolean v2, v0, Lcom/xw/repo/BubbleSeekBar;->B:Z

    if-eqz v2, :cond_12

    .line 55
    :cond_10
    iget-boolean v2, v0, Lcom/xw/repo/BubbleSeekBar;->E:Z

    if-eqz v2, :cond_11

    .line 56
    iget v2, v0, Lcom/xw/repo/BubbleSeekBar;->L:F

    iget v3, v0, Lcom/xw/repo/BubbleSeekBar;->I:F

    div-float/2addr v2, v3

    iget v3, v0, Lcom/xw/repo/BubbleSeekBar;->c:F

    iget v6, v0, Lcom/xw/repo/BubbleSeekBar;->a:F

    sub-float/2addr v3, v6

    mul-float v2, v2, v3

    sub-float v2, v12, v2

    iput v2, v0, Lcom/xw/repo/BubbleSeekBar;->K:F

    goto :goto_7

    .line 57
    :cond_11
    iget v2, v0, Lcom/xw/repo/BubbleSeekBar;->L:F

    iget v3, v0, Lcom/xw/repo/BubbleSeekBar;->I:F

    div-float/2addr v2, v3

    iget v3, v0, Lcom/xw/repo/BubbleSeekBar;->c:F

    iget v6, v0, Lcom/xw/repo/BubbleSeekBar;->a:F

    sub-float/2addr v3, v6

    mul-float v2, v2, v3

    add-float/2addr v2, v11

    iput v2, v0, Lcom/xw/repo/BubbleSeekBar;->K:F

    .line 58
    :cond_12
    :goto_7
    iget-boolean v2, v0, Lcom/xw/repo/BubbleSeekBar;->t:Z

    if-eqz v2, :cond_15

    if-nez v1, :cond_15

    iget-boolean v1, v0, Lcom/xw/repo/BubbleSeekBar;->p2:Z

    if-eqz v1, :cond_15

    .line 59
    iget-object v1, v0, Lcom/xw/repo/BubbleSeekBar;->W:Landroid/graphics/Paint;

    iget v2, v0, Lcom/xw/repo/BubbleSeekBar;->v:I

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 60
    iget-object v1, v0, Lcom/xw/repo/BubbleSeekBar;->W:Landroid/graphics/Paint;

    iget v2, v0, Lcom/xw/repo/BubbleSeekBar;->u:I

    int-to-float v2, v2

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 61
    iget-object v1, v0, Lcom/xw/repo/BubbleSeekBar;->W:Landroid/graphics/Paint;

    iget-object v2, v0, Lcom/xw/repo/BubbleSeekBar;->b1:Landroid/graphics/Rect;

    invoke-virtual {v1, v5, v10, v4, v2}, Landroid/graphics/Paint;->getTextBounds(Ljava/lang/String;IILandroid/graphics/Rect;)V

    .line 62
    iget-object v1, v0, Lcom/xw/repo/BubbleSeekBar;->b1:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v1

    int-to-float v1, v1

    add-float/2addr v1, v8

    iget v2, v0, Lcom/xw/repo/BubbleSeekBar;->h:I

    int-to-float v2, v2

    add-float/2addr v1, v2

    iget v2, v0, Lcom/xw/repo/BubbleSeekBar;->O:I

    int-to-float v2, v2

    add-float/2addr v1, v2

    .line 63
    iget-boolean v2, v0, Lcom/xw/repo/BubbleSeekBar;->d:Z

    if-nez v2, :cond_14

    iget-boolean v2, v0, Lcom/xw/repo/BubbleSeekBar;->w:Z

    if-eqz v2, :cond_13

    iget v2, v0, Lcom/xw/repo/BubbleSeekBar;->r:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_13

    iget v2, v0, Lcom/xw/repo/BubbleSeekBar;->c:F

    iget v3, v0, Lcom/xw/repo/BubbleSeekBar;->a:F

    cmpl-float v3, v2, v3

    if-eqz v3, :cond_13

    iget v3, v0, Lcom/xw/repo/BubbleSeekBar;->b:F

    cmpl-float v2, v2, v3

    if-eqz v2, :cond_13

    goto :goto_8

    .line 64
    :cond_13
    invoke-virtual/range {p0 .. p0}, Lcom/xw/repo/BubbleSeekBar;->getProgress()I

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    iget v3, v0, Lcom/xw/repo/BubbleSeekBar;->K:F

    iget-object v4, v0, Lcom/xw/repo/BubbleSeekBar;->W:Landroid/graphics/Paint;

    invoke-virtual {v7, v2, v3, v1, v4}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    goto :goto_9

    .line 65
    :cond_14
    :goto_8
    invoke-virtual/range {p0 .. p0}, Lcom/xw/repo/BubbleSeekBar;->getProgressFloat()F

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v2

    iget v3, v0, Lcom/xw/repo/BubbleSeekBar;->K:F

    iget-object v4, v0, Lcom/xw/repo/BubbleSeekBar;->W:Landroid/graphics/Paint;

    invoke-virtual {v7, v2, v3, v1, v4}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 66
    :cond_15
    :goto_9
    iget-object v1, v0, Lcom/xw/repo/BubbleSeekBar;->W:Landroid/graphics/Paint;

    iget v2, v0, Lcom/xw/repo/BubbleSeekBar;->j:I

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 67
    iget-object v1, v0, Lcom/xw/repo/BubbleSeekBar;->W:Landroid/graphics/Paint;

    iget v2, v0, Lcom/xw/repo/BubbleSeekBar;->f:I

    int-to-float v2, v2

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 68
    iget-boolean v1, v0, Lcom/xw/repo/BubbleSeekBar;->E:Z

    if-eqz v1, :cond_16

    .line 69
    iget v4, v0, Lcom/xw/repo/BubbleSeekBar;->K:F

    iget-object v6, v0, Lcom/xw/repo/BubbleSeekBar;->W:Landroid/graphics/Paint;

    move-object/from16 v1, p1

    move v2, v12

    move v3, v8

    move v5, v8

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    goto :goto_a

    .line 70
    :cond_16
    iget v4, v0, Lcom/xw/repo/BubbleSeekBar;->K:F

    iget-object v6, v0, Lcom/xw/repo/BubbleSeekBar;->W:Landroid/graphics/Paint;

    move-object/from16 v1, p1

    move v2, v11

    move v3, v8

    move v5, v8

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 71
    :goto_a
    iget-object v1, v0, Lcom/xw/repo/BubbleSeekBar;->W:Landroid/graphics/Paint;

    iget v2, v0, Lcom/xw/repo/BubbleSeekBar;->i:I

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 72
    iget-object v1, v0, Lcom/xw/repo/BubbleSeekBar;->W:Landroid/graphics/Paint;

    iget v2, v0, Lcom/xw/repo/BubbleSeekBar;->e:I

    int-to-float v2, v2

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 73
    iget-boolean v1, v0, Lcom/xw/repo/BubbleSeekBar;->E:Z

    if-eqz v1, :cond_17

    .line 74
    iget v2, v0, Lcom/xw/repo/BubbleSeekBar;->K:F

    iget-object v6, v0, Lcom/xw/repo/BubbleSeekBar;->W:Landroid/graphics/Paint;

    move-object/from16 v1, p1

    move v3, v8

    move v4, v11

    move v5, v8

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    goto :goto_b

    .line 75
    :cond_17
    iget v2, v0, Lcom/xw/repo/BubbleSeekBar;->K:F

    iget-object v6, v0, Lcom/xw/repo/BubbleSeekBar;->W:Landroid/graphics/Paint;

    move-object/from16 v1, p1

    move v3, v8

    move v4, v12

    move v5, v8

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 76
    :goto_b
    iget-object v1, v0, Lcom/xw/repo/BubbleSeekBar;->W:Landroid/graphics/Paint;

    iget v2, v0, Lcom/xw/repo/BubbleSeekBar;->k:I

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 77
    iget v1, v0, Lcom/xw/repo/BubbleSeekBar;->K:F

    iget-boolean v2, v0, Lcom/xw/repo/BubbleSeekBar;->N:Z

    if-eqz v2, :cond_18

    iget v2, v0, Lcom/xw/repo/BubbleSeekBar;->h:I

    goto :goto_c

    :cond_18
    iget v2, v0, Lcom/xw/repo/BubbleSeekBar;->g:I

    :goto_c
    int-to-float v2, v2

    iget-object v3, v0, Lcom/xw/repo/BubbleSeekBar;->W:Landroid/graphics/Paint;

    invoke-virtual {v7, v1, v8, v2, v3}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 0

    .line 1
    invoke-super/range {p0 .. p5}, Landroid/view/View;->onLayout(ZIIII)V

    .line 2
    iget-boolean p1, p0, Lcom/xw/repo/BubbleSeekBar;->D:Z

    if-nez p1, :cond_0

    .line 3
    invoke-direct {p0}, Lcom/xw/repo/BubbleSeekBar;->N()V

    :cond_0
    return-void
.end method

.method protected onMeasure(II)V
    .locals 6

    .line 1
    invoke-super {p0, p1, p2}, Landroid/view/View;->onMeasure(II)V

    .line 2
    iget v0, p0, Lcom/xw/repo/BubbleSeekBar;->h:I

    mul-int/lit8 v0, v0, 0x2

    .line 3
    iget-boolean v1, p0, Lcom/xw/repo/BubbleSeekBar;->t:Z

    const-string v2, "j"

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz v1, :cond_0

    .line 4
    iget-object v1, p0, Lcom/xw/repo/BubbleSeekBar;->W:Landroid/graphics/Paint;

    iget v5, p0, Lcom/xw/repo/BubbleSeekBar;->u:I

    int-to-float v5, v5

    invoke-virtual {v1, v5}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 5
    iget-object v1, p0, Lcom/xw/repo/BubbleSeekBar;->W:Landroid/graphics/Paint;

    iget-object v5, p0, Lcom/xw/repo/BubbleSeekBar;->b1:Landroid/graphics/Rect;

    invoke-virtual {v1, v2, v4, v3, v5}, Landroid/graphics/Paint;->getTextBounds(Ljava/lang/String;IILandroid/graphics/Rect;)V

    .line 6
    iget-object v1, p0, Lcom/xw/repo/BubbleSeekBar;->b1:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v1

    add-int/2addr v0, v1

    .line 7
    :cond_0
    iget-boolean v1, p0, Lcom/xw/repo/BubbleSeekBar;->o:Z

    if-eqz v1, :cond_1

    iget v1, p0, Lcom/xw/repo/BubbleSeekBar;->r:I

    if-lt v1, v3, :cond_1

    .line 8
    iget-object v1, p0, Lcom/xw/repo/BubbleSeekBar;->W:Landroid/graphics/Paint;

    iget v5, p0, Lcom/xw/repo/BubbleSeekBar;->p:I

    int-to-float v5, v5

    invoke-virtual {v1, v5}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 9
    iget-object v1, p0, Lcom/xw/repo/BubbleSeekBar;->W:Landroid/graphics/Paint;

    iget-object v5, p0, Lcom/xw/repo/BubbleSeekBar;->b1:Landroid/graphics/Rect;

    invoke-virtual {v1, v2, v4, v3, v5}, Landroid/graphics/Paint;->getTextBounds(Ljava/lang/String;IILandroid/graphics/Rect;)V

    .line 10
    iget v1, p0, Lcom/xw/repo/BubbleSeekBar;->h:I

    mul-int/lit8 v1, v1, 0x2

    iget-object v2, p0, Lcom/xw/repo/BubbleSeekBar;->b1:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    move-result v2

    add-int/2addr v1, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 11
    :cond_1
    iget v1, p0, Lcom/xw/repo/BubbleSeekBar;->O:I

    mul-int/lit8 v1, v1, 0x2

    add-int/2addr v0, v1

    const/16 v1, 0xb4

    .line 12
    invoke-static {v1}, Lcom/xw/repo/b;->a(I)I

    move-result v1

    invoke-static {v1, p1}, Landroid/view/View;->resolveSize(II)I

    move-result v1

    invoke-virtual {p0, v1, v0}, Landroid/view/View;->setMeasuredDimension(II)V

    .line 13
    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    move-result v0

    iget v1, p0, Lcom/xw/repo/BubbleSeekBar;->h:I

    add-int/2addr v0, v1

    int-to-float v0, v0

    iput v0, p0, Lcom/xw/repo/BubbleSeekBar;->U:F

    .line 14
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    invoke-virtual {p0}, Landroid/view/View;->getPaddingRight()I

    move-result v1

    sub-int/2addr v0, v1

    iget v1, p0, Lcom/xw/repo/BubbleSeekBar;->h:I

    sub-int/2addr v0, v1

    int-to-float v0, v0

    iput v0, p0, Lcom/xw/repo/BubbleSeekBar;->V:F

    .line 15
    iget-boolean v0, p0, Lcom/xw/repo/BubbleSeekBar;->o:Z

    const/high16 v1, 0x40000000    # 2.0f

    if-eqz v0, :cond_3

    .line 16
    iget-object v0, p0, Lcom/xw/repo/BubbleSeekBar;->W:Landroid/graphics/Paint;

    iget v2, p0, Lcom/xw/repo/BubbleSeekBar;->p:I

    int-to-float v2, v2

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 17
    iget v0, p0, Lcom/xw/repo/BubbleSeekBar;->r:I

    if-nez v0, :cond_2

    .line 18
    iget-object v0, p0, Lcom/xw/repo/BubbleSeekBar;->Q:Landroid/util/SparseArray;

    invoke-virtual {v0, v4}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 19
    iget-object v1, p0, Lcom/xw/repo/BubbleSeekBar;->W:Landroid/graphics/Paint;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    iget-object v3, p0, Lcom/xw/repo/BubbleSeekBar;->b1:Landroid/graphics/Rect;

    invoke-virtual {v1, v0, v4, v2, v3}, Landroid/graphics/Paint;->getTextBounds(Ljava/lang/String;IILandroid/graphics/Rect;)V

    .line 20
    iget v0, p0, Lcom/xw/repo/BubbleSeekBar;->U:F

    iget-object v1, p0, Lcom/xw/repo/BubbleSeekBar;->b1:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v1

    iget v2, p0, Lcom/xw/repo/BubbleSeekBar;->O:I

    add-int/2addr v1, v2

    int-to-float v1, v1

    add-float/2addr v0, v1

    iput v0, p0, Lcom/xw/repo/BubbleSeekBar;->U:F

    .line 21
    iget-object v0, p0, Lcom/xw/repo/BubbleSeekBar;->Q:Landroid/util/SparseArray;

    iget v1, p0, Lcom/xw/repo/BubbleSeekBar;->l:I

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 22
    iget-object v1, p0, Lcom/xw/repo/BubbleSeekBar;->W:Landroid/graphics/Paint;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    iget-object v3, p0, Lcom/xw/repo/BubbleSeekBar;->b1:Landroid/graphics/Rect;

    invoke-virtual {v1, v0, v4, v2, v3}, Landroid/graphics/Paint;->getTextBounds(Ljava/lang/String;IILandroid/graphics/Rect;)V

    .line 23
    iget v0, p0, Lcom/xw/repo/BubbleSeekBar;->V:F

    iget-object v1, p0, Lcom/xw/repo/BubbleSeekBar;->b1:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v1

    iget v2, p0, Lcom/xw/repo/BubbleSeekBar;->O:I

    add-int/2addr v1, v2

    int-to-float v1, v1

    sub-float/2addr v0, v1

    iput v0, p0, Lcom/xw/repo/BubbleSeekBar;->V:F

    goto/16 :goto_0

    :cond_2
    if-lt v0, v3, :cond_4

    .line 24
    iget-object v0, p0, Lcom/xw/repo/BubbleSeekBar;->Q:Landroid/util/SparseArray;

    invoke-virtual {v0, v4}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 25
    iget-object v2, p0, Lcom/xw/repo/BubbleSeekBar;->W:Landroid/graphics/Paint;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    iget-object v5, p0, Lcom/xw/repo/BubbleSeekBar;->b1:Landroid/graphics/Rect;

    invoke-virtual {v2, v0, v4, v3, v5}, Landroid/graphics/Paint;->getTextBounds(Ljava/lang/String;IILandroid/graphics/Rect;)V

    .line 26
    iget v0, p0, Lcom/xw/repo/BubbleSeekBar;->h:I

    int-to-float v0, v0

    iget-object v2, p0, Lcom/xw/repo/BubbleSeekBar;->b1:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v2, v1

    invoke-static {v0, v2}, Ljava/lang/Math;->max(FF)F

    move-result v0

    .line 27
    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    move-result v2

    int-to-float v2, v2

    add-float/2addr v2, v0

    iget v0, p0, Lcom/xw/repo/BubbleSeekBar;->O:I

    int-to-float v0, v0

    add-float/2addr v2, v0

    iput v2, p0, Lcom/xw/repo/BubbleSeekBar;->U:F

    .line 28
    iget-object v0, p0, Lcom/xw/repo/BubbleSeekBar;->Q:Landroid/util/SparseArray;

    iget v2, p0, Lcom/xw/repo/BubbleSeekBar;->l:I

    invoke-virtual {v0, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 29
    iget-object v2, p0, Lcom/xw/repo/BubbleSeekBar;->W:Landroid/graphics/Paint;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    iget-object v5, p0, Lcom/xw/repo/BubbleSeekBar;->b1:Landroid/graphics/Rect;

    invoke-virtual {v2, v0, v4, v3, v5}, Landroid/graphics/Paint;->getTextBounds(Ljava/lang/String;IILandroid/graphics/Rect;)V

    .line 30
    iget v0, p0, Lcom/xw/repo/BubbleSeekBar;->h:I

    int-to-float v0, v0

    iget-object v2, p0, Lcom/xw/repo/BubbleSeekBar;->b1:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v2, v1

    invoke-static {v0, v2}, Ljava/lang/Math;->max(FF)F

    move-result v0

    .line 31
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    invoke-virtual {p0}, Landroid/view/View;->getPaddingRight()I

    move-result v2

    sub-int/2addr v1, v2

    int-to-float v1, v1

    sub-float/2addr v1, v0

    iget v0, p0, Lcom/xw/repo/BubbleSeekBar;->O:I

    int-to-float v0, v0

    sub-float/2addr v1, v0

    iput v1, p0, Lcom/xw/repo/BubbleSeekBar;->V:F

    goto :goto_0

    .line 32
    :cond_3
    iget-boolean v0, p0, Lcom/xw/repo/BubbleSeekBar;->t:Z

    if-eqz v0, :cond_4

    iget v0, p0, Lcom/xw/repo/BubbleSeekBar;->r:I

    const/4 v2, -0x1

    if-ne v0, v2, :cond_4

    .line 33
    iget-object v0, p0, Lcom/xw/repo/BubbleSeekBar;->W:Landroid/graphics/Paint;

    iget v2, p0, Lcom/xw/repo/BubbleSeekBar;->u:I

    int-to-float v2, v2

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 34
    iget-object v0, p0, Lcom/xw/repo/BubbleSeekBar;->Q:Landroid/util/SparseArray;

    invoke-virtual {v0, v4}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 35
    iget-object v2, p0, Lcom/xw/repo/BubbleSeekBar;->W:Landroid/graphics/Paint;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    iget-object v5, p0, Lcom/xw/repo/BubbleSeekBar;->b1:Landroid/graphics/Rect;

    invoke-virtual {v2, v0, v4, v3, v5}, Landroid/graphics/Paint;->getTextBounds(Ljava/lang/String;IILandroid/graphics/Rect;)V

    .line 36
    iget v0, p0, Lcom/xw/repo/BubbleSeekBar;->h:I

    int-to-float v0, v0

    iget-object v2, p0, Lcom/xw/repo/BubbleSeekBar;->b1:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v2, v1

    invoke-static {v0, v2}, Ljava/lang/Math;->max(FF)F

    move-result v0

    .line 37
    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    move-result v2

    int-to-float v2, v2

    add-float/2addr v2, v0

    iget v0, p0, Lcom/xw/repo/BubbleSeekBar;->O:I

    int-to-float v0, v0

    add-float/2addr v2, v0

    iput v2, p0, Lcom/xw/repo/BubbleSeekBar;->U:F

    .line 38
    iget-object v0, p0, Lcom/xw/repo/BubbleSeekBar;->Q:Landroid/util/SparseArray;

    iget v2, p0, Lcom/xw/repo/BubbleSeekBar;->l:I

    invoke-virtual {v0, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 39
    iget-object v2, p0, Lcom/xw/repo/BubbleSeekBar;->W:Landroid/graphics/Paint;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    iget-object v5, p0, Lcom/xw/repo/BubbleSeekBar;->b1:Landroid/graphics/Rect;

    invoke-virtual {v2, v0, v4, v3, v5}, Landroid/graphics/Paint;->getTextBounds(Ljava/lang/String;IILandroid/graphics/Rect;)V

    .line 40
    iget v0, p0, Lcom/xw/repo/BubbleSeekBar;->h:I

    int-to-float v0, v0

    iget-object v2, p0, Lcom/xw/repo/BubbleSeekBar;->b1:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v2, v1

    invoke-static {v0, v2}, Ljava/lang/Math;->max(FF)F

    move-result v0

    .line 41
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    invoke-virtual {p0}, Landroid/view/View;->getPaddingRight()I

    move-result v2

    sub-int/2addr v1, v2

    int-to-float v1, v1

    sub-float/2addr v1, v0

    iget v0, p0, Lcom/xw/repo/BubbleSeekBar;->O:I

    int-to-float v0, v0

    sub-float/2addr v1, v0

    iput v1, p0, Lcom/xw/repo/BubbleSeekBar;->V:F

    .line 42
    :cond_4
    :goto_0
    iget v0, p0, Lcom/xw/repo/BubbleSeekBar;->V:F

    iget v1, p0, Lcom/xw/repo/BubbleSeekBar;->U:F

    sub-float/2addr v0, v1

    iput v0, p0, Lcom/xw/repo/BubbleSeekBar;->L:F

    const/high16 v1, 0x3f800000    # 1.0f

    mul-float v0, v0, v1

    .line 43
    iget v1, p0, Lcom/xw/repo/BubbleSeekBar;->l:I

    int-to-float v1, v1

    div-float/2addr v0, v1

    iput v0, p0, Lcom/xw/repo/BubbleSeekBar;->M:F

    .line 44
    iget-boolean v0, p0, Lcom/xw/repo/BubbleSeekBar;->D:Z

    if-nez v0, :cond_5

    .line 45
    iget-object v0, p0, Lcom/xw/repo/BubbleSeekBar;->p1:Lcom/xw/repo/BubbleSeekBar$i;

    invoke-virtual {v0, p1, p2}, Landroid/view/View;->measure(II)V

    :cond_5
    return-void
.end method

.method protected onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 1

    .line 1
    instance-of v0, p1, Landroid/os/Bundle;

    if-eqz v0, :cond_2

    .line 2
    check-cast p1, Landroid/os/Bundle;

    const-string v0, "progress"

    .line 3
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getFloat(Ljava/lang/String;)F

    move-result v0

    iput v0, p0, Lcom/xw/repo/BubbleSeekBar;->c:F

    const-string v0, "save_instance"

    .line 4
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p1

    invoke-super {p0, p1}, Landroid/view/View;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 5
    iget-object p1, p0, Lcom/xw/repo/BubbleSeekBar;->p1:Lcom/xw/repo/BubbleSeekBar$i;

    if-eqz p1, :cond_1

    .line 6
    iget-boolean v0, p0, Lcom/xw/repo/BubbleSeekBar;->w:Z

    if-eqz v0, :cond_0

    .line 7
    invoke-virtual {p0}, Lcom/xw/repo/BubbleSeekBar;->getProgressFloat()F

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/xw/repo/BubbleSeekBar;->getProgress()I

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    .line 8
    :goto_0
    invoke-virtual {p1, v0}, Lcom/xw/repo/BubbleSeekBar$i;->a(Ljava/lang/String;)V

    .line 9
    :cond_1
    iget p1, p0, Lcom/xw/repo/BubbleSeekBar;->c:F

    invoke-virtual {p0, p1}, Lcom/xw/repo/BubbleSeekBar;->setProgress(F)V

    return-void

    .line 10
    :cond_2
    invoke-super {p0, p1}, Landroid/view/View;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    return-void
.end method

.method protected onSaveInstanceState()Landroid/os/Parcelable;
    .locals 3

    .line 1
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 2
    invoke-super {p0}, Landroid/view/View;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v1

    const-string v2, "save_instance"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 3
    iget v1, p0, Lcom/xw/repo/BubbleSeekBar;->c:F

    const-string v2, "progress"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putFloat(Ljava/lang/String;F)V

    return-object v0
.end method

.method protected onSizeChanged(IIII)V
    .locals 0

    .line 1
    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/View;->onSizeChanged(IIII)V

    .line 2
    new-instance p1, Lcom/xw/repo/BubbleSeekBar$a;

    invoke-direct {p1, p0}, Lcom/xw/repo/BubbleSeekBar$a;-><init>(Lcom/xw/repo/BubbleSeekBar;)V

    invoke-virtual {p0, p1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 5

    .line 1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_e

    if-eq v0, v2, :cond_7

    const/4 v3, 0x2

    if-eq v0, v3, :cond_0

    const/4 v3, 0x3

    if-eq v0, v3, :cond_7

    goto/16 :goto_8

    .line 2
    :cond_0
    iget-boolean v0, p0, Lcom/xw/repo/BubbleSeekBar;->N:Z

    if-eqz v0, :cond_1a

    .line 3
    iget-boolean v0, p0, Lcom/xw/repo/BubbleSeekBar;->y:Z

    if-eqz v0, :cond_2

    .line 4
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    invoke-direct {p0, v0}, Lcom/xw/repo/BubbleSeekBar;->A(F)F

    move-result v0

    .line 5
    iget v3, p0, Lcom/xw/repo/BubbleSeekBar;->R:F

    cmpl-float v3, v0, v3

    if-eqz v3, :cond_1

    .line 6
    iput v0, p0, Lcom/xw/repo/BubbleSeekBar;->R:F

    iput v0, p0, Lcom/xw/repo/BubbleSeekBar;->K:F

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_1

    .line 7
    :cond_2
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iget v3, p0, Lcom/xw/repo/BubbleSeekBar;->E2:F

    add-float/2addr v0, v3

    iput v0, p0, Lcom/xw/repo/BubbleSeekBar;->K:F

    .line 8
    iget v3, p0, Lcom/xw/repo/BubbleSeekBar;->U:F

    cmpg-float v0, v0, v3

    if-gez v0, :cond_3

    .line 9
    iput v3, p0, Lcom/xw/repo/BubbleSeekBar;->K:F

    .line 10
    :cond_3
    iget v0, p0, Lcom/xw/repo/BubbleSeekBar;->K:F

    iget v3, p0, Lcom/xw/repo/BubbleSeekBar;->V:F

    cmpl-float v0, v0, v3

    if-lez v0, :cond_4

    .line 11
    iput v3, p0, Lcom/xw/repo/BubbleSeekBar;->K:F

    :cond_4
    :goto_0
    const/4 v0, 0x1

    :goto_1
    if-eqz v0, :cond_1a

    .line 12
    invoke-direct {p0}, Lcom/xw/repo/BubbleSeekBar;->C()F

    move-result v0

    iput v0, p0, Lcom/xw/repo/BubbleSeekBar;->c:F

    .line 13
    iget-boolean v0, p0, Lcom/xw/repo/BubbleSeekBar;->D:Z

    if-nez v0, :cond_6

    iget-object v0, p0, Lcom/xw/repo/BubbleSeekBar;->p1:Lcom/xw/repo/BubbleSeekBar$i;

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_6

    .line 14
    invoke-direct {p0}, Lcom/xw/repo/BubbleSeekBar;->B()F

    move-result v0

    iput v0, p0, Lcom/xw/repo/BubbleSeekBar;->V1:F

    .line 15
    iget-object v3, p0, Lcom/xw/repo/BubbleSeekBar;->b2:Landroid/view/WindowManager$LayoutParams;

    const/high16 v4, 0x3f000000    # 0.5f

    add-float/2addr v0, v4

    float-to-int v0, v0

    iput v0, v3, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 16
    iget-object v0, p0, Lcom/xw/repo/BubbleSeekBar;->g1:Landroid/view/WindowManager;

    iget-object v4, p0, Lcom/xw/repo/BubbleSeekBar;->p1:Lcom/xw/repo/BubbleSeekBar$i;

    invoke-interface {v0, v4, v3}, Landroid/view/WindowManager;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 17
    iget-object v0, p0, Lcom/xw/repo/BubbleSeekBar;->p1:Lcom/xw/repo/BubbleSeekBar$i;

    iget-boolean v3, p0, Lcom/xw/repo/BubbleSeekBar;->w:Z

    if-eqz v3, :cond_5

    .line 18
    invoke-virtual {p0}, Lcom/xw/repo/BubbleSeekBar;->getProgressFloat()F

    move-result v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v3

    goto :goto_2

    :cond_5
    invoke-virtual {p0}, Lcom/xw/repo/BubbleSeekBar;->getProgress()I

    move-result v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    .line 19
    :goto_2
    invoke-virtual {v0, v3}, Lcom/xw/repo/BubbleSeekBar$i;->a(Ljava/lang/String;)V

    goto :goto_3

    .line 20
    :cond_6
    invoke-direct {p0}, Lcom/xw/repo/BubbleSeekBar;->O()F

    .line 21
    :goto_3
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 22
    iget-object v0, p0, Lcom/xw/repo/BubbleSeekBar;->T:Lcom/xw/repo/BubbleSeekBar$k;

    if-eqz v0, :cond_1a

    .line 23
    invoke-virtual {p0}, Lcom/xw/repo/BubbleSeekBar;->getProgress()I

    move-result v3

    invoke-virtual {p0}, Lcom/xw/repo/BubbleSeekBar;->getProgressFloat()F

    move-result v4

    invoke-interface {v0, p0, v3, v4, v2}, Lcom/xw/repo/BubbleSeekBar$k;->a(Lcom/xw/repo/BubbleSeekBar;IFZ)V

    goto/16 :goto_8

    .line 24
    :cond_7
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    invoke-interface {v0, v1}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    .line 25
    iget-boolean v0, p0, Lcom/xw/repo/BubbleSeekBar;->n:Z

    if-eqz v0, :cond_9

    .line 26
    iget-boolean v0, p0, Lcom/xw/repo/BubbleSeekBar;->x:Z

    if-eqz v0, :cond_8

    .line 27
    new-instance v0, Lcom/xw/repo/BubbleSeekBar$b;

    invoke-direct {v0, p0}, Lcom/xw/repo/BubbleSeekBar$b;-><init>(Lcom/xw/repo/BubbleSeekBar;)V

    iget-wide v3, p0, Lcom/xw/repo/BubbleSeekBar;->A:J

    invoke-virtual {p0, v0, v3, v4}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_5

    .line 28
    :cond_8
    invoke-direct {p0}, Lcom/xw/repo/BubbleSeekBar;->z()V

    goto :goto_5

    .line 29
    :cond_9
    iget-boolean v0, p0, Lcom/xw/repo/BubbleSeekBar;->N:Z

    if-nez v0, :cond_a

    iget-boolean v0, p0, Lcom/xw/repo/BubbleSeekBar;->x:Z

    if-eqz v0, :cond_d

    .line 30
    :cond_a
    iget-boolean v0, p0, Lcom/xw/repo/BubbleSeekBar;->D:Z

    if-eqz v0, :cond_c

    .line 31
    invoke-virtual {p0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    iget-wide v3, p0, Lcom/xw/repo/BubbleSeekBar;->A:J

    .line 32
    invoke-virtual {v0, v3, v4}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    iget-boolean v3, p0, Lcom/xw/repo/BubbleSeekBar;->N:Z

    if-nez v3, :cond_b

    iget-boolean v3, p0, Lcom/xw/repo/BubbleSeekBar;->x:Z

    if-eqz v3, :cond_b

    const-wide/16 v3, 0x12c

    goto :goto_4

    :cond_b
    const-wide/16 v3, 0x0

    .line 33
    :goto_4
    invoke-virtual {v0, v3, v4}, Landroid/view/ViewPropertyAnimator;->setStartDelay(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    new-instance v3, Lcom/xw/repo/BubbleSeekBar$c;

    invoke-direct {v3, p0}, Lcom/xw/repo/BubbleSeekBar$c;-><init>(Lcom/xw/repo/BubbleSeekBar;)V

    .line 34
    invoke-virtual {v0, v3}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 35
    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    goto :goto_5

    .line 36
    :cond_c
    new-instance v0, Lcom/xw/repo/BubbleSeekBar$d;

    invoke-direct {v0, p0}, Lcom/xw/repo/BubbleSeekBar$d;-><init>(Lcom/xw/repo/BubbleSeekBar;)V

    iget-wide v3, p0, Lcom/xw/repo/BubbleSeekBar;->A:J

    invoke-virtual {p0, v0, v3, v4}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 37
    :cond_d
    :goto_5
    iget-object v0, p0, Lcom/xw/repo/BubbleSeekBar;->T:Lcom/xw/repo/BubbleSeekBar$k;

    if-eqz v0, :cond_1a

    .line 38
    invoke-virtual {p0}, Lcom/xw/repo/BubbleSeekBar;->getProgress()I

    move-result v3

    invoke-virtual {p0}, Lcom/xw/repo/BubbleSeekBar;->getProgressFloat()F

    move-result v4

    invoke-interface {v0, p0, v3, v4, v2}, Lcom/xw/repo/BubbleSeekBar$k;->a(Lcom/xw/repo/BubbleSeekBar;IFZ)V

    .line 39
    iget-object v0, p0, Lcom/xw/repo/BubbleSeekBar;->T:Lcom/xw/repo/BubbleSeekBar$k;

    invoke-virtual {p0}, Lcom/xw/repo/BubbleSeekBar;->getProgress()I

    move-result v3

    invoke-virtual {p0}, Lcom/xw/repo/BubbleSeekBar;->getProgressFloat()F

    move-result v4

    invoke-interface {v0, p0, v3, v4}, Lcom/xw/repo/BubbleSeekBar$k;->b(Lcom/xw/repo/BubbleSeekBar;IF)V

    goto/16 :goto_8

    .line 40
    :cond_e
    invoke-virtual {p0}, Lcom/xw/repo/BubbleSeekBar;->performClick()Z

    .line 41
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    invoke-interface {v0, v2}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    .line 42
    invoke-direct {p0, p1}, Lcom/xw/repo/BubbleSeekBar;->L(Landroid/view/MotionEvent;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/xw/repo/BubbleSeekBar;->N:Z

    if-eqz v0, :cond_12

    .line 43
    iget-boolean v0, p0, Lcom/xw/repo/BubbleSeekBar;->z:Z

    if-eqz v0, :cond_f

    iget-boolean v0, p0, Lcom/xw/repo/BubbleSeekBar;->S:Z

    if-nez v0, :cond_f

    .line 44
    iput-boolean v2, p0, Lcom/xw/repo/BubbleSeekBar;->S:Z

    .line 45
    :cond_f
    iget-boolean v0, p0, Lcom/xw/repo/BubbleSeekBar;->B:Z

    if-eqz v0, :cond_10

    iget-boolean v0, p0, Lcom/xw/repo/BubbleSeekBar;->P:Z

    if-nez v0, :cond_10

    .line 46
    iput-boolean v2, p0, Lcom/xw/repo/BubbleSeekBar;->P:Z

    .line 47
    :cond_10
    iget-boolean v0, p0, Lcom/xw/repo/BubbleSeekBar;->D:Z

    if-nez v0, :cond_11

    .line 48
    invoke-direct {p0}, Lcom/xw/repo/BubbleSeekBar;->P()V

    .line 49
    :cond_11
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    goto :goto_7

    .line 50
    :cond_12
    iget-boolean v0, p0, Lcom/xw/repo/BubbleSeekBar;->x:Z

    if-eqz v0, :cond_19

    invoke-direct {p0, p1}, Lcom/xw/repo/BubbleSeekBar;->M(Landroid/view/MotionEvent;)Z

    move-result v0

    if-eqz v0, :cond_19

    .line 51
    iput-boolean v2, p0, Lcom/xw/repo/BubbleSeekBar;->N:Z

    .line 52
    iget-boolean v0, p0, Lcom/xw/repo/BubbleSeekBar;->z:Z

    if-eqz v0, :cond_13

    iget-boolean v0, p0, Lcom/xw/repo/BubbleSeekBar;->S:Z

    if-nez v0, :cond_13

    .line 53
    iput-boolean v2, p0, Lcom/xw/repo/BubbleSeekBar;->S:Z

    .line 54
    :cond_13
    iget-boolean v0, p0, Lcom/xw/repo/BubbleSeekBar;->B:Z

    if-eqz v0, :cond_14

    .line 55
    invoke-direct {p0}, Lcom/xw/repo/BubbleSeekBar;->I()V

    .line 56
    iput-boolean v2, p0, Lcom/xw/repo/BubbleSeekBar;->P:Z

    .line 57
    :cond_14
    iget-boolean v0, p0, Lcom/xw/repo/BubbleSeekBar;->y:Z

    if-eqz v0, :cond_15

    .line 58
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    invoke-direct {p0, v0}, Lcom/xw/repo/BubbleSeekBar;->A(F)F

    move-result v0

    iput v0, p0, Lcom/xw/repo/BubbleSeekBar;->R:F

    iput v0, p0, Lcom/xw/repo/BubbleSeekBar;->K:F

    goto :goto_6

    .line 59
    :cond_15
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iput v0, p0, Lcom/xw/repo/BubbleSeekBar;->K:F

    .line 60
    iget v3, p0, Lcom/xw/repo/BubbleSeekBar;->U:F

    cmpg-float v0, v0, v3

    if-gez v0, :cond_16

    .line 61
    iput v3, p0, Lcom/xw/repo/BubbleSeekBar;->K:F

    .line 62
    :cond_16
    iget v0, p0, Lcom/xw/repo/BubbleSeekBar;->K:F

    iget v3, p0, Lcom/xw/repo/BubbleSeekBar;->V:F

    cmpl-float v0, v0, v3

    if-lez v0, :cond_17

    .line 63
    iput v3, p0, Lcom/xw/repo/BubbleSeekBar;->K:F

    .line 64
    :cond_17
    :goto_6
    invoke-direct {p0}, Lcom/xw/repo/BubbleSeekBar;->C()F

    move-result v0

    iput v0, p0, Lcom/xw/repo/BubbleSeekBar;->c:F

    .line 65
    iget-boolean v0, p0, Lcom/xw/repo/BubbleSeekBar;->D:Z

    if-nez v0, :cond_18

    .line 66
    invoke-direct {p0}, Lcom/xw/repo/BubbleSeekBar;->B()F

    move-result v0

    iput v0, p0, Lcom/xw/repo/BubbleSeekBar;->V1:F

    .line 67
    invoke-direct {p0}, Lcom/xw/repo/BubbleSeekBar;->P()V

    .line 68
    :cond_18
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 69
    :cond_19
    :goto_7
    iget v0, p0, Lcom/xw/repo/BubbleSeekBar;->K:F

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    sub-float/2addr v0, v3

    iput v0, p0, Lcom/xw/repo/BubbleSeekBar;->E2:F

    .line 70
    :cond_1a
    :goto_8
    iget-boolean v0, p0, Lcom/xw/repo/BubbleSeekBar;->N:Z

    if-nez v0, :cond_1b

    iget-boolean v0, p0, Lcom/xw/repo/BubbleSeekBar;->x:Z

    if-nez v0, :cond_1b

    invoke-super {p0, p1}, Landroid/view/View;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    if-eqz p1, :cond_1c

    :cond_1b
    const/4 v1, 0x1

    :cond_1c
    return v1
.end method

.method protected onVisibilityChanged(Landroid/view/View;I)V
    .locals 1
    .param p1    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    iget-boolean v0, p0, Lcom/xw/repo/BubbleSeekBar;->D:Z

    if-nez v0, :cond_3

    iget-boolean v0, p0, Lcom/xw/repo/BubbleSeekBar;->B:Z

    if-nez v0, :cond_0

    goto :goto_1

    :cond_0
    if-eqz p2, :cond_1

    .line 2
    invoke-direct {p0}, Lcom/xw/repo/BubbleSeekBar;->I()V

    goto :goto_0

    .line 3
    :cond_1
    iget-boolean v0, p0, Lcom/xw/repo/BubbleSeekBar;->P:Z

    if-eqz v0, :cond_2

    .line 4
    invoke-direct {p0}, Lcom/xw/repo/BubbleSeekBar;->P()V

    .line 5
    :cond_2
    :goto_0
    invoke-super {p0, p1, p2}, Landroid/view/View;->onVisibilityChanged(Landroid/view/View;I)V

    :cond_3
    :goto_1
    return-void
.end method

.method public performClick()Z
    .locals 1

    invoke-super {p0}, Landroid/view/View;->performClick()Z

    move-result v0

    return v0
.end method

.method public setBubbleColor(I)V
    .locals 1
    .param p1    # I
        .annotation build Landroidx/annotation/ColorInt;
        .end annotation
    .end param

    .line 1
    iget v0, p0, Lcom/xw/repo/BubbleSeekBar;->F:I

    if-eq v0, p1, :cond_0

    .line 2
    iput p1, p0, Lcom/xw/repo/BubbleSeekBar;->F:I

    .line 3
    iget-object p1, p0, Lcom/xw/repo/BubbleSeekBar;->p1:Lcom/xw/repo/BubbleSeekBar$i;

    if-eqz p1, :cond_0

    .line 4
    invoke-virtual {p1}, Landroid/view/View;->invalidate()V

    :cond_0
    return-void
.end method

.method public setCustomSectionTextArray(Lcom/xw/repo/BubbleSeekBar$j;)V
    .locals 3
    .param p1    # Lcom/xw/repo/BubbleSeekBar$j;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    iget v0, p0, Lcom/xw/repo/BubbleSeekBar;->l:I

    iget-object v1, p0, Lcom/xw/repo/BubbleSeekBar;->Q:Landroid/util/SparseArray;

    invoke-interface {p1, v0, v1}, Lcom/xw/repo/BubbleSeekBar$j;->a(ILandroid/util/SparseArray;)Landroid/util/SparseArray;

    move-result-object p1

    iput-object p1, p0, Lcom/xw/repo/BubbleSeekBar;->Q:Landroid/util/SparseArray;

    const/4 p1, 0x0

    const/4 v0, 0x0

    .line 2
    :goto_0
    iget v1, p0, Lcom/xw/repo/BubbleSeekBar;->l:I

    if-gt v0, v1, :cond_1

    .line 3
    iget-object v1, p0, Lcom/xw/repo/BubbleSeekBar;->Q:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_0

    .line 4
    iget-object v1, p0, Lcom/xw/repo/BubbleSeekBar;->Q:Landroid/util/SparseArray;

    const-string v2, ""

    invoke-virtual {v1, v0, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 5
    :cond_1
    iput-boolean p1, p0, Lcom/xw/repo/BubbleSeekBar;->t:Z

    .line 6
    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    .line 7
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public setOnProgressChangedListener(Lcom/xw/repo/BubbleSeekBar$k;)V
    .locals 0

    iput-object p1, p0, Lcom/xw/repo/BubbleSeekBar;->T:Lcom/xw/repo/BubbleSeekBar$k;

    return-void
.end method

.method public setProgress(F)V
    .locals 3

    .line 1
    iput p1, p0, Lcom/xw/repo/BubbleSeekBar;->c:F

    .line 2
    iget-object p1, p0, Lcom/xw/repo/BubbleSeekBar;->T:Lcom/xw/repo/BubbleSeekBar$k;

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    .line 3
    invoke-virtual {p0}, Lcom/xw/repo/BubbleSeekBar;->getProgress()I

    move-result v1

    invoke-virtual {p0}, Lcom/xw/repo/BubbleSeekBar;->getProgressFloat()F

    move-result v2

    invoke-interface {p1, p0, v1, v2, v0}, Lcom/xw/repo/BubbleSeekBar$k;->a(Lcom/xw/repo/BubbleSeekBar;IFZ)V

    .line 4
    iget-object p1, p0, Lcom/xw/repo/BubbleSeekBar;->T:Lcom/xw/repo/BubbleSeekBar$k;

    invoke-virtual {p0}, Lcom/xw/repo/BubbleSeekBar;->getProgress()I

    move-result v1

    invoke-virtual {p0}, Lcom/xw/repo/BubbleSeekBar;->getProgressFloat()F

    move-result v2

    invoke-interface {p1, p0, v1, v2, v0}, Lcom/xw/repo/BubbleSeekBar$k;->c(Lcom/xw/repo/BubbleSeekBar;IFZ)V

    .line 5
    :cond_0
    iget-boolean p1, p0, Lcom/xw/repo/BubbleSeekBar;->D:Z

    if-nez p1, :cond_1

    .line 6
    invoke-direct {p0}, Lcom/xw/repo/BubbleSeekBar;->B()F

    move-result p1

    iput p1, p0, Lcom/xw/repo/BubbleSeekBar;->V1:F

    .line 7
    :cond_1
    iget-boolean p1, p0, Lcom/xw/repo/BubbleSeekBar;->B:Z

    if-eqz p1, :cond_2

    .line 8
    invoke-direct {p0}, Lcom/xw/repo/BubbleSeekBar;->I()V

    .line 9
    new-instance p1, Lcom/xw/repo/BubbleSeekBar$h;

    invoke-direct {p1, p0}, Lcom/xw/repo/BubbleSeekBar$h;-><init>(Lcom/xw/repo/BubbleSeekBar;)V

    iget-wide v1, p0, Lcom/xw/repo/BubbleSeekBar;->C:J

    invoke-virtual {p0, p1, v1, v2}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 10
    :cond_2
    iget-boolean p1, p0, Lcom/xw/repo/BubbleSeekBar;->z:Z

    if-eqz p1, :cond_3

    .line 11
    iput-boolean v0, p0, Lcom/xw/repo/BubbleSeekBar;->S:Z

    .line 12
    :cond_3
    invoke-virtual {p0}, Landroid/view/View;->postInvalidate()V

    return-void
.end method

.method public setSecondTrackColor(I)V
    .locals 1
    .param p1    # I
        .annotation build Landroidx/annotation/ColorInt;
        .end annotation
    .end param

    .line 1
    iget v0, p0, Lcom/xw/repo/BubbleSeekBar;->j:I

    if-eq v0, p1, :cond_0

    .line 2
    iput p1, p0, Lcom/xw/repo/BubbleSeekBar;->j:I

    .line 3
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    :cond_0
    return-void
.end method

.method public setThumbColor(I)V
    .locals 1
    .param p1    # I
        .annotation build Landroidx/annotation/ColorInt;
        .end annotation
    .end param

    .line 1
    iget v0, p0, Lcom/xw/repo/BubbleSeekBar;->k:I

    if-eq v0, p1, :cond_0

    .line 2
    iput p1, p0, Lcom/xw/repo/BubbleSeekBar;->k:I

    .line 3
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    :cond_0
    return-void
.end method

.method public setTrackColor(I)V
    .locals 1
    .param p1    # I
        .annotation build Landroidx/annotation/ColorInt;
        .end annotation
    .end param

    .line 1
    iget v0, p0, Lcom/xw/repo/BubbleSeekBar;->i:I

    if-eq v0, p1, :cond_0

    .line 2
    iput p1, p0, Lcom/xw/repo/BubbleSeekBar;->i:I

    .line 3
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    :cond_0
    return-void
.end method
