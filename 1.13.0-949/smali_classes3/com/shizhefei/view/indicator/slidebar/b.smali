.class public Lcom/shizhefei/view/indicator/slidebar/b;
.super Ljava/lang/Object;
.source "DrawableBar.java"

# interfaces
.implements Lcom/shizhefei/view/indicator/slidebar/ScrollBar;


# instance fields
.field protected a:Lcom/shizhefei/view/indicator/slidebar/ScrollBar$Gravity;

.field protected b:Landroid/view/View;

.field protected c:I

.field protected d:Landroid/graphics/drawable/Drawable;


# direct methods
.method public constructor <init>(Landroid/content/Context;I)V
    .locals 1

    .line 1
    sget-object v0, Lcom/shizhefei/view/indicator/slidebar/ScrollBar$Gravity;->BOTTOM:Lcom/shizhefei/view/indicator/slidebar/ScrollBar$Gravity;

    invoke-direct {p0, p1, p2, v0}, Lcom/shizhefei/view/indicator/slidebar/b;-><init>(Landroid/content/Context;ILcom/shizhefei/view/indicator/slidebar/ScrollBar$Gravity;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;ILcom/shizhefei/view/indicator/slidebar/ScrollBar$Gravity;)V
    .locals 1

    .line 2
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    invoke-direct {p0, p1, p2, p3}, Lcom/shizhefei/view/indicator/slidebar/b;-><init>(Landroid/content/Context;Landroid/graphics/drawable/Drawable;Lcom/shizhefei/view/indicator/slidebar/ScrollBar$Gravity;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/graphics/drawable/Drawable;)V
    .locals 1

    .line 3
    sget-object v0, Lcom/shizhefei/view/indicator/slidebar/ScrollBar$Gravity;->BOTTOM:Lcom/shizhefei/view/indicator/slidebar/ScrollBar$Gravity;

    invoke-direct {p0, p1, p2, v0}, Lcom/shizhefei/view/indicator/slidebar/b;-><init>(Landroid/content/Context;Landroid/graphics/drawable/Drawable;Lcom/shizhefei/view/indicator/slidebar/ScrollBar$Gravity;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/graphics/drawable/Drawable;Lcom/shizhefei/view/indicator/slidebar/ScrollBar$Gravity;)V
    .locals 1
    .annotation build Landroid/annotation/TargetApi;
        value = 0x10
    .end annotation

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    new-instance v0, Landroid/view/View;

    invoke-direct {v0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/shizhefei/view/indicator/slidebar/b;->b:Landroid/view/View;

    .line 6
    iput-object p2, p0, Lcom/shizhefei/view/indicator/slidebar/b;->d:Landroid/graphics/drawable/Drawable;

    .line 7
    invoke-virtual {v0, p2}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 8
    iput-object p3, p0, Lcom/shizhefei/view/indicator/slidebar/b;->a:Lcom/shizhefei/view/indicator/slidebar/ScrollBar$Gravity;

    return-void
.end method


# virtual methods
.method public a(I)I
    .locals 0

    iget-object p1, p0, Lcom/shizhefei/view/indicator/slidebar/b;->d:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result p1

    return p1
.end method

.method public b(I)I
    .locals 0

    iget-object p1, p0, Lcom/shizhefei/view/indicator/slidebar/b;->d:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result p1

    return p1
.end method

.method public c()I
    .locals 1

    iget v0, p0, Lcom/shizhefei/view/indicator/slidebar/b;->c:I

    return v0
.end method

.method public d(I)V
    .locals 1

    .line 1
    iput p1, p0, Lcom/shizhefei/view/indicator/slidebar/b;->c:I

    .line 2
    iget-object v0, p0, Lcom/shizhefei/view/indicator/slidebar/b;->b:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setBackgroundColor(I)V

    return-void
.end method

.method public e(Lcom/shizhefei/view/indicator/slidebar/ScrollBar$Gravity;)Lcom/shizhefei/view/indicator/slidebar/b;
    .locals 0

    iput-object p1, p0, Lcom/shizhefei/view/indicator/slidebar/b;->a:Lcom/shizhefei/view/indicator/slidebar/ScrollBar$Gravity;

    return-object p0
.end method

.method public getGravity()Lcom/shizhefei/view/indicator/slidebar/ScrollBar$Gravity;
    .locals 1

    iget-object v0, p0, Lcom/shizhefei/view/indicator/slidebar/b;->a:Lcom/shizhefei/view/indicator/slidebar/ScrollBar$Gravity;

    return-object v0
.end method

.method public getSlideView()Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/shizhefei/view/indicator/slidebar/b;->b:Landroid/view/View;

    return-object v0
.end method

.method public onPageScrolled(IFI)V
    .locals 0

    return-void
.end method
