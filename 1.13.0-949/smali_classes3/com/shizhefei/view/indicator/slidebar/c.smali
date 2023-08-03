.class public Lcom/shizhefei/view/indicator/slidebar/c;
.super Ljava/lang/Object;
.source "LayoutBar.java"

# interfaces
.implements Lcom/shizhefei/view/indicator/slidebar/ScrollBar;


# instance fields
.field protected a:Landroid/content/Context;

.field protected b:I

.field protected c:Landroid/view/View;

.field protected d:I

.field protected e:I

.field protected f:Lcom/shizhefei/view/indicator/slidebar/ScrollBar$Gravity;

.field private g:Landroid/view/ViewGroup$LayoutParams;


# direct methods
.method public constructor <init>(Landroid/content/Context;I)V
    .locals 1

    .line 1
    sget-object v0, Lcom/shizhefei/view/indicator/slidebar/ScrollBar$Gravity;->BOTTOM:Lcom/shizhefei/view/indicator/slidebar/ScrollBar$Gravity;

    invoke-direct {p0, p1, p2, v0}, Lcom/shizhefei/view/indicator/slidebar/c;-><init>(Landroid/content/Context;ILcom/shizhefei/view/indicator/slidebar/ScrollBar$Gravity;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;ILcom/shizhefei/view/indicator/slidebar/ScrollBar$Gravity;)V
    .locals 2

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput-object p1, p0, Lcom/shizhefei/view/indicator/slidebar/c;->a:Landroid/content/Context;

    .line 4
    iput p2, p0, Lcom/shizhefei/view/indicator/slidebar/c;->b:I

    .line 5
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    new-instance v1, Landroid/widget/LinearLayout;

    invoke-direct {v1, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    const/4 p1, 0x0

    invoke-virtual {v0, p2, v1, p1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/shizhefei/view/indicator/slidebar/c;->c:Landroid/view/View;

    .line 6
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    iput-object p1, p0, Lcom/shizhefei/view/indicator/slidebar/c;->g:Landroid/view/ViewGroup$LayoutParams;

    .line 7
    iget-object p1, p0, Lcom/shizhefei/view/indicator/slidebar/c;->c:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    iget p1, p1, Landroid/view/ViewGroup$LayoutParams;->height:I

    iput p1, p0, Lcom/shizhefei/view/indicator/slidebar/c;->d:I

    .line 8
    iget-object p1, p0, Lcom/shizhefei/view/indicator/slidebar/c;->c:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    iget p1, p1, Landroid/view/ViewGroup$LayoutParams;->width:I

    iput p1, p0, Lcom/shizhefei/view/indicator/slidebar/c;->e:I

    .line 9
    iput-object p3, p0, Lcom/shizhefei/view/indicator/slidebar/c;->f:Lcom/shizhefei/view/indicator/slidebar/ScrollBar$Gravity;

    return-void
.end method


# virtual methods
.method public a(I)I
    .locals 1

    .line 1
    iget v0, p0, Lcom/shizhefei/view/indicator/slidebar/c;->d:I

    if-gtz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/shizhefei/view/indicator/slidebar/c;->g:Landroid/view/ViewGroup$LayoutParams;

    iput p1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    return p1

    :cond_0
    return v0
.end method

.method public b(I)I
    .locals 1

    .line 1
    iget v0, p0, Lcom/shizhefei/view/indicator/slidebar/c;->e:I

    if-gtz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/shizhefei/view/indicator/slidebar/c;->g:Landroid/view/ViewGroup$LayoutParams;

    iput p1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    return p1

    :cond_0
    return v0
.end method

.method public getGravity()Lcom/shizhefei/view/indicator/slidebar/ScrollBar$Gravity;
    .locals 1

    iget-object v0, p0, Lcom/shizhefei/view/indicator/slidebar/c;->f:Lcom/shizhefei/view/indicator/slidebar/ScrollBar$Gravity;

    return-object v0
.end method

.method public getSlideView()Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/shizhefei/view/indicator/slidebar/c;->c:Landroid/view/View;

    return-object v0
.end method

.method public onPageScrolled(IFI)V
    .locals 0

    return-void
.end method
