.class Lcom/gigamole/infinitecycleviewpager/VerticalViewPager$h;
.super Landroid/database/DataSetObserver;
.source "VerticalViewPager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/gigamole/infinitecycleviewpager/VerticalViewPager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "h"
.end annotation


# instance fields
.field final synthetic a:Lcom/gigamole/infinitecycleviewpager/VerticalViewPager;


# direct methods
.method private constructor <init>(Lcom/gigamole/infinitecycleviewpager/VerticalViewPager;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/gigamole/infinitecycleviewpager/VerticalViewPager$h;->a:Lcom/gigamole/infinitecycleviewpager/VerticalViewPager;

    invoke-direct {p0}, Landroid/database/DataSetObserver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/gigamole/infinitecycleviewpager/VerticalViewPager;Lcom/gigamole/infinitecycleviewpager/VerticalViewPager$a;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lcom/gigamole/infinitecycleviewpager/VerticalViewPager$h;-><init>(Lcom/gigamole/infinitecycleviewpager/VerticalViewPager;)V

    return-void
.end method


# virtual methods
.method public onChanged()V
    .locals 1

    iget-object v0, p0, Lcom/gigamole/infinitecycleviewpager/VerticalViewPager$h;->a:Lcom/gigamole/infinitecycleviewpager/VerticalViewPager;

    invoke-virtual {v0}, Lcom/gigamole/infinitecycleviewpager/VerticalViewPager;->k()V

    return-void
.end method

.method public onInvalidated()V
    .locals 1

    iget-object v0, p0, Lcom/gigamole/infinitecycleviewpager/VerticalViewPager$h;->a:Lcom/gigamole/infinitecycleviewpager/VerticalViewPager;

    invoke-virtual {v0}, Lcom/gigamole/infinitecycleviewpager/VerticalViewPager;->k()V

    return-void
.end method
