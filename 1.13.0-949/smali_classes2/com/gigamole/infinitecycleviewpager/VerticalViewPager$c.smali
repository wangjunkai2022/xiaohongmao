.class Lcom/gigamole/infinitecycleviewpager/VerticalViewPager$c;
.super Ljava/lang/Object;
.source "VerticalViewPager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/gigamole/infinitecycleviewpager/VerticalViewPager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/gigamole/infinitecycleviewpager/VerticalViewPager;


# direct methods
.method constructor <init>(Lcom/gigamole/infinitecycleviewpager/VerticalViewPager;)V
    .locals 0

    iput-object p1, p0, Lcom/gigamole/infinitecycleviewpager/VerticalViewPager$c;->a:Lcom/gigamole/infinitecycleviewpager/VerticalViewPager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/gigamole/infinitecycleviewpager/VerticalViewPager$c;->a:Lcom/gigamole/infinitecycleviewpager/VerticalViewPager;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/gigamole/infinitecycleviewpager/VerticalViewPager;->a(Lcom/gigamole/infinitecycleviewpager/VerticalViewPager;I)V

    .line 2
    iget-object v0, p0, Lcom/gigamole/infinitecycleviewpager/VerticalViewPager$c;->a:Lcom/gigamole/infinitecycleviewpager/VerticalViewPager;

    invoke-virtual {v0}, Lcom/gigamole/infinitecycleviewpager/VerticalViewPager;->H()V

    return-void
.end method
