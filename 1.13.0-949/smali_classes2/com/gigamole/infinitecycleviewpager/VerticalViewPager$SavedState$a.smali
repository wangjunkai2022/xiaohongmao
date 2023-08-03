.class final Lcom/gigamole/infinitecycleviewpager/VerticalViewPager$SavedState$a;
.super Ljava/lang/Object;
.source "VerticalViewPager.java"

# interfaces
.implements Landroidx/core/os/ParcelableCompatCreatorCallbacks;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/gigamole/infinitecycleviewpager/VerticalViewPager$SavedState;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroidx/core/os/ParcelableCompatCreatorCallbacks<",
        "Lcom/gigamole/infinitecycleviewpager/VerticalViewPager$SavedState;",
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
.method public a(Landroid/os/Parcel;Ljava/lang/ClassLoader;)Lcom/gigamole/infinitecycleviewpager/VerticalViewPager$SavedState;
    .locals 1

    new-instance v0, Lcom/gigamole/infinitecycleviewpager/VerticalViewPager$SavedState;

    invoke-direct {v0, p1, p2}, Lcom/gigamole/infinitecycleviewpager/VerticalViewPager$SavedState;-><init>(Landroid/os/Parcel;Ljava/lang/ClassLoader;)V

    return-object v0
.end method

.method public b(I)[Lcom/gigamole/infinitecycleviewpager/VerticalViewPager$SavedState;
    .locals 0

    new-array p1, p1, [Lcom/gigamole/infinitecycleviewpager/VerticalViewPager$SavedState;

    return-object p1
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;Ljava/lang/ClassLoader;)Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0, p1, p2}, Lcom/gigamole/infinitecycleviewpager/VerticalViewPager$SavedState$a;->a(Landroid/os/Parcel;Ljava/lang/ClassLoader;)Lcom/gigamole/infinitecycleviewpager/VerticalViewPager$SavedState;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/gigamole/infinitecycleviewpager/VerticalViewPager$SavedState$a;->b(I)[Lcom/gigamole/infinitecycleviewpager/VerticalViewPager$SavedState;

    move-result-object p1

    return-object p1
.end method
