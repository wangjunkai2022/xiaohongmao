.class Lcom/gigamole/infinitecycleviewpager/b$b;
.super Ljava/lang/Object;
.source "InfiniteCycleManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/gigamole/infinitecycleviewpager/b;->o0()V
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

    iput-object p1, p0, Lcom/gigamole/infinitecycleviewpager/b$b;->a:Lcom/gigamole/infinitecycleviewpager/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/gigamole/infinitecycleviewpager/b$b;->a:Lcom/gigamole/infinitecycleviewpager/b;

    invoke-virtual {v0}, Lcom/gigamole/infinitecycleviewpager/b;->g0()V

    .line 2
    iget-object v0, p0, Lcom/gigamole/infinitecycleviewpager/b$b;->a:Lcom/gigamole/infinitecycleviewpager/b;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/gigamole/infinitecycleviewpager/b;->O(Lcom/gigamole/infinitecycleviewpager/b;Z)Z

    return-void
.end method
