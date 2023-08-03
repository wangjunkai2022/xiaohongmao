.class Leltos/simpledialogfragment/color/ColorWheelView$g$a;
.super Ljava/lang/Object;
.source "ColorWheelView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Leltos/simpledialogfragment/color/ColorWheelView$g;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "a"
.end annotation


# instance fields
.field private a:Landroid/graphics/Path;

.field private b:Landroid/graphics/Path;

.field private c:Leltos/simpledialogfragment/color/ColorWheelView$b;

.field private d:Landroid/graphics/Paint;

.field e:F

.field f:F

.field final synthetic g:Leltos/simpledialogfragment/color/ColorWheelView$g;


# direct methods
.method constructor <init>(Leltos/simpledialogfragment/color/ColorWheelView$g;)V
    .locals 2

    .line 1
    iput-object p1, p0, Leltos/simpledialogfragment/color/ColorWheelView$g$a;->g:Leltos/simpledialogfragment/color/ColorWheelView$g;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Leltos/simpledialogfragment/color/ColorWheelView$g$a;->a:Landroid/graphics/Path;

    .line 3
    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Leltos/simpledialogfragment/color/ColorWheelView$g$a;->b:Landroid/graphics/Path;

    .line 4
    new-instance v0, Leltos/simpledialogfragment/color/ColorWheelView$b;

    iget-object p1, p1, Leltos/simpledialogfragment/color/ColorWheelView$g;->v:Leltos/simpledialogfragment/color/ColorWheelView;

    const/high16 v1, -0x1000000

    invoke-direct {v0, p1, v1}, Leltos/simpledialogfragment/color/ColorWheelView$b;-><init>(Leltos/simpledialogfragment/color/ColorWheelView;I)V

    iput-object v0, p0, Leltos/simpledialogfragment/color/ColorWheelView$g$a;->c:Leltos/simpledialogfragment/color/ColorWheelView$b;

    const/4 p1, 0x0

    .line 5
    iput p1, p0, Leltos/simpledialogfragment/color/ColorWheelView$g$a;->e:F

    .line 6
    iput p1, p0, Leltos/simpledialogfragment/color/ColorWheelView$g$a;->f:F

    .line 7
    new-instance p1, Landroid/graphics/Paint;

    const/4 v0, 0x1

    invoke-direct {p1, v0}, Landroid/graphics/Paint;-><init>(I)V

    iput-object p1, p0, Leltos/simpledialogfragment/color/ColorWheelView$g$a;->d:Landroid/graphics/Paint;

    .line 8
    sget-object v0, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    return-void
.end method

.method static synthetic a(Leltos/simpledialogfragment/color/ColorWheelView$g$a;)Landroid/graphics/Path;
    .locals 0

    iget-object p0, p0, Leltos/simpledialogfragment/color/ColorWheelView$g$a;->a:Landroid/graphics/Path;

    return-object p0
.end method

.method static synthetic b(Leltos/simpledialogfragment/color/ColorWheelView$g$a;Landroid/graphics/Path;)Landroid/graphics/Path;
    .locals 0

    iput-object p1, p0, Leltos/simpledialogfragment/color/ColorWheelView$g$a;->a:Landroid/graphics/Path;

    return-object p1
.end method

.method static synthetic c(Leltos/simpledialogfragment/color/ColorWheelView$g$a;)Landroid/graphics/Path;
    .locals 0

    iget-object p0, p0, Leltos/simpledialogfragment/color/ColorWheelView$g$a;->b:Landroid/graphics/Path;

    return-object p0
.end method

.method static synthetic d(Leltos/simpledialogfragment/color/ColorWheelView$g$a;)Leltos/simpledialogfragment/color/ColorWheelView$b;
    .locals 0

    iget-object p0, p0, Leltos/simpledialogfragment/color/ColorWheelView$g$a;->c:Leltos/simpledialogfragment/color/ColorWheelView$b;

    return-object p0
.end method

.method static synthetic e(Leltos/simpledialogfragment/color/ColorWheelView$g$a;Leltos/simpledialogfragment/color/ColorWheelView$b;)Leltos/simpledialogfragment/color/ColorWheelView$b;
    .locals 0

    iput-object p1, p0, Leltos/simpledialogfragment/color/ColorWheelView$g$a;->c:Leltos/simpledialogfragment/color/ColorWheelView$b;

    return-object p1
.end method

.method static synthetic f(Leltos/simpledialogfragment/color/ColorWheelView$g$a;)Landroid/graphics/Paint;
    .locals 0

    iget-object p0, p0, Leltos/simpledialogfragment/color/ColorWheelView$g$a;->d:Landroid/graphics/Paint;

    return-object p0
.end method
