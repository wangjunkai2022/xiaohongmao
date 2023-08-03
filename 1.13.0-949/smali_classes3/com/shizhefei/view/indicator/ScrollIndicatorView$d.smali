.class Lcom/shizhefei/view/indicator/ScrollIndicatorView$d;
.super Ljava/lang/Object;
.source "ScrollIndicatorView.java"

# interfaces
.implements Lcom/shizhefei/view/indicator/c$d;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/shizhefei/view/indicator/ScrollIndicatorView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "d"
.end annotation


# instance fields
.field private a:Lcom/shizhefei/view/indicator/c$d;

.field final synthetic b:Lcom/shizhefei/view/indicator/ScrollIndicatorView;


# direct methods
.method private constructor <init>(Lcom/shizhefei/view/indicator/ScrollIndicatorView;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/shizhefei/view/indicator/ScrollIndicatorView$d;->b:Lcom/shizhefei/view/indicator/ScrollIndicatorView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/shizhefei/view/indicator/ScrollIndicatorView;Lcom/shizhefei/view/indicator/ScrollIndicatorView$a;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lcom/shizhefei/view/indicator/ScrollIndicatorView$d;-><init>(Lcom/shizhefei/view/indicator/ScrollIndicatorView;)V

    return-void
.end method


# virtual methods
.method public a(Landroid/view/View;II)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/shizhefei/view/indicator/ScrollIndicatorView$d;->b:Lcom/shizhefei/view/indicator/ScrollIndicatorView;

    invoke-static {v0}, Lcom/shizhefei/view/indicator/ScrollIndicatorView;->d(Lcom/shizhefei/view/indicator/ScrollIndicatorView;)I

    move-result v0

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/shizhefei/view/indicator/ScrollIndicatorView$d;->b:Lcom/shizhefei/view/indicator/ScrollIndicatorView;

    invoke-static {v0, p2}, Lcom/shizhefei/view/indicator/ScrollIndicatorView;->e(Lcom/shizhefei/view/indicator/ScrollIndicatorView;I)V

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/shizhefei/view/indicator/ScrollIndicatorView$d;->a:Lcom/shizhefei/view/indicator/c$d;

    if-eqz v0, :cond_1

    .line 4
    invoke-interface {v0, p1, p2, p3}, Lcom/shizhefei/view/indicator/c$d;->a(Landroid/view/View;II)V

    :cond_1
    return-void
.end method

.method public b()Lcom/shizhefei/view/indicator/c$d;
    .locals 1

    iget-object v0, p0, Lcom/shizhefei/view/indicator/ScrollIndicatorView$d;->a:Lcom/shizhefei/view/indicator/c$d;

    return-object v0
.end method

.method public c(Lcom/shizhefei/view/indicator/c$d;)V
    .locals 0

    iput-object p1, p0, Lcom/shizhefei/view/indicator/ScrollIndicatorView$d;->a:Lcom/shizhefei/view/indicator/c$d;

    return-void
.end method
