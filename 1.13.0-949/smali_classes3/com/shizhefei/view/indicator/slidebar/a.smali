.class public Lcom/shizhefei/view/indicator/slidebar/a;
.super Ljava/lang/Object;
.source "ColorBar.java"

# interfaces
.implements Lcom/shizhefei/view/indicator/slidebar/ScrollBar;


# instance fields
.field protected a:Lcom/shizhefei/view/indicator/slidebar/ScrollBar$Gravity;

.field protected b:Landroid/view/View;

.field protected c:I

.field protected d:I

.field protected e:I


# direct methods
.method public constructor <init>(Landroid/content/Context;II)V
    .locals 1

    .line 1
    sget-object v0, Lcom/shizhefei/view/indicator/slidebar/ScrollBar$Gravity;->BOTTOM:Lcom/shizhefei/view/indicator/slidebar/ScrollBar$Gravity;

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/shizhefei/view/indicator/slidebar/a;-><init>(Landroid/content/Context;IILcom/shizhefei/view/indicator/slidebar/ScrollBar$Gravity;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;IILcom/shizhefei/view/indicator/slidebar/ScrollBar$Gravity;)V
    .locals 1

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    new-instance v0, Landroid/view/View;

    invoke-direct {v0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/shizhefei/view/indicator/slidebar/a;->b:Landroid/view/View;

    .line 4
    iput p2, p0, Lcom/shizhefei/view/indicator/slidebar/a;->c:I

    .line 5
    invoke-virtual {v0, p2}, Landroid/view/View;->setBackgroundColor(I)V

    .line 6
    iput p3, p0, Lcom/shizhefei/view/indicator/slidebar/a;->d:I

    .line 7
    iput-object p4, p0, Lcom/shizhefei/view/indicator/slidebar/a;->a:Lcom/shizhefei/view/indicator/slidebar/ScrollBar$Gravity;

    return-void
.end method


# virtual methods
.method public a(I)I
    .locals 1

    iget v0, p0, Lcom/shizhefei/view/indicator/slidebar/a;->d:I

    if-nez v0, :cond_0

    return p1

    :cond_0
    return v0
.end method

.method public b(I)I
    .locals 1

    iget v0, p0, Lcom/shizhefei/view/indicator/slidebar/a;->e:I

    if-nez v0, :cond_0

    return p1

    :cond_0
    return v0
.end method

.method public c()I
    .locals 1

    iget v0, p0, Lcom/shizhefei/view/indicator/slidebar/a;->c:I

    return v0
.end method

.method public d(I)V
    .locals 1

    .line 1
    iput p1, p0, Lcom/shizhefei/view/indicator/slidebar/a;->c:I

    .line 2
    iget-object v0, p0, Lcom/shizhefei/view/indicator/slidebar/a;->b:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setBackgroundColor(I)V

    return-void
.end method

.method public e(Lcom/shizhefei/view/indicator/slidebar/ScrollBar$Gravity;)V
    .locals 0

    iput-object p1, p0, Lcom/shizhefei/view/indicator/slidebar/a;->a:Lcom/shizhefei/view/indicator/slidebar/ScrollBar$Gravity;

    return-void
.end method

.method public f(I)V
    .locals 0

    iput p1, p0, Lcom/shizhefei/view/indicator/slidebar/a;->d:I

    return-void
.end method

.method public g(I)V
    .locals 0

    iput p1, p0, Lcom/shizhefei/view/indicator/slidebar/a;->e:I

    return-void
.end method

.method public getGravity()Lcom/shizhefei/view/indicator/slidebar/ScrollBar$Gravity;
    .locals 1

    iget-object v0, p0, Lcom/shizhefei/view/indicator/slidebar/a;->a:Lcom/shizhefei/view/indicator/slidebar/ScrollBar$Gravity;

    return-object v0
.end method

.method public getSlideView()Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/shizhefei/view/indicator/slidebar/a;->b:Landroid/view/View;

    return-object v0
.end method

.method public onPageScrolled(IFI)V
    .locals 0

    return-void
.end method
