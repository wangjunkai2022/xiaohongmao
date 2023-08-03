.class Lcom/gigamole/infinitecycleviewpager/b$a;
.super Ljava/lang/Object;
.source "InfiniteCycleManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/gigamole/infinitecycleviewpager/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/gigamole/infinitecycleviewpager/b;


# direct methods
.method constructor <init>(Lcom/gigamole/infinitecycleviewpager/b;)V
    .locals 0

    iput-object p1, p0, Lcom/gigamole/infinitecycleviewpager/b$a;->a:Lcom/gigamole/infinitecycleviewpager/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/gigamole/infinitecycleviewpager/b$a;->a:Lcom/gigamole/infinitecycleviewpager/b;

    invoke-static {v0}, Lcom/gigamole/infinitecycleviewpager/b;->b(Lcom/gigamole/infinitecycleviewpager/b;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/gigamole/infinitecycleviewpager/b$a;->a:Lcom/gigamole/infinitecycleviewpager/b;

    invoke-static {v0}, Lcom/gigamole/infinitecycleviewpager/b;->r(Lcom/gigamole/infinitecycleviewpager/b;)Lcom/gigamole/infinitecycleviewpager/g;

    move-result-object v0

    iget-object v1, p0, Lcom/gigamole/infinitecycleviewpager/b$a;->a:Lcom/gigamole/infinitecycleviewpager/b;

    invoke-virtual {v1}, Lcom/gigamole/infinitecycleviewpager/b;->d0()I

    move-result v1

    iget-object v2, p0, Lcom/gigamole/infinitecycleviewpager/b$a;->a:Lcom/gigamole/infinitecycleviewpager/b;

    invoke-static {v2}, Lcom/gigamole/infinitecycleviewpager/b;->c(Lcom/gigamole/infinitecycleviewpager/b;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v2, 0x1

    goto :goto_0

    :cond_1
    const/4 v2, -0x1

    :goto_0
    add-int/2addr v1, v2

    invoke-interface {v0, v1}, Lcom/gigamole/infinitecycleviewpager/g;->setCurrentItem(I)V

    .line 3
    iget-object v0, p0, Lcom/gigamole/infinitecycleviewpager/b$a;->a:Lcom/gigamole/infinitecycleviewpager/b;

    invoke-static {v0}, Lcom/gigamole/infinitecycleviewpager/b;->M(Lcom/gigamole/infinitecycleviewpager/b;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/gigamole/infinitecycleviewpager/b$a;->a:Lcom/gigamole/infinitecycleviewpager/b;

    invoke-static {v1}, Lcom/gigamole/infinitecycleviewpager/b;->K(Lcom/gigamole/infinitecycleviewpager/b;)I

    move-result v1

    int-to-long v1, v1

    invoke-virtual {v0, p0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method
