.class public final synthetic Lcom/qennnsad/aknkaksd/presentation/ui/widget/carousel/a;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Landroidx/viewpager2/widget/ViewPager2;

.field public final synthetic b:Lcom/qennnsad/aknkaksd/presentation/ui/widget/carousel/LayoutCarousel;

.field public final synthetic c:Landroidx/recyclerview/widget/RecyclerView$Adapter;


# direct methods
.method public synthetic constructor <init>(Landroidx/viewpager2/widget/ViewPager2;Lcom/qennnsad/aknkaksd/presentation/ui/widget/carousel/LayoutCarousel;Landroidx/recyclerview/widget/RecyclerView$Adapter;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/qennnsad/aknkaksd/presentation/ui/widget/carousel/a;->a:Landroidx/viewpager2/widget/ViewPager2;

    iput-object p2, p0, Lcom/qennnsad/aknkaksd/presentation/ui/widget/carousel/a;->b:Lcom/qennnsad/aknkaksd/presentation/ui/widget/carousel/LayoutCarousel;

    iput-object p3, p0, Lcom/qennnsad/aknkaksd/presentation/ui/widget/carousel/a;->c:Landroidx/recyclerview/widget/RecyclerView$Adapter;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lcom/qennnsad/aknkaksd/presentation/ui/widget/carousel/a;->a:Landroidx/viewpager2/widget/ViewPager2;

    iget-object v1, p0, Lcom/qennnsad/aknkaksd/presentation/ui/widget/carousel/a;->b:Lcom/qennnsad/aknkaksd/presentation/ui/widget/carousel/LayoutCarousel;

    iget-object v2, p0, Lcom/qennnsad/aknkaksd/presentation/ui/widget/carousel/a;->c:Landroidx/recyclerview/widget/RecyclerView$Adapter;

    invoke-static {v0, v1, v2}, Lcom/qennnsad/aknkaksd/presentation/ui/widget/carousel/LayoutCarousel;->a(Landroidx/viewpager2/widget/ViewPager2;Lcom/qennnsad/aknkaksd/presentation/ui/widget/carousel/LayoutCarousel;Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    return-void
.end method
