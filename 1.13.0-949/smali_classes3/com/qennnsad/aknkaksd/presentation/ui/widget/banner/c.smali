.class public final synthetic Lcom/qennnsad/aknkaksd/presentation/ui/widget/banner/c;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Landroidx/viewpager2/widget/ViewPager2;

.field public final synthetic b:Lcom/qennnsad/aknkaksd/presentation/ui/widget/banner/BannerCarousel;


# direct methods
.method public synthetic constructor <init>(Landroidx/viewpager2/widget/ViewPager2;Lcom/qennnsad/aknkaksd/presentation/ui/widget/banner/BannerCarousel;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/qennnsad/aknkaksd/presentation/ui/widget/banner/c;->a:Landroidx/viewpager2/widget/ViewPager2;

    iput-object p2, p0, Lcom/qennnsad/aknkaksd/presentation/ui/widget/banner/c;->b:Lcom/qennnsad/aknkaksd/presentation/ui/widget/banner/BannerCarousel;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/qennnsad/aknkaksd/presentation/ui/widget/banner/c;->a:Landroidx/viewpager2/widget/ViewPager2;

    iget-object v1, p0, Lcom/qennnsad/aknkaksd/presentation/ui/widget/banner/c;->b:Lcom/qennnsad/aknkaksd/presentation/ui/widget/banner/BannerCarousel;

    invoke-static {v0, v1}, Lcom/qennnsad/aknkaksd/presentation/ui/widget/banner/BannerCarousel;->a(Landroidx/viewpager2/widget/ViewPager2;Lcom/qennnsad/aknkaksd/presentation/ui/widget/banner/BannerCarousel;)V

    return-void
.end method
