.class Lcom/qennnsad/aknkaksd/presentation/ui/widget/giftView/GiftLayoutView$a;
.super Ljava/lang/Object;
.source "GiftLayoutView.java"

# interfaces
.implements Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/qennnsad/aknkaksd/presentation/ui/widget/giftView/GiftLayoutView;->m()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/qennnsad/aknkaksd/presentation/ui/widget/giftView/GiftLayoutView;


# direct methods
.method constructor <init>(Lcom/qennnsad/aknkaksd/presentation/ui/widget/giftView/GiftLayoutView;)V
    .locals 0

    iput-object p1, p0, Lcom/qennnsad/aknkaksd/presentation/ui/widget/giftView/GiftLayoutView$a;->a:Lcom/qennnsad/aknkaksd/presentation/ui/widget/giftView/GiftLayoutView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPageScrollStateChanged(I)V
    .locals 0

    return-void
.end method

.method public onPageScrolled(IFI)V
    .locals 0

    return-void
.end method

.method public onPageSelected(I)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/qennnsad/aknkaksd/presentation/ui/widget/giftView/GiftLayoutView$a;->a:Lcom/qennnsad/aknkaksd/presentation/ui/widget/giftView/GiftLayoutView;

    invoke-static {v0}, Lcom/qennnsad/aknkaksd/presentation/ui/widget/giftView/GiftLayoutView;->e(Lcom/qennnsad/aknkaksd/presentation/ui/widget/giftView/GiftLayoutView;)Ljava/util/ArrayList;

    move-result-object v0

    iget-object v1, p0, Lcom/qennnsad/aknkaksd/presentation/ui/widget/giftView/GiftLayoutView$a;->a:Lcom/qennnsad/aknkaksd/presentation/ui/widget/giftView/GiftLayoutView;

    invoke-static {v1}, Lcom/qennnsad/aknkaksd/presentation/ui/widget/giftView/GiftLayoutView;->c(Lcom/qennnsad/aknkaksd/presentation/ui/widget/giftView/GiftLayoutView;)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/qennnsad/aknkaksd/presentation/ui/widget/giftView/GiftLayoutView$a;->a:Lcom/qennnsad/aknkaksd/presentation/ui/widget/giftView/GiftLayoutView;

    invoke-static {v1}, Lcom/qennnsad/aknkaksd/presentation/ui/widget/giftView/GiftLayoutView;->b(Lcom/qennnsad/aknkaksd/presentation/ui/widget/giftView/GiftLayoutView;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 2
    iget-object v0, p0, Lcom/qennnsad/aknkaksd/presentation/ui/widget/giftView/GiftLayoutView$a;->a:Lcom/qennnsad/aknkaksd/presentation/ui/widget/giftView/GiftLayoutView;

    invoke-static {v0}, Lcom/qennnsad/aknkaksd/presentation/ui/widget/giftView/GiftLayoutView;->e(Lcom/qennnsad/aknkaksd/presentation/ui/widget/giftView/GiftLayoutView;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/qennnsad/aknkaksd/presentation/ui/widget/giftView/GiftLayoutView$a;->a:Lcom/qennnsad/aknkaksd/presentation/ui/widget/giftView/GiftLayoutView;

    invoke-static {v1}, Lcom/qennnsad/aknkaksd/presentation/ui/widget/giftView/GiftLayoutView;->f(Lcom/qennnsad/aknkaksd/presentation/ui/widget/giftView/GiftLayoutView;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 3
    iget-object v0, p0, Lcom/qennnsad/aknkaksd/presentation/ui/widget/giftView/GiftLayoutView$a;->a:Lcom/qennnsad/aknkaksd/presentation/ui/widget/giftView/GiftLayoutView;

    invoke-static {v0, p1}, Lcom/qennnsad/aknkaksd/presentation/ui/widget/giftView/GiftLayoutView;->d(Lcom/qennnsad/aknkaksd/presentation/ui/widget/giftView/GiftLayoutView;I)I

    return-void
.end method
