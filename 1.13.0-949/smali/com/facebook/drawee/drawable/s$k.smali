.class Lcom/facebook/drawee/drawable/s$k;
.super Lcom/facebook/drawee/drawable/s$a;
.source "ScalingUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/drawee/drawable/s;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "k"
.end annotation


# static fields
.field public static final l:Lcom/facebook/drawee/drawable/s$c;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/facebook/drawee/drawable/s$k;

    invoke-direct {v0}, Lcom/facebook/drawee/drawable/s$k;-><init>()V

    sput-object v0, Lcom/facebook/drawee/drawable/s$k;->l:Lcom/facebook/drawee/drawable/s$c;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/facebook/drawee/drawable/s$a;-><init>()V

    return-void
.end method


# virtual methods
.method public b(Landroid/graphics/Matrix;Landroid/graphics/Rect;IIFFFF)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "outTransform",
            "parentRect",
            "childWidth",
            "childHeight",
            "focusX",
            "focusY",
            "scaleX",
            "scaleY"
        }
    .end annotation

    .line 1
    iget p3, p2, Landroid/graphics/Rect;->left:I

    int-to-float p3, p3

    .line 2
    iget p5, p2, Landroid/graphics/Rect;->top:I

    int-to-float p5, p5

    invoke-virtual {p2}, Landroid/graphics/Rect;->height()I

    move-result p2

    int-to-float p2, p2

    int-to-float p4, p4

    mul-float p4, p4, p7

    sub-float/2addr p2, p4

    const/high16 p4, 0x3f000000    # 0.5f

    mul-float p2, p2, p4

    add-float/2addr p5, p2

    .line 3
    invoke-virtual {p1, p7, p7}, Landroid/graphics/Matrix;->setScale(FF)V

    add-float/2addr p3, p4

    float-to-int p2, p3

    int-to-float p2, p2

    add-float/2addr p5, p4

    float-to-int p3, p5

    int-to-float p3, p3

    .line 4
    invoke-virtual {p1, p2, p3}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    const-string v0, "fit_x"

    return-object v0
.end method
