.class Lcom/shizhefei/view/indicator/slidebar/d$b;
.super Ljava/lang/Object;
.source "SpringBar.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/shizhefei/view/indicator/slidebar/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "b"
.end annotation


# instance fields
.field private a:F

.field private b:F

.field private c:F

.field final synthetic d:Lcom/shizhefei/view/indicator/slidebar/d;


# direct methods
.method private constructor <init>(Lcom/shizhefei/view/indicator/slidebar/d;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/shizhefei/view/indicator/slidebar/d$b;->d:Lcom/shizhefei/view/indicator/slidebar/d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/shizhefei/view/indicator/slidebar/d;Lcom/shizhefei/view/indicator/slidebar/d$a;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lcom/shizhefei/view/indicator/slidebar/d$b;-><init>(Lcom/shizhefei/view/indicator/slidebar/d;)V

    return-void
.end method


# virtual methods
.method public a()F
    .locals 1

    iget v0, p0, Lcom/shizhefei/view/indicator/slidebar/d$b;->c:F

    return v0
.end method

.method public b()F
    .locals 1

    iget v0, p0, Lcom/shizhefei/view/indicator/slidebar/d$b;->a:F

    return v0
.end method

.method public c()F
    .locals 1

    iget v0, p0, Lcom/shizhefei/view/indicator/slidebar/d$b;->b:F

    return v0
.end method

.method public d(F)V
    .locals 0

    iput p1, p0, Lcom/shizhefei/view/indicator/slidebar/d$b;->c:F

    return-void
.end method

.method public e(F)V
    .locals 0

    iput p1, p0, Lcom/shizhefei/view/indicator/slidebar/d$b;->a:F

    return-void
.end method

.method public f(F)V
    .locals 0

    iput p1, p0, Lcom/shizhefei/view/indicator/slidebar/d$b;->b:F

    return-void
.end method
