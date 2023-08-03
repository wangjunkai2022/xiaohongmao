.class public Lcom/tangxiaolv/telegramgallery/o;
.super Ljava/lang/Object;
.source "PhotoViewer.java"

# interfaces
.implements Lcom/tangxiaolv/telegramgallery/Utils/h$c;
.implements Landroid/view/GestureDetector$OnGestureListener;
.implements Landroid/view/GestureDetector$OnDoubleTapListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tangxiaolv/telegramgallery/o$z;,
        Lcom/tangxiaolv/telegramgallery/o$a0;,
        Lcom/tangxiaolv/telegramgallery/o$b0;,
        Lcom/tangxiaolv/telegramgallery/o$d0;,
        Lcom/tangxiaolv/telegramgallery/o$y;,
        Lcom/tangxiaolv/telegramgallery/o$c0;,
        Lcom/tangxiaolv/telegramgallery/o$e0;,
        Lcom/tangxiaolv/telegramgallery/o$x;
    }
.end annotation


# static fields
.field private static A3:Landroid/graphics/Paint; = null

.field private static volatile B3:Lcom/tangxiaolv/telegramgallery/o; = null

.field private static final x3:I = 0x4

.field private static final y3:I = 0x1

.field private static z3:Landroid/view/animation/DecelerateInterpolator;


# instance fields
.field private A:Lcom/tangxiaolv/telegramgallery/Components/AspectRatioFrameLayout;

.field private B:Landroid/view/TextureView;

.field private C:Landroid/widget/ImageView;

.field private D:Z

.field private E:Z

.field private E2:Z

.field private F:Z

.field private F2:F

.field private G:F

.field private G2:F

.field private H:J

.field private H2:F

.field private I:[[F

.field private I2:F

.field private J:I

.field private J2:F

.field private K:J

.field private K2:F

.field private L:Ljava/lang/Runnable;

.field private L2:F

.field private M:Lcom/tangxiaolv/telegramgallery/o$c0;

.field private M2:F

.field private N:Lcom/tangxiaolv/telegramgallery/o$c0;

.field private N2:I

.field private O:Z

.field private O2:J

.field private P:I

.field private P2:Landroid/animation/AnimatorSet;

.field private Q:Lcom/tangxiaolv/telegramgallery/k;

.field private Q2:Landroid/animation/AnimatorSet;

.field private R:Lcom/tangxiaolv/telegramgallery/k;

.field private R2:Landroid/view/GestureDetector;

.field private S:Lcom/tangxiaolv/telegramgallery/k;

.field private S2:Landroid/view/animation/DecelerateInterpolator;

.field private T:I

.field private T1:I

.field private T2:F

.field private U:Lcom/tangxiaolv/telegramgallery/TL/d;

.field private U2:F

.field private V:[Ljava/lang/String;

.field private V1:I

.field private V2:F

.field private W:Lcom/tangxiaolv/telegramgallery/o$c0;

.field private W2:F

.field private X2:F

.field private Y2:F

.field private Z2:F

.field private a:I

.field private a3:F

.field private b:Lcom/tangxiaolv/telegramgallery/o$b0;

.field private b1:Ljava/lang/String;

.field private b2:Z

.field private b3:F

.field private c:Z

.field private c3:F

.field private d:Lcom/tangxiaolv/telegramgallery/GalleryActivity;

.field private d3:F

.field private e:Landroid/content/Context;

.field private e3:F

.field private f:Lcom/tangxiaolv/telegramgallery/Actionbar/a;

.field private f3:Z

.field private g:Z

.field private g1:Landroid/graphics/Bitmap;

.field private g2:Z

.field private g3:Z

.field private h:Landroid/view/WindowManager$LayoutParams;

.field private h3:Z

.field private i:Lcom/tangxiaolv/telegramgallery/o$z;

.field private i3:Z

.field private j:Lcom/tangxiaolv/telegramgallery/o$a0;

.field private j3:Z

.field private k:Lcom/tangxiaolv/telegramgallery/Components/c;

.field private k3:Z

.field private l:Landroid/widget/FrameLayout;

.field private l3:Z

.field private m:Lcom/tangxiaolv/telegramgallery/o$x;

.field private m3:Z

.field private n:Lcom/tangxiaolv/telegramgallery/Components/b;

.field private n3:Z

.field private o:Lcom/tangxiaolv/telegramgallery/Components/h;

.field private o3:I

.field private p:Lcom/tangxiaolv/telegramgallery/Components/h;

.field private p1:I

.field private p2:Z

.field private p3:Landroid/view/VelocityTracker;

.field private q:[Lcom/tangxiaolv/telegramgallery/o$e0;

.field private q3:Landroid/widget/Scroller;

.field private r:Lcom/tangxiaolv/telegramgallery/Actionbar/d;

.field private r3:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/tangxiaolv/telegramgallery/TL/d;",
            ">;"
        }
    .end annotation
.end field

.field private s:Landroid/view/View;

.field private s3:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/tangxiaolv/telegramgallery/TL/k;",
            ">;"
        }
    .end annotation
.end field

.field private t:Landroid/animation/AnimatorSet;

.field private t3:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private u:Lcom/tangxiaolv/telegramgallery/Components/d;

.field private u3:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private v:Landroid/app/AlertDialog;

.field private v3:Lcom/tangxiaolv/telegramgallery/TL/d;

.field private w:Z

.field private final w3:I

.field private x:Z

.field private x1:J

.field private x2:[Z

.field private y:I

.field private y1:J

.field private y2:Z

.field private z:Lcom/tangxiaolv/telegramgallery/AnimatedFileDrawable;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 6

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lcom/tangxiaolv/telegramgallery/o;->g:Z

    .line 3
    new-instance v1, Lcom/tangxiaolv/telegramgallery/o$x;

    const/high16 v2, -0x1000000

    invoke-direct {v1, p0, v2}, Lcom/tangxiaolv/telegramgallery/o$x;-><init>(Lcom/tangxiaolv/telegramgallery/o;I)V

    iput-object v1, p0, Lcom/tangxiaolv/telegramgallery/o;->m:Lcom/tangxiaolv/telegramgallery/o$x;

    const/4 v1, 0x3

    new-array v2, v1, [Lcom/tangxiaolv/telegramgallery/o$e0;

    .line 4
    iput-object v2, p0, Lcom/tangxiaolv/telegramgallery/o;->q:[Lcom/tangxiaolv/telegramgallery/o$e0;

    .line 5
    iput-boolean v0, p0, Lcom/tangxiaolv/telegramgallery/o;->w:Z

    const/4 v2, 0x0

    .line 6
    iput v2, p0, Lcom/tangxiaolv/telegramgallery/o;->y:I

    const/4 v3, 0x2

    new-array v4, v3, [I

    .line 7
    fill-array-data v4, :array_0

    const-class v5, F

    invoke-static {v5, v4}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [[F

    iput-object v4, p0, Lcom/tangxiaolv/telegramgallery/o;->I:[[F

    .line 8
    iput v2, p0, Lcom/tangxiaolv/telegramgallery/o;->J:I

    const-wide/16 v4, 0x0

    .line 9
    iput-wide v4, p0, Lcom/tangxiaolv/telegramgallery/o;->K:J

    const/4 v4, 0x0

    .line 10
    iput-object v4, p0, Lcom/tangxiaolv/telegramgallery/o;->L:Ljava/lang/Runnable;

    .line 11
    iput-boolean v2, p0, Lcom/tangxiaolv/telegramgallery/o;->O:Z

    .line 12
    new-instance v5, Lcom/tangxiaolv/telegramgallery/k;

    invoke-direct {v5}, Lcom/tangxiaolv/telegramgallery/k;-><init>()V

    iput-object v5, p0, Lcom/tangxiaolv/telegramgallery/o;->Q:Lcom/tangxiaolv/telegramgallery/k;

    .line 13
    new-instance v5, Lcom/tangxiaolv/telegramgallery/k;

    invoke-direct {v5}, Lcom/tangxiaolv/telegramgallery/k;-><init>()V

    iput-object v5, p0, Lcom/tangxiaolv/telegramgallery/o;->R:Lcom/tangxiaolv/telegramgallery/k;

    .line 14
    new-instance v5, Lcom/tangxiaolv/telegramgallery/k;

    invoke-direct {v5}, Lcom/tangxiaolv/telegramgallery/k;-><init>()V

    iput-object v5, p0, Lcom/tangxiaolv/telegramgallery/o;->S:Lcom/tangxiaolv/telegramgallery/k;

    new-array v1, v1, [Ljava/lang/String;

    .line 15
    iput-object v1, p0, Lcom/tangxiaolv/telegramgallery/o;->V:[Ljava/lang/String;

    .line 16
    iput-object v4, p0, Lcom/tangxiaolv/telegramgallery/o;->g1:Landroid/graphics/Bitmap;

    new-array v1, v3, [Z

    .line 17
    fill-array-data v1, :array_1

    iput-object v1, p0, Lcom/tangxiaolv/telegramgallery/o;->x2:[Z

    .line 18
    iput-boolean v2, p0, Lcom/tangxiaolv/telegramgallery/o;->E2:Z

    const/high16 v1, 0x3f800000    # 1.0f

    .line 19
    iput v1, p0, Lcom/tangxiaolv/telegramgallery/o;->I2:F

    .line 20
    new-instance v3, Landroid/view/animation/DecelerateInterpolator;

    const/high16 v5, 0x3fc00000    # 1.5f

    invoke-direct {v3, v5}, Landroid/view/animation/DecelerateInterpolator;-><init>(F)V

    iput-object v3, p0, Lcom/tangxiaolv/telegramgallery/o;->S2:Landroid/view/animation/DecelerateInterpolator;

    .line 21
    iput v1, p0, Lcom/tangxiaolv/telegramgallery/o;->U2:F

    .line 22
    iput-boolean v0, p0, Lcom/tangxiaolv/telegramgallery/o;->f3:Z

    .line 23
    iput-boolean v2, p0, Lcom/tangxiaolv/telegramgallery/o;->g3:Z

    .line 24
    iput-boolean v2, p0, Lcom/tangxiaolv/telegramgallery/o;->h3:Z

    .line 25
    iput-boolean v2, p0, Lcom/tangxiaolv/telegramgallery/o;->i3:Z

    .line 26
    iput-boolean v2, p0, Lcom/tangxiaolv/telegramgallery/o;->j3:Z

    .line 27
    iput-boolean v2, p0, Lcom/tangxiaolv/telegramgallery/o;->k3:Z

    .line 28
    iput-boolean v0, p0, Lcom/tangxiaolv/telegramgallery/o;->l3:Z

    .line 29
    iput-boolean v2, p0, Lcom/tangxiaolv/telegramgallery/o;->m3:Z

    .line 30
    iput-boolean v2, p0, Lcom/tangxiaolv/telegramgallery/o;->n3:Z

    .line 31
    iput v2, p0, Lcom/tangxiaolv/telegramgallery/o;->o3:I

    .line 32
    iput-object v4, p0, Lcom/tangxiaolv/telegramgallery/o;->p3:Landroid/view/VelocityTracker;

    .line 33
    iput-object v4, p0, Lcom/tangxiaolv/telegramgallery/o;->q3:Landroid/widget/Scroller;

    .line 34
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/tangxiaolv/telegramgallery/o;->r3:Ljava/util/ArrayList;

    .line 35
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/tangxiaolv/telegramgallery/o;->s3:Ljava/util/ArrayList;

    .line 36
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/tangxiaolv/telegramgallery/o;->t3:Ljava/util/ArrayList;

    .line 37
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/tangxiaolv/telegramgallery/o;->u3:Ljava/util/ArrayList;

    .line 38
    iput-object v4, p0, Lcom/tangxiaolv/telegramgallery/o;->v3:Lcom/tangxiaolv/telegramgallery/TL/d;

    const/high16 v0, 0x41f00000    # 30.0f

    .line 39
    invoke-static {v0}, Lcom/tangxiaolv/telegramgallery/Utils/a;->g(F)I

    move-result v0

    iput v0, p0, Lcom/tangxiaolv/telegramgallery/o;->w3:I

    return-void

    :array_0
    .array-data 4
        0x2
        0x8
    .end array-data

    :array_1
    .array-data 1
        0x0t
        0x1t
    .end array-data
.end method

.method static synthetic A(Lcom/tangxiaolv/telegramgallery/o;F)F
    .locals 0

    iput p1, p0, Lcom/tangxiaolv/telegramgallery/o;->K2:F

    return p1
.end method

.method private A0()I
    .locals 1

    iget v0, p0, Lcom/tangxiaolv/telegramgallery/o;->P:I

    invoke-direct {p0, v0}, Lcom/tangxiaolv/telegramgallery/o;->B0(I)I

    move-result v0

    return v0
.end method

.method static synthetic B(Lcom/tangxiaolv/telegramgallery/o;)I
    .locals 0

    invoke-direct {p0}, Lcom/tangxiaolv/telegramgallery/o;->y0()I

    move-result p0

    return p0
.end method

.method private B0(I)I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/tangxiaolv/telegramgallery/o;->i:Lcom/tangxiaolv/telegramgallery/o$z;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getWidth()I

    move-result v0

    if-eqz p1, :cond_0

    const/high16 p1, 0x41e00000    # 28.0f

    .line 2
    invoke-static {p1}, Lcom/tangxiaolv/telegramgallery/Utils/a;->g(F)I

    move-result p1

    sub-int/2addr v0, p1

    :cond_0
    return v0
.end method

.method static synthetic C(Lcom/tangxiaolv/telegramgallery/o;)F
    .locals 0

    iget p0, p0, Lcom/tangxiaolv/telegramgallery/o;->I2:F

    return p0
.end method

.method private C0(I[I)Lcom/tangxiaolv/telegramgallery/TL/d;
    .locals 2

    const/4 v0, 0x0

    if-gez p1, :cond_0

    return-object v0

    .line 1
    :cond_0
    iget-object v1, p0, Lcom/tangxiaolv/telegramgallery/o;->r3:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_2

    .line 2
    iget-object v1, p0, Lcom/tangxiaolv/telegramgallery/o;->r3:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lt p1, v1, :cond_1

    return-object v0

    :cond_1
    const/4 v0, 0x0

    .line 3
    iget-object v1, p0, Lcom/tangxiaolv/telegramgallery/o;->t3:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    aput v1, p2, v0

    .line 4
    iget-object p2, p0, Lcom/tangxiaolv/telegramgallery/o;->r3:Ljava/util/ArrayList;

    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/tangxiaolv/telegramgallery/TL/d;

    return-object p1

    :cond_2
    return-object v0
.end method

.method static synthetic D(Lcom/tangxiaolv/telegramgallery/o;F)F
    .locals 0

    iput p1, p0, Lcom/tangxiaolv/telegramgallery/o;->I2:F

    return p1
.end method

.method private D0(I)Ljava/lang/String;
    .locals 3

    const/4 v0, 0x0

    if-gez p1, :cond_0

    return-object v0

    .line 1
    :cond_0
    iget-object v1, p0, Lcom/tangxiaolv/telegramgallery/o;->r3:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_2

    .line 2
    iget-object v1, p0, Lcom/tangxiaolv/telegramgallery/o;->r3:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_7

    .line 3
    iget-object v1, p0, Lcom/tangxiaolv/telegramgallery/o;->r3:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lt p1, v1, :cond_1

    return-object v0

    .line 4
    :cond_1
    iget-object v0, p0, Lcom/tangxiaolv/telegramgallery/o;->r3:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/tangxiaolv/telegramgallery/TL/d;

    .line 5
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-wide v1, p1, Lcom/tangxiaolv/telegramgallery/TL/d;->d:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, "_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p1, Lcom/tangxiaolv/telegramgallery/TL/d;->e:I

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ".jpg"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 6
    :cond_2
    iget-object v1, p0, Lcom/tangxiaolv/telegramgallery/o;->u3:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_7

    .line 7
    iget-object v1, p0, Lcom/tangxiaolv/telegramgallery/o;->u3:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lt p1, v1, :cond_3

    return-object v0

    .line 8
    :cond_3
    iget-object v1, p0, Lcom/tangxiaolv/telegramgallery/o;->u3:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    .line 9
    instance-of v1, p1, Lcom/tangxiaolv/telegramgallery/Utils/g$l;

    if-eqz v1, :cond_7

    .line 10
    check-cast p1, Lcom/tangxiaolv/telegramgallery/Utils/g$l;

    .line 11
    iget-object v0, p1, Lcom/tangxiaolv/telegramgallery/Utils/g$l;->m:Lcom/tangxiaolv/telegramgallery/TL/b;

    if-eqz v0, :cond_4

    .line 12
    invoke-static {v0}, Lcom/tangxiaolv/telegramgallery/Utils/d;->v(Lcom/tangxiaolv/telegramgallery/TL/m;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 13
    :cond_4
    iget v0, p1, Lcom/tangxiaolv/telegramgallery/Utils/g$l;->h:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_6

    iget-object v0, p1, Lcom/tangxiaolv/telegramgallery/Utils/g$l;->d:Ljava/lang/String;

    if-eqz v0, :cond_6

    .line 14
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_6

    .line 15
    new-instance v0, Ljava/io/File;

    iget-object v1, p1, Lcom/tangxiaolv/telegramgallery/Utils/g$l;->d:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 16
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 17
    invoke-virtual {v0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_5
    const-string v0, ""

    .line 18
    iput-object v0, p1, Lcom/tangxiaolv/telegramgallery/Utils/g$l;->d:Ljava/lang/String;

    .line 19
    :cond_6
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p1, Lcom/tangxiaolv/telegramgallery/Utils/g$l;->b:Ljava/lang/String;

    invoke-static {v1}, Lcom/tangxiaolv/telegramgallery/Utils/i;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p1, Lcom/tangxiaolv/telegramgallery/Utils/g$l;->b:Ljava/lang/String;

    const-string v1, "jpg"

    .line 20
    invoke-static {p1, v1}, Lcom/tangxiaolv/telegramgallery/Utils/e;->Q(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_7
    return-object v0
.end method

.method static synthetic E(Lcom/tangxiaolv/telegramgallery/o;F)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/tangxiaolv/telegramgallery/o;->e1(F)V

    return-void
.end method

.method public static E0()Lcom/tangxiaolv/telegramgallery/o;
    .locals 2

    .line 1
    sget-object v0, Lcom/tangxiaolv/telegramgallery/o;->B3:Lcom/tangxiaolv/telegramgallery/o;

    if-nez v0, :cond_1

    .line 2
    const-class v1, Lcom/tangxiaolv/telegramgallery/o;

    monitor-enter v1

    .line 3
    :try_start_0
    sget-object v0, Lcom/tangxiaolv/telegramgallery/o;->B3:Lcom/tangxiaolv/telegramgallery/o;

    if-nez v0, :cond_0

    .line 4
    new-instance v0, Lcom/tangxiaolv/telegramgallery/o;

    invoke-direct {v0}, Lcom/tangxiaolv/telegramgallery/o;-><init>()V

    sput-object v0, Lcom/tangxiaolv/telegramgallery/o;->B3:Lcom/tangxiaolv/telegramgallery/o;

    .line 5
    :cond_0
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_1
    :goto_0
    return-object v0
.end method

.method static synthetic F(Lcom/tangxiaolv/telegramgallery/o;)Lcom/tangxiaolv/telegramgallery/Actionbar/a;
    .locals 0

    iget-object p0, p0, Lcom/tangxiaolv/telegramgallery/o;->f:Lcom/tangxiaolv/telegramgallery/Actionbar/a;

    return-object p0
.end method

.method private F0()V
    .locals 4

    .line 1
    iget v0, p0, Lcom/tangxiaolv/telegramgallery/o;->I2:F

    const/high16 v1, 0x3f800000    # 1.0f

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_0

    .line 2
    invoke-direct {p0}, Lcom/tangxiaolv/telegramgallery/o;->A0()I

    move-result v0

    iget-object v1, p0, Lcom/tangxiaolv/telegramgallery/o;->R:Lcom/tangxiaolv/telegramgallery/k;

    invoke-virtual {v1}, Lcom/tangxiaolv/telegramgallery/k;->r()I

    move-result v1

    sub-int/2addr v0, v1

    div-int/lit8 v0, v0, 0x2

    int-to-float v0, v0

    iget v1, p0, Lcom/tangxiaolv/telegramgallery/o;->I2:F

    mul-float v0, v0, v1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const/4 v1, 0x1

    .line 3
    iput v1, p0, Lcom/tangxiaolv/telegramgallery/o;->o3:I

    .line 4
    iget v1, p0, Lcom/tangxiaolv/telegramgallery/o;->I2:F

    iget v2, p0, Lcom/tangxiaolv/telegramgallery/o;->b3:F

    invoke-direct {p0}, Lcom/tangxiaolv/telegramgallery/o;->A0()I

    move-result v3

    int-to-float v3, v3

    sub-float/2addr v2, v3

    sub-float/2addr v2, v0

    iget v0, p0, Lcom/tangxiaolv/telegramgallery/o;->w3:I

    div-int/lit8 v0, v0, 0x2

    int-to-float v0, v0

    sub-float/2addr v2, v0

    iget v0, p0, Lcom/tangxiaolv/telegramgallery/o;->H2:F

    const/4 v3, 0x0

    invoke-direct {p0, v1, v2, v0, v3}, Lcom/tangxiaolv/telegramgallery/o;->m0(FFFZ)V

    return-void
.end method

.method static synthetic G(Lcom/tangxiaolv/telegramgallery/o;)I
    .locals 0

    iget p0, p0, Lcom/tangxiaolv/telegramgallery/o;->y:I

    return p0
.end method

.method private G0()V
    .locals 5

    .line 1
    iget v0, p0, Lcom/tangxiaolv/telegramgallery/o;->I2:F

    const/4 v1, 0x2

    const/high16 v2, 0x3f800000    # 1.0f

    cmpl-float v0, v0, v2

    if-eqz v0, :cond_0

    .line 2
    invoke-direct {p0}, Lcom/tangxiaolv/telegramgallery/o;->A0()I

    move-result v0

    iget-object v2, p0, Lcom/tangxiaolv/telegramgallery/o;->R:Lcom/tangxiaolv/telegramgallery/k;

    invoke-virtual {v2}, Lcom/tangxiaolv/telegramgallery/k;->r()I

    move-result v2

    sub-int/2addr v0, v2

    div-int/2addr v0, v1

    int-to-float v0, v0

    iget v2, p0, Lcom/tangxiaolv/telegramgallery/o;->I2:F

    mul-float v0, v0, v2

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 3
    :goto_0
    iput v1, p0, Lcom/tangxiaolv/telegramgallery/o;->o3:I

    .line 4
    iget v2, p0, Lcom/tangxiaolv/telegramgallery/o;->I2:F

    iget v3, p0, Lcom/tangxiaolv/telegramgallery/o;->c3:F

    invoke-direct {p0}, Lcom/tangxiaolv/telegramgallery/o;->A0()I

    move-result v4

    int-to-float v4, v4

    add-float/2addr v3, v4

    add-float/2addr v3, v0

    iget v0, p0, Lcom/tangxiaolv/telegramgallery/o;->w3:I

    div-int/2addr v0, v1

    int-to-float v0, v0

    add-float/2addr v3, v0

    iget v0, p0, Lcom/tangxiaolv/telegramgallery/o;->H2:F

    const/4 v1, 0x0

    invoke-direct {p0, v2, v3, v0, v1}, Lcom/tangxiaolv/telegramgallery/o;->m0(FFFZ)V

    return-void
.end method

.method static synthetic H(Lcom/tangxiaolv/telegramgallery/o;FFFZ)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/tangxiaolv/telegramgallery/o;->m0(FFFZ)V

    return-void
.end method

.method static synthetic I(Lcom/tangxiaolv/telegramgallery/o;F)F
    .locals 0

    iput p1, p0, Lcom/tangxiaolv/telegramgallery/o;->G2:F

    return p1
.end method

.method static synthetic J(Lcom/tangxiaolv/telegramgallery/o;F)F
    .locals 0

    iput p1, p0, Lcom/tangxiaolv/telegramgallery/o;->H2:F

    return p1
.end method

.method static synthetic K(Lcom/tangxiaolv/telegramgallery/o;Landroid/animation/AnimatorSet;)Landroid/animation/AnimatorSet;
    .locals 0

    iput-object p1, p0, Lcom/tangxiaolv/telegramgallery/o;->Q2:Landroid/animation/AnimatorSet;

    return-object p1
.end method

.method private K0(Z)V
    .locals 1

    iget-object p1, p0, Lcom/tangxiaolv/telegramgallery/o;->V:[Ljava/lang/String;

    const/4 v0, 0x0

    aget-object p1, p1, v0

    return-void
.end method

.method static synthetic L(Lcom/tangxiaolv/telegramgallery/o;I)I
    .locals 0

    invoke-direct {p0, p1}, Lcom/tangxiaolv/telegramgallery/o;->B0(I)I

    move-result p0

    return p0
.end method

.method private L0(Landroid/graphics/Canvas;)V
    .locals 18
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 1
    iget v2, v0, Lcom/tangxiaolv/telegramgallery/o;->J:I

    const/4 v3, 0x1

    if-eq v2, v3, :cond_24

    iget-boolean v4, v0, Lcom/tangxiaolv/telegramgallery/o;->c:Z

    const/4 v5, 0x2

    if-nez v4, :cond_0

    if-eq v2, v5, :cond_0

    goto/16 :goto_9

    .line 2
    :cond_0
    iget-object v2, v0, Lcom/tangxiaolv/telegramgallery/o;->P2:Landroid/animation/AnimatorSet;

    const/high16 v4, -0x40800000    # -1.0f

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/high16 v8, 0x3f800000    # 1.0f

    if-eqz v2, :cond_4

    .line 3
    iget-object v2, v0, Lcom/tangxiaolv/telegramgallery/o;->q3:Landroid/widget/Scroller;

    invoke-virtual {v2}, Landroid/widget/Scroller;->isFinished()Z

    move-result v2

    if-nez v2, :cond_1

    .line 4
    iget-object v2, v0, Lcom/tangxiaolv/telegramgallery/o;->q3:Landroid/widget/Scroller;

    invoke-virtual {v2}, Landroid/widget/Scroller;->abortAnimation()V

    .line 5
    :cond_1
    iget v2, v0, Lcom/tangxiaolv/telegramgallery/o;->I2:F

    iget v9, v0, Lcom/tangxiaolv/telegramgallery/o;->L2:F

    sub-float/2addr v9, v2

    iget v10, v0, Lcom/tangxiaolv/telegramgallery/o;->M2:F

    mul-float v9, v9, v10

    add-float/2addr v2, v9

    .line 6
    iget v9, v0, Lcom/tangxiaolv/telegramgallery/o;->G2:F

    iget v11, v0, Lcom/tangxiaolv/telegramgallery/o;->J2:F

    sub-float/2addr v11, v9

    mul-float v11, v11, v10

    add-float/2addr v9, v11

    .line 7
    iget v11, v0, Lcom/tangxiaolv/telegramgallery/o;->H2:F

    iget v12, v0, Lcom/tangxiaolv/telegramgallery/o;->K2:F

    sub-float/2addr v12, v11

    mul-float v12, v12, v10

    add-float/2addr v11, v12

    .line 8
    iget v12, v0, Lcom/tangxiaolv/telegramgallery/o;->P:I

    if-ne v12, v3, :cond_2

    .line 9
    iget-object v12, v0, Lcom/tangxiaolv/telegramgallery/o;->u:Lcom/tangxiaolv/telegramgallery/Components/d;

    invoke-virtual {v12, v10}, Lcom/tangxiaolv/telegramgallery/Components/d;->setAnimationProgress(F)V

    .line 10
    :cond_2
    iget v10, v0, Lcom/tangxiaolv/telegramgallery/o;->L2:F

    cmpl-float v10, v10, v8

    if-nez v10, :cond_3

    iget v10, v0, Lcom/tangxiaolv/telegramgallery/o;->I2:F

    cmpl-float v10, v10, v8

    if-nez v10, :cond_3

    iget v10, v0, Lcom/tangxiaolv/telegramgallery/o;->G2:F

    cmpl-float v10, v10, v6

    if-nez v10, :cond_3

    move v10, v11

    goto :goto_0

    :cond_3
    const/high16 v10, -0x40800000    # -1.0f

    .line 11
    :goto_0
    iget-object v12, v0, Lcom/tangxiaolv/telegramgallery/o;->i:Lcom/tangxiaolv/telegramgallery/o$z;

    invoke-virtual {v12}, Landroid/widget/FrameLayout;->invalidate()V

    goto/16 :goto_2

    .line 12
    :cond_4
    iget-wide v9, v0, Lcom/tangxiaolv/telegramgallery/o;->O2:J

    const-wide/16 v11, 0x0

    cmp-long v2, v9, v11

    if-eqz v2, :cond_6

    .line 13
    iget v2, v0, Lcom/tangxiaolv/telegramgallery/o;->J2:F

    iput v2, v0, Lcom/tangxiaolv/telegramgallery/o;->G2:F

    .line 14
    iget v2, v0, Lcom/tangxiaolv/telegramgallery/o;->K2:F

    iput v2, v0, Lcom/tangxiaolv/telegramgallery/o;->H2:F

    .line 15
    iget v2, v0, Lcom/tangxiaolv/telegramgallery/o;->L2:F

    iput v2, v0, Lcom/tangxiaolv/telegramgallery/o;->I2:F

    .line 16
    iput-wide v11, v0, Lcom/tangxiaolv/telegramgallery/o;->O2:J

    .line 17
    iget v2, v0, Lcom/tangxiaolv/telegramgallery/o;->P:I

    if-ne v2, v3, :cond_5

    .line 18
    iget-object v2, v0, Lcom/tangxiaolv/telegramgallery/o;->u:Lcom/tangxiaolv/telegramgallery/Components/d;

    invoke-virtual {v2, v8}, Lcom/tangxiaolv/telegramgallery/Components/d;->setAnimationProgress(F)V

    .line 19
    :cond_5
    iget v2, v0, Lcom/tangxiaolv/telegramgallery/o;->I2:F

    invoke-direct {v0, v2}, Lcom/tangxiaolv/telegramgallery/o;->e1(F)V

    .line 20
    iput-boolean v7, v0, Lcom/tangxiaolv/telegramgallery/o;->m3:Z

    .line 21
    :cond_6
    iget-object v2, v0, Lcom/tangxiaolv/telegramgallery/o;->q3:Landroid/widget/Scroller;

    invoke-virtual {v2}, Landroid/widget/Scroller;->isFinished()Z

    move-result v2

    if-nez v2, :cond_9

    .line 22
    iget-object v2, v0, Lcom/tangxiaolv/telegramgallery/o;->q3:Landroid/widget/Scroller;

    invoke-virtual {v2}, Landroid/widget/Scroller;->computeScrollOffset()Z

    move-result v2

    if-eqz v2, :cond_9

    .line 23
    iget-object v2, v0, Lcom/tangxiaolv/telegramgallery/o;->q3:Landroid/widget/Scroller;

    invoke-virtual {v2}, Landroid/widget/Scroller;->getStartX()I

    move-result v2

    int-to-float v2, v2

    iget v9, v0, Lcom/tangxiaolv/telegramgallery/o;->c3:F

    cmpg-float v2, v2, v9

    if-gez v2, :cond_7

    iget-object v2, v0, Lcom/tangxiaolv/telegramgallery/o;->q3:Landroid/widget/Scroller;

    invoke-virtual {v2}, Landroid/widget/Scroller;->getStartX()I

    move-result v2

    int-to-float v2, v2

    iget v9, v0, Lcom/tangxiaolv/telegramgallery/o;->b3:F

    cmpl-float v2, v2, v9

    if-lez v2, :cond_7

    .line 24
    iget-object v2, v0, Lcom/tangxiaolv/telegramgallery/o;->q3:Landroid/widget/Scroller;

    invoke-virtual {v2}, Landroid/widget/Scroller;->getCurrX()I

    move-result v2

    int-to-float v2, v2

    iput v2, v0, Lcom/tangxiaolv/telegramgallery/o;->G2:F

    .line 25
    :cond_7
    iget-object v2, v0, Lcom/tangxiaolv/telegramgallery/o;->q3:Landroid/widget/Scroller;

    invoke-virtual {v2}, Landroid/widget/Scroller;->getStartY()I

    move-result v2

    int-to-float v2, v2

    iget v9, v0, Lcom/tangxiaolv/telegramgallery/o;->e3:F

    cmpg-float v2, v2, v9

    if-gez v2, :cond_8

    iget-object v2, v0, Lcom/tangxiaolv/telegramgallery/o;->q3:Landroid/widget/Scroller;

    invoke-virtual {v2}, Landroid/widget/Scroller;->getStartY()I

    move-result v2

    int-to-float v2, v2

    iget v9, v0, Lcom/tangxiaolv/telegramgallery/o;->d3:F

    cmpl-float v2, v2, v9

    if-lez v2, :cond_8

    .line 26
    iget-object v2, v0, Lcom/tangxiaolv/telegramgallery/o;->q3:Landroid/widget/Scroller;

    invoke-virtual {v2}, Landroid/widget/Scroller;->getCurrY()I

    move-result v2

    int-to-float v2, v2

    iput v2, v0, Lcom/tangxiaolv/telegramgallery/o;->H2:F

    .line 27
    :cond_8
    iget-object v2, v0, Lcom/tangxiaolv/telegramgallery/o;->i:Lcom/tangxiaolv/telegramgallery/o$z;

    invoke-virtual {v2}, Landroid/widget/FrameLayout;->invalidate()V

    .line 28
    :cond_9
    iget v2, v0, Lcom/tangxiaolv/telegramgallery/o;->o3:I

    if-eqz v2, :cond_c

    if-ne v2, v3, :cond_a

    .line 29
    iget v2, v0, Lcom/tangxiaolv/telegramgallery/o;->T:I

    add-int/2addr v2, v3

    invoke-direct {v0, v2, v7}, Lcom/tangxiaolv/telegramgallery/o;->W0(IZ)V

    goto :goto_1

    :cond_a
    if-ne v2, v5, :cond_b

    .line 30
    iget v2, v0, Lcom/tangxiaolv/telegramgallery/o;->T:I

    sub-int/2addr v2, v3

    invoke-direct {v0, v2, v7}, Lcom/tangxiaolv/telegramgallery/o;->W0(IZ)V

    .line 31
    :cond_b
    :goto_1
    iput v7, v0, Lcom/tangxiaolv/telegramgallery/o;->o3:I

    .line 32
    :cond_c
    iget v2, v0, Lcom/tangxiaolv/telegramgallery/o;->I2:F

    .line 33
    iget v11, v0, Lcom/tangxiaolv/telegramgallery/o;->H2:F

    .line 34
    iget v9, v0, Lcom/tangxiaolv/telegramgallery/o;->G2:F

    .line 35
    iget-boolean v10, v0, Lcom/tangxiaolv/telegramgallery/o;->i3:Z

    if-nez v10, :cond_d

    move v10, v11

    goto :goto_2

    :cond_d
    const/high16 v10, -0x40800000    # -1.0f

    .line 36
    :goto_2
    iget v12, v0, Lcom/tangxiaolv/telegramgallery/o;->P:I

    if-nez v12, :cond_e

    iget v12, v0, Lcom/tangxiaolv/telegramgallery/o;->I2:F

    cmpl-float v12, v12, v8

    if-nez v12, :cond_e

    cmpl-float v4, v10, v4

    if-eqz v4, :cond_e

    iget-boolean v4, v0, Lcom/tangxiaolv/telegramgallery/o;->m3:Z

    if-nez v4, :cond_e

    .line 37
    invoke-direct/range {p0 .. p0}, Lcom/tangxiaolv/telegramgallery/o;->y0()I

    move-result v4

    int-to-float v4, v4

    const/high16 v12, 0x40800000    # 4.0f

    div-float/2addr v4, v12

    .line 38
    iget-object v12, v0, Lcom/tangxiaolv/telegramgallery/o;->m:Lcom/tangxiaolv/telegramgallery/o$x;

    const/high16 v13, 0x42fe0000    # 127.0f

    const/high16 v14, 0x437f0000    # 255.0f

    .line 39
    invoke-static {v10}, Ljava/lang/Math;->abs(F)F

    move-result v10

    invoke-static {v10, v4}, Ljava/lang/Math;->min(FF)F

    move-result v10

    div-float/2addr v10, v4

    sub-float v4, v8, v10

    mul-float v4, v4, v14

    .line 40
    invoke-static {v13, v4}, Ljava/lang/Math;->max(FF)F

    move-result v4

    float-to-int v4, v4

    invoke-virtual {v12, v4}, Lcom/tangxiaolv/telegramgallery/o$x;->setAlpha(I)V

    goto :goto_3

    .line 41
    :cond_e
    iget-object v4, v0, Lcom/tangxiaolv/telegramgallery/o;->m:Lcom/tangxiaolv/telegramgallery/o$x;

    const/16 v10, 0xff

    invoke-virtual {v4, v10}, Lcom/tangxiaolv/telegramgallery/o$x;->setAlpha(I)V

    :goto_3
    const/4 v4, 0x0

    .line 42
    iget v10, v0, Lcom/tangxiaolv/telegramgallery/o;->P:I

    if-nez v10, :cond_12

    .line 43
    iget v10, v0, Lcom/tangxiaolv/telegramgallery/o;->I2:F

    cmpl-float v10, v10, v8

    if-ltz v10, :cond_10

    iget-boolean v10, v0, Lcom/tangxiaolv/telegramgallery/o;->m3:Z

    if-nez v10, :cond_10

    iget-boolean v10, v0, Lcom/tangxiaolv/telegramgallery/o;->h3:Z

    if-nez v10, :cond_10

    .line 44
    iget v10, v0, Lcom/tangxiaolv/telegramgallery/o;->c3:F

    const/high16 v12, 0x40a00000    # 5.0f

    invoke-static {v12}, Lcom/tangxiaolv/telegramgallery/Utils/a;->g(F)I

    move-result v13

    int-to-float v13, v13

    add-float/2addr v10, v13

    cmpl-float v10, v9, v10

    if-lez v10, :cond_f

    .line 45
    iget-object v4, v0, Lcom/tangxiaolv/telegramgallery/o;->Q:Lcom/tangxiaolv/telegramgallery/k;

    goto :goto_4

    .line 46
    :cond_f
    iget v10, v0, Lcom/tangxiaolv/telegramgallery/o;->b3:F

    invoke-static {v12}, Lcom/tangxiaolv/telegramgallery/Utils/a;->g(F)I

    move-result v12

    int-to-float v12, v12

    sub-float/2addr v10, v12

    cmpg-float v10, v9, v10

    if-gez v10, :cond_10

    .line 47
    iget-object v4, v0, Lcom/tangxiaolv/telegramgallery/o;->S:Lcom/tangxiaolv/telegramgallery/k;

    :cond_10
    :goto_4
    if-eqz v4, :cond_11

    const/4 v10, 0x1

    goto :goto_5

    :cond_11
    const/4 v10, 0x0

    .line 48
    :goto_5
    iput-boolean v10, v0, Lcom/tangxiaolv/telegramgallery/o;->g3:Z

    .line 49
    :cond_12
    iget-object v10, v0, Lcom/tangxiaolv/telegramgallery/o;->S:Lcom/tangxiaolv/telegramgallery/k;

    const v12, 0x3e99999a    # 0.3f

    const/high16 v13, 0x40000000    # 2.0f

    if-ne v4, v10, :cond_16

    .line 50
    iget-boolean v10, v0, Lcom/tangxiaolv/telegramgallery/o;->m3:Z

    if-nez v10, :cond_13

    iget v10, v0, Lcom/tangxiaolv/telegramgallery/o;->b3:F

    cmpg-float v14, v9, v10

    if-gez v14, :cond_13

    sub-float/2addr v10, v9

    .line 51
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->getWidth()I

    move-result v14

    int-to-float v14, v14

    div-float/2addr v10, v14

    invoke-static {v8, v10}, Ljava/lang/Math;->min(FF)F

    move-result v10

    sub-float v14, v8, v10

    mul-float v14, v14, v12

    .line 52
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->getWidth()I

    move-result v15

    neg-int v15, v15

    iget v7, v0, Lcom/tangxiaolv/telegramgallery/o;->w3:I

    div-int/2addr v7, v5

    sub-int/2addr v15, v7

    int-to-float v7, v15

    goto :goto_6

    :cond_13
    move v7, v9

    const/high16 v10, 0x3f800000    # 1.0f

    const/4 v14, 0x0

    .line 53
    :goto_6
    invoke-virtual {v4}, Lcom/tangxiaolv/telegramgallery/k;->G()Z

    move-result v15

    if-eqz v15, :cond_15

    .line 54
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    .line 55
    invoke-direct/range {p0 .. p0}, Lcom/tangxiaolv/telegramgallery/o;->A0()I

    move-result v15

    div-int/2addr v15, v5

    int-to-float v15, v15

    invoke-direct/range {p0 .. p0}, Lcom/tangxiaolv/telegramgallery/o;->y0()I

    move-result v16

    div-int/lit8 v12, v16, 0x2

    int-to-float v12, v12

    invoke-virtual {v1, v15, v12}, Landroid/graphics/Canvas;->translate(FF)V

    .line 56
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->getWidth()I

    move-result v12

    iget v15, v0, Lcom/tangxiaolv/telegramgallery/o;->w3:I

    div-int/2addr v15, v5

    add-int/2addr v12, v15

    int-to-float v12, v12

    add-float/2addr v12, v7

    invoke-virtual {v1, v12, v6}, Landroid/graphics/Canvas;->translate(FF)V

    sub-float v12, v8, v14

    .line 57
    invoke-virtual {v1, v12, v12}, Landroid/graphics/Canvas;->scale(FF)V

    .line 58
    invoke-virtual {v4}, Lcom/tangxiaolv/telegramgallery/k;->j()I

    move-result v12

    .line 59
    invoke-virtual {v4}, Lcom/tangxiaolv/telegramgallery/k;->i()I

    move-result v15

    .line 60
    invoke-direct/range {p0 .. p0}, Lcom/tangxiaolv/telegramgallery/o;->A0()I

    move-result v6

    int-to-float v6, v6

    int-to-float v12, v12

    div-float/2addr v6, v12

    .line 61
    invoke-direct/range {p0 .. p0}, Lcom/tangxiaolv/telegramgallery/o;->y0()I

    move-result v3

    int-to-float v3, v3

    int-to-float v15, v15

    div-float/2addr v3, v15

    cmpl-float v17, v6, v3

    if-lez v17, :cond_14

    move v6, v3

    :cond_14
    mul-float v12, v12, v6

    float-to-int v3, v12

    mul-float v15, v15, v6

    float-to-int v6, v15

    .line 62
    invoke-virtual {v4, v10}, Lcom/tangxiaolv/telegramgallery/k;->S(F)V

    neg-int v12, v3

    .line 63
    div-int/2addr v12, v5

    neg-int v15, v6

    div-int/2addr v15, v5

    invoke-virtual {v4, v12, v15, v3, v6}, Lcom/tangxiaolv/telegramgallery/k;->h0(IIII)V

    .line 64
    invoke-virtual {v4, v1}, Lcom/tangxiaolv/telegramgallery/k;->d(Landroid/graphics/Canvas;)Z

    .line 65
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    .line 66
    :cond_15
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    div-float v3, v11, v2

    .line 67
    invoke-virtual {v1, v7, v3}, Landroid/graphics/Canvas;->translate(FF)V

    .line 68
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->getWidth()I

    move-result v3

    int-to-float v3, v3

    iget v6, v0, Lcom/tangxiaolv/telegramgallery/o;->I2:F

    add-float/2addr v6, v8

    mul-float v3, v3, v6

    iget v6, v0, Lcom/tangxiaolv/telegramgallery/o;->w3:I

    int-to-float v6, v6

    add-float/2addr v3, v6

    div-float/2addr v3, v13

    neg-float v6, v11

    div-float/2addr v6, v2

    invoke-virtual {v1, v3, v6}, Landroid/graphics/Canvas;->translate(FF)V

    .line 69
    iget-object v3, v0, Lcom/tangxiaolv/telegramgallery/o;->q:[Lcom/tangxiaolv/telegramgallery/o$e0;

    const/4 v6, 0x1

    aget-object v3, v3, v6

    sub-float v7, v8, v14

    invoke-virtual {v3, v7}, Lcom/tangxiaolv/telegramgallery/o$e0;->f(F)V

    .line 70
    iget-object v3, v0, Lcom/tangxiaolv/telegramgallery/o;->q:[Lcom/tangxiaolv/telegramgallery/o$e0;

    aget-object v3, v3, v6

    invoke-virtual {v3, v10}, Lcom/tangxiaolv/telegramgallery/o$e0;->c(F)V

    .line 71
    iget-object v3, v0, Lcom/tangxiaolv/telegramgallery/o;->q:[Lcom/tangxiaolv/telegramgallery/o$e0;

    aget-object v3, v3, v6

    invoke-virtual {v3, v1}, Lcom/tangxiaolv/telegramgallery/o$e0;->b(Landroid/graphics/Canvas;)V

    .line 72
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    .line 73
    :cond_16
    iget-boolean v3, v0, Lcom/tangxiaolv/telegramgallery/o;->m3:Z

    if-nez v3, :cond_17

    iget v3, v0, Lcom/tangxiaolv/telegramgallery/o;->c3:F

    cmpl-float v6, v9, v3

    if-lez v6, :cond_17

    iget v6, v0, Lcom/tangxiaolv/telegramgallery/o;->P:I

    if-nez v6, :cond_17

    sub-float v3, v9, v3

    .line 74
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->getWidth()I

    move-result v6

    int-to-float v6, v6

    div-float/2addr v3, v6

    invoke-static {v8, v3}, Ljava/lang/Math;->min(FF)F

    move-result v3

    const v6, 0x3e99999a    # 0.3f

    mul-float v6, v6, v3

    sub-float v3, v8, v3

    .line 75
    iget v7, v0, Lcom/tangxiaolv/telegramgallery/o;->c3:F

    goto :goto_7

    :cond_17
    move v7, v9

    const/high16 v3, 0x3f800000    # 1.0f

    const/4 v6, 0x0

    .line 76
    :goto_7
    iget-object v10, v0, Lcom/tangxiaolv/telegramgallery/o;->A:Lcom/tangxiaolv/telegramgallery/Components/AspectRatioFrameLayout;

    if-eqz v10, :cond_18

    .line 77
    invoke-virtual {v10}, Landroid/widget/FrameLayout;->getVisibility()I

    move-result v10

    if-nez v10, :cond_18

    const/4 v10, 0x1

    goto :goto_8

    :cond_18
    const/4 v10, 0x0

    .line 78
    :goto_8
    iget-object v12, v0, Lcom/tangxiaolv/telegramgallery/o;->R:Lcom/tangxiaolv/telegramgallery/k;

    invoke-virtual {v12}, Lcom/tangxiaolv/telegramgallery/k;->G()Z

    move-result v12

    if-eqz v12, :cond_20

    .line 79
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    .line 80
    invoke-direct/range {p0 .. p0}, Lcom/tangxiaolv/telegramgallery/o;->A0()I

    move-result v12

    div-int/2addr v12, v5

    invoke-direct/range {p0 .. p0}, Lcom/tangxiaolv/telegramgallery/o;->v0()I

    move-result v14

    add-int/2addr v12, v14

    int-to-float v12, v12

    .line 81
    invoke-direct/range {p0 .. p0}, Lcom/tangxiaolv/telegramgallery/o;->y0()I

    move-result v14

    div-int/2addr v14, v5

    invoke-direct/range {p0 .. p0}, Lcom/tangxiaolv/telegramgallery/o;->w0()I

    move-result v15

    add-int/2addr v14, v15

    int-to-float v14, v14

    .line 82
    invoke-virtual {v1, v12, v14}, Landroid/graphics/Canvas;->translate(FF)V

    .line 83
    invoke-virtual {v1, v7, v11}, Landroid/graphics/Canvas;->translate(FF)V

    sub-float v12, v2, v6

    .line 84
    invoke-virtual {v1, v12, v12}, Landroid/graphics/Canvas;->scale(FF)V

    .line 85
    iget v12, v0, Lcom/tangxiaolv/telegramgallery/o;->P:I

    const/4 v14, 0x1

    if-ne v12, v14, :cond_19

    .line 86
    iget-object v12, v0, Lcom/tangxiaolv/telegramgallery/o;->u:Lcom/tangxiaolv/telegramgallery/Components/d;

    invoke-virtual {v12, v2, v7, v11}, Lcom/tangxiaolv/telegramgallery/Components/d;->h(FFF)V

    .line 87
    :cond_19
    iget-object v12, v0, Lcom/tangxiaolv/telegramgallery/o;->R:Lcom/tangxiaolv/telegramgallery/k;

    invoke-virtual {v12}, Lcom/tangxiaolv/telegramgallery/k;->j()I

    move-result v12

    .line 88
    iget-object v14, v0, Lcom/tangxiaolv/telegramgallery/o;->R:Lcom/tangxiaolv/telegramgallery/k;

    invoke-virtual {v14}, Lcom/tangxiaolv/telegramgallery/k;->i()I

    move-result v14

    if-eqz v10, :cond_1a

    .line 89
    iget-boolean v15, v0, Lcom/tangxiaolv/telegramgallery/o;->E:Z

    if-eqz v15, :cond_1a

    int-to-float v15, v12

    int-to-float v13, v14

    div-float/2addr v15, v13

    .line 90
    iget-object v13, v0, Lcom/tangxiaolv/telegramgallery/o;->B:Landroid/view/TextureView;

    invoke-virtual {v13}, Landroid/view/TextureView;->getMeasuredWidth()I

    move-result v13

    int-to-float v13, v13

    iget-object v5, v0, Lcom/tangxiaolv/telegramgallery/o;->B:Landroid/view/TextureView;

    .line 91
    invoke-virtual {v5}, Landroid/view/TextureView;->getMeasuredHeight()I

    move-result v5

    int-to-float v5, v5

    div-float/2addr v13, v5

    sub-float/2addr v15, v13

    .line 92
    invoke-static {v15}, Ljava/lang/Math;->abs(F)F

    move-result v5

    const v13, 0x3c23d70a    # 0.01f

    cmpl-float v5, v5, v13

    if-lez v5, :cond_1a

    .line 93
    iget-object v5, v0, Lcom/tangxiaolv/telegramgallery/o;->B:Landroid/view/TextureView;

    invoke-virtual {v5}, Landroid/view/TextureView;->getMeasuredWidth()I

    move-result v12

    .line 94
    iget-object v5, v0, Lcom/tangxiaolv/telegramgallery/o;->B:Landroid/view/TextureView;

    invoke-virtual {v5}, Landroid/view/TextureView;->getMeasuredHeight()I

    move-result v14

    .line 95
    :cond_1a
    invoke-direct/range {p0 .. p0}, Lcom/tangxiaolv/telegramgallery/o;->A0()I

    move-result v5

    int-to-float v5, v5

    int-to-float v12, v12

    div-float/2addr v5, v12

    .line 96
    invoke-direct/range {p0 .. p0}, Lcom/tangxiaolv/telegramgallery/o;->y0()I

    move-result v13

    int-to-float v13, v13

    int-to-float v14, v14

    div-float/2addr v13, v14

    cmpl-float v15, v5, v13

    if-lez v15, :cond_1b

    move v5, v13

    :cond_1b
    mul-float v12, v12, v5

    float-to-int v12, v12

    mul-float v14, v14, v5

    float-to-int v5, v14

    if-eqz v10, :cond_1c

    .line 97
    iget-boolean v13, v0, Lcom/tangxiaolv/telegramgallery/o;->E:Z

    if-eqz v13, :cond_1c

    iget-boolean v13, v0, Lcom/tangxiaolv/telegramgallery/o;->F:Z

    if-eqz v13, :cond_1c

    iget v13, v0, Lcom/tangxiaolv/telegramgallery/o;->G:F

    cmpl-float v13, v13, v8

    if-eqz v13, :cond_1d

    .line 98
    :cond_1c
    iget-object v13, v0, Lcom/tangxiaolv/telegramgallery/o;->R:Lcom/tangxiaolv/telegramgallery/k;

    invoke-virtual {v13, v3}, Lcom/tangxiaolv/telegramgallery/k;->S(F)V

    .line 99
    iget-object v13, v0, Lcom/tangxiaolv/telegramgallery/o;->R:Lcom/tangxiaolv/telegramgallery/k;

    neg-int v14, v12

    const/4 v15, 0x2

    div-int/2addr v14, v15

    neg-int v8, v5

    div-int/2addr v8, v15

    invoke-virtual {v13, v14, v8, v12, v5}, Lcom/tangxiaolv/telegramgallery/k;->h0(IIII)V

    .line 100
    iget-object v8, v0, Lcom/tangxiaolv/telegramgallery/o;->R:Lcom/tangxiaolv/telegramgallery/k;

    invoke-virtual {v8, v1}, Lcom/tangxiaolv/telegramgallery/k;->d(Landroid/graphics/Canvas;)Z

    :cond_1d
    if-eqz v10, :cond_1f

    .line 101
    iget-boolean v8, v0, Lcom/tangxiaolv/telegramgallery/o;->F:Z

    if-nez v8, :cond_1e

    iget-boolean v8, v0, Lcom/tangxiaolv/telegramgallery/o;->E:Z

    if-eqz v8, :cond_1e

    const/4 v8, 0x1

    .line 102
    iput-boolean v8, v0, Lcom/tangxiaolv/telegramgallery/o;->F:Z

    const/4 v8, 0x0

    .line 103
    iput v8, v0, Lcom/tangxiaolv/telegramgallery/o;->G:F

    .line 104
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v13

    iput-wide v13, v0, Lcom/tangxiaolv/telegramgallery/o;->H:J

    :cond_1e
    neg-int v8, v12

    const/4 v12, 0x2

    .line 105
    div-int/2addr v8, v12

    int-to-float v8, v8

    neg-int v5, v5

    div-int/2addr v5, v12

    int-to-float v5, v5

    invoke-virtual {v1, v8, v5}, Landroid/graphics/Canvas;->translate(FF)V

    .line 106
    iget-object v5, v0, Lcom/tangxiaolv/telegramgallery/o;->B:Landroid/view/TextureView;

    iget v8, v0, Lcom/tangxiaolv/telegramgallery/o;->G:F

    mul-float v8, v8, v3

    invoke-virtual {v5, v8}, Landroid/view/TextureView;->setAlpha(F)V

    .line 107
    iget-object v5, v0, Lcom/tangxiaolv/telegramgallery/o;->A:Lcom/tangxiaolv/telegramgallery/Components/AspectRatioFrameLayout;

    invoke-virtual {v5, v1}, Landroid/widget/FrameLayout;->draw(Landroid/graphics/Canvas;)V

    .line 108
    iget-boolean v5, v0, Lcom/tangxiaolv/telegramgallery/o;->F:Z

    if-eqz v5, :cond_1f

    iget v5, v0, Lcom/tangxiaolv/telegramgallery/o;->G:F

    const/high16 v8, 0x3f800000    # 1.0f

    cmpg-float v5, v5, v8

    if-gez v5, :cond_1f

    .line 109
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v12

    .line 110
    iget-wide v14, v0, Lcom/tangxiaolv/telegramgallery/o;->H:J

    sub-long v14, v12, v14

    .line 111
    iput-wide v12, v0, Lcom/tangxiaolv/telegramgallery/o;->H:J

    .line 112
    iget v5, v0, Lcom/tangxiaolv/telegramgallery/o;->G:F

    long-to-float v8, v14

    const/high16 v12, 0x43960000    # 300.0f

    div-float/2addr v8, v12

    add-float/2addr v5, v8

    iput v5, v0, Lcom/tangxiaolv/telegramgallery/o;->G:F

    .line 113
    iget-object v5, v0, Lcom/tangxiaolv/telegramgallery/o;->i:Lcom/tangxiaolv/telegramgallery/o$z;

    invoke-virtual {v5}, Landroid/widget/FrameLayout;->invalidate()V

    .line 114
    iget v5, v0, Lcom/tangxiaolv/telegramgallery/o;->G:F

    const/high16 v8, 0x3f800000    # 1.0f

    cmpl-float v5, v5, v8

    if-lez v5, :cond_1f

    .line 115
    iput v8, v0, Lcom/tangxiaolv/telegramgallery/o;->G:F

    .line 116
    :cond_1f
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    :cond_20
    if-nez v10, :cond_21

    .line 117
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    div-float v5, v11, v2

    .line 118
    invoke-virtual {v1, v7, v5}, Landroid/graphics/Canvas;->translate(FF)V

    .line 119
    iget-object v5, v0, Lcom/tangxiaolv/telegramgallery/o;->q:[Lcom/tangxiaolv/telegramgallery/o$e0;

    const/4 v7, 0x0

    aget-object v5, v5, v7

    const/high16 v8, 0x3f800000    # 1.0f

    sub-float v6, v8, v6

    invoke-virtual {v5, v6}, Lcom/tangxiaolv/telegramgallery/o$e0;->f(F)V

    .line 120
    iget-object v5, v0, Lcom/tangxiaolv/telegramgallery/o;->q:[Lcom/tangxiaolv/telegramgallery/o$e0;

    aget-object v5, v5, v7

    invoke-virtual {v5, v3}, Lcom/tangxiaolv/telegramgallery/o$e0;->c(F)V

    .line 121
    iget-object v3, v0, Lcom/tangxiaolv/telegramgallery/o;->q:[Lcom/tangxiaolv/telegramgallery/o$e0;

    aget-object v3, v3, v7

    invoke-virtual {v3, v1}, Lcom/tangxiaolv/telegramgallery/o$e0;->b(Landroid/graphics/Canvas;)V

    .line 122
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    .line 123
    :cond_21
    iget-object v3, v0, Lcom/tangxiaolv/telegramgallery/o;->Q:Lcom/tangxiaolv/telegramgallery/k;

    if-ne v4, v3, :cond_24

    .line 124
    invoke-virtual {v4}, Lcom/tangxiaolv/telegramgallery/k;->G()Z

    move-result v3

    if-eqz v3, :cond_23

    .line 125
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    .line 126
    invoke-direct/range {p0 .. p0}, Lcom/tangxiaolv/telegramgallery/o;->A0()I

    move-result v3

    const/4 v5, 0x2

    div-int/2addr v3, v5

    int-to-float v3, v3

    invoke-direct/range {p0 .. p0}, Lcom/tangxiaolv/telegramgallery/o;->y0()I

    move-result v6

    div-int/2addr v6, v5

    int-to-float v5, v6

    invoke-virtual {v1, v3, v5}, Landroid/graphics/Canvas;->translate(FF)V

    .line 127
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->getWidth()I

    move-result v3

    int-to-float v3, v3

    iget v5, v0, Lcom/tangxiaolv/telegramgallery/o;->I2:F

    const/high16 v6, 0x3f800000    # 1.0f

    add-float/2addr v5, v6

    mul-float v3, v3, v5

    iget v5, v0, Lcom/tangxiaolv/telegramgallery/o;->w3:I

    int-to-float v5, v5

    add-float/2addr v3, v5

    neg-float v3, v3

    const/high16 v5, 0x40000000    # 2.0f

    div-float/2addr v3, v5

    add-float/2addr v3, v9

    const/4 v5, 0x0

    .line 128
    invoke-virtual {v1, v3, v5}, Landroid/graphics/Canvas;->translate(FF)V

    .line 129
    invoke-virtual {v4}, Lcom/tangxiaolv/telegramgallery/k;->j()I

    move-result v3

    .line 130
    invoke-virtual {v4}, Lcom/tangxiaolv/telegramgallery/k;->i()I

    move-result v5

    .line 131
    invoke-direct/range {p0 .. p0}, Lcom/tangxiaolv/telegramgallery/o;->A0()I

    move-result v6

    int-to-float v6, v6

    int-to-float v3, v3

    div-float/2addr v6, v3

    .line 132
    invoke-direct/range {p0 .. p0}, Lcom/tangxiaolv/telegramgallery/o;->y0()I

    move-result v7

    int-to-float v7, v7

    int-to-float v5, v5

    div-float/2addr v7, v5

    cmpl-float v8, v6, v7

    if-lez v8, :cond_22

    move v6, v7

    :cond_22
    mul-float v3, v3, v6

    float-to-int v3, v3

    mul-float v5, v5, v6

    float-to-int v5, v5

    const/high16 v6, 0x3f800000    # 1.0f

    .line 133
    invoke-virtual {v4, v6}, Lcom/tangxiaolv/telegramgallery/k;->S(F)V

    neg-int v6, v3

    const/4 v7, 0x2

    .line 134
    div-int/2addr v6, v7

    neg-int v8, v5

    div-int/2addr v8, v7

    invoke-virtual {v4, v6, v8, v3, v5}, Lcom/tangxiaolv/telegramgallery/k;->h0(IIII)V

    .line 135
    invoke-virtual {v4, v1}, Lcom/tangxiaolv/telegramgallery/k;->d(Landroid/graphics/Canvas;)Z

    .line 136
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    .line 137
    :cond_23
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    div-float v3, v11, v2

    .line 138
    invoke-virtual {v1, v9, v3}, Landroid/graphics/Canvas;->translate(FF)V

    .line 139
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->getWidth()I

    move-result v3

    int-to-float v3, v3

    iget v4, v0, Lcom/tangxiaolv/telegramgallery/o;->I2:F

    const/high16 v5, 0x3f800000    # 1.0f

    add-float/2addr v4, v5

    mul-float v3, v3, v4

    iget v4, v0, Lcom/tangxiaolv/telegramgallery/o;->w3:I

    int-to-float v4, v4

    add-float/2addr v3, v4

    neg-float v3, v3

    const/high16 v4, 0x40000000    # 2.0f

    div-float/2addr v3, v4

    neg-float v4, v11

    div-float/2addr v4, v2

    invoke-virtual {v1, v3, v4}, Landroid/graphics/Canvas;->translate(FF)V

    .line 140
    iget-object v2, v0, Lcom/tangxiaolv/telegramgallery/o;->q:[Lcom/tangxiaolv/telegramgallery/o$e0;

    const/4 v3, 0x2

    aget-object v2, v2, v3

    const/high16 v4, 0x3f800000    # 1.0f

    invoke-virtual {v2, v4}, Lcom/tangxiaolv/telegramgallery/o$e0;->f(F)V

    .line 141
    iget-object v2, v0, Lcom/tangxiaolv/telegramgallery/o;->q:[Lcom/tangxiaolv/telegramgallery/o$e0;

    aget-object v2, v2, v3

    invoke-virtual {v2, v4}, Lcom/tangxiaolv/telegramgallery/o$e0;->c(F)V

    .line 142
    iget-object v2, v0, Lcom/tangxiaolv/telegramgallery/o;->q:[Lcom/tangxiaolv/telegramgallery/o$e0;

    aget-object v2, v2, v3

    invoke-virtual {v2, v1}, Lcom/tangxiaolv/telegramgallery/o$e0;->b(Landroid/graphics/Canvas;)V

    .line 143
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    :cond_24
    :goto_9
    return-void
.end method

.method static synthetic M(Lcom/tangxiaolv/telegramgallery/o;I)I
    .locals 0

    invoke-direct {p0, p1}, Lcom/tangxiaolv/telegramgallery/o;->z0(I)I

    move-result p0

    return p0
.end method

.method private M0(ZIIII)V
    .locals 0
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "DrawAllocation"
        }
    .end annotation

    if-eqz p1, :cond_0

    const/high16 p1, 0x3f800000    # 1.0f

    .line 1
    iput p1, p0, Lcom/tangxiaolv/telegramgallery/o;->I2:F

    const/4 p2, 0x0

    .line 2
    iput p2, p0, Lcom/tangxiaolv/telegramgallery/o;->G2:F

    .line 3
    iput p2, p0, Lcom/tangxiaolv/telegramgallery/o;->H2:F

    .line 4
    invoke-direct {p0, p1}, Lcom/tangxiaolv/telegramgallery/o;->e1(F)V

    .line 5
    iget-object p1, p0, Lcom/tangxiaolv/telegramgallery/o;->n:Lcom/tangxiaolv/telegramgallery/Components/b;

    if-eqz p1, :cond_0

    .line 6
    new-instance p2, Lcom/tangxiaolv/telegramgallery/o$o;

    invoke-direct {p2, p0}, Lcom/tangxiaolv/telegramgallery/o$o;-><init>(Lcom/tangxiaolv/telegramgallery/o;)V

    invoke-virtual {p1, p2}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method

.method static synthetic N(Lcom/tangxiaolv/telegramgallery/o;Landroid/view/MotionEvent;)Z
    .locals 0

    invoke-direct {p0, p1}, Lcom/tangxiaolv/telegramgallery/o;->R0(Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method

.method static synthetic O(Lcom/tangxiaolv/telegramgallery/o;J)J
    .locals 0

    iput-wide p1, p0, Lcom/tangxiaolv/telegramgallery/o;->O2:J

    return-wide p1
.end method

.method private O0(Lcom/tangxiaolv/telegramgallery/o$c0;)V
    .locals 6

    const/4 v0, 0x0

    .line 1
    iput-boolean v0, p0, Lcom/tangxiaolv/telegramgallery/o;->c:Z

    const/4 v1, 0x1

    .line 2
    iput-boolean v1, p0, Lcom/tangxiaolv/telegramgallery/o;->O:Z

    const/4 v2, 0x0

    .line 3
    iput-object v2, p0, Lcom/tangxiaolv/telegramgallery/o;->U:Lcom/tangxiaolv/telegramgallery/TL/d;

    .line 4
    iput-object v2, p0, Lcom/tangxiaolv/telegramgallery/o;->b1:Ljava/lang/String;

    .line 5
    iput-object v2, p0, Lcom/tangxiaolv/telegramgallery/o;->g1:Landroid/graphics/Bitmap;

    .line 6
    iget-object v3, p0, Lcom/tangxiaolv/telegramgallery/o;->z:Lcom/tangxiaolv/telegramgallery/AnimatedFileDrawable;

    if-eqz v3, :cond_0

    .line 7
    invoke-virtual {v3, v2}, Lcom/tangxiaolv/telegramgallery/AnimatedFileDrawable;->I(Landroid/view/View;)V

    .line 8
    iput-object v2, p0, Lcom/tangxiaolv/telegramgallery/o;->z:Lcom/tangxiaolv/telegramgallery/AnimatedFileDrawable;

    :cond_0
    const/4 v3, 0x0

    :goto_0
    const/4 v4, 0x3

    if-ge v3, v4, :cond_2

    .line 9
    iget-object v4, p0, Lcom/tangxiaolv/telegramgallery/o;->q:[Lcom/tangxiaolv/telegramgallery/o$e0;

    aget-object v5, v4, v3

    if-eqz v5, :cond_1

    .line 10
    aget-object v4, v4, v3

    const/4 v5, -0x1

    invoke-virtual {v4, v5, v0}, Lcom/tangxiaolv/telegramgallery/o$e0;->d(IZ)V

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 11
    :cond_2
    iget-object v3, p0, Lcom/tangxiaolv/telegramgallery/o;->R:Lcom/tangxiaolv/telegramgallery/k;

    invoke-virtual {v3, v2}, Lcom/tangxiaolv/telegramgallery/k;->e0(Landroid/graphics/Bitmap;)V

    .line 12
    iget-object v3, p0, Lcom/tangxiaolv/telegramgallery/o;->Q:Lcom/tangxiaolv/telegramgallery/k;

    invoke-virtual {v3, v2}, Lcom/tangxiaolv/telegramgallery/k;->e0(Landroid/graphics/Bitmap;)V

    .line 13
    iget-object v3, p0, Lcom/tangxiaolv/telegramgallery/o;->S:Lcom/tangxiaolv/telegramgallery/k;

    invoke-virtual {v3, v2}, Lcom/tangxiaolv/telegramgallery/k;->e0(Landroid/graphics/Bitmap;)V

    .line 14
    iget-object v3, p0, Lcom/tangxiaolv/telegramgallery/o;->i:Lcom/tangxiaolv/telegramgallery/o$z;

    new-instance v4, Lcom/tangxiaolv/telegramgallery/o$l;

    invoke-direct {v4, p0}, Lcom/tangxiaolv/telegramgallery/o$l;-><init>(Lcom/tangxiaolv/telegramgallery/o;)V

    invoke-virtual {v3, v4}, Landroid/widget/FrameLayout;->post(Ljava/lang/Runnable;)Z

    .line 15
    iget-object v3, p0, Lcom/tangxiaolv/telegramgallery/o;->b:Lcom/tangxiaolv/telegramgallery/o$b0;

    if-eqz v3, :cond_3

    .line 16
    invoke-interface {v3}, Lcom/tangxiaolv/telegramgallery/o$b0;->c()V

    .line 17
    :cond_3
    iput-object v2, p0, Lcom/tangxiaolv/telegramgallery/o;->b:Lcom/tangxiaolv/telegramgallery/o$b0;

    .line 18
    iput-boolean v0, p0, Lcom/tangxiaolv/telegramgallery/o;->O:Z

    if-eqz p1, :cond_4

    .line 19
    iget-object p1, p1, Lcom/tangxiaolv/telegramgallery/o$c0;->a:Lcom/tangxiaolv/telegramgallery/k;

    invoke-virtual {p1, v1, v1}, Lcom/tangxiaolv/telegramgallery/k;->q0(ZZ)V

    :cond_4
    return-void
.end method

.method static synthetic P(Lcom/tangxiaolv/telegramgallery/o;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/tangxiaolv/telegramgallery/o;->m3:Z

    return p1
.end method

.method private P0(Lcom/tangxiaolv/telegramgallery/TL/d;Ljava/util/List;ILcom/tangxiaolv/telegramgallery/o$c0;)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/tangxiaolv/telegramgallery/TL/d;",
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;I",
            "Lcom/tangxiaolv/telegramgallery/o$c0;",
            ")V"
        }
    .end annotation

    .line 1
    sget v0, Lcom/tangxiaolv/telegramgallery/Actionbar/f;->j:I

    add-int/lit8 v1, v0, 0x1

    sput v1, Lcom/tangxiaolv/telegramgallery/Actionbar/f;->j:I

    iput v0, p0, Lcom/tangxiaolv/telegramgallery/o;->a:I

    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lcom/tangxiaolv/telegramgallery/o;->U:Lcom/tangxiaolv/telegramgallery/TL/d;

    .line 3
    iput-object v0, p0, Lcom/tangxiaolv/telegramgallery/o;->b1:Ljava/lang/String;

    const/4 v1, -0x1

    .line 4
    iput v1, p0, Lcom/tangxiaolv/telegramgallery/o;->T:I

    .line 5
    iget-object v2, p0, Lcom/tangxiaolv/telegramgallery/o;->V:[Ljava/lang/String;

    const/4 v3, 0x0

    aput-object v0, v2, v3

    const/4 v4, 0x1

    .line 6
    aput-object v0, v2, v4

    const/4 v5, 0x2

    .line 7
    aput-object v0, v2, v5

    .line 8
    iput v3, p0, Lcom/tangxiaolv/telegramgallery/o;->p1:I

    .line 9
    iput v3, p0, Lcom/tangxiaolv/telegramgallery/o;->T1:I

    .line 10
    iput v3, p0, Lcom/tangxiaolv/telegramgallery/o;->V1:I

    .line 11
    iput v3, p0, Lcom/tangxiaolv/telegramgallery/o;->P:I

    .line 12
    iput-boolean v4, p0, Lcom/tangxiaolv/telegramgallery/o;->b2:Z

    .line 13
    iput-boolean v3, p0, Lcom/tangxiaolv/telegramgallery/o;->g2:Z

    .line 14
    iput-boolean v3, p0, Lcom/tangxiaolv/telegramgallery/o;->p2:Z

    .line 15
    iget-object v2, p0, Lcom/tangxiaolv/telegramgallery/o;->x2:[Z

    aput-boolean v3, v2, v3

    .line 16
    iget-wide v5, p0, Lcom/tangxiaolv/telegramgallery/o;->y1:J

    const-wide/16 v7, 0x0

    cmp-long v9, v5, v7

    if-nez v9, :cond_0

    const/4 v5, 0x1

    goto :goto_0

    :cond_0
    const/4 v5, 0x0

    :goto_0
    aput-boolean v5, v2, v4

    .line 17
    iput-boolean v3, p0, Lcom/tangxiaolv/telegramgallery/o;->y2:Z

    .line 18
    iput-boolean v4, p0, Lcom/tangxiaolv/telegramgallery/o;->w:Z

    .line 19
    iget-object v2, p0, Lcom/tangxiaolv/telegramgallery/o;->r3:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 20
    iget-object v2, p0, Lcom/tangxiaolv/telegramgallery/o;->t3:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 21
    iget-object v2, p0, Lcom/tangxiaolv/telegramgallery/o;->s3:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 22
    iget-object v2, p0, Lcom/tangxiaolv/telegramgallery/o;->u3:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 23
    iput-object v0, p0, Lcom/tangxiaolv/telegramgallery/o;->v3:Lcom/tangxiaolv/telegramgallery/TL/d;

    .line 24
    iget-object v2, p0, Lcom/tangxiaolv/telegramgallery/o;->i:Lcom/tangxiaolv/telegramgallery/o$z;

    invoke-virtual {v2, v3, v3, v3, v3}, Landroid/widget/FrameLayout;->setPadding(IIII)V

    if-eqz p4, :cond_1

    .line 25
    iget-object v0, p4, Lcom/tangxiaolv/telegramgallery/o$c0;->e:Landroid/graphics/Bitmap;

    :cond_1
    iput-object v0, p0, Lcom/tangxiaolv/telegramgallery/o;->g1:Landroid/graphics/Bitmap;

    .line 26
    iget-object v0, p0, Lcom/tangxiaolv/telegramgallery/o;->l:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v3}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 27
    iget-object v0, p0, Lcom/tangxiaolv/telegramgallery/o;->f:Lcom/tangxiaolv/telegramgallery/Actionbar/a;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/widget/FrameLayout;->setTranslationY(F)V

    .line 28
    iget-object v0, p0, Lcom/tangxiaolv/telegramgallery/o;->o:Lcom/tangxiaolv/telegramgallery/Components/h;

    invoke-virtual {v0, v2}, Landroid/widget/FrameLayout;->setTranslationY(F)V

    .line 29
    iget-object v0, p0, Lcom/tangxiaolv/telegramgallery/o;->n:Lcom/tangxiaolv/telegramgallery/Components/b;

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-virtual {v0, v2}, Landroid/view/View;->setAlpha(F)V

    .line 30
    iget-object v0, p0, Lcom/tangxiaolv/telegramgallery/o;->o:Lcom/tangxiaolv/telegramgallery/Components/h;

    invoke-virtual {v0, v2}, Landroid/widget/FrameLayout;->setAlpha(F)V

    .line 31
    iget-object v0, p0, Lcom/tangxiaolv/telegramgallery/o;->n:Lcom/tangxiaolv/telegramgallery/Components/b;

    iget-boolean v2, p0, Lcom/tangxiaolv/telegramgallery/o;->x:Z

    const/16 v5, 0x8

    if-eqz v2, :cond_2

    const/4 v2, 0x0

    goto :goto_1

    :cond_2
    const/16 v2, 0x8

    :goto_1
    invoke-virtual {v0, v2}, Lcom/tangxiaolv/telegramgallery/Components/b;->setVisibility(I)V

    .line 32
    iget-object v0, p0, Lcom/tangxiaolv/telegramgallery/o;->o:Lcom/tangxiaolv/telegramgallery/Components/h;

    iget-boolean v2, p0, Lcom/tangxiaolv/telegramgallery/o;->x:Z

    if-eqz v2, :cond_3

    const/4 v2, 0x0

    goto :goto_2

    :cond_3
    const/16 v2, 0x8

    :goto_2
    invoke-virtual {v0, v2}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 33
    iget-object v0, p0, Lcom/tangxiaolv/telegramgallery/o;->r:Lcom/tangxiaolv/telegramgallery/Actionbar/d;

    invoke-virtual {v0, v5}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 34
    iget-object v0, p0, Lcom/tangxiaolv/telegramgallery/o;->p:Lcom/tangxiaolv/telegramgallery/Components/h;

    invoke-virtual {v0, v5}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 35
    iget-object v0, p0, Lcom/tangxiaolv/telegramgallery/o;->u:Lcom/tangxiaolv/telegramgallery/Components/d;

    if-eqz v0, :cond_4

    .line 36
    invoke-virtual {v0, v5}, Landroid/widget/FrameLayout;->setVisibility(I)V

    :cond_4
    const/4 v0, 0x0

    :goto_3
    const/4 v2, 0x3

    if-ge v0, v2, :cond_6

    .line 37
    iget-object v2, p0, Lcom/tangxiaolv/telegramgallery/o;->q:[Lcom/tangxiaolv/telegramgallery/o$e0;

    aget-object v6, v2, v0

    if-eqz v6, :cond_5

    .line 38
    aget-object v2, v2, v0

    invoke-virtual {v2, v1, v3}, Lcom/tangxiaolv/telegramgallery/o$e0;->d(IZ)V

    :cond_5
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    :cond_6
    if-eqz p1, :cond_7

    .line 39
    iget p2, p4, Lcom/tangxiaolv/telegramgallery/o$c0;->f:I

    iput p2, p0, Lcom/tangxiaolv/telegramgallery/o;->p1:I

    .line 40
    iget-object p2, p0, Lcom/tangxiaolv/telegramgallery/o;->r3:Ljava/util/ArrayList;

    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 41
    iget-object p2, p0, Lcom/tangxiaolv/telegramgallery/o;->t3:Ljava/util/ArrayList;

    iget p3, p4, Lcom/tangxiaolv/telegramgallery/o$c0;->h:I

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 42
    iget-object p2, p0, Lcom/tangxiaolv/telegramgallery/o;->s3:Ljava/util/ArrayList;

    new-instance p3, Lcom/tangxiaolv/telegramgallery/TL/k$b;

    invoke-direct {p3}, Lcom/tangxiaolv/telegramgallery/TL/k$b;-><init>()V

    invoke-virtual {p2, p3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 43
    invoke-direct {p0, v3, v4}, Lcom/tangxiaolv/telegramgallery/o;->W0(IZ)V

    .line 44
    iput-object p1, p0, Lcom/tangxiaolv/telegramgallery/o;->v3:Lcom/tangxiaolv/telegramgallery/TL/d;

    goto :goto_4

    :cond_7
    if-eqz p2, :cond_9

    .line 45
    iget p1, p0, Lcom/tangxiaolv/telegramgallery/o;->y:I

    if-nez p1, :cond_8

    .line 46
    iget-object p1, p0, Lcom/tangxiaolv/telegramgallery/o;->n:Lcom/tangxiaolv/telegramgallery/Components/b;

    invoke-virtual {p1, v3}, Lcom/tangxiaolv/telegramgallery/Components/b;->setVisibility(I)V

    .line 47
    :cond_8
    iget-object p1, p0, Lcom/tangxiaolv/telegramgallery/o;->u3:Ljava/util/ArrayList;

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 48
    invoke-direct {p0, p3, v4}, Lcom/tangxiaolv/telegramgallery/o;->W0(IZ)V

    .line 49
    iget-object p1, p0, Lcom/tangxiaolv/telegramgallery/o;->o:Lcom/tangxiaolv/telegramgallery/Components/h;

    invoke-virtual {p1, v3}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 50
    iget-object p1, p0, Lcom/tangxiaolv/telegramgallery/o;->l:Landroid/widget/FrameLayout;

    invoke-virtual {p1, v5}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 51
    iput-boolean v3, p0, Lcom/tangxiaolv/telegramgallery/o;->w:Z

    .line 52
    iget-object p1, p0, Lcom/tangxiaolv/telegramgallery/o;->u3:Ljava/util/ArrayList;

    invoke-virtual {p1, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 53
    iget-object p1, p0, Lcom/tangxiaolv/telegramgallery/o;->r:Lcom/tangxiaolv/telegramgallery/Actionbar/d;

    invoke-virtual {p1, v3}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 54
    invoke-direct {p0}, Lcom/tangxiaolv/telegramgallery/o;->f1()V

    :cond_9
    :goto_4
    return-void
.end method

.method static synthetic Q(Lcom/tangxiaolv/telegramgallery/o;)Landroid/animation/AnimatorSet;
    .locals 0

    iget-object p0, p0, Lcom/tangxiaolv/telegramgallery/o;->t:Landroid/animation/AnimatorSet;

    return-object p0
.end method

.method static synthetic R(Lcom/tangxiaolv/telegramgallery/o;Landroid/animation/AnimatorSet;)Landroid/animation/AnimatorSet;
    .locals 0

    iput-object p1, p0, Lcom/tangxiaolv/telegramgallery/o;->t:Landroid/animation/AnimatorSet;

    return-object p1
.end method

.method private R0(Landroid/view/MotionEvent;)Z
    .locals 12

    .line 1
    iget v0, p0, Lcom/tangxiaolv/telegramgallery/o;->J:I

    const/4 v1, 0x0

    if-nez v0, :cond_35

    iget-wide v2, p0, Lcom/tangxiaolv/telegramgallery/o;->O2:J

    const-wide/16 v4, 0x0

    cmp-long v0, v2, v4

    if-eqz v0, :cond_0

    goto/16 :goto_e

    .line 2
    :cond_0
    iget v0, p0, Lcom/tangxiaolv/telegramgallery/o;->P:I

    const/4 v2, 0x1

    if-ne v0, v2, :cond_2

    .line 3
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v0

    if-ne v0, v2, :cond_1

    .line 4
    iget-object v0, p0, Lcom/tangxiaolv/telegramgallery/o;->u:Lcom/tangxiaolv/telegramgallery/Components/d;

    invoke-virtual {v0, p1}, Lcom/tangxiaolv/telegramgallery/Components/d;->f(Landroid/view/MotionEvent;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 5
    iget p1, p0, Lcom/tangxiaolv/telegramgallery/o;->I2:F

    invoke-direct {p0, p1}, Lcom/tangxiaolv/telegramgallery/o;->e1(F)V

    return v2

    .line 6
    :cond_1
    iget-object v0, p0, Lcom/tangxiaolv/telegramgallery/o;->u:Lcom/tangxiaolv/telegramgallery/Components/d;

    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Lcom/tangxiaolv/telegramgallery/Components/d;->f(Landroid/view/MotionEvent;)Z

    .line 7
    :cond_2
    iget v0, p0, Lcom/tangxiaolv/telegramgallery/o;->P:I

    if-nez v0, :cond_3

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v0

    if-ne v0, v2, :cond_3

    iget-object v0, p0, Lcom/tangxiaolv/telegramgallery/o;->R2:Landroid/view/GestureDetector;

    invoke-virtual {v0, p1}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 8
    iget-boolean v0, p0, Lcom/tangxiaolv/telegramgallery/o;->j3:Z

    if-eqz v0, :cond_3

    .line 9
    iput-boolean v1, p0, Lcom/tangxiaolv/telegramgallery/o;->j3:Z

    .line 10
    iput-boolean v1, p0, Lcom/tangxiaolv/telegramgallery/o;->i3:Z

    .line 11
    iput-boolean v1, p0, Lcom/tangxiaolv/telegramgallery/o;->h3:Z

    .line 12
    invoke-direct {p0, v1}, Lcom/tangxiaolv/telegramgallery/o;->r0(Z)V

    return v2

    .line 13
    :cond_3
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    const/high16 v3, 0x40000000    # 2.0f

    const/4 v6, 0x2

    if-eqz v0, :cond_31

    .line 14
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    const/4 v7, 0x5

    if-ne v0, v7, :cond_4

    goto/16 :goto_d

    .line 15
    :cond_4
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    const/high16 v7, 0x40400000    # 3.0f

    const/high16 v8, 0x3f800000    # 1.0f

    const/4 v9, 0x0

    if-ne v0, v6, :cond_1b

    .line 16
    iget v0, p0, Lcom/tangxiaolv/telegramgallery/o;->P:I

    if-ne v0, v2, :cond_5

    .line 17
    iget-object v0, p0, Lcom/tangxiaolv/telegramgallery/o;->u:Lcom/tangxiaolv/telegramgallery/Components/d;

    invoke-virtual {v0}, Lcom/tangxiaolv/telegramgallery/Components/d;->c()V

    .line 18
    :cond_5
    iget-boolean v0, p0, Lcom/tangxiaolv/telegramgallery/o;->f3:Z

    if-eqz v0, :cond_6

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v0

    if-ne v0, v6, :cond_6

    iget-boolean v0, p0, Lcom/tangxiaolv/telegramgallery/o;->E2:Z

    if-nez v0, :cond_6

    iget-boolean v0, p0, Lcom/tangxiaolv/telegramgallery/o;->h3:Z

    if-eqz v0, :cond_6

    iget-boolean v0, p0, Lcom/tangxiaolv/telegramgallery/o;->g3:Z

    if-nez v0, :cond_6

    .line 19
    iput-boolean v2, p0, Lcom/tangxiaolv/telegramgallery/o;->n3:Z

    .line 20
    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getX(I)F

    move-result v0

    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getX(I)F

    move-result v3

    sub-float/2addr v0, v3

    float-to-double v3, v0

    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getY(I)F

    move-result v0

    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getY(I)F

    move-result p1

    sub-float/2addr v0, p1

    float-to-double v7, v0

    invoke-static {v3, v4, v7, v8}, Ljava/lang/Math;->hypot(DD)D

    move-result-wide v2

    double-to-float p1, v2

    iget v0, p0, Lcom/tangxiaolv/telegramgallery/o;->T2:F

    div-float/2addr p1, v0

    iget v0, p0, Lcom/tangxiaolv/telegramgallery/o;->U2:F

    mul-float p1, p1, v0

    iput p1, p0, Lcom/tangxiaolv/telegramgallery/o;->I2:F

    .line 21
    iget p1, p0, Lcom/tangxiaolv/telegramgallery/o;->V2:F

    invoke-direct {p0}, Lcom/tangxiaolv/telegramgallery/o;->A0()I

    move-result v0

    div-int/2addr v0, v6

    int-to-float v0, v0

    sub-float/2addr p1, v0

    iget v0, p0, Lcom/tangxiaolv/telegramgallery/o;->V2:F

    .line 22
    invoke-direct {p0}, Lcom/tangxiaolv/telegramgallery/o;->A0()I

    move-result v2

    div-int/2addr v2, v6

    int-to-float v2, v2

    sub-float/2addr v0, v2

    iget v2, p0, Lcom/tangxiaolv/telegramgallery/o;->X2:F

    sub-float/2addr v0, v2

    iget v2, p0, Lcom/tangxiaolv/telegramgallery/o;->I2:F

    iget v3, p0, Lcom/tangxiaolv/telegramgallery/o;->U2:F

    div-float/2addr v2, v3

    mul-float v0, v0, v2

    sub-float/2addr p1, v0

    iput p1, p0, Lcom/tangxiaolv/telegramgallery/o;->G2:F

    .line 23
    iget p1, p0, Lcom/tangxiaolv/telegramgallery/o;->W2:F

    invoke-direct {p0}, Lcom/tangxiaolv/telegramgallery/o;->y0()I

    move-result v0

    div-int/2addr v0, v6

    int-to-float v0, v0

    sub-float/2addr p1, v0

    iget v0, p0, Lcom/tangxiaolv/telegramgallery/o;->W2:F

    .line 24
    invoke-direct {p0}, Lcom/tangxiaolv/telegramgallery/o;->y0()I

    move-result v2

    div-int/2addr v2, v6

    int-to-float v2, v2

    sub-float/2addr v0, v2

    iget v2, p0, Lcom/tangxiaolv/telegramgallery/o;->Y2:F

    sub-float/2addr v0, v2

    iget v2, p0, Lcom/tangxiaolv/telegramgallery/o;->I2:F

    iget v3, p0, Lcom/tangxiaolv/telegramgallery/o;->U2:F

    div-float v3, v2, v3

    mul-float v0, v0, v3

    sub-float/2addr p1, v0

    iput p1, p0, Lcom/tangxiaolv/telegramgallery/o;->H2:F

    .line 25
    invoke-direct {p0, v2}, Lcom/tangxiaolv/telegramgallery/o;->e1(F)V

    .line 26
    iget-object p1, p0, Lcom/tangxiaolv/telegramgallery/o;->i:Lcom/tangxiaolv/telegramgallery/o$z;

    invoke-virtual {p1}, Landroid/widget/FrameLayout;->invalidate()V

    goto/16 :goto_e

    .line 27
    :cond_6
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v0

    if-ne v0, v2, :cond_35

    .line 28
    iget-object v0, p0, Lcom/tangxiaolv/telegramgallery/o;->p3:Landroid/view/VelocityTracker;

    if-eqz v0, :cond_7

    .line 29
    invoke-virtual {v0, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 30
    :cond_7
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iget v6, p0, Lcom/tangxiaolv/telegramgallery/o;->Z2:F

    sub-float/2addr v0, v6

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    .line 31
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v6

    iget v10, p0, Lcom/tangxiaolv/telegramgallery/o;->F2:F

    sub-float/2addr v6, v10

    invoke-static {v6}, Ljava/lang/Math;->abs(F)F

    move-result v6

    .line 32
    invoke-static {v7}, Lcom/tangxiaolv/telegramgallery/Utils/a;->g(F)I

    move-result v10

    int-to-float v10, v10

    cmpl-float v10, v0, v10

    if-gtz v10, :cond_8

    invoke-static {v7}, Lcom/tangxiaolv/telegramgallery/Utils/a;->g(F)I

    move-result v10

    int-to-float v10, v10

    cmpl-float v10, v6, v10

    if-lez v10, :cond_9

    .line 33
    :cond_8
    iput-boolean v2, p0, Lcom/tangxiaolv/telegramgallery/o;->n3:Z

    .line 34
    :cond_9
    iget-object v10, p0, Lcom/tangxiaolv/telegramgallery/o;->b:Lcom/tangxiaolv/telegramgallery/o$b0;

    instance-of v10, v10, Lcom/tangxiaolv/telegramgallery/o$y;

    if-nez v10, :cond_c

    iget v10, p0, Lcom/tangxiaolv/telegramgallery/o;->P:I

    if-nez v10, :cond_c

    iget-boolean v10, p0, Lcom/tangxiaolv/telegramgallery/o;->l3:Z

    if-eqz v10, :cond_c

    iget-boolean v10, p0, Lcom/tangxiaolv/telegramgallery/o;->E2:Z

    if-nez v10, :cond_c

    iget v10, p0, Lcom/tangxiaolv/telegramgallery/o;->I2:F

    cmpl-float v10, v10, v8

    if-nez v10, :cond_c

    const/high16 v10, 0x41f00000    # 30.0f

    .line 35
    invoke-static {v10}, Lcom/tangxiaolv/telegramgallery/Utils/a;->g(F)I

    move-result v10

    int-to-float v10, v10

    cmpl-float v10, v6, v10

    if-ltz v10, :cond_c

    div-float/2addr v6, v3

    cmpl-float v0, v6, v0

    if-lez v0, :cond_c

    .line 36
    iput-boolean v2, p0, Lcom/tangxiaolv/telegramgallery/o;->E2:Z

    .line 37
    iput-boolean v1, p0, Lcom/tangxiaolv/telegramgallery/o;->i3:Z

    .line 38
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    iput p1, p0, Lcom/tangxiaolv/telegramgallery/o;->F2:F

    .line 39
    iget-boolean p1, p0, Lcom/tangxiaolv/telegramgallery/o;->g:Z

    if-eqz p1, :cond_a

    iget-boolean p1, p0, Lcom/tangxiaolv/telegramgallery/o;->w:Z

    if-eqz p1, :cond_a

    .line 40
    invoke-direct {p0, v1, v2}, Lcom/tangxiaolv/telegramgallery/o;->c1(ZZ)V

    goto :goto_0

    .line 41
    :cond_a
    iget-object p1, p0, Lcom/tangxiaolv/telegramgallery/o;->o:Lcom/tangxiaolv/telegramgallery/Components/h;

    invoke-virtual {p1}, Landroid/widget/FrameLayout;->getVisibility()I

    move-result p1

    if-nez p1, :cond_b

    .line 42
    invoke-direct {p0, v1, v2}, Lcom/tangxiaolv/telegramgallery/o;->c1(ZZ)V

    .line 43
    invoke-direct {p0, v1}, Lcom/tangxiaolv/telegramgallery/o;->d1(Z)V

    :cond_b
    :goto_0
    return v2

    .line 44
    :cond_c
    iget-boolean v0, p0, Lcom/tangxiaolv/telegramgallery/o;->E2:Z

    if-eqz v0, :cond_d

    .line 45
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    iget v0, p0, Lcom/tangxiaolv/telegramgallery/o;->F2:F

    sub-float/2addr p1, v0

    iput p1, p0, Lcom/tangxiaolv/telegramgallery/o;->H2:F

    .line 46
    iget-object p1, p0, Lcom/tangxiaolv/telegramgallery/o;->i:Lcom/tangxiaolv/telegramgallery/o$z;

    invoke-virtual {p1}, Landroid/widget/FrameLayout;->invalidate()V

    goto/16 :goto_e

    .line 47
    :cond_d
    iget-boolean v0, p0, Lcom/tangxiaolv/telegramgallery/o;->k3:Z

    if-nez v0, :cond_1a

    iget-wide v10, p0, Lcom/tangxiaolv/telegramgallery/o;->O2:J

    cmp-long v0, v10, v4

    if-nez v0, :cond_1a

    .line 48
    iget v0, p0, Lcom/tangxiaolv/telegramgallery/o;->Z2:F

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    sub-float/2addr v0, v3

    .line 49
    iget v3, p0, Lcom/tangxiaolv/telegramgallery/o;->a3:F

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    sub-float/2addr v3, v4

    .line 50
    iget-boolean v4, p0, Lcom/tangxiaolv/telegramgallery/o;->i3:Z

    if-nez v4, :cond_f

    iget v4, p0, Lcom/tangxiaolv/telegramgallery/o;->P:I

    if-nez v4, :cond_f

    iget v4, p0, Lcom/tangxiaolv/telegramgallery/o;->I2:F

    cmpl-float v4, v4, v8

    if-nez v4, :cond_e

    .line 51
    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v4

    const/high16 v5, 0x41400000    # 12.0f

    invoke-static {v5}, Lcom/tangxiaolv/telegramgallery/Utils/a;->g(F)I

    move-result v5

    int-to-float v5, v5

    add-float/2addr v4, v5

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v5

    cmpg-float v4, v4, v5

    if-ltz v4, :cond_f

    :cond_e
    iget v4, p0, Lcom/tangxiaolv/telegramgallery/o;->I2:F

    cmpl-float v4, v4, v8

    if-eqz v4, :cond_35

    .line 52
    :cond_f
    iget-boolean v4, p0, Lcom/tangxiaolv/telegramgallery/o;->i3:Z

    if-nez v4, :cond_10

    .line 53
    iput-boolean v2, p0, Lcom/tangxiaolv/telegramgallery/o;->i3:Z

    .line 54
    iput-boolean v1, p0, Lcom/tangxiaolv/telegramgallery/o;->l3:Z

    const/4 v0, 0x0

    const/4 v3, 0x0

    .line 55
    :cond_10
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    iput v2, p0, Lcom/tangxiaolv/telegramgallery/o;->Z2:F

    .line 56
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    iput p1, p0, Lcom/tangxiaolv/telegramgallery/o;->a3:F

    .line 57
    iget p1, p0, Lcom/tangxiaolv/telegramgallery/o;->I2:F

    invoke-direct {p0, p1}, Lcom/tangxiaolv/telegramgallery/o;->e1(F)V

    .line 58
    iget p1, p0, Lcom/tangxiaolv/telegramgallery/o;->G2:F

    iget v2, p0, Lcom/tangxiaolv/telegramgallery/o;->b3:F

    cmpg-float p1, p1, v2

    if-gez p1, :cond_11

    iget p1, p0, Lcom/tangxiaolv/telegramgallery/o;->P:I

    if-nez p1, :cond_12

    iget-object p1, p0, Lcom/tangxiaolv/telegramgallery/o;->S:Lcom/tangxiaolv/telegramgallery/k;

    invoke-virtual {p1}, Lcom/tangxiaolv/telegramgallery/k;->H()Z

    move-result p1

    if-eqz p1, :cond_12

    :cond_11
    iget p1, p0, Lcom/tangxiaolv/telegramgallery/o;->G2:F

    iget v2, p0, Lcom/tangxiaolv/telegramgallery/o;->c3:F

    cmpl-float p1, p1, v2

    if-lez p1, :cond_13

    iget p1, p0, Lcom/tangxiaolv/telegramgallery/o;->P:I

    if-nez p1, :cond_12

    iget-object p1, p0, Lcom/tangxiaolv/telegramgallery/o;->Q:Lcom/tangxiaolv/telegramgallery/k;

    .line 59
    invoke-virtual {p1}, Lcom/tangxiaolv/telegramgallery/k;->H()Z

    move-result p1

    if-nez p1, :cond_13

    :cond_12
    div-float/2addr v0, v7

    .line 60
    :cond_13
    iget p1, p0, Lcom/tangxiaolv/telegramgallery/o;->e3:F

    cmpl-float v2, p1, v9

    if-nez v2, :cond_15

    iget v2, p0, Lcom/tangxiaolv/telegramgallery/o;->d3:F

    cmpl-float v4, v2, v9

    if-nez v4, :cond_15

    iget v4, p0, Lcom/tangxiaolv/telegramgallery/o;->P:I

    if-nez v4, :cond_15

    .line 61
    iget v4, p0, Lcom/tangxiaolv/telegramgallery/o;->H2:F

    sub-float v5, v4, v3

    cmpg-float v5, v5, v2

    if-gez v5, :cond_14

    .line 62
    iput v2, p0, Lcom/tangxiaolv/telegramgallery/o;->H2:F

    goto :goto_2

    :cond_14
    sub-float/2addr v4, v3

    cmpl-float v2, v4, p1

    if-lez v2, :cond_16

    .line 63
    iput p1, p0, Lcom/tangxiaolv/telegramgallery/o;->H2:F

    goto :goto_2

    .line 64
    :cond_15
    iget v2, p0, Lcom/tangxiaolv/telegramgallery/o;->H2:F

    iget v4, p0, Lcom/tangxiaolv/telegramgallery/o;->d3:F

    cmpg-float v4, v2, v4

    if-ltz v4, :cond_17

    cmpl-float p1, v2, p1

    if-lez p1, :cond_16

    goto :goto_1

    :cond_16
    move v9, v3

    goto :goto_2

    :cond_17
    :goto_1
    div-float v9, v3, v7

    .line 65
    :goto_2
    iget p1, p0, Lcom/tangxiaolv/telegramgallery/o;->G2:F

    sub-float/2addr p1, v0

    iput p1, p0, Lcom/tangxiaolv/telegramgallery/o;->G2:F

    .line 66
    iget p1, p0, Lcom/tangxiaolv/telegramgallery/o;->I2:F

    cmpl-float p1, p1, v8

    if-nez p1, :cond_18

    iget p1, p0, Lcom/tangxiaolv/telegramgallery/o;->P:I

    if-eqz p1, :cond_19

    .line 67
    :cond_18
    iget p1, p0, Lcom/tangxiaolv/telegramgallery/o;->H2:F

    sub-float/2addr p1, v9

    iput p1, p0, Lcom/tangxiaolv/telegramgallery/o;->H2:F

    .line 68
    :cond_19
    iget-object p1, p0, Lcom/tangxiaolv/telegramgallery/o;->i:Lcom/tangxiaolv/telegramgallery/o$z;

    invoke-virtual {p1}, Landroid/widget/FrameLayout;->invalidate()V

    goto/16 :goto_e

    .line 69
    :cond_1a
    iput-boolean v1, p0, Lcom/tangxiaolv/telegramgallery/o;->k3:Z

    .line 70
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iput v0, p0, Lcom/tangxiaolv/telegramgallery/o;->Z2:F

    .line 71
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    iput p1, p0, Lcom/tangxiaolv/telegramgallery/o;->a3:F

    goto/16 :goto_e

    .line 72
    :cond_1b
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    const/4 v3, 0x3

    if-eq v0, v3, :cond_1c

    .line 73
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    if-eq v0, v2, :cond_1c

    .line 74
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    const/4 v4, 0x6

    if-ne v0, v4, :cond_35

    .line 75
    :cond_1c
    iget v0, p0, Lcom/tangxiaolv/telegramgallery/o;->P:I

    if-ne v0, v2, :cond_1d

    .line 76
    iget-object v0, p0, Lcom/tangxiaolv/telegramgallery/o;->u:Lcom/tangxiaolv/telegramgallery/Components/d;

    invoke-virtual {v0}, Lcom/tangxiaolv/telegramgallery/Components/d;->i()V

    .line 77
    :cond_1d
    iget-boolean v0, p0, Lcom/tangxiaolv/telegramgallery/o;->h3:Z

    if-eqz v0, :cond_24

    .line 78
    iput-boolean v2, p0, Lcom/tangxiaolv/telegramgallery/o;->k3:Z

    .line 79
    iget p1, p0, Lcom/tangxiaolv/telegramgallery/o;->I2:F

    cmpg-float v0, p1, v8

    if-gez v0, :cond_1e

    .line 80
    invoke-direct {p0, v8}, Lcom/tangxiaolv/telegramgallery/o;->e1(F)V

    .line 81
    invoke-direct {p0, v8, v9, v9, v2}, Lcom/tangxiaolv/telegramgallery/o;->m0(FFFZ)V

    goto :goto_7

    :cond_1e
    cmpl-float p1, p1, v7

    if-lez p1, :cond_23

    .line 82
    iget p1, p0, Lcom/tangxiaolv/telegramgallery/o;->V2:F

    invoke-direct {p0}, Lcom/tangxiaolv/telegramgallery/o;->A0()I

    move-result v0

    div-int/2addr v0, v6

    int-to-float v0, v0

    sub-float/2addr p1, v0

    iget v0, p0, Lcom/tangxiaolv/telegramgallery/o;->V2:F

    .line 83
    invoke-direct {p0}, Lcom/tangxiaolv/telegramgallery/o;->A0()I

    move-result v3

    div-int/2addr v3, v6

    int-to-float v3, v3

    sub-float/2addr v0, v3

    iget v3, p0, Lcom/tangxiaolv/telegramgallery/o;->X2:F

    sub-float/2addr v0, v3

    iget v3, p0, Lcom/tangxiaolv/telegramgallery/o;->U2:F

    div-float v3, v7, v3

    mul-float v0, v0, v3

    sub-float/2addr p1, v0

    .line 84
    iget v0, p0, Lcom/tangxiaolv/telegramgallery/o;->W2:F

    invoke-direct {p0}, Lcom/tangxiaolv/telegramgallery/o;->y0()I

    move-result v3

    div-int/2addr v3, v6

    int-to-float v3, v3

    sub-float/2addr v0, v3

    iget v3, p0, Lcom/tangxiaolv/telegramgallery/o;->W2:F

    .line 85
    invoke-direct {p0}, Lcom/tangxiaolv/telegramgallery/o;->y0()I

    move-result v4

    div-int/2addr v4, v6

    int-to-float v4, v4

    sub-float/2addr v3, v4

    iget v4, p0, Lcom/tangxiaolv/telegramgallery/o;->Y2:F

    sub-float/2addr v3, v4

    iget v4, p0, Lcom/tangxiaolv/telegramgallery/o;->U2:F

    div-float v4, v7, v4

    mul-float v3, v3, v4

    sub-float/2addr v0, v3

    .line 86
    invoke-direct {p0, v7}, Lcom/tangxiaolv/telegramgallery/o;->e1(F)V

    .line 87
    iget v3, p0, Lcom/tangxiaolv/telegramgallery/o;->b3:F

    cmpg-float v4, p1, v3

    if-gez v4, :cond_1f

    :goto_3
    move p1, v3

    goto :goto_4

    .line 88
    :cond_1f
    iget v3, p0, Lcom/tangxiaolv/telegramgallery/o;->c3:F

    cmpl-float v4, p1, v3

    if-lez v4, :cond_20

    goto :goto_3

    .line 89
    :cond_20
    :goto_4
    iget v3, p0, Lcom/tangxiaolv/telegramgallery/o;->d3:F

    cmpg-float v4, v0, v3

    if-gez v4, :cond_21

    :goto_5
    move v0, v3

    goto :goto_6

    .line 90
    :cond_21
    iget v3, p0, Lcom/tangxiaolv/telegramgallery/o;->e3:F

    cmpl-float v4, v0, v3

    if-lez v4, :cond_22

    goto :goto_5

    .line 91
    :cond_22
    :goto_6
    invoke-direct {p0, v7, p1, v0, v2}, Lcom/tangxiaolv/telegramgallery/o;->m0(FFFZ)V

    goto :goto_7

    .line 92
    :cond_23
    invoke-direct {p0, v2}, Lcom/tangxiaolv/telegramgallery/o;->r0(Z)V

    .line 93
    :goto_7
    iput-boolean v1, p0, Lcom/tangxiaolv/telegramgallery/o;->h3:Z

    goto/16 :goto_e

    .line 94
    :cond_24
    iget-boolean v0, p0, Lcom/tangxiaolv/telegramgallery/o;->E2:Z

    if-eqz v0, :cond_27

    .line 95
    iget v0, p0, Lcom/tangxiaolv/telegramgallery/o;->F2:F

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    sub-float/2addr v0, p1

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result p1

    invoke-direct {p0}, Lcom/tangxiaolv/telegramgallery/o;->y0()I

    move-result v0

    int-to-float v0, v0

    const/high16 v3, 0x40c00000    # 6.0f

    div-float/2addr v0, v3

    cmpl-float p1, p1, v0

    if-lez p1, :cond_25

    .line 96
    invoke-virtual {p0, v2, v1}, Lcom/tangxiaolv/telegramgallery/o;->t0(ZZ)V

    goto :goto_8

    .line 97
    :cond_25
    iget-object p1, p0, Lcom/tangxiaolv/telegramgallery/o;->o:Lcom/tangxiaolv/telegramgallery/Components/h;

    invoke-virtual {p1}, Landroid/widget/FrameLayout;->getVisibility()I

    move-result p1

    if-nez p1, :cond_26

    .line 98
    invoke-direct {p0, v2, v2}, Lcom/tangxiaolv/telegramgallery/o;->c1(ZZ)V

    .line 99
    invoke-direct {p0, v2}, Lcom/tangxiaolv/telegramgallery/o;->d1(Z)V

    .line 100
    :cond_26
    invoke-direct {p0, v8, v9, v9, v1}, Lcom/tangxiaolv/telegramgallery/o;->m0(FFFZ)V

    .line 101
    :goto_8
    iput-boolean v1, p0, Lcom/tangxiaolv/telegramgallery/o;->E2:Z

    goto/16 :goto_e

    .line 102
    :cond_27
    iget-boolean p1, p0, Lcom/tangxiaolv/telegramgallery/o;->i3:Z

    if-eqz p1, :cond_35

    .line 103
    iget p1, p0, Lcom/tangxiaolv/telegramgallery/o;->G2:F

    .line 104
    iget v0, p0, Lcom/tangxiaolv/telegramgallery/o;->H2:F

    .line 105
    iget v4, p0, Lcom/tangxiaolv/telegramgallery/o;->I2:F

    invoke-direct {p0, v4}, Lcom/tangxiaolv/telegramgallery/o;->e1(F)V

    .line 106
    iput-boolean v1, p0, Lcom/tangxiaolv/telegramgallery/o;->i3:Z

    .line 107
    iput-boolean v2, p0, Lcom/tangxiaolv/telegramgallery/o;->l3:Z

    .line 108
    iget-object v4, p0, Lcom/tangxiaolv/telegramgallery/o;->p3:Landroid/view/VelocityTracker;

    if-eqz v4, :cond_28

    iget v5, p0, Lcom/tangxiaolv/telegramgallery/o;->I2:F

    cmpl-float v5, v5, v8

    if-nez v5, :cond_28

    const/16 v5, 0x3e8

    .line 109
    invoke-virtual {v4, v5}, Landroid/view/VelocityTracker;->computeCurrentVelocity(I)V

    .line 110
    iget-object v4, p0, Lcom/tangxiaolv/telegramgallery/o;->p3:Landroid/view/VelocityTracker;

    invoke-virtual {v4}, Landroid/view/VelocityTracker;->getXVelocity()F

    move-result v9

    .line 111
    :cond_28
    iget v4, p0, Lcom/tangxiaolv/telegramgallery/o;->P:I

    if-nez v4, :cond_2c

    .line 112
    iget v4, p0, Lcom/tangxiaolv/telegramgallery/o;->G2:F

    iget v5, p0, Lcom/tangxiaolv/telegramgallery/o;->b3:F

    invoke-direct {p0}, Lcom/tangxiaolv/telegramgallery/o;->A0()I

    move-result v6

    div-int/2addr v6, v3

    int-to-float v6, v6

    sub-float/2addr v5, v6

    const v6, 0x44228000    # 650.0f

    cmpg-float v4, v4, v5

    if-ltz v4, :cond_29

    .line 113
    invoke-static {v6}, Lcom/tangxiaolv/telegramgallery/Utils/a;->g(F)I

    move-result v4

    neg-int v4, v4

    int-to-float v4, v4

    cmpg-float v4, v9, v4

    if-gez v4, :cond_2a

    :cond_29
    iget-object v4, p0, Lcom/tangxiaolv/telegramgallery/o;->S:Lcom/tangxiaolv/telegramgallery/k;

    invoke-virtual {v4}, Lcom/tangxiaolv/telegramgallery/k;->H()Z

    move-result v4

    if-eqz v4, :cond_2a

    .line 114
    invoke-direct {p0}, Lcom/tangxiaolv/telegramgallery/o;->F0()V

    return v2

    .line 115
    :cond_2a
    iget v4, p0, Lcom/tangxiaolv/telegramgallery/o;->G2:F

    iget v5, p0, Lcom/tangxiaolv/telegramgallery/o;->c3:F

    invoke-direct {p0}, Lcom/tangxiaolv/telegramgallery/o;->A0()I

    move-result v7

    div-int/2addr v7, v3

    int-to-float v3, v7

    add-float/2addr v5, v3

    cmpl-float v3, v4, v5

    if-gtz v3, :cond_2b

    .line 116
    invoke-static {v6}, Lcom/tangxiaolv/telegramgallery/Utils/a;->g(F)I

    move-result v3

    int-to-float v3, v3

    cmpl-float v3, v9, v3

    if-lez v3, :cond_2c

    :cond_2b
    iget-object v3, p0, Lcom/tangxiaolv/telegramgallery/o;->Q:Lcom/tangxiaolv/telegramgallery/k;

    invoke-virtual {v3}, Lcom/tangxiaolv/telegramgallery/k;->H()Z

    move-result v3

    if-eqz v3, :cond_2c

    .line 117
    invoke-direct {p0}, Lcom/tangxiaolv/telegramgallery/o;->G0()V

    return v2

    .line 118
    :cond_2c
    iget v2, p0, Lcom/tangxiaolv/telegramgallery/o;->G2:F

    iget v3, p0, Lcom/tangxiaolv/telegramgallery/o;->b3:F

    cmpg-float v4, v2, v3

    if-gez v4, :cond_2d

    :goto_9
    move p1, v3

    goto :goto_a

    .line 119
    :cond_2d
    iget v3, p0, Lcom/tangxiaolv/telegramgallery/o;->c3:F

    cmpl-float v2, v2, v3

    if-lez v2, :cond_2e

    goto :goto_9

    .line 120
    :cond_2e
    :goto_a
    iget v2, p0, Lcom/tangxiaolv/telegramgallery/o;->H2:F

    iget v3, p0, Lcom/tangxiaolv/telegramgallery/o;->d3:F

    cmpg-float v4, v2, v3

    if-gez v4, :cond_2f

    :goto_b
    move v0, v3

    goto :goto_c

    .line 121
    :cond_2f
    iget v3, p0, Lcom/tangxiaolv/telegramgallery/o;->e3:F

    cmpl-float v2, v2, v3

    if-lez v2, :cond_30

    goto :goto_b

    .line 122
    :cond_30
    :goto_c
    iget v2, p0, Lcom/tangxiaolv/telegramgallery/o;->I2:F

    invoke-direct {p0, v2, p1, v0, v1}, Lcom/tangxiaolv/telegramgallery/o;->m0(FFFZ)V

    goto/16 :goto_e

    .line 123
    :cond_31
    :goto_d
    iget v0, p0, Lcom/tangxiaolv/telegramgallery/o;->P:I

    if-ne v0, v2, :cond_32

    .line 124
    iget-object v0, p0, Lcom/tangxiaolv/telegramgallery/o;->u:Lcom/tangxiaolv/telegramgallery/Components/d;

    invoke-virtual {v0}, Lcom/tangxiaolv/telegramgallery/Components/d;->c()V

    .line 125
    :cond_32
    iput-boolean v1, p0, Lcom/tangxiaolv/telegramgallery/o;->n3:Z

    .line 126
    iget-object v0, p0, Lcom/tangxiaolv/telegramgallery/o;->q3:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->isFinished()Z

    move-result v0

    if-nez v0, :cond_33

    .line 127
    iget-object v0, p0, Lcom/tangxiaolv/telegramgallery/o;->q3:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->abortAnimation()V

    .line 128
    :cond_33
    iget-boolean v0, p0, Lcom/tangxiaolv/telegramgallery/o;->E2:Z

    if-nez v0, :cond_35

    iget-boolean v0, p0, Lcom/tangxiaolv/telegramgallery/o;->g3:Z

    if-nez v0, :cond_35

    .line 129
    iget-boolean v0, p0, Lcom/tangxiaolv/telegramgallery/o;->f3:Z

    if-eqz v0, :cond_34

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v0

    if-ne v0, v6, :cond_34

    .line 130
    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getX(I)F

    move-result v0

    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getX(I)F

    move-result v4

    sub-float/2addr v0, v4

    float-to-double v4, v0

    .line 131
    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getY(I)F

    move-result v0

    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getY(I)F

    move-result v6

    sub-float/2addr v0, v6

    float-to-double v6, v0

    .line 132
    invoke-static {v4, v5, v6, v7}, Ljava/lang/Math;->hypot(DD)D

    move-result-wide v4

    double-to-float v0, v4

    iput v0, p0, Lcom/tangxiaolv/telegramgallery/o;->T2:F

    .line 133
    iget v0, p0, Lcom/tangxiaolv/telegramgallery/o;->I2:F

    iput v0, p0, Lcom/tangxiaolv/telegramgallery/o;->U2:F

    .line 134
    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getX(I)F

    move-result v0

    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getX(I)F

    move-result v4

    add-float/2addr v0, v4

    div-float/2addr v0, v3

    iput v0, p0, Lcom/tangxiaolv/telegramgallery/o;->V2:F

    .line 135
    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getY(I)F

    move-result v0

    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getY(I)F

    move-result p1

    add-float/2addr v0, p1

    div-float/2addr v0, v3

    iput v0, p0, Lcom/tangxiaolv/telegramgallery/o;->W2:F

    .line 136
    iget p1, p0, Lcom/tangxiaolv/telegramgallery/o;->G2:F

    iput p1, p0, Lcom/tangxiaolv/telegramgallery/o;->X2:F

    .line 137
    iget p1, p0, Lcom/tangxiaolv/telegramgallery/o;->H2:F

    iput p1, p0, Lcom/tangxiaolv/telegramgallery/o;->Y2:F

    .line 138
    iput-boolean v2, p0, Lcom/tangxiaolv/telegramgallery/o;->h3:Z

    .line 139
    iput-boolean v1, p0, Lcom/tangxiaolv/telegramgallery/o;->i3:Z

    .line 140
    iget-object p1, p0, Lcom/tangxiaolv/telegramgallery/o;->p3:Landroid/view/VelocityTracker;

    if-eqz p1, :cond_35

    .line 141
    invoke-virtual {p1}, Landroid/view/VelocityTracker;->clear()V

    goto :goto_e

    .line 142
    :cond_34
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v0

    if-ne v0, v2, :cond_35

    .line 143
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iput v0, p0, Lcom/tangxiaolv/telegramgallery/o;->Z2:F

    .line 144
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    iput p1, p0, Lcom/tangxiaolv/telegramgallery/o;->a3:F

    iput p1, p0, Lcom/tangxiaolv/telegramgallery/o;->F2:F

    .line 145
    iput-boolean v1, p0, Lcom/tangxiaolv/telegramgallery/o;->E2:Z

    .line 146
    iput-boolean v2, p0, Lcom/tangxiaolv/telegramgallery/o;->l3:Z

    .line 147
    iget-object p1, p0, Lcom/tangxiaolv/telegramgallery/o;->p3:Landroid/view/VelocityTracker;

    if-eqz p1, :cond_35

    .line 148
    invoke-virtual {p1}, Landroid/view/VelocityTracker;->clear()V

    :cond_35
    :goto_e
    return v1
.end method

.method static synthetic S(Lcom/tangxiaolv/telegramgallery/o;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/tangxiaolv/telegramgallery/o;->w:Z

    return p0
.end method

.method static synthetic T(Lcom/tangxiaolv/telegramgallery/o;)Landroid/widget/FrameLayout;
    .locals 0

    iget-object p0, p0, Lcom/tangxiaolv/telegramgallery/o;->l:Landroid/widget/FrameLayout;

    return-object p0
.end method

.method static synthetic U(Lcom/tangxiaolv/telegramgallery/o;)Lcom/tangxiaolv/telegramgallery/o$a0;
    .locals 0

    iget-object p0, p0, Lcom/tangxiaolv/telegramgallery/o;->j:Lcom/tangxiaolv/telegramgallery/o$a0;

    return-object p0
.end method

.method private U0(I)V
    .locals 3

    const/4 v0, 0x6

    if-ge p1, v0, :cond_0

    .line 1
    iget-object v0, p0, Lcom/tangxiaolv/telegramgallery/o;->i:Lcom/tangxiaolv/telegramgallery/o$z;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Landroid/widget/FrameLayout;->invalidate()V

    .line 3
    new-instance v0, Lcom/tangxiaolv/telegramgallery/o$m;

    invoke-direct {v0, p0, p1}, Lcom/tangxiaolv/telegramgallery/o$m;-><init>(Lcom/tangxiaolv/telegramgallery/o;I)V

    const-wide/16 v1, 0x64

    invoke-static {v0, v1, v2}, Lcom/tangxiaolv/telegramgallery/Utils/a;->E(Ljava/lang/Runnable;J)V

    :cond_0
    return-void
.end method

.method static synthetic V(Lcom/tangxiaolv/telegramgallery/o;I)I
    .locals 0

    iput p1, p0, Lcom/tangxiaolv/telegramgallery/o;->J:I

    return p1
.end method

.method static synthetic W(Lcom/tangxiaolv/telegramgallery/o;J)J
    .locals 0

    iput-wide p1, p0, Lcom/tangxiaolv/telegramgallery/o;->K:J

    return-wide p1
.end method

.method private W0(IZ)V
    .locals 11

    .line 1
    iget v0, p0, Lcom/tangxiaolv/telegramgallery/o;->T:I

    if-eq v0, p1, :cond_17

    iget-object v0, p0, Lcom/tangxiaolv/telegramgallery/o;->b:Lcom/tangxiaolv/telegramgallery/o$b0;

    if-nez v0, :cond_0

    goto/16 :goto_d

    :cond_0
    const/4 v0, 0x0

    if-nez p2, :cond_1

    .line 2
    iput-object v0, p0, Lcom/tangxiaolv/telegramgallery/o;->g1:Landroid/graphics/Bitmap;

    .line 3
    :cond_1
    iget-object p2, p0, Lcom/tangxiaolv/telegramgallery/o;->V:[Ljava/lang/String;

    invoke-direct {p0, p1}, Lcom/tangxiaolv/telegramgallery/o;->D0(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, p2, v2

    .line 4
    iget-object p2, p0, Lcom/tangxiaolv/telegramgallery/o;->V:[Ljava/lang/String;

    add-int/lit8 v1, p1, 0x1

    invoke-direct {p0, v1}, Lcom/tangxiaolv/telegramgallery/o;->D0(I)Ljava/lang/String;

    move-result-object v1

    const/4 v3, 0x1

    aput-object v1, p2, v3

    .line 5
    iget-object p2, p0, Lcom/tangxiaolv/telegramgallery/o;->V:[Ljava/lang/String;

    add-int/lit8 v1, p1, -0x1

    invoke-direct {p0, v1}, Lcom/tangxiaolv/telegramgallery/o;->D0(I)Ljava/lang/String;

    move-result-object v1

    const/4 v4, 0x2

    aput-object v1, p2, v4

    .line 6
    iget-object p2, p0, Lcom/tangxiaolv/telegramgallery/o;->b:Lcom/tangxiaolv/telegramgallery/o$b0;

    iget-object v1, p0, Lcom/tangxiaolv/telegramgallery/o;->U:Lcom/tangxiaolv/telegramgallery/TL/d;

    iget v5, p0, Lcom/tangxiaolv/telegramgallery/o;->T:I

    invoke-interface {p2, v1, v5}, Lcom/tangxiaolv/telegramgallery/o$b0;->e(Lcom/tangxiaolv/telegramgallery/TL/d;I)V

    .line 7
    iget p2, p0, Lcom/tangxiaolv/telegramgallery/o;->T:I

    .line 8
    iput p1, p0, Lcom/tangxiaolv/telegramgallery/o;->T:I

    .line 9
    iget-object v1, p0, Lcom/tangxiaolv/telegramgallery/o;->r3:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    const-wide/16 v5, 0x0

    if-nez v1, :cond_5

    .line 10
    iget-object v1, p0, Lcom/tangxiaolv/telegramgallery/o;->U:Lcom/tangxiaolv/telegramgallery/TL/d;

    if-ltz p1, :cond_4

    .line 11
    iget-object v7, p0, Lcom/tangxiaolv/telegramgallery/o;->r3:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-lt p1, v7, :cond_2

    goto :goto_1

    .line 12
    :cond_2
    iget-object v7, p0, Lcom/tangxiaolv/telegramgallery/o;->r3:Ljava/util/ArrayList;

    invoke-virtual {v7, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/tangxiaolv/telegramgallery/TL/d;

    iput-object p1, p0, Lcom/tangxiaolv/telegramgallery/o;->U:Lcom/tangxiaolv/telegramgallery/TL/d;

    if-eqz v1, :cond_3

    if-eqz p1, :cond_3

    .line 13
    iget v7, v1, Lcom/tangxiaolv/telegramgallery/TL/d;->e:I

    iget v8, p1, Lcom/tangxiaolv/telegramgallery/TL/d;->e:I

    if-ne v7, v8, :cond_3

    iget-wide v7, v1, Lcom/tangxiaolv/telegramgallery/TL/d;->d:J

    iget-wide v9, p1, Lcom/tangxiaolv/telegramgallery/TL/d;->d:J

    cmp-long p1, v7, v9

    if-nez p1, :cond_3

    const/4 p1, 0x1

    goto :goto_0

    :cond_3
    const/4 p1, 0x0

    .line 14
    :goto_0
    iget-object v1, p0, Lcom/tangxiaolv/telegramgallery/o;->f:Lcom/tangxiaolv/telegramgallery/Actionbar/a;

    iget-object v7, p0, Lcom/tangxiaolv/telegramgallery/o;->e:Landroid/content/Context;

    sget v8, Lcom/tangxiaolv/telegramgallery/q$o;->o:I

    new-array v9, v4, [Ljava/lang/Object;

    iget v10, p0, Lcom/tangxiaolv/telegramgallery/o;->T:I

    add-int/2addr v10, v3

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v9, v2

    iget-object v10, p0, Lcom/tangxiaolv/telegramgallery/o;->r3:Ljava/util/ArrayList;

    .line 15
    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v10

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v9, v3

    .line 16
    invoke-virtual {v7, v8, v9}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v7}, Lcom/tangxiaolv/telegramgallery/Actionbar/a;->setTitle(Ljava/lang/CharSequence;)V

    goto/16 :goto_7

    .line 17
    :cond_4
    :goto_1
    invoke-virtual {p0, v2, v2}, Lcom/tangxiaolv/telegramgallery/o;->t0(ZZ)V

    return-void

    .line 18
    :cond_5
    iget-object v1, p0, Lcom/tangxiaolv/telegramgallery/o;->u3:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_c

    .line 19
    iget-object v1, p0, Lcom/tangxiaolv/telegramgallery/o;->u3:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    if-ltz p1, :cond_b

    .line 20
    iget-object v7, p0, Lcom/tangxiaolv/telegramgallery/o;->u3:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-lt p1, v7, :cond_6

    goto/16 :goto_5

    .line 21
    :cond_6
    instance-of p1, v1, Lcom/tangxiaolv/telegramgallery/Utils/g$k;

    if-eqz p1, :cond_7

    .line 22
    check-cast v1, Lcom/tangxiaolv/telegramgallery/Utils/g$k;

    iget-object p1, v1, Lcom/tangxiaolv/telegramgallery/Utils/g$k;->e:Ljava/lang/String;

    iput-object p1, p0, Lcom/tangxiaolv/telegramgallery/o;->b1:Ljava/lang/String;

    .line 23
    iget p1, v1, Lcom/tangxiaolv/telegramgallery/Utils/g$k;->b:I

    if-nez p1, :cond_9

    iget-wide v7, v1, Lcom/tangxiaolv/telegramgallery/Utils/g$k;->d:J

    cmp-long p1, v7, v5

    if-nez p1, :cond_9

    iget-object p1, p0, Lcom/tangxiaolv/telegramgallery/o;->u3:Ljava/util/ArrayList;

    .line 24
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    if-ne p1, v3, :cond_9

    const/4 p1, 0x1

    goto :goto_3

    .line 25
    :cond_7
    instance-of p1, v1, Lcom/tangxiaolv/telegramgallery/Utils/g$l;

    if-eqz p1, :cond_9

    .line 26
    check-cast v1, Lcom/tangxiaolv/telegramgallery/Utils/g$l;

    .line 27
    iget-object p1, v1, Lcom/tangxiaolv/telegramgallery/Utils/g$l;->m:Lcom/tangxiaolv/telegramgallery/TL/b;

    if-eqz p1, :cond_8

    .line 28
    invoke-static {p1, v3}, Lcom/tangxiaolv/telegramgallery/Utils/d;->G(Lcom/tangxiaolv/telegramgallery/TL/m;Z)Ljava/io/File;

    move-result-object p1

    .line 29
    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/tangxiaolv/telegramgallery/o;->b1:Ljava/lang/String;

    goto :goto_2

    .line 30
    :cond_8
    iget-object p1, v1, Lcom/tangxiaolv/telegramgallery/Utils/g$l;->b:Ljava/lang/String;

    iput-object p1, p0, Lcom/tangxiaolv/telegramgallery/o;->b1:Ljava/lang/String;

    :cond_9
    :goto_2
    const/4 p1, 0x0

    :goto_3
    if-eqz p1, :cond_a

    .line 31
    iget-object p1, p0, Lcom/tangxiaolv/telegramgallery/o;->f:Lcom/tangxiaolv/telegramgallery/Actionbar/a;

    iget-object v1, p0, Lcom/tangxiaolv/telegramgallery/o;->e:Landroid/content/Context;

    sget v7, Lcom/tangxiaolv/telegramgallery/q$o;->d:I

    invoke-virtual {v1, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/tangxiaolv/telegramgallery/Actionbar/a;->setTitle(Ljava/lang/CharSequence;)V

    goto :goto_4

    .line 32
    :cond_a
    iget-object p1, p0, Lcom/tangxiaolv/telegramgallery/o;->f:Lcom/tangxiaolv/telegramgallery/Actionbar/a;

    iget-object v1, p0, Lcom/tangxiaolv/telegramgallery/o;->e:Landroid/content/Context;

    sget v7, Lcom/tangxiaolv/telegramgallery/q$o;->o:I

    new-array v8, v4, [Ljava/lang/Object;

    iget v9, p0, Lcom/tangxiaolv/telegramgallery/o;->T:I

    add-int/2addr v9, v3

    .line 33
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v8, v2

    iget-object v9, p0, Lcom/tangxiaolv/telegramgallery/o;->u3:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v8, v3

    .line 34
    invoke-virtual {v1, v7, v8}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/tangxiaolv/telegramgallery/Actionbar/a;->setTitle(Ljava/lang/CharSequence;)V

    .line 35
    :goto_4
    iget p1, p0, Lcom/tangxiaolv/telegramgallery/o;->y:I

    if-nez p1, :cond_c

    .line 36
    iget-object p1, p0, Lcom/tangxiaolv/telegramgallery/o;->n:Lcom/tangxiaolv/telegramgallery/Components/b;

    iget-object v1, p0, Lcom/tangxiaolv/telegramgallery/o;->b:Lcom/tangxiaolv/telegramgallery/o$b0;

    iget v7, p0, Lcom/tangxiaolv/telegramgallery/o;->T:I

    invoke-interface {v1, v7}, Lcom/tangxiaolv/telegramgallery/o$b0;->n(I)I

    move-result v1

    iget-object v7, p0, Lcom/tangxiaolv/telegramgallery/o;->b:Lcom/tangxiaolv/telegramgallery/o$b0;

    iget v8, p0, Lcom/tangxiaolv/telegramgallery/o;->T:I

    .line 37
    invoke-interface {v7, v8}, Lcom/tangxiaolv/telegramgallery/o$b0;->a(I)Z

    move-result v7

    .line 38
    invoke-virtual {p1, v1, v7, v2}, Lcom/tangxiaolv/telegramgallery/Components/b;->d(IZZ)V

    goto :goto_6

    .line 39
    :cond_b
    :goto_5
    invoke-virtual {p0, v2, v2}, Lcom/tangxiaolv/telegramgallery/o;->t0(ZZ)V

    return-void

    :cond_c
    :goto_6
    const/4 p1, 0x0

    .line 40
    :goto_7
    iget-object v1, p0, Lcom/tangxiaolv/telegramgallery/o;->W:Lcom/tangxiaolv/telegramgallery/o$c0;

    if-eqz v1, :cond_e

    .line 41
    iget v7, p0, Lcom/tangxiaolv/telegramgallery/o;->J:I

    if-nez v7, :cond_d

    .line 42
    iget-object v1, v1, Lcom/tangxiaolv/telegramgallery/o$c0;->a:Lcom/tangxiaolv/telegramgallery/k;

    invoke-virtual {v1, v3, v3}, Lcom/tangxiaolv/telegramgallery/k;->q0(ZZ)V

    goto :goto_8

    .line 43
    :cond_d
    iput-object v1, p0, Lcom/tangxiaolv/telegramgallery/o;->M:Lcom/tangxiaolv/telegramgallery/o$c0;

    .line 44
    :cond_e
    :goto_8
    iget-object v1, p0, Lcom/tangxiaolv/telegramgallery/o;->b:Lcom/tangxiaolv/telegramgallery/o$b0;

    iget-object v7, p0, Lcom/tangxiaolv/telegramgallery/o;->U:Lcom/tangxiaolv/telegramgallery/TL/d;

    iget v8, p0, Lcom/tangxiaolv/telegramgallery/o;->T:I

    invoke-interface {v1, v7, v8}, Lcom/tangxiaolv/telegramgallery/o$b0;->o(Lcom/tangxiaolv/telegramgallery/TL/d;I)Lcom/tangxiaolv/telegramgallery/o$c0;

    move-result-object v1

    iput-object v1, p0, Lcom/tangxiaolv/telegramgallery/o;->W:Lcom/tangxiaolv/telegramgallery/o$c0;

    if-eqz v1, :cond_10

    .line 45
    iget v7, p0, Lcom/tangxiaolv/telegramgallery/o;->J:I

    if-nez v7, :cond_f

    .line 46
    iget-object v1, v1, Lcom/tangxiaolv/telegramgallery/o$c0;->a:Lcom/tangxiaolv/telegramgallery/k;

    invoke-virtual {v1, v2, v3}, Lcom/tangxiaolv/telegramgallery/k;->q0(ZZ)V

    goto :goto_9

    .line 47
    :cond_f
    iput-object v1, p0, Lcom/tangxiaolv/telegramgallery/o;->N:Lcom/tangxiaolv/telegramgallery/o$c0;

    :cond_10
    :goto_9
    if-nez p1, :cond_14

    .line 48
    iput-boolean v2, p0, Lcom/tangxiaolv/telegramgallery/o;->E2:Z

    const/4 p1, 0x0

    .line 49
    iput p1, p0, Lcom/tangxiaolv/telegramgallery/o;->G2:F

    .line 50
    iput p1, p0, Lcom/tangxiaolv/telegramgallery/o;->H2:F

    const/high16 v1, 0x3f800000    # 1.0f

    .line 51
    iput v1, p0, Lcom/tangxiaolv/telegramgallery/o;->I2:F

    .line 52
    iput p1, p0, Lcom/tangxiaolv/telegramgallery/o;->J2:F

    .line 53
    iput p1, p0, Lcom/tangxiaolv/telegramgallery/o;->K2:F

    .line 54
    iput v1, p0, Lcom/tangxiaolv/telegramgallery/o;->L2:F

    .line 55
    iput-wide v5, p0, Lcom/tangxiaolv/telegramgallery/o;->O2:J

    .line 56
    iput-object v0, p0, Lcom/tangxiaolv/telegramgallery/o;->P2:Landroid/animation/AnimatorSet;

    .line 57
    iput-object v0, p0, Lcom/tangxiaolv/telegramgallery/o;->Q2:Landroid/animation/AnimatorSet;

    .line 58
    iget-object v0, p0, Lcom/tangxiaolv/telegramgallery/o;->A:Lcom/tangxiaolv/telegramgallery/Components/AspectRatioFrameLayout;

    if-eqz v0, :cond_11

    const/4 v5, 0x4

    .line 59
    invoke-virtual {v0, v5}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 60
    :cond_11
    iput p1, p0, Lcom/tangxiaolv/telegramgallery/o;->T2:F

    .line 61
    iput v1, p0, Lcom/tangxiaolv/telegramgallery/o;->U2:F

    .line 62
    iput p1, p0, Lcom/tangxiaolv/telegramgallery/o;->V2:F

    .line 63
    iput p1, p0, Lcom/tangxiaolv/telegramgallery/o;->W2:F

    .line 64
    iput p1, p0, Lcom/tangxiaolv/telegramgallery/o;->X2:F

    .line 65
    iput p1, p0, Lcom/tangxiaolv/telegramgallery/o;->Y2:F

    .line 66
    iput p1, p0, Lcom/tangxiaolv/telegramgallery/o;->Z2:F

    .line 67
    iput p1, p0, Lcom/tangxiaolv/telegramgallery/o;->a3:F

    .line 68
    iput-boolean v2, p0, Lcom/tangxiaolv/telegramgallery/o;->h3:Z

    .line 69
    iput-boolean v2, p0, Lcom/tangxiaolv/telegramgallery/o;->i3:Z

    .line 70
    iput-boolean v2, p0, Lcom/tangxiaolv/telegramgallery/o;->j3:Z

    .line 71
    iput-boolean v2, p0, Lcom/tangxiaolv/telegramgallery/o;->k3:Z

    .line 72
    iput-boolean v3, p0, Lcom/tangxiaolv/telegramgallery/o;->l3:Z

    .line 73
    iput-boolean v2, p0, Lcom/tangxiaolv/telegramgallery/o;->g3:Z

    .line 74
    iput v2, p0, Lcom/tangxiaolv/telegramgallery/o;->o3:I

    .line 75
    iget-object p1, p0, Lcom/tangxiaolv/telegramgallery/o;->u3:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_13

    iget-object p1, p0, Lcom/tangxiaolv/telegramgallery/o;->V:[Ljava/lang/String;

    aget-object p1, p1, v2

    if-eqz p1, :cond_12

    iget-object p1, p0, Lcom/tangxiaolv/telegramgallery/o;->q:[Lcom/tangxiaolv/telegramgallery/o$e0;

    aget-object p1, p1, v2

    .line 76
    invoke-static {p1}, Lcom/tangxiaolv/telegramgallery/o$e0;->a(Lcom/tangxiaolv/telegramgallery/o$e0;)I

    move-result p1

    if-eqz p1, :cond_12

    goto :goto_a

    :cond_12
    const/4 p1, 0x0

    goto :goto_b

    :cond_13
    :goto_a
    const/4 p1, 0x1

    :goto_b
    iput-boolean p1, p0, Lcom/tangxiaolv/telegramgallery/o;->f3:Z

    .line 77
    iget p1, p0, Lcom/tangxiaolv/telegramgallery/o;->I2:F

    invoke-direct {p0, p1}, Lcom/tangxiaolv/telegramgallery/o;->e1(F)V

    :cond_14
    const/4 p1, -0x1

    if-ne p2, p1, :cond_15

    .line 78
    invoke-direct {p0}, Lcom/tangxiaolv/telegramgallery/o;->X0()V

    const/4 p1, 0x0

    :goto_c
    const/4 p2, 0x3

    if-ge p1, p2, :cond_17

    .line 79
    invoke-direct {p0, p1, v2}, Lcom/tangxiaolv/telegramgallery/o;->s0(IZ)V

    add-int/lit8 p1, p1, 0x1

    goto :goto_c

    .line 80
    :cond_15
    invoke-direct {p0, v2, v2}, Lcom/tangxiaolv/telegramgallery/o;->s0(IZ)V

    .line 81
    iget p1, p0, Lcom/tangxiaolv/telegramgallery/o;->T:I

    if-le p2, p1, :cond_16

    .line 82
    iget-object p2, p0, Lcom/tangxiaolv/telegramgallery/o;->S:Lcom/tangxiaolv/telegramgallery/k;

    .line 83
    iget-object v0, p0, Lcom/tangxiaolv/telegramgallery/o;->R:Lcom/tangxiaolv/telegramgallery/k;

    iput-object v0, p0, Lcom/tangxiaolv/telegramgallery/o;->S:Lcom/tangxiaolv/telegramgallery/k;

    .line 84
    iget-object v0, p0, Lcom/tangxiaolv/telegramgallery/o;->Q:Lcom/tangxiaolv/telegramgallery/k;

    iput-object v0, p0, Lcom/tangxiaolv/telegramgallery/o;->R:Lcom/tangxiaolv/telegramgallery/k;

    .line 85
    iput-object p2, p0, Lcom/tangxiaolv/telegramgallery/o;->Q:Lcom/tangxiaolv/telegramgallery/k;

    .line 86
    iget-object v0, p0, Lcom/tangxiaolv/telegramgallery/o;->q:[Lcom/tangxiaolv/telegramgallery/o$e0;

    aget-object v1, v0, v2

    .line 87
    aget-object v5, v0, v4

    aput-object v5, v0, v2

    .line 88
    aput-object v1, v0, v4

    sub-int/2addr p1, v3

    .line 89
    invoke-direct {p0, p2, p1}, Lcom/tangxiaolv/telegramgallery/o;->Y0(Lcom/tangxiaolv/telegramgallery/k;I)V

    .line 90
    invoke-direct {p0, v3, v2}, Lcom/tangxiaolv/telegramgallery/o;->s0(IZ)V

    .line 91
    invoke-direct {p0, v4, v2}, Lcom/tangxiaolv/telegramgallery/o;->s0(IZ)V

    goto :goto_d

    :cond_16
    if-ge p2, p1, :cond_17

    .line 92
    iget-object p2, p0, Lcom/tangxiaolv/telegramgallery/o;->Q:Lcom/tangxiaolv/telegramgallery/k;

    .line 93
    iget-object v0, p0, Lcom/tangxiaolv/telegramgallery/o;->R:Lcom/tangxiaolv/telegramgallery/k;

    iput-object v0, p0, Lcom/tangxiaolv/telegramgallery/o;->Q:Lcom/tangxiaolv/telegramgallery/k;

    .line 94
    iget-object v0, p0, Lcom/tangxiaolv/telegramgallery/o;->S:Lcom/tangxiaolv/telegramgallery/k;

    iput-object v0, p0, Lcom/tangxiaolv/telegramgallery/o;->R:Lcom/tangxiaolv/telegramgallery/k;

    .line 95
    iput-object p2, p0, Lcom/tangxiaolv/telegramgallery/o;->S:Lcom/tangxiaolv/telegramgallery/k;

    .line 96
    iget-object v0, p0, Lcom/tangxiaolv/telegramgallery/o;->q:[Lcom/tangxiaolv/telegramgallery/o$e0;

    aget-object v1, v0, v2

    .line 97
    aget-object v5, v0, v3

    aput-object v5, v0, v2

    .line 98
    aput-object v1, v0, v3

    add-int/2addr p1, v3

    .line 99
    invoke-direct {p0, p2, p1}, Lcom/tangxiaolv/telegramgallery/o;->Y0(Lcom/tangxiaolv/telegramgallery/k;I)V

    .line 100
    invoke-direct {p0, v3, v2}, Lcom/tangxiaolv/telegramgallery/o;->s0(IZ)V

    .line 101
    invoke-direct {p0, v4, v2}, Lcom/tangxiaolv/telegramgallery/o;->s0(IZ)V

    :cond_17
    :goto_d
    return-void
.end method

.method static synthetic X(Lcom/tangxiaolv/telegramgallery/o;)V
    .locals 0

    invoke-direct {p0}, Lcom/tangxiaolv/telegramgallery/o;->X0()V

    return-void
.end method

.method private X0()V
    .locals 2

    .line 1
    iget v0, p0, Lcom/tangxiaolv/telegramgallery/o;->J:I

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/tangxiaolv/telegramgallery/o;->R:Lcom/tangxiaolv/telegramgallery/k;

    iget v1, p0, Lcom/tangxiaolv/telegramgallery/o;->T:I

    invoke-direct {p0, v0, v1}, Lcom/tangxiaolv/telegramgallery/o;->Y0(Lcom/tangxiaolv/telegramgallery/k;I)V

    .line 3
    iget-object v0, p0, Lcom/tangxiaolv/telegramgallery/o;->S:Lcom/tangxiaolv/telegramgallery/k;

    iget v1, p0, Lcom/tangxiaolv/telegramgallery/o;->T:I

    add-int/lit8 v1, v1, 0x1

    invoke-direct {p0, v0, v1}, Lcom/tangxiaolv/telegramgallery/o;->Y0(Lcom/tangxiaolv/telegramgallery/k;I)V

    .line 4
    iget-object v0, p0, Lcom/tangxiaolv/telegramgallery/o;->Q:Lcom/tangxiaolv/telegramgallery/k;

    iget v1, p0, Lcom/tangxiaolv/telegramgallery/o;->T:I

    add-int/lit8 v1, v1, -0x1

    invoke-direct {p0, v0, v1}, Lcom/tangxiaolv/telegramgallery/o;->Y0(Lcom/tangxiaolv/telegramgallery/k;I)V

    :cond_0
    return-void
.end method

.method static synthetic Y(Lcom/tangxiaolv/telegramgallery/o;ZIIII)V
    .locals 0

    invoke-direct/range {p0 .. p5}, Lcom/tangxiaolv/telegramgallery/o;->M0(ZIIII)V

    return-void
.end method

.method private Y0(Lcom/tangxiaolv/telegramgallery/k;I)V
    .locals 15

    move-object v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    const/4 v3, 0x0

    .line 1
    invoke-virtual {v1, v3, v3}, Lcom/tangxiaolv/telegramgallery/k;->k0(IZ)V

    .line 2
    iget-object v4, v0, Lcom/tangxiaolv/telegramgallery/o;->u3:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v4

    const/4 v5, 0x1

    const/4 v6, 0x0

    if-nez v4, :cond_c

    if-ltz v2, :cond_b

    .line 3
    iget-object v4, v0, Lcom/tangxiaolv/telegramgallery/o;->u3:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v2, v4, :cond_b

    .line 4
    iget-object v4, v0, Lcom/tangxiaolv/telegramgallery/o;->u3:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    .line 5
    invoke-static {}, Lcom/tangxiaolv/telegramgallery/Utils/a;->o()I

    move-result v7

    int-to-float v7, v7

    sget v8, Lcom/tangxiaolv/telegramgallery/Utils/a;->c:F

    div-float/2addr v7, v8

    float-to-int v7, v7

    .line 6
    iget-object v8, v0, Lcom/tangxiaolv/telegramgallery/o;->g1:Landroid/graphics/Bitmap;

    if-eqz v8, :cond_0

    iget-object v9, v0, Lcom/tangxiaolv/telegramgallery/o;->R:Lcom/tangxiaolv/telegramgallery/k;

    if-ne v1, v9, :cond_0

    goto :goto_0

    :cond_0
    move-object v8, v6

    :goto_0
    if-nez v8, :cond_1

    .line 7
    iget-object v8, v0, Lcom/tangxiaolv/telegramgallery/o;->b:Lcom/tangxiaolv/telegramgallery/o$b0;

    invoke-interface {v8, v6, v2}, Lcom/tangxiaolv/telegramgallery/o$b0;->j(Lcom/tangxiaolv/telegramgallery/TL/d;I)Landroid/graphics/Bitmap;

    move-result-object v8

    .line 8
    :cond_1
    instance-of v2, v4, Lcom/tangxiaolv/telegramgallery/Utils/g$k;

    const/4 v9, 0x2

    const-string v10, "%d_%d"

    if-eqz v2, :cond_3

    .line 9
    check-cast v4, Lcom/tangxiaolv/telegramgallery/Utils/g$k;

    .line 10
    iget-object v2, v4, Lcom/tangxiaolv/telegramgallery/Utils/g$k;->h:Ljava/lang/String;

    if-eqz v2, :cond_2

    goto :goto_1

    .line 11
    :cond_2
    iget v2, v4, Lcom/tangxiaolv/telegramgallery/Utils/g$k;->f:I

    invoke-virtual {v1, v2, v3}, Lcom/tangxiaolv/telegramgallery/k;->k0(IZ)V

    .line 12
    iget-object v2, v4, Lcom/tangxiaolv/telegramgallery/Utils/g$k;->e:Ljava/lang/String;

    .line 13
    :goto_1
    sget-object v4, Ljava/util/Locale;->US:Ljava/util/Locale;

    new-array v11, v9, [Ljava/lang/Object;

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    aput-object v12, v11, v3

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    aput-object v12, v11, v5

    invoke-static {v4, v10, v11}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    move-object v12, v4

    const/4 v11, 0x0

    move-object v4, v2

    move-object v2, v6

    goto :goto_3

    .line 14
    :cond_3
    instance-of v2, v4, Lcom/tangxiaolv/telegramgallery/Utils/g$l;

    if-eqz v2, :cond_6

    .line 15
    check-cast v4, Lcom/tangxiaolv/telegramgallery/Utils/g$l;

    .line 16
    iget-object v2, v4, Lcom/tangxiaolv/telegramgallery/Utils/g$l;->k:Ljava/lang/String;

    if-eqz v2, :cond_4

    move-object v4, v6

    const/4 v11, 0x0

    goto :goto_2

    .line 17
    :cond_4
    iget-object v2, v4, Lcom/tangxiaolv/telegramgallery/Utils/g$l;->m:Lcom/tangxiaolv/telegramgallery/TL/b;

    if-eqz v2, :cond_5

    .line 18
    iget v4, v2, Lcom/tangxiaolv/telegramgallery/TL/b;->i:I

    move v11, v4

    move-object v4, v2

    move-object v2, v6

    goto :goto_2

    .line 19
    :cond_5
    iget-object v2, v4, Lcom/tangxiaolv/telegramgallery/Utils/g$l;->b:Ljava/lang/String;

    .line 20
    iget v4, v4, Lcom/tangxiaolv/telegramgallery/Utils/g$l;->g:I

    move v11, v4

    move-object v4, v6

    :goto_2
    const-string v12, "d"

    move-object v14, v4

    move-object v4, v2

    move-object v2, v14

    goto :goto_3

    :cond_6
    move-object v2, v6

    move-object v4, v2

    move-object v12, v4

    const/4 v11, 0x0

    :goto_3
    if-eqz v2, :cond_9

    const/4 v4, 0x0

    if-eqz v8, :cond_7

    .line 21
    new-instance v12, Landroid/graphics/drawable/BitmapDrawable;

    invoke-direct {v12, v6, v8}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    goto :goto_4

    :cond_7
    move-object v12, v6

    :goto_4
    if-nez v8, :cond_8

    .line 22
    iget-object v6, v2, Lcom/tangxiaolv/telegramgallery/TL/b;->j:Lcom/tangxiaolv/telegramgallery/TL/l;

    iget-object v6, v6, Lcom/tangxiaolv/telegramgallery/TL/l;->d:Lcom/tangxiaolv/telegramgallery/TL/d;

    :cond_8
    sget-object v8, Ljava/util/Locale;->US:Ljava/util/Locale;

    new-array v9, v9, [Ljava/lang/Object;

    .line 23
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    aput-object v13, v9, v3

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v9, v5

    invoke-static {v8, v10, v9}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    const/4 v9, 0x0

    const/4 v10, 0x0

    const-string v5, "d"

    move-object/from16 v1, p1

    move-object v3, v4

    move-object v4, v5

    move-object v5, v12

    move v8, v11

    .line 24
    invoke-virtual/range {v1 .. v10}, Lcom/tangxiaolv/telegramgallery/k;->c0(Lcom/tangxiaolv/telegramgallery/TL/m;Ljava/lang/String;Ljava/lang/String;Landroid/graphics/drawable/Drawable;Lcom/tangxiaolv/telegramgallery/TL/d;Ljava/lang/String;ILjava/lang/String;Z)V

    goto/16 :goto_7

    :cond_9
    if-eqz v8, :cond_a

    .line 25
    new-instance v2, Landroid/graphics/drawable/BitmapDrawable;

    invoke-direct {v2, v6, v8}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    move-object v6, v2

    :cond_a
    const/4 v5, 0x0

    move-object/from16 v1, p1

    move-object v2, v4

    move-object v3, v12

    move-object v4, v6

    move v6, v11

    .line 26
    invoke-virtual/range {v1 .. v6}, Lcom/tangxiaolv/telegramgallery/k;->d0(Ljava/lang/String;Ljava/lang/String;Landroid/graphics/drawable/Drawable;Ljava/lang/String;I)V

    goto/16 :goto_7

    .line 27
    :cond_b
    invoke-virtual {v1, v6}, Lcom/tangxiaolv/telegramgallery/k;->e0(Landroid/graphics/Bitmap;)V

    goto/16 :goto_7

    :cond_c
    new-array v4, v5, [I

    .line 28
    invoke-direct {p0, v2, v4}, Lcom/tangxiaolv/telegramgallery/o;->C0(I[I)Lcom/tangxiaolv/telegramgallery/TL/d;

    move-result-object v2

    if-eqz v2, :cond_11

    .line 29
    invoke-virtual {v1, v3}, Lcom/tangxiaolv/telegramgallery/k;->j0(Z)V

    .line 30
    iget-object v7, v0, Lcom/tangxiaolv/telegramgallery/o;->g1:Landroid/graphics/Bitmap;

    if-eqz v7, :cond_d

    iget-object v8, v0, Lcom/tangxiaolv/telegramgallery/o;->R:Lcom/tangxiaolv/telegramgallery/k;

    if-ne v1, v8, :cond_d

    goto :goto_5

    :cond_d
    move-object v7, v6

    :goto_5
    aget v8, v4, v3

    if-nez v8, :cond_e

    const/4 v8, -0x1

    aput v8, v4, v3

    :cond_e
    const/4 v8, 0x0

    const/4 v9, 0x0

    if-eqz v7, :cond_f

    .line 31
    new-instance v10, Landroid/graphics/drawable/BitmapDrawable;

    invoke-direct {v10, v6, v7}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    move-object v6, v10

    :cond_f
    const/4 v7, 0x0

    aget v10, v4, v3

    const/4 v11, 0x0

    iget v4, v0, Lcom/tangxiaolv/telegramgallery/o;->p1:I

    if-eqz v4, :cond_10

    const/4 v12, 0x1

    goto :goto_6

    :cond_10
    const/4 v12, 0x0

    :goto_6
    const-string v13, "b"

    move-object/from16 v1, p1

    move-object v3, v8

    move-object v4, v9

    move-object v5, v6

    move-object v6, v7

    move-object v7, v13

    move v8, v10

    move-object v9, v11

    move v10, v12

    .line 32
    invoke-virtual/range {v1 .. v10}, Lcom/tangxiaolv/telegramgallery/k;->c0(Lcom/tangxiaolv/telegramgallery/TL/m;Ljava/lang/String;Ljava/lang/String;Landroid/graphics/drawable/Drawable;Lcom/tangxiaolv/telegramgallery/TL/d;Ljava/lang/String;ILjava/lang/String;Z)V

    goto :goto_7

    .line 33
    :cond_11
    invoke-virtual {v1, v3}, Lcom/tangxiaolv/telegramgallery/k;->j0(Z)V

    aget v2, v4, v3

    if-nez v2, :cond_12

    .line 34
    invoke-virtual {v1, v6}, Lcom/tangxiaolv/telegramgallery/k;->e0(Landroid/graphics/Bitmap;)V

    goto :goto_7

    .line 35
    :cond_12
    iget-object v2, v0, Lcom/tangxiaolv/telegramgallery/o;->d:Lcom/tangxiaolv/telegramgallery/GalleryActivity;

    invoke-virtual {v2}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/tangxiaolv/telegramgallery/q$h;->N2:I

    .line 36
    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 37
    invoke-virtual {v1, v2}, Lcom/tangxiaolv/telegramgallery/k;->f0(Landroid/graphics/drawable/Drawable;)V

    :goto_7
    return-void
.end method

.method static synthetic Z(Lcom/tangxiaolv/telegramgallery/o;)Lcom/tangxiaolv/telegramgallery/Components/c;
    .locals 0

    iget-object p0, p0, Lcom/tangxiaolv/telegramgallery/o;->k:Lcom/tangxiaolv/telegramgallery/Components/c;

    return-object p0
.end method

.method static synthetic a()Landroid/view/animation/DecelerateInterpolator;
    .locals 1

    sget-object v0, Lcom/tangxiaolv/telegramgallery/o;->z3:Landroid/view/animation/DecelerateInterpolator;

    return-object v0
.end method

.method static synthetic a0(Lcom/tangxiaolv/telegramgallery/o;)Lcom/tangxiaolv/telegramgallery/o$c0;
    .locals 0

    iget-object p0, p0, Lcom/tangxiaolv/telegramgallery/o;->M:Lcom/tangxiaolv/telegramgallery/o$c0;

    return-object p0
.end method

.method private a1(Landroid/app/AlertDialog$Builder;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/tangxiaolv/telegramgallery/o;->d:Lcom/tangxiaolv/telegramgallery/GalleryActivity;

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/tangxiaolv/telegramgallery/o;->v:Landroid/app/AlertDialog;

    if-eqz v0, :cond_1

    .line 3
    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    const/4 v0, 0x0

    .line 4
    iput-object v0, p0, Lcom/tangxiaolv/telegramgallery/o;->v:Landroid/app/AlertDialog;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 5
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 6
    :cond_1
    :goto_0
    :try_start_1
    invoke-virtual {p1}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    move-result-object p1

    iput-object p1, p0, Lcom/tangxiaolv/telegramgallery/o;->v:Landroid/app/AlertDialog;

    const/4 v0, 0x1

    .line 7
    invoke-virtual {p1, v0}, Landroid/app/AlertDialog;->setCanceledOnTouchOutside(Z)V

    .line 8
    iget-object p1, p0, Lcom/tangxiaolv/telegramgallery/o;->v:Landroid/app/AlertDialog;

    new-instance v0, Lcom/tangxiaolv/telegramgallery/o$u;

    invoke-direct {v0, p0}, Lcom/tangxiaolv/telegramgallery/o$u;-><init>(Lcom/tangxiaolv/telegramgallery/o;)V

    invoke-virtual {p1, v0}, Landroid/app/AlertDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception p1

    .line 9
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_1
    return-void
.end method

.method static synthetic b(Landroid/view/animation/DecelerateInterpolator;)Landroid/view/animation/DecelerateInterpolator;
    .locals 0

    sput-object p0, Lcom/tangxiaolv/telegramgallery/o;->z3:Landroid/view/animation/DecelerateInterpolator;

    return-object p0
.end method

.method static synthetic b0(Lcom/tangxiaolv/telegramgallery/o;)Lcom/tangxiaolv/telegramgallery/o$c0;
    .locals 0

    iget-object p0, p0, Lcom/tangxiaolv/telegramgallery/o;->N:Lcom/tangxiaolv/telegramgallery/o$c0;

    return-object p0
.end method

.method private b1(I)V
    .locals 19

    move-object/from16 v0, p0

    move/from16 v1, p1

    .line 1
    iget v2, v0, Lcom/tangxiaolv/telegramgallery/o;->P:I

    if-eq v2, v1, :cond_a

    iget-object v2, v0, Lcom/tangxiaolv/telegramgallery/o;->R:Lcom/tangxiaolv/telegramgallery/k;

    invoke-virtual {v2}, Lcom/tangxiaolv/telegramgallery/k;->g()Landroid/graphics/Bitmap;

    move-result-object v2

    if-eqz v2, :cond_a

    iget-object v2, v0, Lcom/tangxiaolv/telegramgallery/o;->Q2:Landroid/animation/AnimatorSet;

    if-nez v2, :cond_a

    iget-object v2, v0, Lcom/tangxiaolv/telegramgallery/o;->P2:Landroid/animation/AnimatorSet;

    if-nez v2, :cond_a

    iget-object v2, v0, Lcom/tangxiaolv/telegramgallery/o;->q:[Lcom/tangxiaolv/telegramgallery/o$e0;

    const/4 v3, 0x0

    aget-object v2, v2, v3

    .line 2
    invoke-static {v2}, Lcom/tangxiaolv/telegramgallery/o$e0;->a(Lcom/tangxiaolv/telegramgallery/o$e0;)I

    move-result v2

    const/4 v4, -0x1

    if-eq v2, v4, :cond_0

    goto/16 :goto_1

    :cond_0
    const-string v2, "alpha"

    const-wide/16 v4, 0xc8

    const-string v6, "translationY"

    const/4 v7, 0x0

    const/4 v8, 0x2

    const/4 v9, 0x1

    if-nez v1, :cond_7

    .line 3
    iget-object v10, v0, Lcom/tangxiaolv/telegramgallery/o;->R:Lcom/tangxiaolv/telegramgallery/k;

    invoke-virtual {v10}, Lcom/tangxiaolv/telegramgallery/k;->g()Landroid/graphics/Bitmap;

    move-result-object v10

    if-eqz v10, :cond_5

    .line 4
    iget-object v10, v0, Lcom/tangxiaolv/telegramgallery/o;->R:Lcom/tangxiaolv/telegramgallery/k;

    invoke-virtual {v10}, Lcom/tangxiaolv/telegramgallery/k;->j()I

    move-result v10

    .line 5
    iget-object v11, v0, Lcom/tangxiaolv/telegramgallery/o;->R:Lcom/tangxiaolv/telegramgallery/k;

    invoke-virtual {v11}, Lcom/tangxiaolv/telegramgallery/k;->i()I

    move-result v11

    .line 6
    invoke-direct/range {p0 .. p0}, Lcom/tangxiaolv/telegramgallery/o;->A0()I

    move-result v12

    int-to-float v12, v12

    int-to-float v10, v10

    div-float/2addr v12, v10

    .line 7
    invoke-direct/range {p0 .. p0}, Lcom/tangxiaolv/telegramgallery/o;->y0()I

    move-result v13

    int-to-float v13, v13

    int-to-float v11, v11

    div-float/2addr v13, v11

    .line 8
    invoke-direct {v0, v3}, Lcom/tangxiaolv/telegramgallery/o;->B0(I)I

    move-result v14

    int-to-float v14, v14

    div-float/2addr v14, v10

    .line 9
    invoke-direct {v0, v3}, Lcom/tangxiaolv/telegramgallery/o;->z0(I)I

    move-result v10

    int-to-float v10, v10

    div-float/2addr v10, v11

    cmpl-float v11, v12, v13

    if-lez v11, :cond_1

    move v12, v13

    :cond_1
    cmpl-float v11, v14, v10

    if-lez v11, :cond_2

    move v14, v10

    :cond_2
    div-float/2addr v14, v12

    .line 10
    iput v14, v0, Lcom/tangxiaolv/telegramgallery/o;->L2:F

    .line 11
    iput v7, v0, Lcom/tangxiaolv/telegramgallery/o;->J2:F

    .line 12
    iget v10, v0, Lcom/tangxiaolv/telegramgallery/o;->P:I

    if-ne v10, v9, :cond_3

    const/high16 v10, 0x41c00000    # 24.0f

    .line 13
    invoke-static {v10}, Lcom/tangxiaolv/telegramgallery/Utils/a;->g(F)I

    move-result v10

    int-to-float v10, v10

    iput v10, v0, Lcom/tangxiaolv/telegramgallery/o;->K2:F

    goto :goto_0

    :cond_3
    if-ne v10, v8, :cond_4

    const/high16 v10, 0x42780000    # 62.0f

    .line 14
    invoke-static {v10}, Lcom/tangxiaolv/telegramgallery/Utils/a;->g(F)I

    move-result v10

    int-to-float v10, v10

    iput v10, v0, Lcom/tangxiaolv/telegramgallery/o;->K2:F

    .line 15
    :cond_4
    :goto_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    iput-wide v10, v0, Lcom/tangxiaolv/telegramgallery/o;->O2:J

    .line 16
    iput-boolean v9, v0, Lcom/tangxiaolv/telegramgallery/o;->m3:Z

    .line 17
    :cond_5
    new-instance v10, Landroid/animation/AnimatorSet;

    invoke-direct {v10}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v10, v0, Lcom/tangxiaolv/telegramgallery/o;->P2:Landroid/animation/AnimatorSet;

    .line 18
    iget v11, v0, Lcom/tangxiaolv/telegramgallery/o;->P:I

    if-ne v11, v9, :cond_6

    const/4 v11, 0x3

    new-array v11, v11, [Landroid/animation/Animator;

    .line 19
    iget-object v12, v0, Lcom/tangxiaolv/telegramgallery/o;->p:Lcom/tangxiaolv/telegramgallery/Components/h;

    new-array v13, v9, [F

    const/high16 v14, 0x42400000    # 48.0f

    .line 20
    invoke-static {v14}, Lcom/tangxiaolv/telegramgallery/Utils/a;->g(F)I

    move-result v14

    int-to-float v14, v14

    aput v14, v13, v3

    .line 21
    invoke-static {v12, v6, v13}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v6

    aput-object v6, v11, v3

    new-array v6, v8, [F

    fill-array-data v6, :array_0

    const-string v12, "animationValue"

    .line 22
    invoke-static {v0, v12, v6}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v6

    aput-object v6, v11, v9

    iget-object v6, v0, Lcom/tangxiaolv/telegramgallery/o;->u:Lcom/tangxiaolv/telegramgallery/Components/d;

    new-array v9, v9, [F

    aput v7, v9, v3

    .line 23
    invoke-static {v6, v2, v9}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    aput-object v2, v11, v8

    .line 24
    invoke-virtual {v10, v11}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 25
    :cond_6
    iget-object v2, v0, Lcom/tangxiaolv/telegramgallery/o;->P2:Landroid/animation/AnimatorSet;

    invoke-virtual {v2, v4, v5}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 26
    iget-object v2, v0, Lcom/tangxiaolv/telegramgallery/o;->P2:Landroid/animation/AnimatorSet;

    new-instance v3, Lcom/tangxiaolv/telegramgallery/o$v;

    invoke-direct {v3, v0, v1}, Lcom/tangxiaolv/telegramgallery/o$v;-><init>(Lcom/tangxiaolv/telegramgallery/o;I)V

    invoke-virtual {v2, v3}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 27
    iget-object v1, v0, Lcom/tangxiaolv/telegramgallery/o;->P2:Landroid/animation/AnimatorSet;

    invoke-virtual {v1}, Landroid/animation/AnimatorSet;->start()V

    goto/16 :goto_1

    :cond_7
    if-ne v1, v9, :cond_a

    .line 28
    iget-object v10, v0, Lcom/tangxiaolv/telegramgallery/o;->u:Lcom/tangxiaolv/telegramgallery/Components/d;

    if-nez v10, :cond_8

    .line 29
    new-instance v10, Lcom/tangxiaolv/telegramgallery/Components/d;

    iget-object v11, v0, Lcom/tangxiaolv/telegramgallery/o;->e:Landroid/content/Context;

    invoke-direct {v10, v11}, Lcom/tangxiaolv/telegramgallery/Components/d;-><init>(Landroid/content/Context;)V

    iput-object v10, v0, Lcom/tangxiaolv/telegramgallery/o;->u:Lcom/tangxiaolv/telegramgallery/Components/d;

    const/16 v11, 0x8

    .line 30
    invoke-virtual {v10, v11}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 31
    iget-object v10, v0, Lcom/tangxiaolv/telegramgallery/o;->i:Lcom/tangxiaolv/telegramgallery/o$z;

    iget-object v11, v0, Lcom/tangxiaolv/telegramgallery/o;->u:Lcom/tangxiaolv/telegramgallery/Components/d;

    const/4 v12, -0x1

    const/high16 v13, -0x40800000    # -1.0f

    const/16 v14, 0x33

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/high16 v18, 0x42400000    # 48.0f

    .line 32
    invoke-static/range {v12 .. v18}, Lcom/tangxiaolv/telegramgallery/Utils/f;->b(IFIFFFF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v12

    .line 33
    invoke-virtual {v10, v11, v12}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 34
    iget-object v10, v0, Lcom/tangxiaolv/telegramgallery/o;->u:Lcom/tangxiaolv/telegramgallery/Components/d;

    new-instance v11, Lcom/tangxiaolv/telegramgallery/o$w;

    invoke-direct {v11, v0}, Lcom/tangxiaolv/telegramgallery/o$w;-><init>(Lcom/tangxiaolv/telegramgallery/o;)V

    invoke-virtual {v10, v11}, Lcom/tangxiaolv/telegramgallery/Components/d;->setDelegate(Lcom/tangxiaolv/telegramgallery/Components/d$b;)V

    .line 35
    :cond_8
    iget-object v10, v0, Lcom/tangxiaolv/telegramgallery/o;->p:Lcom/tangxiaolv/telegramgallery/Components/h;

    iget-object v10, v10, Lcom/tangxiaolv/telegramgallery/Components/h;->c:Landroid/widget/TextView;

    sget v11, Lcom/tangxiaolv/telegramgallery/q$o;->h:I

    invoke-virtual {v10, v11}, Landroid/widget/TextView;->setText(I)V

    .line 36
    new-instance v10, Landroid/animation/AnimatorSet;

    invoke-direct {v10}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v10, v0, Lcom/tangxiaolv/telegramgallery/o;->Q2:Landroid/animation/AnimatorSet;

    .line 37
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    .line 38
    iget-object v11, v0, Lcom/tangxiaolv/telegramgallery/o;->o:Lcom/tangxiaolv/telegramgallery/Components/h;

    new-array v12, v8, [F

    aput v7, v12, v3

    const/high16 v13, 0x42c00000    # 96.0f

    .line 39
    invoke-static {v13}, Lcom/tangxiaolv/telegramgallery/Utils/a;->g(F)I

    move-result v13

    int-to-float v13, v13

    aput v13, v12, v9

    invoke-static {v11, v6, v12}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v11

    .line 40
    invoke-virtual {v10, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 41
    iget-object v11, v0, Lcom/tangxiaolv/telegramgallery/o;->f:Lcom/tangxiaolv/telegramgallery/Actionbar/a;

    new-array v12, v8, [F

    aput v7, v12, v3

    .line 42
    invoke-virtual {v11}, Landroid/widget/FrameLayout;->getHeight()I

    move-result v3

    neg-int v3, v3

    int-to-float v3, v3

    aput v3, v12, v9

    invoke-static {v11, v6, v12}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v3

    .line 43
    invoke-virtual {v10, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 44
    iget v3, v0, Lcom/tangxiaolv/telegramgallery/o;->y:I

    if-nez v3, :cond_9

    .line 45
    iget-object v3, v0, Lcom/tangxiaolv/telegramgallery/o;->n:Lcom/tangxiaolv/telegramgallery/Components/b;

    new-array v6, v8, [F

    fill-array-data v6, :array_1

    invoke-static {v3, v2, v6}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    invoke-virtual {v10, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 46
    :cond_9
    iget-object v2, v0, Lcom/tangxiaolv/telegramgallery/o;->Q2:Landroid/animation/AnimatorSet;

    invoke-virtual {v2, v10}, Landroid/animation/AnimatorSet;->playTogether(Ljava/util/Collection;)V

    .line 47
    iget-object v2, v0, Lcom/tangxiaolv/telegramgallery/o;->Q2:Landroid/animation/AnimatorSet;

    invoke-virtual {v2, v4, v5}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 48
    iget-object v2, v0, Lcom/tangxiaolv/telegramgallery/o;->Q2:Landroid/animation/AnimatorSet;

    new-instance v3, Lcom/tangxiaolv/telegramgallery/o$a;

    invoke-direct {v3, v0, v1}, Lcom/tangxiaolv/telegramgallery/o$a;-><init>(Lcom/tangxiaolv/telegramgallery/o;I)V

    invoke-virtual {v2, v3}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 49
    iget-object v1, v0, Lcom/tangxiaolv/telegramgallery/o;->Q2:Landroid/animation/AnimatorSet;

    invoke-virtual {v1}, Landroid/animation/AnimatorSet;->start()V

    :cond_a
    :goto_1
    return-void

    nop

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data

    :array_1
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data
.end method

.method static synthetic c()Landroid/graphics/Paint;
    .locals 1

    sget-object v0, Lcom/tangxiaolv/telegramgallery/o;->A3:Landroid/graphics/Paint;

    return-object v0
.end method

.method static synthetic c0(Lcom/tangxiaolv/telegramgallery/o;)Landroid/view/WindowManager$LayoutParams;
    .locals 0

    iget-object p0, p0, Lcom/tangxiaolv/telegramgallery/o;->h:Landroid/view/WindowManager$LayoutParams;

    return-object p0
.end method

.method private c1(ZZ)V
    .locals 7

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    .line 1
    iget-object v1, p0, Lcom/tangxiaolv/telegramgallery/o;->f:Lcom/tangxiaolv/telegramgallery/Actionbar/a;

    invoke-virtual {v1, v0}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 2
    iget-boolean v1, p0, Lcom/tangxiaolv/telegramgallery/o;->w:Z

    if-eqz v1, :cond_0

    .line 3
    iget-object v1, p0, Lcom/tangxiaolv/telegramgallery/o;->l:Landroid/widget/FrameLayout;

    invoke-virtual {v1, v0}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 4
    :cond_0
    iput-boolean p1, p0, Lcom/tangxiaolv/telegramgallery/o;->g:Z

    .line 5
    iget-object v1, p0, Lcom/tangxiaolv/telegramgallery/o;->f:Lcom/tangxiaolv/telegramgallery/Actionbar/a;

    invoke-virtual {v1, p1}, Landroid/widget/FrameLayout;->setEnabled(Z)V

    .line 6
    iget-object v1, p0, Lcom/tangxiaolv/telegramgallery/o;->l:Landroid/widget/FrameLayout;

    invoke-virtual {v1, p1}, Landroid/widget/FrameLayout;->setEnabled(Z)V

    const/high16 v1, 0x3f800000    # 1.0f

    const/4 v2, 0x0

    if-eqz p2, :cond_4

    .line 7
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    .line 8
    iget-object v3, p0, Lcom/tangxiaolv/telegramgallery/o;->f:Lcom/tangxiaolv/telegramgallery/Actionbar/a;

    const/4 v4, 0x1

    new-array v5, v4, [F

    if-eqz p1, :cond_1

    const/high16 v6, 0x3f800000    # 1.0f

    goto :goto_0

    :cond_1
    const/4 v6, 0x0

    :goto_0
    aput v6, v5, v0

    const-string v6, "alpha"

    invoke-static {v3, v6, v5}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v3

    invoke-virtual {p2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 9
    iget-object v3, p0, Lcom/tangxiaolv/telegramgallery/o;->l:Landroid/widget/FrameLayout;

    new-array v4, v4, [F

    if-eqz p1, :cond_2

    goto :goto_1

    :cond_2
    const/4 v1, 0x0

    :goto_1
    aput v1, v4, v0

    invoke-static {v3, v6, v4}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 10
    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v0, p0, Lcom/tangxiaolv/telegramgallery/o;->t:Landroid/animation/AnimatorSet;

    .line 11
    invoke-virtual {v0, p2}, Landroid/animation/AnimatorSet;->playTogether(Ljava/util/Collection;)V

    if-nez p1, :cond_3

    .line 12
    iget-object p1, p0, Lcom/tangxiaolv/telegramgallery/o;->t:Landroid/animation/AnimatorSet;

    new-instance p2, Lcom/tangxiaolv/telegramgallery/o$b;

    invoke-direct {p2, p0}, Lcom/tangxiaolv/telegramgallery/o$b;-><init>(Lcom/tangxiaolv/telegramgallery/o;)V

    invoke-virtual {p1, p2}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 13
    :cond_3
    iget-object p1, p0, Lcom/tangxiaolv/telegramgallery/o;->t:Landroid/animation/AnimatorSet;

    const-wide/16 v0, 0xc8

    invoke-virtual {p1, v0, v1}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 14
    iget-object p1, p0, Lcom/tangxiaolv/telegramgallery/o;->t:Landroid/animation/AnimatorSet;

    invoke-virtual {p1}, Landroid/animation/AnimatorSet;->start()V

    goto :goto_4

    .line 15
    :cond_4
    iget-object p2, p0, Lcom/tangxiaolv/telegramgallery/o;->f:Lcom/tangxiaolv/telegramgallery/Actionbar/a;

    if-eqz p1, :cond_5

    const/high16 v0, 0x3f800000    # 1.0f

    goto :goto_2

    :cond_5
    const/4 v0, 0x0

    :goto_2
    invoke-virtual {p2, v0}, Landroid/widget/FrameLayout;->setAlpha(F)V

    .line 16
    iget-object p2, p0, Lcom/tangxiaolv/telegramgallery/o;->l:Landroid/widget/FrameLayout;

    if-eqz p1, :cond_6

    goto :goto_3

    :cond_6
    const/4 v1, 0x0

    :goto_3
    invoke-virtual {p2, v1}, Landroid/widget/FrameLayout;->setAlpha(F)V

    if-nez p1, :cond_7

    .line 17
    iget-object p1, p0, Lcom/tangxiaolv/telegramgallery/o;->f:Lcom/tangxiaolv/telegramgallery/Actionbar/a;

    const/16 p2, 0x8

    invoke-virtual {p1, p2}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 18
    iget-boolean p1, p0, Lcom/tangxiaolv/telegramgallery/o;->w:Z

    if-eqz p1, :cond_7

    .line 19
    iget-object p1, p0, Lcom/tangxiaolv/telegramgallery/o;->l:Landroid/widget/FrameLayout;

    invoke-virtual {p1, p2}, Landroid/widget/FrameLayout;->setVisibility(I)V

    :cond_7
    :goto_4
    return-void
.end method

.method static synthetic d(Lcom/tangxiaolv/telegramgallery/o;)Lcom/tangxiaolv/telegramgallery/o$b0;
    .locals 0

    iget-object p0, p0, Lcom/tangxiaolv/telegramgallery/o;->b:Lcom/tangxiaolv/telegramgallery/o$b0;

    return-object p0
.end method

.method static synthetic d0(Lcom/tangxiaolv/telegramgallery/o;)Ljava/lang/Runnable;
    .locals 0

    iget-object p0, p0, Lcom/tangxiaolv/telegramgallery/o;->L:Ljava/lang/Runnable;

    return-object p0
.end method

.method private d1(Z)V
    .locals 9

    .line 1
    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    .line 2
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 3
    iget-object v2, p0, Lcom/tangxiaolv/telegramgallery/o;->o:Lcom/tangxiaolv/telegramgallery/Components/h;

    const/4 v3, 0x1

    new-array v4, v3, [F

    const/high16 v5, 0x3f800000    # 1.0f

    const/4 v6, 0x0

    if-eqz p1, :cond_0

    const/high16 v7, 0x3f800000    # 1.0f

    goto :goto_0

    :cond_0
    const/4 v7, 0x0

    :goto_0
    const/4 v8, 0x0

    aput v7, v4, v8

    const-string v7, "alpha"

    invoke-static {v2, v7, v4}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4
    iget v2, p0, Lcom/tangxiaolv/telegramgallery/o;->y:I

    if-nez v2, :cond_2

    .line 5
    iget-object v2, p0, Lcom/tangxiaolv/telegramgallery/o;->n:Lcom/tangxiaolv/telegramgallery/Components/b;

    new-array v3, v3, [F

    if-eqz p1, :cond_1

    goto :goto_1

    :cond_1
    const/4 v5, 0x0

    :goto_1
    aput v5, v3, v8

    invoke-static {v2, v7, v3}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 6
    :cond_2
    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->playTogether(Ljava/util/Collection;)V

    const-wide/16 v1, 0xc8

    .line 7
    invoke-virtual {v0, v1, v2}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 8
    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    return-void
.end method

.method static synthetic e(Landroid/graphics/Paint;)Landroid/graphics/Paint;
    .locals 0

    sput-object p0, Lcom/tangxiaolv/telegramgallery/o;->A3:Landroid/graphics/Paint;

    return-object p0
.end method

.method static synthetic e0(Lcom/tangxiaolv/telegramgallery/o;Ljava/lang/Runnable;)Ljava/lang/Runnable;
    .locals 0

    iput-object p1, p0, Lcom/tangxiaolv/telegramgallery/o;->L:Ljava/lang/Runnable;

    return-object p1
.end method

.method private e1(F)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/tangxiaolv/telegramgallery/o;->R:Lcom/tangxiaolv/telegramgallery/k;

    invoke-virtual {v0}, Lcom/tangxiaolv/telegramgallery/k;->r()I

    move-result v0

    int-to-float v0, v0

    mul-float v0, v0, p1

    invoke-direct {p0}, Lcom/tangxiaolv/telegramgallery/o;->A0()I

    move-result v1

    int-to-float v1, v1

    sub-float/2addr v0, v1

    float-to-int v0, v0

    div-int/lit8 v0, v0, 0x2

    .line 2
    iget-object v1, p0, Lcom/tangxiaolv/telegramgallery/o;->R:Lcom/tangxiaolv/telegramgallery/k;

    invoke-virtual {v1}, Lcom/tangxiaolv/telegramgallery/k;->p()I

    move-result v1

    int-to-float v1, v1

    mul-float v1, v1, p1

    invoke-direct {p0}, Lcom/tangxiaolv/telegramgallery/o;->y0()I

    move-result p1

    int-to-float p1, p1

    sub-float/2addr v1, p1

    float-to-int p1, v1

    div-int/lit8 p1, p1, 0x2

    const/4 v1, 0x0

    if-lez v0, :cond_0

    neg-int v2, v0

    int-to-float v2, v2

    .line 3
    iput v2, p0, Lcom/tangxiaolv/telegramgallery/o;->b3:F

    int-to-float v0, v0

    .line 4
    iput v0, p0, Lcom/tangxiaolv/telegramgallery/o;->c3:F

    goto :goto_0

    .line 5
    :cond_0
    iput v1, p0, Lcom/tangxiaolv/telegramgallery/o;->c3:F

    iput v1, p0, Lcom/tangxiaolv/telegramgallery/o;->b3:F

    :goto_0
    if-lez p1, :cond_1

    neg-int v0, p1

    int-to-float v0, v0

    .line 6
    iput v0, p0, Lcom/tangxiaolv/telegramgallery/o;->d3:F

    int-to-float p1, p1

    .line 7
    iput p1, p0, Lcom/tangxiaolv/telegramgallery/o;->e3:F

    goto :goto_1

    .line 8
    :cond_1
    iput v1, p0, Lcom/tangxiaolv/telegramgallery/o;->e3:F

    iput v1, p0, Lcom/tangxiaolv/telegramgallery/o;->d3:F

    .line 9
    :goto_1
    iget p1, p0, Lcom/tangxiaolv/telegramgallery/o;->P:I

    const/4 v0, 0x1

    if-ne p1, v0, :cond_2

    .line 10
    iget p1, p0, Lcom/tangxiaolv/telegramgallery/o;->c3:F

    iget-object v0, p0, Lcom/tangxiaolv/telegramgallery/o;->u:Lcom/tangxiaolv/telegramgallery/Components/d;

    invoke-virtual {v0}, Lcom/tangxiaolv/telegramgallery/Components/d;->getLimitX()F

    move-result v0

    add-float/2addr p1, v0

    iput p1, p0, Lcom/tangxiaolv/telegramgallery/o;->c3:F

    .line 11
    iget p1, p0, Lcom/tangxiaolv/telegramgallery/o;->e3:F

    iget-object v0, p0, Lcom/tangxiaolv/telegramgallery/o;->u:Lcom/tangxiaolv/telegramgallery/Components/d;

    invoke-virtual {v0}, Lcom/tangxiaolv/telegramgallery/Components/d;->getLimitY()F

    move-result v0

    add-float/2addr p1, v0

    iput p1, p0, Lcom/tangxiaolv/telegramgallery/o;->e3:F

    .line 12
    iget p1, p0, Lcom/tangxiaolv/telegramgallery/o;->b3:F

    iget-object v0, p0, Lcom/tangxiaolv/telegramgallery/o;->u:Lcom/tangxiaolv/telegramgallery/Components/d;

    invoke-virtual {v0}, Lcom/tangxiaolv/telegramgallery/Components/d;->getLimitWidth()F

    move-result v0

    sub-float/2addr p1, v0

    iput p1, p0, Lcom/tangxiaolv/telegramgallery/o;->b3:F

    .line 13
    iget p1, p0, Lcom/tangxiaolv/telegramgallery/o;->d3:F

    iget-object v0, p0, Lcom/tangxiaolv/telegramgallery/o;->u:Lcom/tangxiaolv/telegramgallery/Components/d;

    invoke-virtual {v0}, Lcom/tangxiaolv/telegramgallery/Components/d;->getLimitHeight()F

    move-result v0

    sub-float/2addr p1, v0

    iput p1, p0, Lcom/tangxiaolv/telegramgallery/o;->d3:F

    :cond_2
    return-void
.end method

.method static synthetic f(Lcom/tangxiaolv/telegramgallery/o;)I
    .locals 0

    iget p0, p0, Lcom/tangxiaolv/telegramgallery/o;->T:I

    return p0
.end method

.method static synthetic f0(Lcom/tangxiaolv/telegramgallery/o;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/tangxiaolv/telegramgallery/o;->O:Z

    return p1
.end method

.method private f1()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/tangxiaolv/telegramgallery/o;->b:Lcom/tangxiaolv/telegramgallery/o$b0;

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object v1, p0, Lcom/tangxiaolv/telegramgallery/o;->o:Lcom/tangxiaolv/telegramgallery/Components/h;

    invoke-interface {v0}, Lcom/tangxiaolv/telegramgallery/o$b0;->d()I

    move-result v0

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Lcom/tangxiaolv/telegramgallery/Components/h;->a(IZ)V

    return-void
.end method

.method static synthetic g(Lcom/tangxiaolv/telegramgallery/o;)Lcom/tangxiaolv/telegramgallery/Components/b;
    .locals 0

    iget-object p0, p0, Lcom/tangxiaolv/telegramgallery/o;->n:Lcom/tangxiaolv/telegramgallery/Components/b;

    return-object p0
.end method

.method static synthetic g0(Lcom/tangxiaolv/telegramgallery/o;Lcom/tangxiaolv/telegramgallery/o$c0;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/tangxiaolv/telegramgallery/o;->O0(Lcom/tangxiaolv/telegramgallery/o$c0;)V

    return-void
.end method

.method static synthetic h0(Lcom/tangxiaolv/telegramgallery/o;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/tangxiaolv/telegramgallery/o;->U0(I)V

    return-void
.end method

.method static synthetic i(Lcom/tangxiaolv/telegramgallery/o;)Lcom/tangxiaolv/telegramgallery/Components/h;
    .locals 0

    iget-object p0, p0, Lcom/tangxiaolv/telegramgallery/o;->o:Lcom/tangxiaolv/telegramgallery/Components/h;

    return-object p0
.end method

.method static synthetic i0(Lcom/tangxiaolv/telegramgallery/o;Landroid/graphics/Canvas;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/tangxiaolv/telegramgallery/o;->L0(Landroid/graphics/Canvas;)V

    return-void
.end method

.method static synthetic j(Lcom/tangxiaolv/telegramgallery/o;)V
    .locals 0

    invoke-direct {p0}, Lcom/tangxiaolv/telegramgallery/o;->f1()V

    return-void
.end method

.method static synthetic j0(Lcom/tangxiaolv/telegramgallery/o;)Lcom/tangxiaolv/telegramgallery/Components/AspectRatioFrameLayout;
    .locals 0

    iget-object p0, p0, Lcom/tangxiaolv/telegramgallery/o;->A:Lcom/tangxiaolv/telegramgallery/Components/AspectRatioFrameLayout;

    return-object p0
.end method

.method static synthetic k(Lcom/tangxiaolv/telegramgallery/o;)Lcom/tangxiaolv/telegramgallery/TL/d;
    .locals 0

    iget-object p0, p0, Lcom/tangxiaolv/telegramgallery/o;->U:Lcom/tangxiaolv/telegramgallery/TL/d;

    return-object p0
.end method

.method static synthetic k0(Lcom/tangxiaolv/telegramgallery/o;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/tangxiaolv/telegramgallery/o;->b1:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic l(Lcom/tangxiaolv/telegramgallery/o;)I
    .locals 0

    iget p0, p0, Lcom/tangxiaolv/telegramgallery/o;->p1:I

    return p0
.end method

.method static synthetic l0(Lcom/tangxiaolv/telegramgallery/o;)Lcom/tangxiaolv/telegramgallery/GalleryActivity;
    .locals 0

    iget-object p0, p0, Lcom/tangxiaolv/telegramgallery/o;->d:Lcom/tangxiaolv/telegramgallery/GalleryActivity;

    return-object p0
.end method

.method static synthetic m(Lcom/tangxiaolv/telegramgallery/o;)I
    .locals 0

    iget p0, p0, Lcom/tangxiaolv/telegramgallery/o;->P:I

    return p0
.end method

.method private m0(FFFZ)V
    .locals 6

    const/16 v5, 0xfa

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    invoke-direct/range {v0 .. v5}, Lcom/tangxiaolv/telegramgallery/o;->n0(FFFZI)V

    return-void
.end method

.method static synthetic n(Lcom/tangxiaolv/telegramgallery/o;I)I
    .locals 0

    iput p1, p0, Lcom/tangxiaolv/telegramgallery/o;->P:I

    return p1
.end method

.method private n0(FFFZI)V
    .locals 1

    .line 1
    iget v0, p0, Lcom/tangxiaolv/telegramgallery/o;->I2:F

    cmpl-float v0, v0, p1

    if-nez v0, :cond_0

    iget v0, p0, Lcom/tangxiaolv/telegramgallery/o;->G2:F

    cmpl-float v0, v0, p2

    if-nez v0, :cond_0

    iget v0, p0, Lcom/tangxiaolv/telegramgallery/o;->H2:F

    cmpl-float v0, v0, p3

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    iput-boolean p4, p0, Lcom/tangxiaolv/telegramgallery/o;->m3:Z

    .line 3
    iput p1, p0, Lcom/tangxiaolv/telegramgallery/o;->L2:F

    .line 4
    iput p2, p0, Lcom/tangxiaolv/telegramgallery/o;->J2:F

    .line 5
    iput p3, p0, Lcom/tangxiaolv/telegramgallery/o;->K2:F

    .line 6
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p1

    iput-wide p1, p0, Lcom/tangxiaolv/telegramgallery/o;->O2:J

    .line 7
    new-instance p1, Landroid/animation/AnimatorSet;

    invoke-direct {p1}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object p1, p0, Lcom/tangxiaolv/telegramgallery/o;->P2:Landroid/animation/AnimatorSet;

    const/4 p2, 0x1

    new-array p2, p2, [Landroid/animation/Animator;

    const/4 p3, 0x0

    const/4 p4, 0x2

    new-array p4, p4, [F

    .line 8
    fill-array-data p4, :array_0

    const-string v0, "animationValue"

    .line 9
    invoke-static {p0, v0, p4}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object p4

    aput-object p4, p2, p3

    .line 10
    invoke-virtual {p1, p2}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 11
    iget-object p1, p0, Lcom/tangxiaolv/telegramgallery/o;->P2:Landroid/animation/AnimatorSet;

    iget-object p2, p0, Lcom/tangxiaolv/telegramgallery/o;->S2:Landroid/view/animation/DecelerateInterpolator;

    invoke-virtual {p1, p2}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 12
    iget-object p1, p0, Lcom/tangxiaolv/telegramgallery/o;->P2:Landroid/animation/AnimatorSet;

    int-to-long p2, p5

    invoke-virtual {p1, p2, p3}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 13
    iget-object p1, p0, Lcom/tangxiaolv/telegramgallery/o;->P2:Landroid/animation/AnimatorSet;

    new-instance p2, Lcom/tangxiaolv/telegramgallery/o$n;

    invoke-direct {p2, p0}, Lcom/tangxiaolv/telegramgallery/o$n;-><init>(Lcom/tangxiaolv/telegramgallery/o;)V

    invoke-virtual {p1, p2}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 14
    iget-object p1, p0, Lcom/tangxiaolv/telegramgallery/o;->P2:Landroid/animation/AnimatorSet;

    invoke-virtual {p1}, Landroid/animation/AnimatorSet;->start()V

    return-void

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method static synthetic o(Lcom/tangxiaolv/telegramgallery/o;)Lcom/tangxiaolv/telegramgallery/Components/d;
    .locals 0

    iget-object p0, p0, Lcom/tangxiaolv/telegramgallery/o;->u:Lcom/tangxiaolv/telegramgallery/Components/d;

    return-object p0
.end method

.method private o0()V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/tangxiaolv/telegramgallery/o;->p0(Landroid/graphics/Bitmap;)V

    return-void
.end method

.method static synthetic p(Lcom/tangxiaolv/telegramgallery/o;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/tangxiaolv/telegramgallery/o;->b1(I)V

    return-void
.end method

.method static synthetic q(Lcom/tangxiaolv/telegramgallery/o;)I
    .locals 0

    invoke-direct {p0}, Lcom/tangxiaolv/telegramgallery/o;->A0()I

    move-result p0

    return p0
.end method

.method private q0()Z
    .locals 6

    .line 1
    iget v0, p0, Lcom/tangxiaolv/telegramgallery/o;->J:I

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 2
    iget-wide v2, p0, Lcom/tangxiaolv/telegramgallery/o;->K:J

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    sub-long/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/Math;->abs(J)J

    move-result-wide v2

    const-wide/16 v4, 0x1f4

    cmp-long v0, v2, v4

    if-ltz v0, :cond_1

    .line 3
    iget-object v0, p0, Lcom/tangxiaolv/telegramgallery/o;->L:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    .line 4
    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    const/4 v0, 0x0

    .line 5
    iput-object v0, p0, Lcom/tangxiaolv/telegramgallery/o;->L:Ljava/lang/Runnable;

    .line 6
    :cond_0
    iput v1, p0, Lcom/tangxiaolv/telegramgallery/o;->J:I

    .line 7
    :cond_1
    iget v0, p0, Lcom/tangxiaolv/telegramgallery/o;->J:I

    if-eqz v0, :cond_2

    const/4 v1, 0x1

    :cond_2
    return v1
.end method

.method static synthetic r(Lcom/tangxiaolv/telegramgallery/o;)Landroid/animation/AnimatorSet;
    .locals 0

    iget-object p0, p0, Lcom/tangxiaolv/telegramgallery/o;->P2:Landroid/animation/AnimatorSet;

    return-object p0
.end method

.method private r0(Z)V
    .locals 5

    .line 1
    iget v0, p0, Lcom/tangxiaolv/telegramgallery/o;->G2:F

    .line 2
    iget v1, p0, Lcom/tangxiaolv/telegramgallery/o;->H2:F

    .line 3
    iget v2, p0, Lcom/tangxiaolv/telegramgallery/o;->I2:F

    invoke-direct {p0, v2}, Lcom/tangxiaolv/telegramgallery/o;->e1(F)V

    .line 4
    iget v2, p0, Lcom/tangxiaolv/telegramgallery/o;->G2:F

    iget v3, p0, Lcom/tangxiaolv/telegramgallery/o;->b3:F

    cmpg-float v4, v2, v3

    if-gez v4, :cond_0

    :goto_0
    move v0, v3

    goto :goto_1

    .line 5
    :cond_0
    iget v3, p0, Lcom/tangxiaolv/telegramgallery/o;->c3:F

    cmpl-float v2, v2, v3

    if-lez v2, :cond_1

    goto :goto_0

    .line 6
    :cond_1
    :goto_1
    iget v2, p0, Lcom/tangxiaolv/telegramgallery/o;->H2:F

    iget v3, p0, Lcom/tangxiaolv/telegramgallery/o;->d3:F

    cmpg-float v4, v2, v3

    if-gez v4, :cond_2

    :goto_2
    move v1, v3

    goto :goto_3

    .line 7
    :cond_2
    iget v3, p0, Lcom/tangxiaolv/telegramgallery/o;->e3:F

    cmpl-float v2, v2, v3

    if-lez v2, :cond_3

    goto :goto_2

    .line 8
    :cond_3
    :goto_3
    iget v2, p0, Lcom/tangxiaolv/telegramgallery/o;->I2:F

    invoke-direct {p0, v2, v0, v1, p1}, Lcom/tangxiaolv/telegramgallery/o;->m0(FFFZ)V

    return-void
.end method

.method static synthetic s(Lcom/tangxiaolv/telegramgallery/o;Landroid/animation/AnimatorSet;)Landroid/animation/AnimatorSet;
    .locals 0

    iput-object p1, p0, Lcom/tangxiaolv/telegramgallery/o;->P2:Landroid/animation/AnimatorSet;

    return-object p1
.end method

.method private s0(IZ)V
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/tangxiaolv/telegramgallery/o;->V:[Ljava/lang/String;

    aget-object v0, v0, p1

    const/4 v1, -0x1

    if-eqz v0, :cond_9

    .line 2
    iget v0, p0, Lcom/tangxiaolv/telegramgallery/o;->T:I

    const/4 v2, 0x1

    if-ne p1, v2, :cond_0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v3, 0x2

    if-ne p1, v3, :cond_1

    add-int/lit8 v0, v0, -0x1

    :cond_1
    :goto_0
    const/4 v3, 0x0

    .line 3
    iget-object v4, p0, Lcom/tangxiaolv/telegramgallery/o;->U:Lcom/tangxiaolv/telegramgallery/TL/d;

    const/4 v5, 0x0

    if-eqz v4, :cond_3

    .line 4
    iget-object v3, p0, Lcom/tangxiaolv/telegramgallery/o;->r3:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tangxiaolv/telegramgallery/TL/d;

    .line 5
    iget v3, p0, Lcom/tangxiaolv/telegramgallery/o;->p1:I

    if-eqz v3, :cond_2

    const/4 v3, 0x1

    goto :goto_1

    :cond_2
    const/4 v3, 0x0

    :goto_1
    invoke-static {v0, v3}, Lcom/tangxiaolv/telegramgallery/Utils/d;->G(Lcom/tangxiaolv/telegramgallery/TL/m;Z)Ljava/io/File;

    move-result-object v3

    goto :goto_2

    .line 6
    :cond_3
    iget-object v0, p0, Lcom/tangxiaolv/telegramgallery/o;->b1:Ljava/lang/String;

    if-eqz v0, :cond_4

    .line 7
    new-instance v3, Ljava/io/File;

    invoke-static {}, Lcom/tangxiaolv/telegramgallery/Utils/d;->D()Lcom/tangxiaolv/telegramgallery/Utils/d;

    move-result-object v0

    const/4 v4, 0x3

    invoke-virtual {v0, v4}, Lcom/tangxiaolv/telegramgallery/Utils/d;->z(I)Ljava/io/File;

    move-result-object v0

    iget-object v4, p0, Lcom/tangxiaolv/telegramgallery/o;->V:[Ljava/lang/String;

    aget-object v4, v4, p1

    invoke-direct {v3, v0, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 8
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_4

    .line 9
    new-instance v3, Ljava/io/File;

    invoke-static {}, Lcom/tangxiaolv/telegramgallery/Utils/d;->D()Lcom/tangxiaolv/telegramgallery/Utils/d;

    move-result-object v0

    const/4 v4, 0x4

    invoke-virtual {v0, v4}, Lcom/tangxiaolv/telegramgallery/Utils/d;->z(I)Ljava/io/File;

    move-result-object v0

    iget-object v4, p0, Lcom/tangxiaolv/telegramgallery/o;->V:[Ljava/lang/String;

    aget-object v4, v4, p1

    invoke-direct {v3, v0, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    :cond_4
    :goto_2
    if-eqz v3, :cond_5

    .line 10
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 11
    iget-object v0, p0, Lcom/tangxiaolv/telegramgallery/o;->q:[Lcom/tangxiaolv/telegramgallery/o$e0;

    aget-object v0, v0, p1

    invoke-virtual {v0, v1, p2}, Lcom/tangxiaolv/telegramgallery/o$e0;->d(IZ)V

    goto :goto_3

    .line 12
    :cond_5
    iget-object v0, p0, Lcom/tangxiaolv/telegramgallery/o;->q:[Lcom/tangxiaolv/telegramgallery/o$e0;

    aget-object v0, v0, p1

    invoke-virtual {v0, v5, p2}, Lcom/tangxiaolv/telegramgallery/o$e0;->d(IZ)V

    .line 13
    invoke-static {}, Lcom/tangxiaolv/telegramgallery/Utils/e;->T()Lcom/tangxiaolv/telegramgallery/Utils/e;

    move-result-object p2

    iget-object v0, p0, Lcom/tangxiaolv/telegramgallery/o;->V:[Ljava/lang/String;

    aget-object v0, v0, p1

    invoke-virtual {p2, v0}, Lcom/tangxiaolv/telegramgallery/Utils/e;->P(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object p2

    if-nez p2, :cond_6

    const/4 p2, 0x0

    .line 14
    invoke-static {p2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p2

    .line 15
    :cond_6
    iget-object v0, p0, Lcom/tangxiaolv/telegramgallery/o;->q:[Lcom/tangxiaolv/telegramgallery/o$e0;

    aget-object v0, v0, p1

    invoke-virtual {p2}, Ljava/lang/Float;->floatValue()F

    move-result p2

    invoke-virtual {v0, p2, v5}, Lcom/tangxiaolv/telegramgallery/o$e0;->e(FZ)V

    :goto_3
    if-nez p1, :cond_a

    .line 16
    iget-object p1, p0, Lcom/tangxiaolv/telegramgallery/o;->u3:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_8

    iget-object p1, p0, Lcom/tangxiaolv/telegramgallery/o;->V:[Ljava/lang/String;

    aget-object p1, p1, v5

    if-eqz p1, :cond_7

    iget-object p1, p0, Lcom/tangxiaolv/telegramgallery/o;->q:[Lcom/tangxiaolv/telegramgallery/o$e0;

    aget-object p1, p1, v5

    .line 17
    invoke-static {p1}, Lcom/tangxiaolv/telegramgallery/o$e0;->a(Lcom/tangxiaolv/telegramgallery/o$e0;)I

    move-result p1

    if-eqz p1, :cond_7

    goto :goto_4

    :cond_7
    const/4 v2, 0x0

    :cond_8
    :goto_4
    iput-boolean v2, p0, Lcom/tangxiaolv/telegramgallery/o;->f3:Z

    goto :goto_5

    .line 18
    :cond_9
    iget-object v0, p0, Lcom/tangxiaolv/telegramgallery/o;->q:[Lcom/tangxiaolv/telegramgallery/o$e0;

    aget-object p1, v0, p1

    invoke-virtual {p1, v1, p2}, Lcom/tangxiaolv/telegramgallery/o$e0;->d(IZ)V

    :cond_a
    :goto_5
    return-void
.end method

.method static synthetic t(Lcom/tangxiaolv/telegramgallery/o;)V
    .locals 0

    invoke-direct {p0}, Lcom/tangxiaolv/telegramgallery/o;->o0()V

    return-void
.end method

.method static synthetic u(Lcom/tangxiaolv/telegramgallery/o;)Lcom/tangxiaolv/telegramgallery/k;
    .locals 0

    iget-object p0, p0, Lcom/tangxiaolv/telegramgallery/o;->R:Lcom/tangxiaolv/telegramgallery/k;

    return-object p0
.end method

.method static synthetic v(Lcom/tangxiaolv/telegramgallery/o;)Lcom/tangxiaolv/telegramgallery/o$z;
    .locals 0

    iget-object p0, p0, Lcom/tangxiaolv/telegramgallery/o;->i:Lcom/tangxiaolv/telegramgallery/o$z;

    return-object p0
.end method

.method private v0()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/tangxiaolv/telegramgallery/o;->P:I

    if-eqz v0, :cond_0

    const/high16 v0, 0x41600000    # 14.0f

    .line 2
    invoke-static {v0}, Lcom/tangxiaolv/telegramgallery/Utils/a;->g(F)I

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method static synthetic w(Lcom/tangxiaolv/telegramgallery/o;Landroid/app/AlertDialog;)Landroid/app/AlertDialog;
    .locals 0

    iput-object p1, p0, Lcom/tangxiaolv/telegramgallery/o;->v:Landroid/app/AlertDialog;

    return-object p1
.end method

.method private w0()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/tangxiaolv/telegramgallery/o;->P:I

    if-eqz v0, :cond_0

    const/high16 v0, 0x41600000    # 14.0f

    .line 2
    invoke-static {v0}, Lcom/tangxiaolv/telegramgallery/Utils/a;->g(F)I

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method static synthetic x(Lcom/tangxiaolv/telegramgallery/o;)Lcom/tangxiaolv/telegramgallery/Components/h;
    .locals 0

    iget-object p0, p0, Lcom/tangxiaolv/telegramgallery/o;->p:Lcom/tangxiaolv/telegramgallery/Components/h;

    return-object p0
.end method

.method static synthetic y(Lcom/tangxiaolv/telegramgallery/o;F)F
    .locals 0

    iput p1, p0, Lcom/tangxiaolv/telegramgallery/o;->L2:F

    return p1
.end method

.method private y0()I
    .locals 1

    iget v0, p0, Lcom/tangxiaolv/telegramgallery/o;->P:I

    invoke-direct {p0, v0}, Lcom/tangxiaolv/telegramgallery/o;->z0(I)I

    move-result v0

    return v0
.end method

.method static synthetic z(Lcom/tangxiaolv/telegramgallery/o;F)F
    .locals 0

    iput p1, p0, Lcom/tangxiaolv/telegramgallery/o;->J2:F

    return p1
.end method

.method private z0(I)I
    .locals 2

    .line 1
    sget-object v0, Lcom/tangxiaolv/telegramgallery/Utils/a;->d:Landroid/graphics/Point;

    iget v0, v0, Landroid/graphics/Point;->y:I

    sget v1, Lcom/tangxiaolv/telegramgallery/Utils/a;->b:I

    sub-int/2addr v0, v1

    const/4 v1, 0x1

    if-ne p1, v1, :cond_0

    const/high16 p1, 0x42980000    # 76.0f

    .line 2
    invoke-static {p1}, Lcom/tangxiaolv/telegramgallery/Utils/a;->g(F)I

    move-result p1

    :goto_0
    sub-int/2addr v0, p1

    goto :goto_1

    :cond_0
    const/4 v1, 0x2

    if-ne p1, v1, :cond_1

    const/high16 p1, 0x431a0000    # 154.0f

    .line 3
    invoke-static {p1}, Lcom/tangxiaolv/telegramgallery/Utils/a;->g(F)I

    move-result p1

    goto :goto_0

    :cond_1
    :goto_1
    return v0
.end method


# virtual methods
.method public H0(Lcom/tangxiaolv/telegramgallery/TL/d;)Z
    .locals 6

    iget-boolean v0, p0, Lcom/tangxiaolv/telegramgallery/o;->c:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/tangxiaolv/telegramgallery/o;->O:Z

    if-nez v0, :cond_0

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/tangxiaolv/telegramgallery/o;->U:Lcom/tangxiaolv/telegramgallery/TL/d;

    if-eqz v0, :cond_0

    iget v1, p1, Lcom/tangxiaolv/telegramgallery/TL/d;->e:I

    iget v2, v0, Lcom/tangxiaolv/telegramgallery/TL/d;->e:I

    if-ne v1, v2, :cond_0

    iget-wide v1, p1, Lcom/tangxiaolv/telegramgallery/TL/d;->d:J

    iget-wide v3, v0, Lcom/tangxiaolv/telegramgallery/TL/d;->d:J

    cmp-long v5, v1, v3

    if-nez v5, :cond_0

    iget p1, p1, Lcom/tangxiaolv/telegramgallery/TL/d;->c:I

    iget v0, v0, Lcom/tangxiaolv/telegramgallery/TL/d;->c:I

    if-ne p1, v0, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public I0(Ljava/lang/String;)Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/tangxiaolv/telegramgallery/o;->c:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/tangxiaolv/telegramgallery/o;->O:Z

    if-nez v0, :cond_0

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/tangxiaolv/telegramgallery/o;->b1:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public J0()Z
    .locals 1

    iget-boolean v0, p0, Lcom/tangxiaolv/telegramgallery/o;->c:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tangxiaolv/telegramgallery/o;->b:Lcom/tangxiaolv/telegramgallery/o$b0;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public N0()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/tangxiaolv/telegramgallery/o;->z:Lcom/tangxiaolv/telegramgallery/AnimatedFileDrawable;

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 2
    invoke-virtual {p0, v0, v0}, Lcom/tangxiaolv/telegramgallery/o;->t0(ZZ)V

    :cond_0
    return-void
.end method

.method public Q0()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/tangxiaolv/telegramgallery/o;->U0(I)V

    return-void
.end method

.method public S0(Lcom/tangxiaolv/telegramgallery/TL/d;Ljava/util/List;ILcom/tangxiaolv/telegramgallery/o$b0;JJ)V
    .locals 17
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/tangxiaolv/telegramgallery/TL/d;",
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;I",
            "Lcom/tangxiaolv/telegramgallery/o$b0;",
            "JJ)V"
        }
    .end annotation

    move-object/from16 v1, p0

    move-object/from16 v0, p1

    move-object/from16 v2, p2

    move/from16 v3, p3

    move-object/from16 v4, p4

    .line 1
    iget-object v5, v1, Lcom/tangxiaolv/telegramgallery/o;->d:Lcom/tangxiaolv/telegramgallery/GalleryActivity;

    if-eqz v5, :cond_b

    iget-boolean v5, v1, Lcom/tangxiaolv/telegramgallery/o;->c:Z

    if-nez v5, :cond_b

    if-nez v4, :cond_0

    invoke-direct/range {p0 .. p0}, Lcom/tangxiaolv/telegramgallery/o;->q0()Z

    move-result v5

    if-nez v5, :cond_b

    :cond_0
    if-nez v0, :cond_1

    if-nez v2, :cond_1

    goto/16 :goto_2

    .line 2
    :cond_1
    invoke-interface {v4, v0, v3}, Lcom/tangxiaolv/telegramgallery/o$b0;->o(Lcom/tangxiaolv/telegramgallery/TL/d;I)Lcom/tangxiaolv/telegramgallery/o$c0;

    move-result-object v5

    if-nez v5, :cond_2

    if-nez v2, :cond_2

    return-void

    .line 3
    :cond_2
    iget-object v6, v1, Lcom/tangxiaolv/telegramgallery/o;->d:Lcom/tangxiaolv/telegramgallery/GalleryActivity;

    const-string v7, "window"

    invoke-virtual {v6, v7}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/view/WindowManager;

    .line 4
    iget-object v7, v1, Lcom/tangxiaolv/telegramgallery/o;->j:Lcom/tangxiaolv/telegramgallery/o$a0;

    invoke-static {v7}, Lcom/tangxiaolv/telegramgallery/o$a0;->a(Lcom/tangxiaolv/telegramgallery/o$a0;)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 5
    :try_start_0
    iget-object v7, v1, Lcom/tangxiaolv/telegramgallery/o;->j:Lcom/tangxiaolv/telegramgallery/o$a0;

    invoke-interface {v6, v7}, Landroid/view/WindowManager;->removeView(Landroid/view/View;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 6
    :catch_0
    :cond_3
    :try_start_1
    iget-object v7, v1, Lcom/tangxiaolv/telegramgallery/o;->h:Landroid/view/WindowManager$LayoutParams;

    const/16 v8, 0x63

    iput v8, v7, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v8, 0x8

    .line 7
    iput v8, v7, Landroid/view/WindowManager$LayoutParams;->flags:I

    const/4 v8, 0x0

    .line 8
    iput v8, v7, Landroid/view/WindowManager$LayoutParams;->softInputMode:I

    .line 9
    iget-object v7, v1, Lcom/tangxiaolv/telegramgallery/o;->j:Lcom/tangxiaolv/telegramgallery/o$a0;

    invoke-virtual {v7, v8}, Landroid/widget/FrameLayout;->setFocusable(Z)V

    .line 10
    iget-object v7, v1, Lcom/tangxiaolv/telegramgallery/o;->i:Lcom/tangxiaolv/telegramgallery/o$z;

    invoke-virtual {v7, v8}, Landroid/widget/FrameLayout;->setFocusable(Z)V

    .line 11
    iget-object v7, v1, Lcom/tangxiaolv/telegramgallery/o;->j:Lcom/tangxiaolv/telegramgallery/o$a0;

    iget-object v9, v1, Lcom/tangxiaolv/telegramgallery/o;->h:Landroid/view/WindowManager$LayoutParams;

    invoke-interface {v6, v7, v9}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 12
    iget-object v7, v1, Lcom/tangxiaolv/telegramgallery/o;->f:Lcom/tangxiaolv/telegramgallery/Actionbar/a;

    iget-object v9, v1, Lcom/tangxiaolv/telegramgallery/o;->e:Landroid/content/Context;

    sget v10, Lcom/tangxiaolv/telegramgallery/q$o;->o:I

    const/4 v11, 0x2

    new-array v12, v11, [Ljava/lang/Object;

    const/4 v13, 0x1

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    aput-object v14, v12, v8

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    aput-object v14, v12, v13

    invoke-virtual {v9, v10, v12}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v9}, Lcom/tangxiaolv/telegramgallery/Actionbar/a;->setTitle(Ljava/lang/CharSequence;)V

    .line 13
    invoke-static {}, Lcom/tangxiaolv/telegramgallery/Utils/h;->b()Lcom/tangxiaolv/telegramgallery/Utils/h;

    move-result-object v7

    sget v9, Lcom/tangxiaolv/telegramgallery/Utils/h;->C:I

    invoke-virtual {v7, v1, v9}, Lcom/tangxiaolv/telegramgallery/Utils/h;->a(Ljava/lang/Object;I)V

    .line 14
    invoke-static {}, Lcom/tangxiaolv/telegramgallery/Utils/h;->b()Lcom/tangxiaolv/telegramgallery/Utils/h;

    move-result-object v7

    sget v9, Lcom/tangxiaolv/telegramgallery/Utils/h;->B:I

    invoke-virtual {v7, v1, v9}, Lcom/tangxiaolv/telegramgallery/Utils/h;->a(Ljava/lang/Object;I)V

    .line 15
    invoke-static {}, Lcom/tangxiaolv/telegramgallery/Utils/h;->b()Lcom/tangxiaolv/telegramgallery/Utils/h;

    move-result-object v7

    sget v9, Lcom/tangxiaolv/telegramgallery/Utils/h;->A:I

    invoke-virtual {v7, v1, v9}, Lcom/tangxiaolv/telegramgallery/Utils/h;->a(Ljava/lang/Object;I)V

    .line 16
    invoke-static {}, Lcom/tangxiaolv/telegramgallery/Utils/h;->b()Lcom/tangxiaolv/telegramgallery/Utils/h;

    move-result-object v7

    sget v9, Lcom/tangxiaolv/telegramgallery/Utils/h;->n:I

    invoke-virtual {v7, v1, v9}, Lcom/tangxiaolv/telegramgallery/Utils/h;->a(Ljava/lang/Object;I)V

    .line 17
    invoke-static {}, Lcom/tangxiaolv/telegramgallery/Utils/h;->b()Lcom/tangxiaolv/telegramgallery/Utils/h;

    move-result-object v7

    sget v9, Lcom/tangxiaolv/telegramgallery/Utils/h;->m:I

    invoke-virtual {v7, v1, v9}, Lcom/tangxiaolv/telegramgallery/Utils/h;->a(Ljava/lang/Object;I)V

    .line 18
    invoke-static {}, Lcom/tangxiaolv/telegramgallery/Utils/h;->b()Lcom/tangxiaolv/telegramgallery/Utils/h;

    move-result-object v7

    sget v9, Lcom/tangxiaolv/telegramgallery/Utils/h;->o:I

    invoke-virtual {v7, v1, v9}, Lcom/tangxiaolv/telegramgallery/Utils/h;->a(Ljava/lang/Object;I)V

    .line 19
    invoke-static {}, Lcom/tangxiaolv/telegramgallery/Utils/h;->b()Lcom/tangxiaolv/telegramgallery/Utils/h;

    move-result-object v7

    sget v9, Lcom/tangxiaolv/telegramgallery/Utils/h;->w:I

    invoke-virtual {v7, v1, v9}, Lcom/tangxiaolv/telegramgallery/Utils/h;->a(Ljava/lang/Object;I)V

    .line 20
    iput-object v4, v1, Lcom/tangxiaolv/telegramgallery/o;->b:Lcom/tangxiaolv/telegramgallery/o$b0;

    move-wide/from16 v9, p7

    .line 21
    iput-wide v9, v1, Lcom/tangxiaolv/telegramgallery/o;->y1:J

    move-wide/from16 v9, p5

    .line 22
    iput-wide v9, v1, Lcom/tangxiaolv/telegramgallery/o;->x1:J

    .line 23
    iget-object v4, v1, Lcom/tangxiaolv/telegramgallery/o;->p3:Landroid/view/VelocityTracker;

    if-nez v4, :cond_4

    .line 24
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v4

    iput-object v4, v1, Lcom/tangxiaolv/telegramgallery/o;->p3:Landroid/view/VelocityTracker;

    .line 25
    :cond_4
    iput-boolean v13, v1, Lcom/tangxiaolv/telegramgallery/o;->c:Z

    .line 26
    invoke-direct {v1, v13, v8}, Lcom/tangxiaolv/telegramgallery/o;->c1(ZZ)V

    const/high16 v4, 0x3f800000    # 1.0f

    if-eqz v5, :cond_9

    .line 27
    iput-boolean v13, v1, Lcom/tangxiaolv/telegramgallery/o;->O:Z

    .line 28
    iput v13, v1, Lcom/tangxiaolv/telegramgallery/o;->J:I

    .line 29
    invoke-direct {v1, v0, v2, v3, v5}, Lcom/tangxiaolv/telegramgallery/o;->P0(Lcom/tangxiaolv/telegramgallery/TL/d;Ljava/util/List;ILcom/tangxiaolv/telegramgallery/o$c0;)V

    .line 30
    iget-object v0, v5, Lcom/tangxiaolv/telegramgallery/o$c0;->a:Lcom/tangxiaolv/telegramgallery/k;

    invoke-virtual {v0}, Lcom/tangxiaolv/telegramgallery/k;->l()Landroid/graphics/Rect;

    move-result-object v0

    .line 31
    iget-object v3, v5, Lcom/tangxiaolv/telegramgallery/o$c0;->a:Lcom/tangxiaolv/telegramgallery/k;

    invoke-virtual {v3}, Lcom/tangxiaolv/telegramgallery/k;->x()I

    move-result v3

    .line 32
    iget-object v6, v1, Lcom/tangxiaolv/telegramgallery/o;->k:Lcom/tangxiaolv/telegramgallery/Components/c;

    invoke-virtual {v6, v8}, Landroid/view/View;->setVisibility(I)V

    .line 33
    iget-object v6, v1, Lcom/tangxiaolv/telegramgallery/o;->k:Lcom/tangxiaolv/telegramgallery/Components/c;

    iget v7, v5, Lcom/tangxiaolv/telegramgallery/o$c0;->i:I

    invoke-virtual {v6, v7}, Lcom/tangxiaolv/telegramgallery/Components/c;->setRadius(I)V

    .line 34
    iget-object v6, v1, Lcom/tangxiaolv/telegramgallery/o;->k:Lcom/tangxiaolv/telegramgallery/Components/c;

    invoke-virtual {v6, v3}, Lcom/tangxiaolv/telegramgallery/Components/c;->setOrientation(I)V

    .line 35
    iget-object v3, v1, Lcom/tangxiaolv/telegramgallery/o;->k:Lcom/tangxiaolv/telegramgallery/Components/c;

    iget v6, v5, Lcom/tangxiaolv/telegramgallery/o$c0;->i:I

    if-eqz v6, :cond_5

    const/4 v6, 0x1

    goto :goto_0

    :cond_5
    const/4 v6, 0x0

    :goto_0
    invoke-virtual {v3, v6}, Lcom/tangxiaolv/telegramgallery/Components/c;->setNeedRadius(Z)V

    .line 36
    iget-object v3, v1, Lcom/tangxiaolv/telegramgallery/o;->k:Lcom/tangxiaolv/telegramgallery/Components/c;

    iget-object v6, v5, Lcom/tangxiaolv/telegramgallery/o$c0;->e:Landroid/graphics/Bitmap;

    invoke-virtual {v3, v6}, Lcom/tangxiaolv/telegramgallery/Components/c;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 37
    iget-object v3, v1, Lcom/tangxiaolv/telegramgallery/o;->k:Lcom/tangxiaolv/telegramgallery/Components/c;

    invoke-virtual {v3, v4}, Landroid/view/View;->setAlpha(F)V

    .line 38
    iget-object v3, v1, Lcom/tangxiaolv/telegramgallery/o;->k:Lcom/tangxiaolv/telegramgallery/Components/c;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/view/View;->setPivotX(F)V

    .line 39
    iget-object v3, v1, Lcom/tangxiaolv/telegramgallery/o;->k:Lcom/tangxiaolv/telegramgallery/Components/c;

    invoke-virtual {v3, v4}, Landroid/view/View;->setPivotY(F)V

    .line 40
    iget-object v3, v1, Lcom/tangxiaolv/telegramgallery/o;->k:Lcom/tangxiaolv/telegramgallery/Components/c;

    iget v6, v5, Lcom/tangxiaolv/telegramgallery/o$c0;->l:F

    invoke-virtual {v3, v6}, Landroid/view/View;->setScaleX(F)V

    .line 41
    iget-object v3, v1, Lcom/tangxiaolv/telegramgallery/o;->k:Lcom/tangxiaolv/telegramgallery/Components/c;

    iget v6, v5, Lcom/tangxiaolv/telegramgallery/o$c0;->l:F

    invoke-virtual {v3, v6}, Landroid/view/View;->setScaleY(F)V

    .line 42
    iget-object v3, v1, Lcom/tangxiaolv/telegramgallery/o;->k:Lcom/tangxiaolv/telegramgallery/Components/c;

    iget v6, v5, Lcom/tangxiaolv/telegramgallery/o$c0;->b:I

    int-to-float v6, v6

    iget v7, v0, Landroid/graphics/Rect;->left:I

    int-to-float v7, v7

    iget v9, v5, Lcom/tangxiaolv/telegramgallery/o$c0;->l:F

    mul-float v7, v7, v9

    add-float/2addr v6, v7

    invoke-virtual {v3, v6}, Landroid/view/View;->setTranslationX(F)V

    .line 43
    iget-object v3, v1, Lcom/tangxiaolv/telegramgallery/o;->k:Lcom/tangxiaolv/telegramgallery/Components/c;

    iget v6, v5, Lcom/tangxiaolv/telegramgallery/o$c0;->c:I

    int-to-float v6, v6

    iget v7, v0, Landroid/graphics/Rect;->top:I

    int-to-float v7, v7

    iget v9, v5, Lcom/tangxiaolv/telegramgallery/o$c0;->l:F

    mul-float v7, v7, v9

    add-float/2addr v6, v7

    invoke-virtual {v3, v6}, Landroid/view/View;->setTranslationY(F)V

    .line 44
    iget-object v3, v1, Lcom/tangxiaolv/telegramgallery/o;->k:Lcom/tangxiaolv/telegramgallery/Components/c;

    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    .line 45
    iget v6, v0, Landroid/graphics/Rect;->right:I

    iget v7, v0, Landroid/graphics/Rect;->left:I

    sub-int/2addr v6, v7

    iput v6, v3, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 46
    iget v6, v0, Landroid/graphics/Rect;->bottom:I

    iget v7, v0, Landroid/graphics/Rect;->top:I

    sub-int/2addr v6, v7

    iput v6, v3, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 47
    iget-object v6, v1, Lcom/tangxiaolv/telegramgallery/o;->k:Lcom/tangxiaolv/telegramgallery/Components/c;

    invoke-virtual {v6, v3}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 48
    sget-object v6, Lcom/tangxiaolv/telegramgallery/Utils/a;->d:Landroid/graphics/Point;

    iget v7, v6, Landroid/graphics/Point;->x:I

    int-to-float v7, v7

    iget v9, v3, Landroid/view/ViewGroup$LayoutParams;->width:I

    int-to-float v10, v9

    div-float/2addr v7, v10

    .line 49
    iget v6, v6, Landroid/graphics/Point;->y:I

    sget v10, Lcom/tangxiaolv/telegramgallery/Utils/a;->b:I

    sub-int/2addr v6, v10

    int-to-float v6, v6

    iget v10, v3, Landroid/view/ViewGroup$LayoutParams;->height:I

    int-to-float v12, v10

    div-float/2addr v6, v12

    cmpl-float v12, v7, v6

    if-lez v12, :cond_6

    move v7, v6

    :cond_6
    int-to-float v6, v9

    mul-float v6, v6, v7

    int-to-float v9, v10

    mul-float v9, v9, v7

    .line 50
    sget-object v10, Lcom/tangxiaolv/telegramgallery/Utils/a;->d:Landroid/graphics/Point;

    iget v12, v10, Landroid/graphics/Point;->x:I

    int-to-float v12, v12

    sub-float/2addr v12, v6

    const/high16 v6, 0x40000000    # 2.0f

    div-float/2addr v12, v6

    .line 51
    iget v10, v10, Landroid/graphics/Point;->y:I

    sget v14, Lcom/tangxiaolv/telegramgallery/Utils/a;->b:I

    sub-int/2addr v10, v14

    int-to-float v10, v10

    sub-float/2addr v10, v9

    div-float/2addr v10, v6

    .line 52
    iget v6, v0, Landroid/graphics/Rect;->left:I

    iget-object v9, v5, Lcom/tangxiaolv/telegramgallery/o$c0;->a:Lcom/tangxiaolv/telegramgallery/k;

    invoke-virtual {v9}, Lcom/tangxiaolv/telegramgallery/k;->s()I

    move-result v9

    sub-int/2addr v6, v9

    invoke-static {v6}, Ljava/lang/Math;->abs(I)I

    move-result v6

    .line 53
    iget v9, v0, Landroid/graphics/Rect;->top:I

    iget-object v14, v5, Lcom/tangxiaolv/telegramgallery/o$c0;->a:Lcom/tangxiaolv/telegramgallery/k;

    invoke-virtual {v14}, Lcom/tangxiaolv/telegramgallery/k;->u()I

    move-result v14

    sub-int/2addr v9, v14

    invoke-static {v9}, Ljava/lang/Math;->abs(I)I

    move-result v9

    new-array v14, v11, [I

    .line 54
    iget-object v15, v5, Lcom/tangxiaolv/telegramgallery/o$c0;->d:Landroid/view/View;

    invoke-virtual {v15, v14}, Landroid/view/View;->getLocationInWindow([I)V

    aget v15, v14, v13

    .line 55
    sget v16, Lcom/tangxiaolv/telegramgallery/Utils/a;->b:I

    sub-int v15, v15, v16

    iget v4, v5, Lcom/tangxiaolv/telegramgallery/o$c0;->c:I

    iget v0, v0, Landroid/graphics/Rect;->top:I

    add-int v16, v4, v0

    sub-int v15, v15, v16

    iget v11, v5, Lcom/tangxiaolv/telegramgallery/o$c0;->k:I

    add-int/2addr v15, v11

    if-gez v15, :cond_7

    const/4 v15, 0x0

    :cond_7
    add-int/2addr v4, v0

    .line 56
    iget v0, v3, Landroid/view/ViewGroup$LayoutParams;->height:I

    add-int/2addr v4, v0

    aget v0, v14, v13

    iget-object v3, v5, Lcom/tangxiaolv/telegramgallery/o$c0;->d:Landroid/view/View;

    .line 57
    invoke-virtual {v3}, Landroid/view/View;->getHeight()I

    move-result v3

    add-int/2addr v0, v3

    sget v3, Lcom/tangxiaolv/telegramgallery/Utils/a;->b:I

    sub-int/2addr v0, v3

    sub-int/2addr v4, v0

    iget v0, v5, Lcom/tangxiaolv/telegramgallery/o$c0;->j:I

    add-int/2addr v4, v0

    if-gez v4, :cond_8

    const/4 v4, 0x0

    .line 58
    :cond_8
    invoke-static {v15, v9}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 59
    invoke-static {v4, v9}, Ljava/lang/Math;->max(II)I

    move-result v3

    .line 60
    iget-object v4, v1, Lcom/tangxiaolv/telegramgallery/o;->I:[[F

    aget-object v4, v4, v8

    iget-object v9, v1, Lcom/tangxiaolv/telegramgallery/o;->k:Lcom/tangxiaolv/telegramgallery/Components/c;

    invoke-virtual {v9}, Landroid/view/View;->getScaleX()F

    move-result v9

    aput v9, v4, v8

    .line 61
    iget-object v4, v1, Lcom/tangxiaolv/telegramgallery/o;->I:[[F

    aget-object v4, v4, v8

    iget-object v9, v1, Lcom/tangxiaolv/telegramgallery/o;->k:Lcom/tangxiaolv/telegramgallery/Components/c;

    invoke-virtual {v9}, Landroid/view/View;->getScaleY()F

    move-result v9

    aput v9, v4, v13

    .line 62
    iget-object v4, v1, Lcom/tangxiaolv/telegramgallery/o;->I:[[F

    aget-object v4, v4, v8

    iget-object v9, v1, Lcom/tangxiaolv/telegramgallery/o;->k:Lcom/tangxiaolv/telegramgallery/Components/c;

    invoke-virtual {v9}, Landroid/view/View;->getTranslationX()F

    move-result v9

    const/4 v11, 0x2

    aput v9, v4, v11

    .line 63
    iget-object v4, v1, Lcom/tangxiaolv/telegramgallery/o;->I:[[F

    aget-object v4, v4, v8

    iget-object v9, v1, Lcom/tangxiaolv/telegramgallery/o;->k:Lcom/tangxiaolv/telegramgallery/Components/c;

    invoke-virtual {v9}, Landroid/view/View;->getTranslationY()F

    move-result v9

    const/4 v11, 0x3

    aput v9, v4, v11

    .line 64
    iget-object v4, v1, Lcom/tangxiaolv/telegramgallery/o;->I:[[F

    aget-object v9, v4, v8

    int-to-float v6, v6

    iget v14, v5, Lcom/tangxiaolv/telegramgallery/o$c0;->l:F

    mul-float v6, v6, v14

    const/4 v15, 0x4

    aput v6, v9, v15

    .line 65
    aget-object v6, v4, v8

    int-to-float v0, v0

    mul-float v0, v0, v14

    const/4 v9, 0x5

    aput v0, v6, v9

    .line 66
    aget-object v0, v4, v8

    int-to-float v3, v3

    mul-float v3, v3, v14

    const/4 v6, 0x6

    aput v3, v0, v6

    .line 67
    aget-object v0, v4, v8

    iget-object v3, v1, Lcom/tangxiaolv/telegramgallery/o;->k:Lcom/tangxiaolv/telegramgallery/Components/c;

    invoke-virtual {v3}, Lcom/tangxiaolv/telegramgallery/Components/c;->getRadius()I

    move-result v3

    int-to-float v3, v3

    const/4 v4, 0x7

    aput v3, v0, v4

    .line 68
    iget-object v0, v1, Lcom/tangxiaolv/telegramgallery/o;->I:[[F

    aget-object v3, v0, v13

    aput v7, v3, v8

    .line 69
    aget-object v3, v0, v13

    aput v7, v3, v13

    .line 70
    aget-object v3, v0, v13

    const/4 v7, 0x2

    aput v12, v3, v7

    .line 71
    aget-object v3, v0, v13

    aput v10, v3, v11

    .line 72
    aget-object v3, v0, v13

    const/4 v7, 0x0

    aput v7, v3, v15

    .line 73
    aget-object v3, v0, v13

    aput v7, v3, v9

    .line 74
    aget-object v3, v0, v13

    aput v7, v3, v6

    .line 75
    aget-object v0, v0, v13

    aput v7, v0, v4

    .line 76
    iget-object v0, v1, Lcom/tangxiaolv/telegramgallery/o;->k:Lcom/tangxiaolv/telegramgallery/Components/c;

    invoke-virtual {v0, v7}, Lcom/tangxiaolv/telegramgallery/Components/c;->setAnimationProgress(F)V

    .line 77
    iget-object v0, v1, Lcom/tangxiaolv/telegramgallery/o;->m:Lcom/tangxiaolv/telegramgallery/o$x;

    invoke-virtual {v0, v8}, Lcom/tangxiaolv/telegramgallery/o$x;->setAlpha(I)V

    .line 78
    iget-object v0, v1, Lcom/tangxiaolv/telegramgallery/o;->i:Lcom/tangxiaolv/telegramgallery/o$z;

    invoke-virtual {v0, v7}, Landroid/widget/FrameLayout;->setAlpha(F)V

    .line 79
    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    new-array v3, v11, [Landroid/animation/Animator;

    .line 80
    iget-object v4, v1, Lcom/tangxiaolv/telegramgallery/o;->k:Lcom/tangxiaolv/telegramgallery/Components/c;

    const/4 v6, 0x2

    new-array v7, v6, [F

    fill-array-data v7, :array_0

    const-string v9, "animationProgress"

    .line 81
    invoke-static {v4, v9, v7}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v4

    aput-object v4, v3, v8

    iget-object v4, v1, Lcom/tangxiaolv/telegramgallery/o;->m:Lcom/tangxiaolv/telegramgallery/o$x;

    new-array v7, v6, [I

    fill-array-data v7, :array_1

    const-string v8, "alpha"

    .line 82
    invoke-static {v4, v8, v7}, Landroid/animation/ObjectAnimator;->ofInt(Ljava/lang/Object;Ljava/lang/String;[I)Landroid/animation/ObjectAnimator;

    move-result-object v4

    aput-object v4, v3, v13

    iget-object v4, v1, Lcom/tangxiaolv/telegramgallery/o;->i:Lcom/tangxiaolv/telegramgallery/o$z;

    new-array v7, v6, [F

    fill-array-data v7, :array_2

    .line 83
    invoke-static {v4, v8, v7}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v4

    aput-object v4, v3, v6

    .line 84
    invoke-virtual {v0, v3}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 85
    new-instance v3, Lcom/tangxiaolv/telegramgallery/o$c;

    invoke-direct {v3, v1, v2}, Lcom/tangxiaolv/telegramgallery/o$c;-><init>(Lcom/tangxiaolv/telegramgallery/o;Ljava/util/List;)V

    iput-object v3, v1, Lcom/tangxiaolv/telegramgallery/o;->L:Ljava/lang/Runnable;

    const-wide/16 v2, 0xc8

    .line 86
    invoke-virtual {v0, v2, v3}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 87
    new-instance v2, Lcom/tangxiaolv/telegramgallery/o$d;

    invoke-direct {v2, v1}, Lcom/tangxiaolv/telegramgallery/o$d;-><init>(Lcom/tangxiaolv/telegramgallery/o;)V

    invoke-virtual {v0, v2}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 88
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, v1, Lcom/tangxiaolv/telegramgallery/o;->K:J

    .line 89
    new-instance v2, Lcom/tangxiaolv/telegramgallery/o$e;

    invoke-direct {v2, v1, v0}, Lcom/tangxiaolv/telegramgallery/o$e;-><init>(Lcom/tangxiaolv/telegramgallery/o;Landroid/animation/AnimatorSet;)V

    invoke-static {v2}, Lcom/tangxiaolv/telegramgallery/Utils/a;->D(Ljava/lang/Runnable;)V

    .line 90
    iget-object v0, v1, Lcom/tangxiaolv/telegramgallery/o;->i:Lcom/tangxiaolv/telegramgallery/o$z;

    const/4 v2, 0x0

    const/4 v3, 0x2

    invoke-virtual {v0, v3, v2}, Landroid/widget/FrameLayout;->setLayerType(ILandroid/graphics/Paint;)V

    .line 91
    iget-object v0, v1, Lcom/tangxiaolv/telegramgallery/o;->m:Lcom/tangxiaolv/telegramgallery/o$x;

    new-instance v2, Lcom/tangxiaolv/telegramgallery/o$f;

    invoke-direct {v2, v1, v5}, Lcom/tangxiaolv/telegramgallery/o$f;-><init>(Lcom/tangxiaolv/telegramgallery/o;Lcom/tangxiaolv/telegramgallery/o$c0;)V

    invoke-static {v0, v2}, Lcom/tangxiaolv/telegramgallery/o$x;->a(Lcom/tangxiaolv/telegramgallery/o$x;Ljava/lang/Runnable;)Ljava/lang/Runnable;

    goto :goto_1

    :cond_9
    if-eqz v2, :cond_a

    .line 92
    iget-object v7, v1, Lcom/tangxiaolv/telegramgallery/o;->h:Landroid/view/WindowManager$LayoutParams;

    iput v8, v7, Landroid/view/WindowManager$LayoutParams;->flags:I

    const/16 v8, 0x20

    .line 93
    iput v8, v7, Landroid/view/WindowManager$LayoutParams;->softInputMode:I

    .line 94
    iget-object v8, v1, Lcom/tangxiaolv/telegramgallery/o;->j:Lcom/tangxiaolv/telegramgallery/o$a0;

    invoke-interface {v6, v8, v7}, Landroid/view/WindowManager;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 95
    iget-object v6, v1, Lcom/tangxiaolv/telegramgallery/o;->j:Lcom/tangxiaolv/telegramgallery/o$a0;

    invoke-virtual {v6, v13}, Landroid/widget/FrameLayout;->setFocusable(Z)V

    .line 96
    iget-object v6, v1, Lcom/tangxiaolv/telegramgallery/o;->i:Lcom/tangxiaolv/telegramgallery/o$z;

    invoke-virtual {v6, v13}, Landroid/widget/FrameLayout;->setFocusable(Z)V

    .line 97
    :cond_a
    iget-object v6, v1, Lcom/tangxiaolv/telegramgallery/o;->m:Lcom/tangxiaolv/telegramgallery/o$x;

    const/16 v7, 0xff

    invoke-virtual {v6, v7}, Lcom/tangxiaolv/telegramgallery/o$x;->setAlpha(I)V

    .line 98
    iget-object v6, v1, Lcom/tangxiaolv/telegramgallery/o;->i:Lcom/tangxiaolv/telegramgallery/o$z;

    invoke-virtual {v6, v4}, Landroid/widget/FrameLayout;->setAlpha(F)V

    .line 99
    invoke-direct {v1, v0, v2, v3, v5}, Lcom/tangxiaolv/telegramgallery/o;->P0(Lcom/tangxiaolv/telegramgallery/TL/d;Ljava/util/List;ILcom/tangxiaolv/telegramgallery/o$c0;)V

    :goto_1
    return-void

    :catch_1
    move-exception v0

    .line 100
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_b
    :goto_2
    return-void

    nop

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data

    :array_1
    .array-data 4
        0x0
        0xff
    .end array-data

    :array_2
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method public T0(Ljava/util/List;ZIILcom/tangxiaolv/telegramgallery/o$b0;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;ZII",
            "Lcom/tangxiaolv/telegramgallery/o$b0;",
            ")V"
        }
    .end annotation

    .line 1
    iput-boolean p2, p0, Lcom/tangxiaolv/telegramgallery/o;->x:Z

    .line 2
    iput p4, p0, Lcom/tangxiaolv/telegramgallery/o;->y:I

    .line 3
    iget-object p2, p0, Lcom/tangxiaolv/telegramgallery/o;->o:Lcom/tangxiaolv/telegramgallery/Components/h;

    if-eqz p2, :cond_0

    .line 4
    iget-object p2, p2, Lcom/tangxiaolv/telegramgallery/Components/h;->c:Landroid/widget/TextView;

    sget p4, Lcom/tangxiaolv/telegramgallery/q$o;->x:I

    .line 5
    invoke-virtual {p2, p4}, Landroid/widget/TextView;->setText(I)V

    :cond_0
    const/4 v1, 0x0

    const-wide/16 v5, 0x0

    const-wide/16 v7, 0x0

    move-object v0, p0

    move-object v2, p1

    move v3, p3

    move-object v4, p5

    .line 6
    invoke-virtual/range {v0 .. v8}, Lcom/tangxiaolv/telegramgallery/o;->S0(Lcom/tangxiaolv/telegramgallery/TL/d;Ljava/util/List;ILcom/tangxiaolv/telegramgallery/o$b0;JJ)V

    return-void
.end method

.method public V0(F)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/tangxiaolv/telegramgallery/o;->M2:F

    .line 2
    iget-object p1, p0, Lcom/tangxiaolv/telegramgallery/o;->i:Lcom/tangxiaolv/telegramgallery/o$z;

    invoke-virtual {p1}, Landroid/widget/FrameLayout;->invalidate()V

    return-void
.end method

.method public Z0(Lcom/tangxiaolv/telegramgallery/GalleryActivity;)V
    .locals 11

    .line 1
    iget-object v0, p0, Lcom/tangxiaolv/telegramgallery/o;->d:Lcom/tangxiaolv/telegramgallery/GalleryActivity;

    if-ne v0, p1, :cond_0

    return-void

    .line 2
    :cond_0
    iput-object p1, p0, Lcom/tangxiaolv/telegramgallery/o;->d:Lcom/tangxiaolv/telegramgallery/GalleryActivity;

    .line 3
    new-instance v0, Landroid/view/ContextThemeWrapper;

    iget-object v1, p0, Lcom/tangxiaolv/telegramgallery/o;->d:Lcom/tangxiaolv/telegramgallery/GalleryActivity;

    sget v2, Lcom/tangxiaolv/telegramgallery/q$p;->c9:I

    invoke-direct {v0, v1, v2}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Lcom/tangxiaolv/telegramgallery/o;->e:Landroid/content/Context;

    .line 4
    new-instance v0, Landroid/widget/Scroller;

    invoke-direct {v0, p1}, Landroid/widget/Scroller;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/tangxiaolv/telegramgallery/o;->q3:Landroid/widget/Scroller;

    .line 5
    new-instance v0, Lcom/tangxiaolv/telegramgallery/o$k;

    invoke-direct {v0, p0, p1}, Lcom/tangxiaolv/telegramgallery/o$k;-><init>(Lcom/tangxiaolv/telegramgallery/o;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/tangxiaolv/telegramgallery/o;->j:Lcom/tangxiaolv/telegramgallery/o$a0;

    .line 6
    iget-object v1, p0, Lcom/tangxiaolv/telegramgallery/o;->m:Lcom/tangxiaolv/telegramgallery/o$x;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 7
    iget-object v0, p0, Lcom/tangxiaolv/telegramgallery/o;->j:Lcom/tangxiaolv/telegramgallery/o$a0;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setFocusable(Z)V

    .line 8
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x17

    const/4 v3, 0x1

    if-lt v0, v2, :cond_1

    .line 9
    iget-object v0, p0, Lcom/tangxiaolv/telegramgallery/o;->j:Lcom/tangxiaolv/telegramgallery/o$a0;

    invoke-virtual {v0, v3}, Landroid/widget/FrameLayout;->setFitsSystemWindows(Z)V

    .line 10
    :cond_1
    new-instance v0, Lcom/tangxiaolv/telegramgallery/Components/c;

    invoke-direct {v0, p1}, Lcom/tangxiaolv/telegramgallery/Components/c;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/tangxiaolv/telegramgallery/o;->k:Lcom/tangxiaolv/telegramgallery/Components/c;

    .line 11
    iget-object v2, p0, Lcom/tangxiaolv/telegramgallery/o;->I:[[F

    invoke-virtual {v0, v2}, Lcom/tangxiaolv/telegramgallery/Components/c;->setAnimationValues([[F)V

    .line 12
    iget-object v0, p0, Lcom/tangxiaolv/telegramgallery/o;->j:Lcom/tangxiaolv/telegramgallery/o$a0;

    iget-object v2, p0, Lcom/tangxiaolv/telegramgallery/o;->k:Lcom/tangxiaolv/telegramgallery/Components/c;

    const/16 v4, 0x28

    const/high16 v5, 0x42200000    # 40.0f

    invoke-static {v4, v5}, Lcom/tangxiaolv/telegramgallery/Utils/f;->a(IF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v4

    invoke-virtual {v0, v2, v4}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 13
    new-instance v0, Lcom/tangxiaolv/telegramgallery/o$z;

    invoke-direct {v0, p0, p1}, Lcom/tangxiaolv/telegramgallery/o$z;-><init>(Lcom/tangxiaolv/telegramgallery/o;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/tangxiaolv/telegramgallery/o;->i:Lcom/tangxiaolv/telegramgallery/o$z;

    .line 14
    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setFocusable(Z)V

    .line 15
    iget-object v0, p0, Lcom/tangxiaolv/telegramgallery/o;->j:Lcom/tangxiaolv/telegramgallery/o$a0;

    iget-object v2, p0, Lcom/tangxiaolv/telegramgallery/o;->i:Lcom/tangxiaolv/telegramgallery/o$z;

    const/16 v4, 0x33

    const/4 v5, -0x1

    invoke-static {v5, v5, v4}, Lcom/tangxiaolv/telegramgallery/Utils/f;->c(III)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v4

    invoke-virtual {v0, v2, v4}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 16
    new-instance v0, Landroid/view/WindowManager$LayoutParams;

    invoke-direct {v0}, Landroid/view/WindowManager$LayoutParams;-><init>()V

    iput-object v0, p0, Lcom/tangxiaolv/telegramgallery/o;->h:Landroid/view/WindowManager$LayoutParams;

    .line 17
    iput v5, v0, Landroid/view/WindowManager$LayoutParams;->height:I

    const/4 v2, -0x3

    .line 18
    iput v2, v0, Landroid/view/WindowManager$LayoutParams;->format:I

    .line 19
    iput v5, v0, Landroid/view/WindowManager$LayoutParams;->width:I

    const/16 v2, 0x30

    .line 20
    iput v2, v0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    const/16 v4, 0x63

    .line 21
    iput v4, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v4, 0x8

    .line 22
    iput v4, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 23
    new-instance v0, Lcom/tangxiaolv/telegramgallery/Actionbar/a;

    invoke-direct {v0, p1}, Lcom/tangxiaolv/telegramgallery/Actionbar/a;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/tangxiaolv/telegramgallery/o;->f:Lcom/tangxiaolv/telegramgallery/Actionbar/a;

    .line 24
    iget-object p1, p0, Lcom/tangxiaolv/telegramgallery/o;->i:Lcom/tangxiaolv/telegramgallery/o$z;

    invoke-virtual {p1}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/tangxiaolv/telegramgallery/r;->f(Landroid/content/Context;)I

    move-result p1

    invoke-virtual {v0, p1}, Landroid/widget/FrameLayout;->setBackgroundColor(I)V

    .line 25
    iget-object p1, p0, Lcom/tangxiaolv/telegramgallery/o;->f:Lcom/tangxiaolv/telegramgallery/Actionbar/a;

    invoke-virtual {p1, v1}, Lcom/tangxiaolv/telegramgallery/Actionbar/a;->setOccupyStatusBar(Z)V

    .line 26
    iget-object p1, p0, Lcom/tangxiaolv/telegramgallery/o;->f:Lcom/tangxiaolv/telegramgallery/Actionbar/a;

    iget-object v0, p0, Lcom/tangxiaolv/telegramgallery/o;->e:Landroid/content/Context;

    invoke-static {v0}, Lcom/tangxiaolv/telegramgallery/r;->e(Landroid/content/Context;)I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/tangxiaolv/telegramgallery/Actionbar/a;->setItemsBackgroundColor(I)V

    .line 27
    iget-object p1, p0, Lcom/tangxiaolv/telegramgallery/o;->f:Lcom/tangxiaolv/telegramgallery/Actionbar/a;

    sget v0, Lcom/tangxiaolv/telegramgallery/q$h;->r1:I

    invoke-virtual {p1, v0}, Lcom/tangxiaolv/telegramgallery/Actionbar/a;->setBackButtonImage(I)V

    .line 28
    iget-object p1, p0, Lcom/tangxiaolv/telegramgallery/o;->f:Lcom/tangxiaolv/telegramgallery/Actionbar/a;

    iget-object v0, p0, Lcom/tangxiaolv/telegramgallery/o;->e:Landroid/content/Context;

    sget v6, Lcom/tangxiaolv/telegramgallery/q$o;->o:I

    const/4 v7, 0x2

    new-array v8, v7, [Ljava/lang/Object;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v8, v1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v8, v3

    invoke-virtual {v0, v6, v8}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/tangxiaolv/telegramgallery/Actionbar/a;->setTitle(Ljava/lang/CharSequence;)V

    .line 29
    iget-object p1, p0, Lcom/tangxiaolv/telegramgallery/o;->i:Lcom/tangxiaolv/telegramgallery/o$z;

    iget-object v0, p0, Lcom/tangxiaolv/telegramgallery/o;->f:Lcom/tangxiaolv/telegramgallery/Actionbar/a;

    const/high16 v6, -0x40000000    # -2.0f

    .line 30
    invoke-static {v5, v6}, Lcom/tangxiaolv/telegramgallery/Utils/f;->a(IF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v6

    .line 31
    invoke-virtual {p1, v0, v6}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 32
    iget-object p1, p0, Lcom/tangxiaolv/telegramgallery/o;->f:Lcom/tangxiaolv/telegramgallery/Actionbar/a;

    new-instance v0, Lcom/tangxiaolv/telegramgallery/o$p;

    invoke-direct {v0, p0}, Lcom/tangxiaolv/telegramgallery/o$p;-><init>(Lcom/tangxiaolv/telegramgallery/o;)V

    invoke-virtual {p1, v0}, Lcom/tangxiaolv/telegramgallery/Actionbar/a;->setActionBarMenuOnItemClick(Lcom/tangxiaolv/telegramgallery/Actionbar/a$e;)V

    .line 33
    iget-object p1, p0, Lcom/tangxiaolv/telegramgallery/o;->f:Lcom/tangxiaolv/telegramgallery/Actionbar/a;

    invoke-virtual {p1}, Lcom/tangxiaolv/telegramgallery/Actionbar/a;->m()Lcom/tangxiaolv/telegramgallery/Actionbar/c;

    move-result-object p1

    const/4 v0, 0x4

    .line 34
    sget v6, Lcom/tangxiaolv/telegramgallery/q$h;->K2:I

    const/high16 v8, 0x42600000    # 56.0f

    invoke-static {v8}, Lcom/tangxiaolv/telegramgallery/Utils/a;->g(F)I

    move-result v8

    invoke-virtual {p1, v0, v6, v8}, Lcom/tangxiaolv/telegramgallery/Actionbar/c;->g(III)Lcom/tangxiaolv/telegramgallery/Actionbar/d;

    move-result-object v0

    iput-object v0, p0, Lcom/tangxiaolv/telegramgallery/o;->r:Lcom/tangxiaolv/telegramgallery/Actionbar/d;

    .line 35
    new-instance v0, Lcom/tangxiaolv/telegramgallery/Components/b;

    iget-object v6, p0, Lcom/tangxiaolv/telegramgallery/o;->i:Lcom/tangxiaolv/telegramgallery/o$z;

    invoke-virtual {v6}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v6

    sget v8, Lcom/tangxiaolv/telegramgallery/q$h;->U2:I

    iget-object v9, p0, Lcom/tangxiaolv/telegramgallery/o;->e:Landroid/content/Context;

    invoke-static {v9}, Lcom/tangxiaolv/telegramgallery/r;->e(Landroid/content/Context;)I

    move-result v9

    invoke-direct {v0, v6, v8, v9}, Lcom/tangxiaolv/telegramgallery/Components/b;-><init>(Landroid/content/Context;II)V

    iput-object v0, p0, Lcom/tangxiaolv/telegramgallery/o;->n:Lcom/tangxiaolv/telegramgallery/Components/b;

    .line 36
    invoke-virtual {v0, v3}, Lcom/tangxiaolv/telegramgallery/Components/b;->setDrawBackground(Z)V

    .line 37
    iget-object v0, p0, Lcom/tangxiaolv/telegramgallery/o;->n:Lcom/tangxiaolv/telegramgallery/Components/b;

    const/16 v6, 0x20

    invoke-virtual {v0, v6}, Lcom/tangxiaolv/telegramgallery/Components/b;->setSize(I)V

    .line 38
    iget-object v0, p0, Lcom/tangxiaolv/telegramgallery/o;->n:Lcom/tangxiaolv/telegramgallery/Components/b;

    const/high16 v8, 0x3f800000    # 1.0f

    invoke-static {v8}, Lcom/tangxiaolv/telegramgallery/Utils/a;->g(F)I

    move-result v8

    invoke-virtual {v0, v8}, Lcom/tangxiaolv/telegramgallery/Components/b;->setCheckOffset(I)V

    .line 39
    iget-object v0, p0, Lcom/tangxiaolv/telegramgallery/o;->n:Lcom/tangxiaolv/telegramgallery/Components/b;

    iget-object v8, p0, Lcom/tangxiaolv/telegramgallery/o;->i:Lcom/tangxiaolv/telegramgallery/o$z;

    invoke-virtual {v8}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v8

    invoke-static {v8}, Lcom/tangxiaolv/telegramgallery/r;->d(Landroid/content/Context;)I

    move-result v8

    invoke-virtual {v0, v8}, Lcom/tangxiaolv/telegramgallery/Components/b;->setColor(I)V

    .line 40
    invoke-static {v6, v6}, Lcom/tangxiaolv/telegramgallery/Utils/f;->d(II)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v0

    const/16 v6, 0x10

    .line 41
    iput v6, v0, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    const/high16 v6, 0x41000000    # 8.0f

    .line 42
    invoke-static {v6}, Lcom/tangxiaolv/telegramgallery/Utils/a;->g(F)I

    move-result v6

    invoke-virtual {v0, v1, v1, v6, v1}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 43
    iget-object v6, p0, Lcom/tangxiaolv/telegramgallery/o;->n:Lcom/tangxiaolv/telegramgallery/Components/b;

    invoke-virtual {v6, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 44
    iget-object v0, p0, Lcom/tangxiaolv/telegramgallery/o;->n:Lcom/tangxiaolv/telegramgallery/Components/b;

    invoke-virtual {p1, v3, v0}, Lcom/tangxiaolv/telegramgallery/Actionbar/c;->a(ILandroid/view/View;)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/tangxiaolv/telegramgallery/o;->s:Landroid/view/View;

    .line 45
    new-instance p1, Landroid/widget/FrameLayout;

    iget-object v0, p0, Lcom/tangxiaolv/telegramgallery/o;->e:Landroid/content/Context;

    invoke-direct {p1, v0}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/tangxiaolv/telegramgallery/o;->l:Landroid/widget/FrameLayout;

    const/high16 v0, 0x7f000000

    .line 46
    invoke-virtual {p1, v0}, Landroid/widget/FrameLayout;->setBackgroundColor(I)V

    .line 47
    iget-object p1, p0, Lcom/tangxiaolv/telegramgallery/o;->i:Lcom/tangxiaolv/telegramgallery/o$z;

    iget-object v6, p0, Lcom/tangxiaolv/telegramgallery/o;->l:Landroid/widget/FrameLayout;

    const/16 v8, 0x53

    invoke-static {v5, v2, v8}, Lcom/tangxiaolv/telegramgallery/Utils/f;->c(III)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v9

    invoke-virtual {p1, v6, v9}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 48
    iget-object p1, p0, Lcom/tangxiaolv/telegramgallery/o;->q:[Lcom/tangxiaolv/telegramgallery/o$e0;

    new-instance v6, Lcom/tangxiaolv/telegramgallery/o$e0;

    iget-object v9, p0, Lcom/tangxiaolv/telegramgallery/o;->i:Lcom/tangxiaolv/telegramgallery/o$z;

    invoke-virtual {v9}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v9

    iget-object v10, p0, Lcom/tangxiaolv/telegramgallery/o;->i:Lcom/tangxiaolv/telegramgallery/o$z;

    invoke-direct {v6, p0, v9, v10}, Lcom/tangxiaolv/telegramgallery/o$e0;-><init>(Lcom/tangxiaolv/telegramgallery/o;Landroid/content/Context;Landroid/view/View;)V

    aput-object v6, p1, v1

    .line 49
    iget-object p1, p0, Lcom/tangxiaolv/telegramgallery/o;->q:[Lcom/tangxiaolv/telegramgallery/o$e0;

    aget-object p1, p1, v1

    invoke-virtual {p1, v1, v1}, Lcom/tangxiaolv/telegramgallery/o$e0;->d(IZ)V

    .line 50
    iget-object p1, p0, Lcom/tangxiaolv/telegramgallery/o;->q:[Lcom/tangxiaolv/telegramgallery/o$e0;

    new-instance v6, Lcom/tangxiaolv/telegramgallery/o$e0;

    iget-object v9, p0, Lcom/tangxiaolv/telegramgallery/o;->i:Lcom/tangxiaolv/telegramgallery/o$z;

    invoke-virtual {v9}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v9

    iget-object v10, p0, Lcom/tangxiaolv/telegramgallery/o;->i:Lcom/tangxiaolv/telegramgallery/o$z;

    invoke-direct {v6, p0, v9, v10}, Lcom/tangxiaolv/telegramgallery/o$e0;-><init>(Lcom/tangxiaolv/telegramgallery/o;Landroid/content/Context;Landroid/view/View;)V

    aput-object v6, p1, v3

    .line 51
    iget-object p1, p0, Lcom/tangxiaolv/telegramgallery/o;->q:[Lcom/tangxiaolv/telegramgallery/o$e0;

    aget-object p1, p1, v3

    invoke-virtual {p1, v1, v1}, Lcom/tangxiaolv/telegramgallery/o$e0;->d(IZ)V

    .line 52
    iget-object p1, p0, Lcom/tangxiaolv/telegramgallery/o;->q:[Lcom/tangxiaolv/telegramgallery/o$e0;

    new-instance v6, Lcom/tangxiaolv/telegramgallery/o$e0;

    iget-object v9, p0, Lcom/tangxiaolv/telegramgallery/o;->i:Lcom/tangxiaolv/telegramgallery/o$z;

    invoke-virtual {v9}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v9

    iget-object v10, p0, Lcom/tangxiaolv/telegramgallery/o;->i:Lcom/tangxiaolv/telegramgallery/o$z;

    invoke-direct {v6, p0, v9, v10}, Lcom/tangxiaolv/telegramgallery/o$e0;-><init>(Lcom/tangxiaolv/telegramgallery/o;Landroid/content/Context;Landroid/view/View;)V

    aput-object v6, p1, v7

    .line 53
    iget-object p1, p0, Lcom/tangxiaolv/telegramgallery/o;->q:[Lcom/tangxiaolv/telegramgallery/o$e0;

    aget-object p1, p1, v7

    invoke-virtual {p1, v1, v1}, Lcom/tangxiaolv/telegramgallery/o$e0;->d(IZ)V

    .line 54
    new-instance p1, Lcom/tangxiaolv/telegramgallery/Components/h;

    iget-object v6, p0, Lcom/tangxiaolv/telegramgallery/o;->e:Landroid/content/Context;

    invoke-direct {p1, v6}, Lcom/tangxiaolv/telegramgallery/Components/h;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/tangxiaolv/telegramgallery/o;->o:Lcom/tangxiaolv/telegramgallery/Components/h;

    .line 55
    invoke-virtual {p1, v0}, Landroid/widget/FrameLayout;->setBackgroundColor(I)V

    .line 56
    iget-object p1, p0, Lcom/tangxiaolv/telegramgallery/o;->o:Lcom/tangxiaolv/telegramgallery/Components/h;

    iput v5, p1, Lcom/tangxiaolv/telegramgallery/Components/h;->e:I

    .line 57
    iget-object v6, p0, Lcom/tangxiaolv/telegramgallery/o;->i:Lcom/tangxiaolv/telegramgallery/o$z;

    invoke-static {v5, v2, v8}, Lcom/tangxiaolv/telegramgallery/Utils/f;->c(III)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v9

    invoke-virtual {v6, p1, v9}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 58
    iget-object p1, p0, Lcom/tangxiaolv/telegramgallery/o;->o:Lcom/tangxiaolv/telegramgallery/Components/h;

    iget-object p1, p1, Lcom/tangxiaolv/telegramgallery/Components/h;->b:Landroid/widget/TextView;

    invoke-virtual {p1, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 59
    iget-object p1, p0, Lcom/tangxiaolv/telegramgallery/o;->o:Lcom/tangxiaolv/telegramgallery/Components/h;

    iget-object p1, p1, Lcom/tangxiaolv/telegramgallery/Components/h;->a:Landroid/widget/LinearLayout;

    new-instance v6, Lcom/tangxiaolv/telegramgallery/o$q;

    invoke-direct {v6, p0}, Lcom/tangxiaolv/telegramgallery/o$q;-><init>(Lcom/tangxiaolv/telegramgallery/o;)V

    invoke-virtual {p1, v6}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 60
    new-instance p1, Lcom/tangxiaolv/telegramgallery/Components/h;

    iget-object v6, p0, Lcom/tangxiaolv/telegramgallery/o;->e:Landroid/content/Context;

    invoke-direct {p1, v6}, Lcom/tangxiaolv/telegramgallery/Components/h;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/tangxiaolv/telegramgallery/o;->p:Lcom/tangxiaolv/telegramgallery/Components/h;

    .line 61
    invoke-virtual {p1, v0}, Landroid/widget/FrameLayout;->setBackgroundColor(I)V

    .line 62
    iget-object p1, p0, Lcom/tangxiaolv/telegramgallery/o;->p:Lcom/tangxiaolv/telegramgallery/Components/h;

    iput v5, p1, Lcom/tangxiaolv/telegramgallery/Components/h;->e:I

    .line 63
    invoke-virtual {p1, v1, v1}, Lcom/tangxiaolv/telegramgallery/Components/h;->a(IZ)V

    .line 64
    iget-object p1, p0, Lcom/tangxiaolv/telegramgallery/o;->p:Lcom/tangxiaolv/telegramgallery/Components/h;

    invoke-virtual {p1, v4}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 65
    iget-object p1, p0, Lcom/tangxiaolv/telegramgallery/o;->i:Lcom/tangxiaolv/telegramgallery/o$z;

    iget-object v0, p0, Lcom/tangxiaolv/telegramgallery/o;->p:Lcom/tangxiaolv/telegramgallery/Components/h;

    invoke-static {v5, v2, v8}, Lcom/tangxiaolv/telegramgallery/Utils/f;->c(III)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 66
    iget-object p1, p0, Lcom/tangxiaolv/telegramgallery/o;->p:Lcom/tangxiaolv/telegramgallery/Components/h;

    iget-object p1, p1, Lcom/tangxiaolv/telegramgallery/Components/h;->b:Landroid/widget/TextView;

    new-instance v0, Lcom/tangxiaolv/telegramgallery/o$r;

    invoke-direct {v0, p0}, Lcom/tangxiaolv/telegramgallery/o$r;-><init>(Lcom/tangxiaolv/telegramgallery/o;)V

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 67
    iget-object p1, p0, Lcom/tangxiaolv/telegramgallery/o;->p:Lcom/tangxiaolv/telegramgallery/Components/h;

    iget-object p1, p1, Lcom/tangxiaolv/telegramgallery/Components/h;->a:Landroid/widget/LinearLayout;

    new-instance v0, Lcom/tangxiaolv/telegramgallery/o$s;

    invoke-direct {v0, p0}, Lcom/tangxiaolv/telegramgallery/o$s;-><init>(Lcom/tangxiaolv/telegramgallery/o;)V

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 68
    new-instance p1, Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/tangxiaolv/telegramgallery/o;->e:Landroid/content/Context;

    invoke-direct {p1, v0}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 69
    sget-object v0, Landroid/widget/ImageView$ScaleType;->CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 70
    sget v0, Lcom/tangxiaolv/telegramgallery/q$h;->e3:I

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    const v0, 0x40ffffff    # 7.9999995f

    .line 71
    invoke-static {v0}, Lcom/tangxiaolv/telegramgallery/r;->b(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 72
    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 73
    iget-object v0, p0, Lcom/tangxiaolv/telegramgallery/o;->p:Lcom/tangxiaolv/telegramgallery/Components/h;

    const/16 v1, 0x11

    invoke-static {v2, v2, v1}, Lcom/tangxiaolv/telegramgallery/Utils/f;->c(III)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 74
    new-instance v0, Lcom/tangxiaolv/telegramgallery/o$t;

    invoke-direct {v0, p0}, Lcom/tangxiaolv/telegramgallery/o$t;-><init>(Lcom/tangxiaolv/telegramgallery/o;)V

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 75
    new-instance p1, Landroid/view/GestureDetector;

    iget-object v0, p0, Lcom/tangxiaolv/telegramgallery/o;->i:Lcom/tangxiaolv/telegramgallery/o$z;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p1, v0, p0}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    iput-object p1, p0, Lcom/tangxiaolv/telegramgallery/o;->R2:Landroid/view/GestureDetector;

    .line 76
    invoke-virtual {p1, p0}, Landroid/view/GestureDetector;->setOnDoubleTapListener(Landroid/view/GestureDetector$OnDoubleTapListener;)V

    .line 77
    iget-object p1, p0, Lcom/tangxiaolv/telegramgallery/o;->R:Lcom/tangxiaolv/telegramgallery/k;

    iget-object v0, p0, Lcom/tangxiaolv/telegramgallery/o;->i:Lcom/tangxiaolv/telegramgallery/o$z;

    invoke-virtual {p1, v0}, Lcom/tangxiaolv/telegramgallery/k;->l0(Landroid/view/View;)V

    .line 78
    iget-object p1, p0, Lcom/tangxiaolv/telegramgallery/o;->R:Lcom/tangxiaolv/telegramgallery/k;

    invoke-virtual {p1, v7}, Lcom/tangxiaolv/telegramgallery/k;->V(B)V

    .line 79
    iget-object p1, p0, Lcom/tangxiaolv/telegramgallery/o;->R:Lcom/tangxiaolv/telegramgallery/k;

    invoke-virtual {p1, v3}, Lcom/tangxiaolv/telegramgallery/k;->i0(Z)V

    .line 80
    iget-object p1, p0, Lcom/tangxiaolv/telegramgallery/o;->Q:Lcom/tangxiaolv/telegramgallery/k;

    iget-object v0, p0, Lcom/tangxiaolv/telegramgallery/o;->i:Lcom/tangxiaolv/telegramgallery/o$z;

    invoke-virtual {p1, v0}, Lcom/tangxiaolv/telegramgallery/k;->l0(Landroid/view/View;)V

    .line 81
    iget-object p1, p0, Lcom/tangxiaolv/telegramgallery/o;->Q:Lcom/tangxiaolv/telegramgallery/k;

    invoke-virtual {p1, v7}, Lcom/tangxiaolv/telegramgallery/k;->V(B)V

    .line 82
    iget-object p1, p0, Lcom/tangxiaolv/telegramgallery/o;->Q:Lcom/tangxiaolv/telegramgallery/k;

    invoke-virtual {p1, v3}, Lcom/tangxiaolv/telegramgallery/k;->i0(Z)V

    .line 83
    iget-object p1, p0, Lcom/tangxiaolv/telegramgallery/o;->S:Lcom/tangxiaolv/telegramgallery/k;

    iget-object v0, p0, Lcom/tangxiaolv/telegramgallery/o;->i:Lcom/tangxiaolv/telegramgallery/o$z;

    invoke-virtual {p1, v0}, Lcom/tangxiaolv/telegramgallery/k;->l0(Landroid/view/View;)V

    .line 84
    iget-object p1, p0, Lcom/tangxiaolv/telegramgallery/o;->S:Lcom/tangxiaolv/telegramgallery/k;

    invoke-virtual {p1, v7}, Lcom/tangxiaolv/telegramgallery/k;->V(B)V

    .line 85
    iget-object p1, p0, Lcom/tangxiaolv/telegramgallery/o;->S:Lcom/tangxiaolv/telegramgallery/k;

    invoke-virtual {p1, v3}, Lcom/tangxiaolv/telegramgallery/k;->i0(Z)V

    return-void
.end method

.method public varargs h(I[Ljava/lang/Object;)V
    .locals 12

    .line 1
    sget v0, Lcom/tangxiaolv/telegramgallery/Utils/h;->C:I

    const/high16 v1, 0x3f800000    # 1.0f

    const/4 v2, 0x3

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-ne p1, v0, :cond_1

    .line 2
    aget-object p1, p2, v4

    check-cast p1, Ljava/lang/String;

    :goto_0
    if-ge v4, v2, :cond_11

    .line 3
    iget-object p2, p0, Lcom/tangxiaolv/telegramgallery/o;->V:[Ljava/lang/String;

    aget-object v0, p2, v4

    if-eqz v0, :cond_0

    aget-object p2, p2, v4

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_0

    .line 4
    iget-object p1, p0, Lcom/tangxiaolv/telegramgallery/o;->q:[Lcom/tangxiaolv/telegramgallery/o$e0;

    aget-object p1, p1, v4

    invoke-virtual {p1, v1, v3}, Lcom/tangxiaolv/telegramgallery/o$e0;->e(FZ)V

    .line 5
    invoke-direct {p0, v4, v3}, Lcom/tangxiaolv/telegramgallery/o;->s0(IZ)V

    goto/16 :goto_8

    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 6
    :cond_1
    sget v0, Lcom/tangxiaolv/telegramgallery/Utils/h;->B:I

    if-ne p1, v0, :cond_3

    .line 7
    aget-object p1, p2, v4

    check-cast p1, Ljava/lang/String;

    const/4 p2, 0x0

    :goto_1
    if-ge p2, v2, :cond_11

    .line 8
    iget-object v0, p0, Lcom/tangxiaolv/telegramgallery/o;->V:[Ljava/lang/String;

    aget-object v5, v0, p2

    if-eqz v5, :cond_2

    aget-object v0, v0, p2

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 9
    iget-object p1, p0, Lcom/tangxiaolv/telegramgallery/o;->q:[Lcom/tangxiaolv/telegramgallery/o$e0;

    aget-object p1, p1, p2

    invoke-virtual {p1, v1, v3}, Lcom/tangxiaolv/telegramgallery/o$e0;->e(FZ)V

    .line 10
    invoke-direct {p0, p2, v3}, Lcom/tangxiaolv/telegramgallery/o;->s0(IZ)V

    if-nez p2, :cond_11

    .line 11
    invoke-direct {p0, v4}, Lcom/tangxiaolv/telegramgallery/o;->K0(Z)V

    goto/16 :goto_8

    :cond_2
    add-int/lit8 p2, p2, 0x1

    goto :goto_1

    .line 12
    :cond_3
    sget v0, Lcom/tangxiaolv/telegramgallery/Utils/h;->A:I

    if-ne p1, v0, :cond_5

    .line 13
    aget-object p1, p2, v4

    check-cast p1, Ljava/lang/String;

    :goto_2
    if-ge v4, v2, :cond_11

    .line 14
    iget-object v0, p0, Lcom/tangxiaolv/telegramgallery/o;->V:[Ljava/lang/String;

    aget-object v1, v0, v4

    if-eqz v1, :cond_4

    aget-object v0, v0, v4

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 15
    aget-object v0, p2, v3

    check-cast v0, Ljava/lang/Float;

    .line 16
    iget-object v1, p0, Lcom/tangxiaolv/telegramgallery/o;->q:[Lcom/tangxiaolv/telegramgallery/o$e0;

    aget-object v1, v1, v4

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    invoke-virtual {v1, v0, v3}, Lcom/tangxiaolv/telegramgallery/o$e0;->e(FZ)V

    :cond_4
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 17
    :cond_5
    sget v0, Lcom/tangxiaolv/telegramgallery/Utils/h;->o:I

    if-ne p1, v0, :cond_d

    const/4 p1, 0x4

    .line 18
    aget-object p1, p2, p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    .line 19
    aget-object v0, p2, v4

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 20
    iget v1, p0, Lcom/tangxiaolv/telegramgallery/o;->p1:I

    if-ne v1, v0, :cond_11

    iget v0, p0, Lcom/tangxiaolv/telegramgallery/o;->a:I

    if-ne v0, p1, :cond_11

    .line 21
    aget-object p1, p2, v2

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    const/4 p1, 0x5

    .line 22
    aget-object p1, p2, p1

    check-cast p1, Ljava/util/ArrayList;

    .line 23
    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p2

    if-eqz p2, :cond_6

    return-void

    .line 24
    :cond_6
    iget-object p2, p0, Lcom/tangxiaolv/telegramgallery/o;->r3:Ljava/util/ArrayList;

    invoke-virtual {p2}, Ljava/util/ArrayList;->clear()V

    .line 25
    iget-object p2, p0, Lcom/tangxiaolv/telegramgallery/o;->t3:Ljava/util/ArrayList;

    invoke-virtual {p2}, Ljava/util/ArrayList;->clear()V

    .line 26
    iget-object p2, p0, Lcom/tangxiaolv/telegramgallery/o;->s3:Ljava/util/ArrayList;

    invoke-virtual {p2}, Ljava/util/ArrayList;->clear()V

    const/4 p2, -0x1

    const/4 v0, 0x0

    const/4 v1, -0x1

    .line 27
    :goto_3
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_b

    .line 28
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/tangxiaolv/telegramgallery/TL/k;

    if-eqz v2, :cond_a

    .line 29
    instance-of v5, v2, Lcom/tangxiaolv/telegramgallery/TL/k$b;

    if-nez v5, :cond_a

    iget-object v5, v2, Lcom/tangxiaolv/telegramgallery/TL/k;->i:Ljava/util/ArrayList;

    if-nez v5, :cond_7

    goto :goto_6

    :cond_7
    const/16 v6, 0x280

    .line 30
    invoke-static {v5, v6}, Lcom/tangxiaolv/telegramgallery/Utils/d;->x(Ljava/util/ArrayList;I)Lcom/tangxiaolv/telegramgallery/TL/l;

    move-result-object v5

    if-eqz v5, :cond_a

    if-ne v1, p2, :cond_9

    .line 31
    iget-object v6, p0, Lcom/tangxiaolv/telegramgallery/o;->U:Lcom/tangxiaolv/telegramgallery/TL/d;

    if-eqz v6, :cond_9

    const/4 v6, 0x0

    .line 32
    :goto_4
    iget-object v7, v2, Lcom/tangxiaolv/telegramgallery/TL/k;->i:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-ge v6, v7, :cond_9

    .line 33
    iget-object v7, v2, Lcom/tangxiaolv/telegramgallery/TL/k;->i:Ljava/util/ArrayList;

    invoke-virtual {v7, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/tangxiaolv/telegramgallery/TL/l;

    .line 34
    iget-object v7, v7, Lcom/tangxiaolv/telegramgallery/TL/l;->d:Lcom/tangxiaolv/telegramgallery/TL/d;

    iget v8, v7, Lcom/tangxiaolv/telegramgallery/TL/d;->e:I

    iget-object v9, p0, Lcom/tangxiaolv/telegramgallery/o;->U:Lcom/tangxiaolv/telegramgallery/TL/d;

    iget v10, v9, Lcom/tangxiaolv/telegramgallery/TL/d;->e:I

    if-ne v8, v10, :cond_8

    iget-wide v7, v7, Lcom/tangxiaolv/telegramgallery/TL/d;->d:J

    iget-wide v9, v9, Lcom/tangxiaolv/telegramgallery/TL/d;->d:J

    cmp-long v11, v7, v9

    if-nez v11, :cond_8

    .line 35
    iget-object v1, p0, Lcom/tangxiaolv/telegramgallery/o;->r3:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    goto :goto_5

    :cond_8
    add-int/lit8 v6, v6, 0x1

    goto :goto_4

    .line 36
    :cond_9
    :goto_5
    iget-object v6, p0, Lcom/tangxiaolv/telegramgallery/o;->r3:Ljava/util/ArrayList;

    iget-object v7, v5, Lcom/tangxiaolv/telegramgallery/TL/l;->d:Lcom/tangxiaolv/telegramgallery/TL/d;

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 37
    iget-object v6, p0, Lcom/tangxiaolv/telegramgallery/o;->t3:Ljava/util/ArrayList;

    iget v5, v5, Lcom/tangxiaolv/telegramgallery/TL/l;->g:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 38
    iget-object v5, p0, Lcom/tangxiaolv/telegramgallery/o;->s3:Ljava/util/ArrayList;

    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_a
    :goto_6
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    .line 39
    :cond_b
    iput-boolean v4, p0, Lcom/tangxiaolv/telegramgallery/o;->g2:Z

    .line 40
    iput p2, p0, Lcom/tangxiaolv/telegramgallery/o;->T:I

    if-eq v1, p2, :cond_c

    .line 41
    invoke-direct {p0, v1, v3}, Lcom/tangxiaolv/telegramgallery/o;->W0(IZ)V

    goto :goto_8

    .line 42
    :cond_c
    iget-object p1, p0, Lcom/tangxiaolv/telegramgallery/o;->s3:Ljava/util/ArrayList;

    new-instance p2, Lcom/tangxiaolv/telegramgallery/TL/k$b;

    invoke-direct {p2}, Lcom/tangxiaolv/telegramgallery/TL/k$b;-><init>()V

    invoke-virtual {p1, v4, p2}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 43
    iget-object p1, p0, Lcom/tangxiaolv/telegramgallery/o;->r3:Ljava/util/ArrayList;

    iget-object p2, p0, Lcom/tangxiaolv/telegramgallery/o;->U:Lcom/tangxiaolv/telegramgallery/TL/d;

    invoke-virtual {p1, v4, p2}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 44
    iget-object p1, p0, Lcom/tangxiaolv/telegramgallery/o;->t3:Ljava/util/ArrayList;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p1, v4, p2}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 45
    invoke-direct {p0, v4, v3}, Lcom/tangxiaolv/telegramgallery/o;->W0(IZ)V

    goto :goto_8

    .line 46
    :cond_d
    sget v0, Lcom/tangxiaolv/telegramgallery/Utils/h;->n:I

    if-ne p1, v0, :cond_11

    .line 47
    aget-object p1, p2, v4

    check-cast p1, Ljava/lang/Long;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    .line 48
    iget-wide v5, p0, Lcom/tangxiaolv/telegramgallery/o;->x1:J

    cmp-long p1, v0, v5

    if-eqz p1, :cond_e

    iget-wide v7, p0, Lcom/tangxiaolv/telegramgallery/o;->y1:J

    cmp-long p1, v0, v7

    if-nez p1, :cond_11

    :cond_e
    cmp-long p1, v0, v5

    if-nez p1, :cond_f

    .line 49
    aget-object p1, p2, v3

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    iput p1, p0, Lcom/tangxiaolv/telegramgallery/o;->T1:I

    goto :goto_7

    .line 50
    :cond_f
    iget-wide v5, p0, Lcom/tangxiaolv/telegramgallery/o;->y1:J

    cmp-long p1, v0, v5

    if-nez p1, :cond_10

    .line 51
    aget-object p1, p2, v3

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    iput p1, p0, Lcom/tangxiaolv/telegramgallery/o;->V1:I

    .line 52
    :cond_10
    :goto_7
    iget-boolean p1, p0, Lcom/tangxiaolv/telegramgallery/o;->g2:Z

    if-eqz p1, :cond_11

    iget-boolean p1, p0, Lcom/tangxiaolv/telegramgallery/o;->b2:Z

    if-eqz p1, :cond_11

    .line 53
    iput-boolean v4, p0, Lcom/tangxiaolv/telegramgallery/o;->b2:Z

    .line 54
    iput-boolean v3, p0, Lcom/tangxiaolv/telegramgallery/o;->p2:Z

    :cond_11
    :goto_8
    return-void
.end method

.method public onDoubleTap(Landroid/view/MotionEvent;)Z
    .locals 9

    .line 1
    iget-boolean v0, p0, Lcom/tangxiaolv/telegramgallery/o;->f3:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_7

    iget v0, p0, Lcom/tangxiaolv/telegramgallery/o;->I2:F

    const/high16 v2, 0x3f800000    # 1.0f

    const/4 v3, 0x0

    cmpl-float v4, v0, v2

    if-nez v4, :cond_0

    iget v4, p0, Lcom/tangxiaolv/telegramgallery/o;->H2:F

    cmpl-float v4, v4, v3

    if-nez v4, :cond_7

    iget v4, p0, Lcom/tangxiaolv/telegramgallery/o;->G2:F

    cmpl-float v4, v4, v3

    if-eqz v4, :cond_0

    goto/16 :goto_5

    .line 2
    :cond_0
    iget-wide v4, p0, Lcom/tangxiaolv/telegramgallery/o;->O2:J

    const-wide/16 v6, 0x0

    cmp-long v8, v4, v6

    if-nez v8, :cond_7

    iget v4, p0, Lcom/tangxiaolv/telegramgallery/o;->J:I

    if-eqz v4, :cond_1

    goto/16 :goto_5

    :cond_1
    const/4 v1, 0x1

    cmpl-float v0, v0, v2

    if-nez v0, :cond_6

    .line 3
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    invoke-direct {p0}, Lcom/tangxiaolv/telegramgallery/o;->A0()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    sub-float/2addr v0, v2

    .line 4
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    invoke-direct {p0}, Lcom/tangxiaolv/telegramgallery/o;->A0()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    int-to-float v3, v3

    sub-float/2addr v2, v3

    iget v3, p0, Lcom/tangxiaolv/telegramgallery/o;->G2:F

    sub-float/2addr v2, v3

    iget v3, p0, Lcom/tangxiaolv/telegramgallery/o;->I2:F

    const/high16 v4, 0x40400000    # 3.0f

    div-float v3, v4, v3

    mul-float v2, v2, v3

    sub-float/2addr v0, v2

    .line 5
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    invoke-direct {p0}, Lcom/tangxiaolv/telegramgallery/o;->y0()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    int-to-float v3, v3

    sub-float/2addr v2, v3

    .line 6
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    invoke-direct {p0}, Lcom/tangxiaolv/telegramgallery/o;->y0()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    int-to-float v3, v3

    sub-float/2addr p1, v3

    iget v3, p0, Lcom/tangxiaolv/telegramgallery/o;->H2:F

    sub-float/2addr p1, v3

    iget v3, p0, Lcom/tangxiaolv/telegramgallery/o;->I2:F

    div-float v3, v4, v3

    mul-float p1, p1, v3

    sub-float/2addr v2, p1

    .line 7
    invoke-direct {p0, v4}, Lcom/tangxiaolv/telegramgallery/o;->e1(F)V

    .line 8
    iget p1, p0, Lcom/tangxiaolv/telegramgallery/o;->b3:F

    cmpg-float v3, v0, p1

    if-gez v3, :cond_2

    :goto_0
    move v0, p1

    goto :goto_1

    .line 9
    :cond_2
    iget p1, p0, Lcom/tangxiaolv/telegramgallery/o;->c3:F

    cmpl-float v3, v0, p1

    if-lez v3, :cond_3

    goto :goto_0

    .line 10
    :cond_3
    :goto_1
    iget p1, p0, Lcom/tangxiaolv/telegramgallery/o;->d3:F

    cmpg-float v3, v2, p1

    if-gez v3, :cond_4

    :goto_2
    move v2, p1

    goto :goto_3

    .line 11
    :cond_4
    iget p1, p0, Lcom/tangxiaolv/telegramgallery/o;->e3:F

    cmpl-float v3, v2, p1

    if-lez v3, :cond_5

    goto :goto_2

    .line 12
    :cond_5
    :goto_3
    invoke-direct {p0, v4, v0, v2, v1}, Lcom/tangxiaolv/telegramgallery/o;->m0(FFFZ)V

    goto :goto_4

    .line 13
    :cond_6
    invoke-direct {p0, v2, v3, v3, v1}, Lcom/tangxiaolv/telegramgallery/o;->m0(FFFZ)V

    .line 14
    :goto_4
    iput-boolean v1, p0, Lcom/tangxiaolv/telegramgallery/o;->j3:Z

    :cond_7
    :goto_5
    return v1
.end method

.method public onDoubleTapEvent(Landroid/view/MotionEvent;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public onDown(Landroid/view/MotionEvent;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public onFling(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 9

    .line 1
    iget p1, p0, Lcom/tangxiaolv/telegramgallery/o;->I2:F

    const/high16 p2, 0x3f800000    # 1.0f

    cmpl-float p1, p1, p2

    if-eqz p1, :cond_0

    .line 2
    iget-object p1, p0, Lcom/tangxiaolv/telegramgallery/o;->q3:Landroid/widget/Scroller;

    invoke-virtual {p1}, Landroid/widget/Scroller;->abortAnimation()V

    .line 3
    iget-object v0, p0, Lcom/tangxiaolv/telegramgallery/o;->q3:Landroid/widget/Scroller;

    iget p1, p0, Lcom/tangxiaolv/telegramgallery/o;->G2:F

    invoke-static {p1}, Ljava/lang/Math;->round(F)I

    move-result v1

    iget p1, p0, Lcom/tangxiaolv/telegramgallery/o;->H2:F

    invoke-static {p1}, Ljava/lang/Math;->round(F)I

    move-result v2

    .line 4
    invoke-static {p3}, Ljava/lang/Math;->round(F)I

    move-result v3

    invoke-static {p4}, Ljava/lang/Math;->round(F)I

    move-result v4

    iget p1, p0, Lcom/tangxiaolv/telegramgallery/o;->b3:F

    float-to-int v5, p1

    iget p1, p0, Lcom/tangxiaolv/telegramgallery/o;->c3:F

    float-to-int v6, p1

    iget p1, p0, Lcom/tangxiaolv/telegramgallery/o;->d3:F

    float-to-int v7, p1

    iget p1, p0, Lcom/tangxiaolv/telegramgallery/o;->e3:F

    float-to-int v8, p1

    .line 5
    invoke-virtual/range {v0 .. v8}, Landroid/widget/Scroller;->fling(IIIIIIII)V

    .line 6
    iget-object p1, p0, Lcom/tangxiaolv/telegramgallery/o;->i:Lcom/tangxiaolv/telegramgallery/o$z;

    invoke-virtual {p1}, Landroid/widget/FrameLayout;->postInvalidate()V

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public onLongPress(Landroid/view/MotionEvent;)V
    .locals 0

    return-void
.end method

.method public onScroll(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public onShowPress(Landroid/view/MotionEvent;)V
    .locals 0

    return-void
.end method

.method public onSingleTapConfirmed(Landroid/view/MotionEvent;)Z
    .locals 7

    .line 1
    iget-boolean v0, p0, Lcom/tangxiaolv/telegramgallery/o;->n3:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    .line 2
    :cond_0
    iget-boolean v0, p0, Lcom/tangxiaolv/telegramgallery/o;->w:Z

    const/4 v2, 0x1

    if-eqz v0, :cond_3

    .line 3
    iget-object v0, p0, Lcom/tangxiaolv/telegramgallery/o;->A:Lcom/tangxiaolv/telegramgallery/Components/AspectRatioFrameLayout;

    if-eqz v0, :cond_1

    .line 4
    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getVisibility()I

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    .line 5
    :goto_0
    iget-object v3, p0, Lcom/tangxiaolv/telegramgallery/o;->q:[Lcom/tangxiaolv/telegramgallery/o$e0;

    aget-object v4, v3, v1

    if-eqz v4, :cond_2

    iget-object v4, p0, Lcom/tangxiaolv/telegramgallery/o;->i:Lcom/tangxiaolv/telegramgallery/o$z;

    if-eqz v4, :cond_2

    if-nez v0, :cond_2

    .line 6
    aget-object v0, v3, v1

    invoke-static {v0}, Lcom/tangxiaolv/telegramgallery/o$e0;->a(Lcom/tangxiaolv/telegramgallery/o$e0;)I

    move-result v0

    if-lez v0, :cond_2

    const/4 v3, 0x3

    if-gt v0, v3, :cond_2

    .line 7
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    .line 8
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    .line 9
    invoke-direct {p0}, Lcom/tangxiaolv/telegramgallery/o;->A0()I

    move-result v3

    const/high16 v4, 0x42c80000    # 100.0f

    invoke-static {v4}, Lcom/tangxiaolv/telegramgallery/Utils/a;->g(F)I

    move-result v5

    sub-int/2addr v3, v5

    int-to-float v3, v3

    const/high16 v5, 0x40000000    # 2.0f

    div-float/2addr v3, v5

    cmpl-float v3, v0, v3

    if-ltz v3, :cond_2

    .line 10
    invoke-direct {p0}, Lcom/tangxiaolv/telegramgallery/o;->A0()I

    move-result v3

    invoke-static {v4}, Lcom/tangxiaolv/telegramgallery/Utils/a;->g(F)I

    move-result v6

    add-int/2addr v3, v6

    int-to-float v3, v3

    div-float/2addr v3, v5

    cmpg-float v0, v0, v3

    if-gtz v0, :cond_2

    .line 11
    invoke-direct {p0}, Lcom/tangxiaolv/telegramgallery/o;->y0()I

    move-result v0

    invoke-static {v4}, Lcom/tangxiaolv/telegramgallery/Utils/a;->g(F)I

    move-result v3

    sub-int/2addr v0, v3

    int-to-float v0, v0

    div-float/2addr v0, v5

    cmpl-float v0, p1, v0

    if-ltz v0, :cond_2

    .line 12
    invoke-direct {p0}, Lcom/tangxiaolv/telegramgallery/o;->y0()I

    move-result v0

    invoke-static {v4}, Lcom/tangxiaolv/telegramgallery/Utils/a;->g(F)I

    move-result v3

    add-int/2addr v0, v3

    int-to-float v0, v0

    div-float/2addr v0, v5

    cmpg-float p1, p1, v0

    if-gtz p1, :cond_2

    .line 13
    invoke-direct {p0, v2}, Lcom/tangxiaolv/telegramgallery/o;->K0(Z)V

    .line 14
    invoke-direct {p0, v1, v2}, Lcom/tangxiaolv/telegramgallery/o;->s0(IZ)V

    return v2

    .line 15
    :cond_2
    iget-boolean p1, p0, Lcom/tangxiaolv/telegramgallery/o;->g:Z

    xor-int/2addr p1, v2

    invoke-direct {p0, p1, v2}, Lcom/tangxiaolv/telegramgallery/o;->c1(ZZ)V

    goto :goto_1

    .line 16
    :cond_3
    iget p1, p0, Lcom/tangxiaolv/telegramgallery/o;->y:I

    if-nez p1, :cond_4

    .line 17
    iget-object p1, p0, Lcom/tangxiaolv/telegramgallery/o;->n:Lcom/tangxiaolv/telegramgallery/Components/b;

    invoke-virtual {p1}, Landroid/view/View;->performClick()Z

    :cond_4
    :goto_1
    return v2
.end method

.method public onSingleTapUp(Landroid/view/MotionEvent;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public p0(Landroid/graphics/Bitmap;)V
    .locals 10

    .line 1
    iget v0, p0, Lcom/tangxiaolv/telegramgallery/o;->P:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 2
    iget-object p1, p0, Lcom/tangxiaolv/telegramgallery/o;->u:Lcom/tangxiaolv/telegramgallery/Components/d;

    invoke-virtual {p1}, Lcom/tangxiaolv/telegramgallery/Components/d;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object p1

    :cond_0
    if-eqz p1, :cond_6

    .line 3
    invoke-static {}, Lcom/tangxiaolv/telegramgallery/Utils/a;->o()I

    move-result v0

    int-to-float v3, v0

    .line 4
    invoke-static {}, Lcom/tangxiaolv/telegramgallery/Utils/a;->o()I

    move-result v0

    int-to-float v4, v0

    const/16 v5, 0x50

    const/4 v6, 0x0

    const/16 v7, 0x65

    const/16 v8, 0x65

    move-object v2, p1

    .line 5
    invoke-static/range {v2 .. v8}, Lcom/tangxiaolv/telegramgallery/Utils/e;->g0(Landroid/graphics/Bitmap;FFIZII)Lcom/tangxiaolv/telegramgallery/TL/l;

    move-result-object v0

    if-eqz v0, :cond_6

    .line 6
    iget-object v2, p0, Lcom/tangxiaolv/telegramgallery/o;->u3:Ljava/util/ArrayList;

    iget v3, p0, Lcom/tangxiaolv/telegramgallery/o;->T:I

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    .line 7
    instance-of v3, v2, Lcom/tangxiaolv/telegramgallery/Utils/g$k;

    if-eqz v3, :cond_1

    .line 8
    check-cast v2, Lcom/tangxiaolv/telegramgallery/Utils/g$k;

    .line 9
    invoke-static {v0, v1}, Lcom/tangxiaolv/telegramgallery/Utils/d;->G(Lcom/tangxiaolv/telegramgallery/TL/m;Z)Ljava/io/File;

    move-result-object v3

    invoke-virtual {v3}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/tangxiaolv/telegramgallery/Utils/g$k;->h:Ljava/lang/String;

    .line 10
    invoke-static {v0, v1}, Lcom/tangxiaolv/telegramgallery/Utils/d;->G(Lcom/tangxiaolv/telegramgallery/TL/m;Z)Ljava/io/File;

    move-result-object v3

    invoke-virtual {v3}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/tangxiaolv/telegramgallery/Utils/g$k;->g:Ljava/lang/String;

    goto :goto_0

    .line 11
    :cond_1
    instance-of v3, v2, Lcom/tangxiaolv/telegramgallery/Utils/g$l;

    if-eqz v3, :cond_2

    .line 12
    move-object v9, v2

    check-cast v9, Lcom/tangxiaolv/telegramgallery/Utils/g$l;

    .line 13
    invoke-static {v0, v1}, Lcom/tangxiaolv/telegramgallery/Utils/d;->G(Lcom/tangxiaolv/telegramgallery/TL/m;Z)Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v9, Lcom/tangxiaolv/telegramgallery/Utils/g$l;->k:Ljava/lang/String;

    const/high16 v0, 0x42f00000    # 120.0f

    .line 14
    invoke-static {v0}, Lcom/tangxiaolv/telegramgallery/Utils/a;->g(F)I

    move-result v2

    int-to-float v3, v2

    .line 15
    invoke-static {v0}, Lcom/tangxiaolv/telegramgallery/Utils/a;->g(F)I

    move-result v0

    int-to-float v4, v0

    const/16 v5, 0x46

    const/4 v6, 0x0

    const/16 v7, 0x65

    const/16 v8, 0x65

    move-object v2, p1

    .line 16
    invoke-static/range {v2 .. v8}, Lcom/tangxiaolv/telegramgallery/Utils/e;->g0(Landroid/graphics/Bitmap;FFIZII)Lcom/tangxiaolv/telegramgallery/TL/l;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 17
    invoke-static {v0, v1}, Lcom/tangxiaolv/telegramgallery/Utils/d;->G(Lcom/tangxiaolv/telegramgallery/TL/m;Z)Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v9, Lcom/tangxiaolv/telegramgallery/Utils/g$l;->j:Ljava/lang/String;

    .line 18
    :cond_2
    :goto_0
    iget v2, p0, Lcom/tangxiaolv/telegramgallery/o;->y:I

    if-nez v2, :cond_3

    iget-object v2, p0, Lcom/tangxiaolv/telegramgallery/o;->b:Lcom/tangxiaolv/telegramgallery/o$b0;

    if-eqz v2, :cond_3

    .line 19
    iget v3, p0, Lcom/tangxiaolv/telegramgallery/o;->T:I

    invoke-interface {v2, v3}, Lcom/tangxiaolv/telegramgallery/o$b0;->i(I)V

    .line 20
    iget-object v2, p0, Lcom/tangxiaolv/telegramgallery/o;->b:Lcom/tangxiaolv/telegramgallery/o$b0;

    iget v3, p0, Lcom/tangxiaolv/telegramgallery/o;->T:I

    invoke-interface {v2, v3}, Lcom/tangxiaolv/telegramgallery/o$b0;->a(I)Z

    move-result v2

    if-nez v2, :cond_3

    .line 21
    iget-object v2, p0, Lcom/tangxiaolv/telegramgallery/o;->b:Lcom/tangxiaolv/telegramgallery/o$b0;

    iget v3, p0, Lcom/tangxiaolv/telegramgallery/o;->T:I

    invoke-interface {v2, v3}, Lcom/tangxiaolv/telegramgallery/o$b0;->f(I)V

    .line 22
    iget-object v2, p0, Lcom/tangxiaolv/telegramgallery/o;->n:Lcom/tangxiaolv/telegramgallery/Components/b;

    iget-object v3, p0, Lcom/tangxiaolv/telegramgallery/o;->b:Lcom/tangxiaolv/telegramgallery/o$b0;

    iget v4, p0, Lcom/tangxiaolv/telegramgallery/o;->T:I

    invoke-interface {v3, v4}, Lcom/tangxiaolv/telegramgallery/o$b0;->a(I)Z

    move-result v3

    invoke-virtual {v2, v3, v1}, Lcom/tangxiaolv/telegramgallery/Components/b;->e(ZZ)V

    .line 23
    invoke-direct {p0}, Lcom/tangxiaolv/telegramgallery/o;->f1()V

    .line 24
    :cond_3
    iget v2, p0, Lcom/tangxiaolv/telegramgallery/o;->P:I

    if-ne v2, v1, :cond_5

    .line 25
    iget-object v2, p0, Lcom/tangxiaolv/telegramgallery/o;->u:Lcom/tangxiaolv/telegramgallery/Components/d;

    invoke-virtual {v2}, Lcom/tangxiaolv/telegramgallery/Components/d;->getRectSizeX()F

    move-result v2

    invoke-direct {p0}, Lcom/tangxiaolv/telegramgallery/o;->A0()I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v2, v3

    .line 26
    iget-object v3, p0, Lcom/tangxiaolv/telegramgallery/o;->u:Lcom/tangxiaolv/telegramgallery/Components/d;

    invoke-virtual {v3}, Lcom/tangxiaolv/telegramgallery/Components/d;->getRectSizeY()F

    move-result v3

    invoke-direct {p0}, Lcom/tangxiaolv/telegramgallery/o;->y0()I

    move-result v4

    int-to-float v4, v4

    div-float/2addr v3, v4

    cmpl-float v4, v2, v3

    if-lez v4, :cond_4

    goto :goto_1

    :cond_4
    move v2, v3

    .line 27
    :goto_1
    iput v2, p0, Lcom/tangxiaolv/telegramgallery/o;->I2:F

    .line 28
    iget-object v2, p0, Lcom/tangxiaolv/telegramgallery/o;->u:Lcom/tangxiaolv/telegramgallery/Components/d;

    invoke-virtual {v2}, Lcom/tangxiaolv/telegramgallery/Components/d;->getRectX()F

    move-result v2

    iget-object v3, p0, Lcom/tangxiaolv/telegramgallery/o;->u:Lcom/tangxiaolv/telegramgallery/Components/d;

    invoke-virtual {v3}, Lcom/tangxiaolv/telegramgallery/Components/d;->getRectSizeX()F

    move-result v3

    const/high16 v4, 0x40000000    # 2.0f

    div-float/2addr v3, v4

    add-float/2addr v2, v3

    .line 29
    invoke-direct {p0}, Lcom/tangxiaolv/telegramgallery/o;->A0()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    int-to-float v3, v3

    sub-float/2addr v2, v3

    iput v2, p0, Lcom/tangxiaolv/telegramgallery/o;->G2:F

    .line 30
    iget-object v2, p0, Lcom/tangxiaolv/telegramgallery/o;->u:Lcom/tangxiaolv/telegramgallery/Components/d;

    invoke-virtual {v2}, Lcom/tangxiaolv/telegramgallery/Components/d;->getRectY()F

    move-result v2

    iget-object v3, p0, Lcom/tangxiaolv/telegramgallery/o;->u:Lcom/tangxiaolv/telegramgallery/Components/d;

    invoke-virtual {v3}, Lcom/tangxiaolv/telegramgallery/Components/d;->getRectSizeY()F

    move-result v3

    div-float/2addr v3, v4

    add-float/2addr v2, v3

    .line 31
    invoke-direct {p0}, Lcom/tangxiaolv/telegramgallery/o;->y0()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    int-to-float v3, v3

    sub-float/2addr v2, v3

    iput v2, p0, Lcom/tangxiaolv/telegramgallery/o;->H2:F

    .line 32
    iput-boolean v1, p0, Lcom/tangxiaolv/telegramgallery/o;->m3:Z

    .line 33
    :cond_5
    iget-object v2, p0, Lcom/tangxiaolv/telegramgallery/o;->R:Lcom/tangxiaolv/telegramgallery/k;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/tangxiaolv/telegramgallery/k;->l0(Landroid/view/View;)V

    .line 34
    iget-object v2, p0, Lcom/tangxiaolv/telegramgallery/o;->R:Lcom/tangxiaolv/telegramgallery/k;

    const/4 v3, 0x0

    invoke-virtual {v2, v3, v1}, Lcom/tangxiaolv/telegramgallery/k;->k0(IZ)V

    .line 35
    iget-object v1, p0, Lcom/tangxiaolv/telegramgallery/o;->R:Lcom/tangxiaolv/telegramgallery/k;

    invoke-virtual {v1, p1}, Lcom/tangxiaolv/telegramgallery/k;->e0(Landroid/graphics/Bitmap;)V

    .line 36
    iget-object p1, p0, Lcom/tangxiaolv/telegramgallery/o;->R:Lcom/tangxiaolv/telegramgallery/k;

    iget-object v1, p0, Lcom/tangxiaolv/telegramgallery/o;->i:Lcom/tangxiaolv/telegramgallery/o$z;

    invoke-virtual {p1, v1}, Lcom/tangxiaolv/telegramgallery/k;->l0(Landroid/view/View;)V

    if-eqz v0, :cond_6

    .line 37
    iget-object p1, v0, Lcom/tangxiaolv/telegramgallery/TL/l;->i:Ljava/lang/String;

    invoke-static {p1}, Lcom/tangxiaolv/telegramgallery/GalleryActivity;->M(Ljava/lang/String;)V

    :cond_6
    return-void
.end method

.method public t0(ZZ)V
    .locals 20

    move-object/from16 v1, p0

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-nez p2, :cond_1

    .line 1
    iget v0, v1, Lcom/tangxiaolv/telegramgallery/o;->P:I

    if-eqz v0, :cond_1

    if-ne v0, v2, :cond_0

    .line 2
    iget-object v0, v1, Lcom/tangxiaolv/telegramgallery/o;->u:Lcom/tangxiaolv/telegramgallery/Components/d;

    invoke-virtual {v0}, Lcom/tangxiaolv/telegramgallery/Components/d;->c()V

    .line 3
    :cond_0
    invoke-direct {v1, v3}, Lcom/tangxiaolv/telegramgallery/o;->b1(I)V

    return-void

    :cond_1
    const/4 v4, 0x0

    .line 4
    :try_start_0
    iget-object v0, v1, Lcom/tangxiaolv/telegramgallery/o;->v:Landroid/app/AlertDialog;

    if-eqz v0, :cond_2

    .line 5
    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 6
    iput-object v4, v1, Lcom/tangxiaolv/telegramgallery/o;->v:Landroid/app/AlertDialog;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 7
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 8
    :cond_2
    :goto_0
    iget v0, v1, Lcom/tangxiaolv/telegramgallery/o;->P:I

    if-eqz v0, :cond_4

    if-ne v0, v2, :cond_3

    .line 9
    iget-object v0, v1, Lcom/tangxiaolv/telegramgallery/o;->p:Lcom/tangxiaolv/telegramgallery/Components/h;

    const/16 v5, 0x8

    invoke-virtual {v0, v5}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 10
    iget-object v0, v1, Lcom/tangxiaolv/telegramgallery/o;->u:Lcom/tangxiaolv/telegramgallery/Components/d;

    invoke-virtual {v0, v5}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 11
    :cond_3
    iput v3, v1, Lcom/tangxiaolv/telegramgallery/o;->P:I

    .line 12
    :cond_4
    iget-object v0, v1, Lcom/tangxiaolv/telegramgallery/o;->d:Lcom/tangxiaolv/telegramgallery/GalleryActivity;

    if-eqz v0, :cond_f

    iget-boolean v0, v1, Lcom/tangxiaolv/telegramgallery/o;->c:Z

    if-eqz v0, :cond_f

    invoke-direct/range {p0 .. p0}, Lcom/tangxiaolv/telegramgallery/o;->q0()Z

    move-result v0

    if-nez v0, :cond_f

    iget-object v0, v1, Lcom/tangxiaolv/telegramgallery/o;->b:Lcom/tangxiaolv/telegramgallery/o$b0;

    if-nez v0, :cond_5

    goto/16 :goto_6

    .line 13
    :cond_5
    invoke-static {}, Lcom/tangxiaolv/telegramgallery/Utils/h;->b()Lcom/tangxiaolv/telegramgallery/Utils/h;

    move-result-object v0

    sget v5, Lcom/tangxiaolv/telegramgallery/Utils/h;->C:I

    invoke-virtual {v0, v1, v5}, Lcom/tangxiaolv/telegramgallery/Utils/h;->f(Ljava/lang/Object;I)V

    .line 14
    invoke-static {}, Lcom/tangxiaolv/telegramgallery/Utils/h;->b()Lcom/tangxiaolv/telegramgallery/Utils/h;

    move-result-object v0

    sget v5, Lcom/tangxiaolv/telegramgallery/Utils/h;->B:I

    invoke-virtual {v0, v1, v5}, Lcom/tangxiaolv/telegramgallery/Utils/h;->f(Ljava/lang/Object;I)V

    .line 15
    invoke-static {}, Lcom/tangxiaolv/telegramgallery/Utils/h;->b()Lcom/tangxiaolv/telegramgallery/Utils/h;

    move-result-object v0

    sget v5, Lcom/tangxiaolv/telegramgallery/Utils/h;->A:I

    invoke-virtual {v0, v1, v5}, Lcom/tangxiaolv/telegramgallery/Utils/h;->f(Ljava/lang/Object;I)V

    .line 16
    invoke-static {}, Lcom/tangxiaolv/telegramgallery/Utils/h;->b()Lcom/tangxiaolv/telegramgallery/Utils/h;

    move-result-object v0

    sget v5, Lcom/tangxiaolv/telegramgallery/Utils/h;->n:I

    invoke-virtual {v0, v1, v5}, Lcom/tangxiaolv/telegramgallery/Utils/h;->f(Ljava/lang/Object;I)V

    .line 17
    invoke-static {}, Lcom/tangxiaolv/telegramgallery/Utils/h;->b()Lcom/tangxiaolv/telegramgallery/Utils/h;

    move-result-object v0

    sget v5, Lcom/tangxiaolv/telegramgallery/Utils/h;->m:I

    invoke-virtual {v0, v1, v5}, Lcom/tangxiaolv/telegramgallery/Utils/h;->f(Ljava/lang/Object;I)V

    .line 18
    invoke-static {}, Lcom/tangxiaolv/telegramgallery/Utils/h;->b()Lcom/tangxiaolv/telegramgallery/Utils/h;

    move-result-object v0

    sget v5, Lcom/tangxiaolv/telegramgallery/Utils/h;->o:I

    invoke-virtual {v0, v1, v5}, Lcom/tangxiaolv/telegramgallery/Utils/h;->f(Ljava/lang/Object;I)V

    .line 19
    invoke-static {}, Lcom/tangxiaolv/telegramgallery/Utils/h;->b()Lcom/tangxiaolv/telegramgallery/Utils/h;

    move-result-object v0

    sget v5, Lcom/tangxiaolv/telegramgallery/Utils/h;->w:I

    invoke-virtual {v0, v1, v5}, Lcom/tangxiaolv/telegramgallery/Utils/h;->f(Ljava/lang/Object;I)V

    .line 20
    iput-boolean v3, v1, Lcom/tangxiaolv/telegramgallery/o;->g:Z

    .line 21
    iget-object v0, v1, Lcom/tangxiaolv/telegramgallery/o;->p3:Landroid/view/VelocityTracker;

    if-eqz v0, :cond_6

    .line 22
    invoke-virtual {v0}, Landroid/view/VelocityTracker;->recycle()V

    .line 23
    iput-object v4, v1, Lcom/tangxiaolv/telegramgallery/o;->p3:Landroid/view/VelocityTracker;

    .line 24
    :cond_6
    iget-object v0, v1, Lcom/tangxiaolv/telegramgallery/o;->b:Lcom/tangxiaolv/telegramgallery/o$b0;

    iget-object v5, v1, Lcom/tangxiaolv/telegramgallery/o;->U:Lcom/tangxiaolv/telegramgallery/TL/d;

    iget v6, v1, Lcom/tangxiaolv/telegramgallery/o;->T:I

    invoke-interface {v0, v5, v6}, Lcom/tangxiaolv/telegramgallery/o$b0;->o(Lcom/tangxiaolv/telegramgallery/TL/d;I)Lcom/tangxiaolv/telegramgallery/o$c0;

    move-result-object v0

    const/4 v8, 0x3

    const-string v9, "alpha"

    const/4 v11, 0x2

    if-eqz p1, :cond_e

    .line 25
    iput v2, v1, Lcom/tangxiaolv/telegramgallery/o;->J:I

    .line 26
    iget-object v12, v1, Lcom/tangxiaolv/telegramgallery/o;->k:Lcom/tangxiaolv/telegramgallery/Components/c;

    invoke-virtual {v12, v3}, Landroid/view/View;->setVisibility(I)V

    .line 27
    iget-object v12, v1, Lcom/tangxiaolv/telegramgallery/o;->i:Lcom/tangxiaolv/telegramgallery/o$z;

    invoke-virtual {v12}, Landroid/widget/FrameLayout;->invalidate()V

    .line 28
    new-instance v12, Landroid/animation/AnimatorSet;

    invoke-direct {v12}, Landroid/animation/AnimatorSet;-><init>()V

    .line 29
    iget-object v13, v1, Lcom/tangxiaolv/telegramgallery/o;->k:Lcom/tangxiaolv/telegramgallery/Components/c;

    invoke-virtual {v13}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v13

    .line 30
    iget-object v14, v1, Lcom/tangxiaolv/telegramgallery/o;->k:Lcom/tangxiaolv/telegramgallery/Components/c;

    iget-object v15, v1, Lcom/tangxiaolv/telegramgallery/o;->R:Lcom/tangxiaolv/telegramgallery/k;

    invoke-virtual {v15}, Lcom/tangxiaolv/telegramgallery/k;->x()I

    move-result v15

    invoke-virtual {v14, v15}, Lcom/tangxiaolv/telegramgallery/Components/c;->setOrientation(I)V

    if-eqz v0, :cond_8

    .line 31
    iget-object v14, v1, Lcom/tangxiaolv/telegramgallery/o;->k:Lcom/tangxiaolv/telegramgallery/Components/c;

    iget v15, v0, Lcom/tangxiaolv/telegramgallery/o$c0;->i:I

    if-eqz v15, :cond_7

    const/4 v15, 0x1

    goto :goto_1

    :cond_7
    const/4 v15, 0x0

    :goto_1
    invoke-virtual {v14, v15}, Lcom/tangxiaolv/telegramgallery/Components/c;->setNeedRadius(Z)V

    .line 32
    iget-object v14, v0, Lcom/tangxiaolv/telegramgallery/o$c0;->a:Lcom/tangxiaolv/telegramgallery/k;

    invoke-virtual {v14}, Lcom/tangxiaolv/telegramgallery/k;->l()Landroid/graphics/Rect;

    move-result-object v14

    .line 33
    iget v15, v14, Landroid/graphics/Rect;->right:I

    iget v4, v14, Landroid/graphics/Rect;->left:I

    sub-int/2addr v15, v4

    iput v15, v13, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 34
    iget v4, v14, Landroid/graphics/Rect;->bottom:I

    iget v15, v14, Landroid/graphics/Rect;->top:I

    sub-int/2addr v4, v15

    iput v4, v13, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 35
    iget-object v4, v1, Lcom/tangxiaolv/telegramgallery/o;->k:Lcom/tangxiaolv/telegramgallery/Components/c;

    iget-object v15, v0, Lcom/tangxiaolv/telegramgallery/o$c0;->e:Landroid/graphics/Bitmap;

    invoke-virtual {v4, v15}, Lcom/tangxiaolv/telegramgallery/Components/c;->setImageBitmap(Landroid/graphics/Bitmap;)V

    goto :goto_2

    .line 36
    :cond_8
    iget-object v4, v1, Lcom/tangxiaolv/telegramgallery/o;->k:Lcom/tangxiaolv/telegramgallery/Components/c;

    invoke-virtual {v4, v3}, Lcom/tangxiaolv/telegramgallery/Components/c;->setNeedRadius(Z)V

    .line 37
    iget-object v4, v1, Lcom/tangxiaolv/telegramgallery/o;->R:Lcom/tangxiaolv/telegramgallery/k;

    invoke-virtual {v4}, Lcom/tangxiaolv/telegramgallery/k;->r()I

    move-result v4

    iput v4, v13, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 38
    iget-object v4, v1, Lcom/tangxiaolv/telegramgallery/o;->R:Lcom/tangxiaolv/telegramgallery/k;

    invoke-virtual {v4}, Lcom/tangxiaolv/telegramgallery/k;->p()I

    move-result v4

    iput v4, v13, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 39
    iget-object v4, v1, Lcom/tangxiaolv/telegramgallery/o;->k:Lcom/tangxiaolv/telegramgallery/Components/c;

    iget-object v14, v1, Lcom/tangxiaolv/telegramgallery/o;->R:Lcom/tangxiaolv/telegramgallery/k;

    invoke-virtual {v14}, Lcom/tangxiaolv/telegramgallery/k;->g()Landroid/graphics/Bitmap;

    move-result-object v14

    invoke-virtual {v4, v14}, Lcom/tangxiaolv/telegramgallery/Components/c;->setImageBitmap(Landroid/graphics/Bitmap;)V

    const/4 v14, 0x0

    .line 40
    :goto_2
    iget-object v4, v1, Lcom/tangxiaolv/telegramgallery/o;->k:Lcom/tangxiaolv/telegramgallery/Components/c;

    invoke-virtual {v4, v13}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 41
    sget-object v4, Lcom/tangxiaolv/telegramgallery/Utils/a;->d:Landroid/graphics/Point;

    iget v15, v4, Landroid/graphics/Point;->x:I

    int-to-float v15, v15

    iget v5, v13, Landroid/view/ViewGroup$LayoutParams;->width:I

    int-to-float v6, v5

    div-float/2addr v15, v6

    .line 42
    iget v4, v4, Landroid/graphics/Point;->y:I

    sget v6, Lcom/tangxiaolv/telegramgallery/Utils/a;->b:I

    sub-int/2addr v4, v6

    int-to-float v4, v4

    iget v6, v13, Landroid/view/ViewGroup$LayoutParams;->height:I

    int-to-float v13, v6

    div-float/2addr v4, v13

    cmpl-float v13, v15, v4

    if-lez v13, :cond_9

    move v15, v4

    :cond_9
    int-to-float v4, v5

    .line 43
    iget v5, v1, Lcom/tangxiaolv/telegramgallery/o;->I2:F

    mul-float v4, v4, v5

    mul-float v4, v4, v15

    int-to-float v6, v6

    mul-float v6, v6, v5

    mul-float v6, v6, v15

    .line 44
    sget-object v5, Lcom/tangxiaolv/telegramgallery/Utils/a;->d:Landroid/graphics/Point;

    iget v13, v5, Landroid/graphics/Point;->x:I

    int-to-float v13, v13

    sub-float/2addr v13, v4

    const/high16 v4, 0x40000000    # 2.0f

    div-float/2addr v13, v4

    .line 45
    iget v5, v5, Landroid/graphics/Point;->y:I

    sget v16, Lcom/tangxiaolv/telegramgallery/Utils/a;->b:I

    sub-int v5, v5, v16

    int-to-float v5, v5

    sub-float/2addr v5, v6

    div-float/2addr v5, v4

    .line 46
    iget-object v4, v1, Lcom/tangxiaolv/telegramgallery/o;->k:Lcom/tangxiaolv/telegramgallery/Components/c;

    iget v6, v1, Lcom/tangxiaolv/telegramgallery/o;->G2:F

    add-float/2addr v13, v6

    invoke-virtual {v4, v13}, Landroid/view/View;->setTranslationX(F)V

    .line 47
    iget-object v4, v1, Lcom/tangxiaolv/telegramgallery/o;->k:Lcom/tangxiaolv/telegramgallery/Components/c;

    iget v6, v1, Lcom/tangxiaolv/telegramgallery/o;->H2:F

    add-float/2addr v5, v6

    invoke-virtual {v4, v5}, Landroid/view/View;->setTranslationY(F)V

    .line 48
    iget-object v4, v1, Lcom/tangxiaolv/telegramgallery/o;->k:Lcom/tangxiaolv/telegramgallery/Components/c;

    iget v5, v1, Lcom/tangxiaolv/telegramgallery/o;->I2:F

    mul-float v5, v5, v15

    invoke-virtual {v4, v5}, Landroid/view/View;->setScaleX(F)V

    .line 49
    iget-object v4, v1, Lcom/tangxiaolv/telegramgallery/o;->k:Lcom/tangxiaolv/telegramgallery/Components/c;

    iget v5, v1, Lcom/tangxiaolv/telegramgallery/o;->I2:F

    mul-float v5, v5, v15

    invoke-virtual {v4, v5}, Landroid/view/View;->setScaleY(F)V

    if-eqz v0, :cond_c

    .line 50
    iget-object v4, v0, Lcom/tangxiaolv/telegramgallery/o$c0;->a:Lcom/tangxiaolv/telegramgallery/k;

    invoke-virtual {v4, v3, v2}, Lcom/tangxiaolv/telegramgallery/k;->q0(ZZ)V

    .line 51
    iget v4, v14, Landroid/graphics/Rect;->left:I

    iget-object v5, v0, Lcom/tangxiaolv/telegramgallery/o$c0;->a:Lcom/tangxiaolv/telegramgallery/k;

    invoke-virtual {v5}, Lcom/tangxiaolv/telegramgallery/k;->s()I

    move-result v5

    sub-int/2addr v4, v5

    invoke-static {v4}, Ljava/lang/Math;->abs(I)I

    move-result v4

    .line 52
    iget v5, v14, Landroid/graphics/Rect;->top:I

    iget-object v6, v0, Lcom/tangxiaolv/telegramgallery/o$c0;->a:Lcom/tangxiaolv/telegramgallery/k;

    invoke-virtual {v6}, Lcom/tangxiaolv/telegramgallery/k;->u()I

    move-result v6

    sub-int/2addr v5, v6

    invoke-static {v5}, Ljava/lang/Math;->abs(I)I

    move-result v5

    new-array v6, v11, [I

    .line 53
    iget-object v13, v0, Lcom/tangxiaolv/telegramgallery/o$c0;->d:Landroid/view/View;

    invoke-virtual {v13, v6}, Landroid/view/View;->getLocationInWindow([I)V

    aget v13, v6, v2

    .line 54
    sget v15, Lcom/tangxiaolv/telegramgallery/Utils/a;->b:I

    sub-int/2addr v13, v15

    iget v15, v0, Lcom/tangxiaolv/telegramgallery/o$c0;->c:I

    iget v7, v14, Landroid/graphics/Rect;->top:I

    add-int v17, v15, v7

    sub-int v13, v13, v17

    iget v10, v0, Lcom/tangxiaolv/telegramgallery/o$c0;->k:I

    add-int/2addr v13, v10

    if-gez v13, :cond_a

    const/4 v13, 0x0

    :cond_a
    add-int/2addr v15, v7

    .line 55
    iget v10, v14, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v10, v7

    add-int/2addr v15, v10

    aget v6, v6, v2

    iget-object v7, v0, Lcom/tangxiaolv/telegramgallery/o$c0;->d:Landroid/view/View;

    .line 56
    invoke-virtual {v7}, Landroid/view/View;->getHeight()I

    move-result v7

    add-int/2addr v6, v7

    sget v7, Lcom/tangxiaolv/telegramgallery/Utils/a;->b:I

    sub-int/2addr v6, v7

    sub-int/2addr v15, v6

    iget v6, v0, Lcom/tangxiaolv/telegramgallery/o$c0;->j:I

    add-int/2addr v15, v6

    if-gez v15, :cond_b

    const/4 v15, 0x0

    .line 57
    :cond_b
    invoke-static {v13, v5}, Ljava/lang/Math;->max(II)I

    move-result v6

    .line 58
    invoke-static {v15, v5}, Ljava/lang/Math;->max(II)I

    move-result v5

    .line 59
    iget-object v7, v1, Lcom/tangxiaolv/telegramgallery/o;->I:[[F

    aget-object v7, v7, v3

    iget-object v10, v1, Lcom/tangxiaolv/telegramgallery/o;->k:Lcom/tangxiaolv/telegramgallery/Components/c;

    invoke-virtual {v10}, Landroid/view/View;->getScaleX()F

    move-result v10

    aput v10, v7, v3

    .line 60
    iget-object v7, v1, Lcom/tangxiaolv/telegramgallery/o;->I:[[F

    aget-object v7, v7, v3

    iget-object v10, v1, Lcom/tangxiaolv/telegramgallery/o;->k:Lcom/tangxiaolv/telegramgallery/Components/c;

    invoke-virtual {v10}, Landroid/view/View;->getScaleY()F

    move-result v10

    aput v10, v7, v2

    .line 61
    iget-object v7, v1, Lcom/tangxiaolv/telegramgallery/o;->I:[[F

    aget-object v7, v7, v3

    iget-object v10, v1, Lcom/tangxiaolv/telegramgallery/o;->k:Lcom/tangxiaolv/telegramgallery/Components/c;

    invoke-virtual {v10}, Landroid/view/View;->getTranslationX()F

    move-result v10

    aput v10, v7, v11

    .line 62
    iget-object v7, v1, Lcom/tangxiaolv/telegramgallery/o;->I:[[F

    aget-object v7, v7, v3

    iget-object v10, v1, Lcom/tangxiaolv/telegramgallery/o;->k:Lcom/tangxiaolv/telegramgallery/Components/c;

    invoke-virtual {v10}, Landroid/view/View;->getTranslationY()F

    move-result v10

    aput v10, v7, v8

    .line 63
    iget-object v7, v1, Lcom/tangxiaolv/telegramgallery/o;->I:[[F

    aget-object v10, v7, v3

    const/4 v13, 0x4

    const/4 v15, 0x0

    aput v15, v10, v13

    .line 64
    aget-object v10, v7, v3

    const/4 v13, 0x5

    aput v15, v10, v13

    .line 65
    aget-object v10, v7, v3

    const/16 v18, 0x6

    aput v15, v10, v18

    .line 66
    aget-object v10, v7, v3

    const/16 v19, 0x7

    aput v15, v10, v19

    .line 67
    aget-object v10, v7, v2

    iget v15, v0, Lcom/tangxiaolv/telegramgallery/o$c0;->l:F

    aput v15, v10, v3

    .line 68
    aget-object v10, v7, v2

    aput v15, v10, v2

    .line 69
    aget-object v10, v7, v2

    iget v3, v0, Lcom/tangxiaolv/telegramgallery/o$c0;->b:I

    int-to-float v3, v3

    iget v13, v14, Landroid/graphics/Rect;->left:I

    int-to-float v13, v13

    mul-float v13, v13, v15

    add-float/2addr v3, v13

    aput v3, v10, v11

    .line 70
    aget-object v3, v7, v2

    iget v10, v0, Lcom/tangxiaolv/telegramgallery/o$c0;->c:I

    int-to-float v10, v10

    iget v13, v14, Landroid/graphics/Rect;->top:I

    int-to-float v13, v13

    mul-float v13, v13, v15

    add-float/2addr v10, v13

    aput v10, v3, v8

    .line 71
    aget-object v3, v7, v2

    int-to-float v4, v4

    mul-float v4, v4, v15

    const/4 v10, 0x4

    aput v4, v3, v10

    .line 72
    aget-object v3, v7, v2

    int-to-float v4, v6

    mul-float v4, v4, v15

    const/4 v6, 0x5

    aput v4, v3, v6

    .line 73
    aget-object v3, v7, v2

    int-to-float v4, v5

    mul-float v4, v4, v15

    aput v4, v3, v18

    .line 74
    aget-object v3, v7, v2

    iget v4, v0, Lcom/tangxiaolv/telegramgallery/o$c0;->i:I

    int-to-float v4, v4

    aput v4, v3, v19

    new-array v3, v8, [Landroid/animation/Animator;

    .line 75
    iget-object v4, v1, Lcom/tangxiaolv/telegramgallery/o;->k:Lcom/tangxiaolv/telegramgallery/Components/c;

    new-array v5, v11, [F

    fill-array-data v5, :array_0

    const-string v6, "animationProgress"

    .line 76
    invoke-static {v4, v6, v5}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v4

    const/4 v5, 0x0

    aput-object v4, v3, v5

    iget-object v4, v1, Lcom/tangxiaolv/telegramgallery/o;->m:Lcom/tangxiaolv/telegramgallery/o$x;

    new-array v6, v2, [I

    aput v5, v6, v5

    .line 77
    invoke-static {v4, v9, v6}, Landroid/animation/ObjectAnimator;->ofInt(Ljava/lang/Object;Ljava/lang/String;[I)Landroid/animation/ObjectAnimator;

    move-result-object v4

    aput-object v4, v3, v2

    iget-object v4, v1, Lcom/tangxiaolv/telegramgallery/o;->i:Lcom/tangxiaolv/telegramgallery/o$z;

    new-array v2, v2, [F

    const/4 v6, 0x0

    aput v6, v2, v5

    .line 78
    invoke-static {v4, v9, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    aput-object v2, v3, v11

    .line 79
    invoke-virtual {v12, v3}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    goto :goto_4

    :cond_c
    const/4 v3, 0x4

    const/4 v5, 0x0

    new-array v3, v3, [Landroid/animation/Animator;

    .line 80
    iget-object v4, v1, Lcom/tangxiaolv/telegramgallery/o;->m:Lcom/tangxiaolv/telegramgallery/o$x;

    new-array v6, v2, [I

    aput v5, v6, v5

    .line 81
    invoke-static {v4, v9, v6}, Landroid/animation/ObjectAnimator;->ofInt(Ljava/lang/Object;Ljava/lang/String;[I)Landroid/animation/ObjectAnimator;

    move-result-object v4

    aput-object v4, v3, v5

    iget-object v4, v1, Lcom/tangxiaolv/telegramgallery/o;->k:Lcom/tangxiaolv/telegramgallery/Components/c;

    new-array v6, v2, [F

    const/4 v7, 0x0

    aput v7, v6, v5

    .line 82
    invoke-static {v4, v9, v6}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v4

    aput-object v4, v3, v2

    iget-object v4, v1, Lcom/tangxiaolv/telegramgallery/o;->k:Lcom/tangxiaolv/telegramgallery/Components/c;

    new-array v5, v2, [F

    .line 83
    iget v6, v1, Lcom/tangxiaolv/telegramgallery/o;->H2:F

    cmpl-float v6, v6, v7

    if-ltz v6, :cond_d

    .line 84
    sget-object v6, Lcom/tangxiaolv/telegramgallery/Utils/a;->d:Landroid/graphics/Point;

    iget v6, v6, Landroid/graphics/Point;->y:I

    goto :goto_3

    :cond_d
    sget-object v6, Lcom/tangxiaolv/telegramgallery/Utils/a;->d:Landroid/graphics/Point;

    iget v6, v6, Landroid/graphics/Point;->y:I

    neg-int v6, v6

    :goto_3
    int-to-float v6, v6

    const/4 v7, 0x0

    aput v6, v5, v7

    const-string v6, "translationY"

    .line 85
    invoke-static {v4, v6, v5}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v4

    aput-object v4, v3, v11

    iget-object v4, v1, Lcom/tangxiaolv/telegramgallery/o;->i:Lcom/tangxiaolv/telegramgallery/o$z;

    new-array v2, v2, [F

    const/4 v5, 0x0

    aput v5, v2, v7

    .line 86
    invoke-static {v4, v9, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    aput-object v2, v3, v8

    .line 87
    invoke-virtual {v12, v3}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 88
    :goto_4
    new-instance v2, Lcom/tangxiaolv/telegramgallery/o$g;

    invoke-direct {v2, v1, v0}, Lcom/tangxiaolv/telegramgallery/o$g;-><init>(Lcom/tangxiaolv/telegramgallery/o;Lcom/tangxiaolv/telegramgallery/o$c0;)V

    iput-object v2, v1, Lcom/tangxiaolv/telegramgallery/o;->L:Ljava/lang/Runnable;

    const-wide/16 v2, 0xc8

    .line 89
    invoke-virtual {v12, v2, v3}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 90
    new-instance v0, Lcom/tangxiaolv/telegramgallery/o$h;

    invoke-direct {v0, v1}, Lcom/tangxiaolv/telegramgallery/o$h;-><init>(Lcom/tangxiaolv/telegramgallery/o;)V

    invoke-virtual {v12, v0}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 91
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, v1, Lcom/tangxiaolv/telegramgallery/o;->K:J

    .line 92
    iget-object v0, v1, Lcom/tangxiaolv/telegramgallery/o;->i:Lcom/tangxiaolv/telegramgallery/o$z;

    const/4 v2, 0x0

    invoke-virtual {v0, v11, v2}, Landroid/widget/FrameLayout;->setLayerType(ILandroid/graphics/Paint;)V

    .line 93
    invoke-virtual {v12}, Landroid/animation/AnimatorSet;->start()V

    const/4 v2, 0x0

    goto :goto_5

    .line 94
    :cond_e
    new-instance v3, Landroid/animation/AnimatorSet;

    invoke-direct {v3}, Landroid/animation/AnimatorSet;-><init>()V

    const/4 v4, 0x4

    new-array v4, v4, [Landroid/animation/Animator;

    .line 95
    iget-object v5, v1, Lcom/tangxiaolv/telegramgallery/o;->i:Lcom/tangxiaolv/telegramgallery/o$z;

    new-array v6, v2, [F

    const v7, 0x3f666666    # 0.9f

    const/4 v10, 0x0

    aput v7, v6, v10

    const-string v12, "scaleX"

    .line 96
    invoke-static {v5, v12, v6}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v5

    aput-object v5, v4, v10

    iget-object v5, v1, Lcom/tangxiaolv/telegramgallery/o;->i:Lcom/tangxiaolv/telegramgallery/o$z;

    new-array v6, v2, [F

    aput v7, v6, v10

    const-string v7, "scaleY"

    .line 97
    invoke-static {v5, v7, v6}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v5

    aput-object v5, v4, v2

    iget-object v5, v1, Lcom/tangxiaolv/telegramgallery/o;->m:Lcom/tangxiaolv/telegramgallery/o$x;

    new-array v6, v2, [I

    aput v10, v6, v10

    .line 98
    invoke-static {v5, v9, v6}, Landroid/animation/ObjectAnimator;->ofInt(Ljava/lang/Object;Ljava/lang/String;[I)Landroid/animation/ObjectAnimator;

    move-result-object v5

    aput-object v5, v4, v11

    iget-object v5, v1, Lcom/tangxiaolv/telegramgallery/o;->i:Lcom/tangxiaolv/telegramgallery/o$z;

    new-array v2, v2, [F

    const/4 v6, 0x0

    aput v6, v2, v10

    .line 99
    invoke-static {v5, v9, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    aput-object v2, v4, v8

    .line 100
    invoke-virtual {v3, v4}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 101
    iput v11, v1, Lcom/tangxiaolv/telegramgallery/o;->J:I

    .line 102
    new-instance v2, Lcom/tangxiaolv/telegramgallery/o$i;

    invoke-direct {v2, v1, v0}, Lcom/tangxiaolv/telegramgallery/o$i;-><init>(Lcom/tangxiaolv/telegramgallery/o;Lcom/tangxiaolv/telegramgallery/o$c0;)V

    iput-object v2, v1, Lcom/tangxiaolv/telegramgallery/o;->L:Ljava/lang/Runnable;

    const-wide/16 v4, 0xc8

    .line 103
    invoke-virtual {v3, v4, v5}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 104
    new-instance v0, Lcom/tangxiaolv/telegramgallery/o$j;

    invoke-direct {v0, v1}, Lcom/tangxiaolv/telegramgallery/o$j;-><init>(Lcom/tangxiaolv/telegramgallery/o;)V

    invoke-virtual {v3, v0}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 105
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    iput-wide v4, v1, Lcom/tangxiaolv/telegramgallery/o;->K:J

    .line 106
    iget-object v0, v1, Lcom/tangxiaolv/telegramgallery/o;->i:Lcom/tangxiaolv/telegramgallery/o$z;

    const/4 v2, 0x0

    invoke-virtual {v0, v11, v2}, Landroid/widget/FrameLayout;->setLayerType(ILandroid/graphics/Paint;)V

    .line 107
    invoke-virtual {v3}, Landroid/animation/AnimatorSet;->start()V

    .line 108
    :goto_5
    iget-object v0, v1, Lcom/tangxiaolv/telegramgallery/o;->z:Lcom/tangxiaolv/telegramgallery/AnimatedFileDrawable;

    if-eqz v0, :cond_f

    .line 109
    invoke-virtual {v0, v2}, Lcom/tangxiaolv/telegramgallery/AnimatedFileDrawable;->I(Landroid/view/View;)V

    .line 110
    iput-object v2, v1, Lcom/tangxiaolv/telegramgallery/o;->z:Lcom/tangxiaolv/telegramgallery/AnimatedFileDrawable;

    .line 111
    iget-object v0, v1, Lcom/tangxiaolv/telegramgallery/o;->R:Lcom/tangxiaolv/telegramgallery/k;

    invoke-virtual {v0, v2}, Lcom/tangxiaolv/telegramgallery/k;->f0(Landroid/graphics/drawable/Drawable;)V

    :cond_f
    :goto_6
    return-void

    nop

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method public u0()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/tangxiaolv/telegramgallery/o;->d:Lcom/tangxiaolv/telegramgallery/GalleryActivity;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/tangxiaolv/telegramgallery/o;->j:Lcom/tangxiaolv/telegramgallery/o$a0;

    if-nez v0, :cond_0

    goto :goto_1

    :cond_0
    const/4 v1, 0x0

    .line 2
    :try_start_0
    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 3
    iget-object v0, p0, Lcom/tangxiaolv/telegramgallery/o;->d:Lcom/tangxiaolv/telegramgallery/GalleryActivity;

    const-string v2, "window"

    .line 4
    invoke-virtual {v0, v2}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    .line 5
    iget-object v2, p0, Lcom/tangxiaolv/telegramgallery/o;->j:Lcom/tangxiaolv/telegramgallery/o$a0;

    invoke-interface {v0, v2}, Landroid/view/WindowManager;->removeViewImmediate(Landroid/view/View;)V

    .line 6
    :cond_1
    iput-object v1, p0, Lcom/tangxiaolv/telegramgallery/o;->j:Lcom/tangxiaolv/telegramgallery/o$a0;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 7
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 8
    :goto_0
    iput-object v1, p0, Lcom/tangxiaolv/telegramgallery/o;->d:Lcom/tangxiaolv/telegramgallery/GalleryActivity;

    .line 9
    sput-object v1, Lcom/tangxiaolv/telegramgallery/o;->B3:Lcom/tangxiaolv/telegramgallery/o;

    :cond_2
    :goto_1
    return-void
.end method

.method public x0()F
    .locals 1

    iget v0, p0, Lcom/tangxiaolv/telegramgallery/o;->M2:F

    return v0
.end method
