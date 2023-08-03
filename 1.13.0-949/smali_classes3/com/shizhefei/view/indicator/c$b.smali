.class public abstract Lcom/shizhefei/view/indicator/c$b;
.super Ljava/lang/Object;
.source "Indicator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/shizhefei/view/indicator/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "b"
.end annotation


# instance fields
.field private a:Z

.field private b:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/shizhefei/view/indicator/c$a;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/util/LinkedHashSet;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Ljava/util/LinkedHashSet;-><init>(I)V

    iput-object v0, p0, Lcom/shizhefei/view/indicator/c$b;->b:Ljava/util/Set;

    return-void
.end method


# virtual methods
.method public abstract a()I
.end method

.method public abstract b(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
.end method

.method c()Z
    .locals 1

    iget-boolean v0, p0, Lcom/shizhefei/view/indicator/c$b;->a:Z

    return v0
.end method

.method public d()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/shizhefei/view/indicator/c$b;->b:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/shizhefei/view/indicator/c$a;

    .line 2
    invoke-interface {v1}, Lcom/shizhefei/view/indicator/c$a;->a()V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public e(Lcom/shizhefei/view/indicator/c$a;)V
    .locals 1

    iget-object v0, p0, Lcom/shizhefei/view/indicator/c$b;->b:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method f(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/shizhefei/view/indicator/c$b;->a:Z

    return-void
.end method

.method public g(Lcom/shizhefei/view/indicator/c$a;)V
    .locals 1

    iget-object v0, p0, Lcom/shizhefei/view/indicator/c$b;->b:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    return-void
.end method
