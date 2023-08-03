.class public final Le5/e2;
.super Ljava/lang/Object;
.source "ItemBannerListBinding.java"

# interfaces
.implements Landroidx/viewbinding/ViewBinding;


# instance fields
.field private final a:Lcom/qennnsad/aknkaksd/presentation/ui/widget/banner/BannerCarousel;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field


# direct methods
.method private constructor <init>(Lcom/qennnsad/aknkaksd/presentation/ui/widget/banner/BannerCarousel;)V
    .locals 0
    .param p1    # Lcom/qennnsad/aknkaksd/presentation/ui/widget/banner/BannerCarousel;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Le5/e2;->a:Lcom/qennnsad/aknkaksd/presentation/ui/widget/banner/BannerCarousel;

    return-void
.end method

.method public static a(Landroid/view/View;)Le5/e2;
    .locals 1
    .param p0    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    const-string v0, "rootView"

    .line 1
    invoke-static {p0, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 2
    new-instance v0, Le5/e2;

    check-cast p0, Lcom/qennnsad/aknkaksd/presentation/ui/widget/banner/BannerCarousel;

    invoke-direct {v0, p0}, Le5/e2;-><init>(Lcom/qennnsad/aknkaksd/presentation/ui/widget/banner/BannerCarousel;)V

    return-object v0
.end method

.method public static c(Landroid/view/LayoutInflater;)Le5/e2;
    .locals 2
    .param p0    # Landroid/view/LayoutInflater;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Le5/e2;->d(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Le5/e2;

    move-result-object p0

    return-object p0
.end method

.method public static d(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Le5/e2;
    .locals 2
    .param p0    # Landroid/view/LayoutInflater;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p1    # Landroid/view/ViewGroup;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    const v0, 0x7f0d00d5

    const/4 v1, 0x0

    .line 1
    invoke-virtual {p0, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p0

    if-eqz p2, :cond_0

    .line 2
    invoke-virtual {p1, p0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 3
    :cond_0
    invoke-static {p0}, Le5/e2;->a(Landroid/view/View;)Le5/e2;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public b()Lcom/qennnsad/aknkaksd/presentation/ui/widget/banner/BannerCarousel;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    iget-object v0, p0, Le5/e2;->a:Lcom/qennnsad/aknkaksd/presentation/ui/widget/banner/BannerCarousel;

    return-object v0
.end method

.method public bridge synthetic getRoot()Landroid/view/View;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    invoke-virtual {p0}, Le5/e2;->b()Lcom/qennnsad/aknkaksd/presentation/ui/widget/banner/BannerCarousel;

    move-result-object v0

    return-object v0
.end method
