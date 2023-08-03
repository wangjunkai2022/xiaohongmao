.class Lcom/facebook/drawee/drawable/s$m;
.super Lcom/facebook/drawee/drawable/s$a;
.source "ScalingUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/drawee/drawable/s;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "m"
.end annotation


# static fields
.field public static final l:Lcom/facebook/drawee/drawable/s$c;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/facebook/drawee/drawable/s$m;

    invoke-direct {v0}, Lcom/facebook/drawee/drawable/s$m;-><init>()V

    sput-object v0, Lcom/facebook/drawee/drawable/s$m;->l:Lcom/facebook/drawee/drawable/s$c;

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
    iget p4, p2, Landroid/graphics/Rect;->left:I

    int-to-float p4, p4

    invoke-virtual {p2}, Landroid/graphics/Rect;->width()I

    move-result p5

    int-to-float p5, p5

    int-to-float p3, p3

    mul-float p3, p3, p8

    sub-float/2addr p5, p3

    const/high16 p3, 0x3f000000    # 0.5f

    mul-float p5, p5, p3

    add-float/2addr p4, p5

    .line 2
    iget p2, p2, Landroid/graphics/Rect;->top:I

    int-to-float p2, p2

    .line 3
    invoke-virtual {p1, p8, p8}, Landroid/graphics/Matrix;->setScale(FF)V

    add-float/2addr p4, p3

    float-to-int p4, p4

    int-to-float p4, p4

    add-float/2addr p2, p3

    float-to-int p2, p2

    int-to-float p2, p2

    .line 4
    invoke-virtual {p1, p4, p2}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    const-string v0, "fit_y"

    return-object v0
.end method
