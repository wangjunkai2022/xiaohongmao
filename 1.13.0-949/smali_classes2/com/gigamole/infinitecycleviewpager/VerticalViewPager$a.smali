.class final Lcom/gigamole/infinitecycleviewpager/VerticalViewPager$a;
.super Ljava/lang/Object;
.source "VerticalViewPager.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/gigamole/infinitecycleviewpager/VerticalViewPager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator<",
        "Lcom/gigamole/infinitecycleviewpager/VerticalViewPager$e;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/gigamole/infinitecycleviewpager/VerticalViewPager$e;Lcom/gigamole/infinitecycleviewpager/VerticalViewPager$e;)I
    .locals 0

    iget p1, p1, Lcom/gigamole/infinitecycleviewpager/VerticalViewPager$e;->b:I

    iget p2, p2, Lcom/gigamole/infinitecycleviewpager/VerticalViewPager$e;->b:I

    sub-int/2addr p1, p2

    return p1
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    check-cast p1, Lcom/gigamole/infinitecycleviewpager/VerticalViewPager$e;

    check-cast p2, Lcom/gigamole/infinitecycleviewpager/VerticalViewPager$e;

    invoke-virtual {p0, p1, p2}, Lcom/gigamole/infinitecycleviewpager/VerticalViewPager$a;->a(Lcom/gigamole/infinitecycleviewpager/VerticalViewPager$e;Lcom/gigamole/infinitecycleviewpager/VerticalViewPager$e;)I

    move-result p1

    return p1
.end method
