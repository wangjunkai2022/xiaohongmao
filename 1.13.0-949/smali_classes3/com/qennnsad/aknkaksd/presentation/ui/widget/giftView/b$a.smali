.class Lcom/qennnsad/aknkaksd/presentation/ui/widget/giftView/b$a;
.super Ljava/lang/Object;
.source "GiftGridViewAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/qennnsad/aknkaksd/presentation/ui/widget/giftView/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "a"
.end annotation


# instance fields
.field private final a:Lcom/facebook/drawee/view/SimpleDraweeView;

.field private final b:Landroid/widget/ImageView;

.field private final c:Landroid/widget/ImageView;

.field private final d:Landroid/widget/TextView;

.field private final e:Landroid/widget/TextView;

.field private f:I

.field final synthetic g:Lcom/qennnsad/aknkaksd/presentation/ui/widget/giftView/b;


# direct methods
.method public constructor <init>(Lcom/qennnsad/aknkaksd/presentation/ui/widget/giftView/b;Landroid/view/View;)V
    .locals 1

    .line 1
    iput-object p1, p0, Lcom/qennnsad/aknkaksd/presentation/ui/widget/giftView/b$a;->g:Lcom/qennnsad/aknkaksd/presentation/ui/widget/giftView/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lcom/qennnsad/aknkaksd/presentation/ui/widget/giftView/b$a;->f:I

    const v0, 0x7f0a038c

    .line 3
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/facebook/drawee/view/SimpleDraweeView;

    iput-object v0, p0, Lcom/qennnsad/aknkaksd/presentation/ui/widget/giftView/b$a;->a:Lcom/facebook/drawee/view/SimpleDraweeView;

    const v0, 0x7f0a038d

    .line 4
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/qennnsad/aknkaksd/presentation/ui/widget/giftView/b$a;->d:Landroid/widget/TextView;

    const v0, 0x7f0a038b

    .line 5
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/qennnsad/aknkaksd/presentation/ui/widget/giftView/b$a;->e:Landroid/widget/TextView;

    const v0, 0x7f0a038a

    .line 6
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/qennnsad/aknkaksd/presentation/ui/widget/giftView/b$a;->b:Landroid/widget/ImageView;

    const v0, 0x7f0a038e

    .line 7
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/ImageView;

    iput-object p2, p0, Lcom/qennnsad/aknkaksd/presentation/ui/widget/giftView/b$a;->c:Landroid/widget/ImageView;

    .line 8
    invoke-static {p1}, Lcom/qennnsad/aknkaksd/presentation/ui/widget/giftView/b;->a(Lcom/qennnsad/aknkaksd/presentation/ui/widget/giftView/b;)Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p2, 0x7f07010c

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p1

    float-to-int p1, p1

    iput p1, p0, Lcom/qennnsad/aknkaksd/presentation/ui/widget/giftView/b$a;->f:I

    return-void
.end method


# virtual methods
.method public a(Lcom/qennnsad/aknkaksd/data/bean/gift/Gift;Z)V
    .locals 4

    const/16 v0, 0x8

    const/4 v1, 0x0

    if-eqz p2, :cond_0

    .line 1
    iget-object p2, p0, Lcom/qennnsad/aknkaksd/presentation/ui/widget/giftView/b$a;->b:Landroid/widget/ImageView;

    const v2, 0x7f0803c7

    invoke-virtual {p2, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 2
    iget-object p2, p0, Lcom/qennnsad/aknkaksd/presentation/ui/widget/giftView/b$a;->b:Landroid/widget/ImageView;

    const v2, 0x7f0805f4

    invoke-virtual {p2, v2}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 3
    iget-object p2, p0, Lcom/qennnsad/aknkaksd/presentation/ui/widget/giftView/b$a;->b:Landroid/widget/ImageView;

    invoke-virtual {p2}, Landroid/widget/ImageView;->getContext()Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f0602f9

    invoke-static {v2, v3}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v2

    sget-object v3, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {p2, v2, v3}, Landroid/widget/ImageView;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    .line 4
    iget-object p2, p0, Lcom/qennnsad/aknkaksd/presentation/ui/widget/giftView/b$a;->b:Landroid/widget/ImageView;

    invoke-virtual {p2, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0

    .line 5
    :cond_0
    iget-object p2, p0, Lcom/qennnsad/aknkaksd/presentation/ui/widget/giftView/b$a;->b:Landroid/widget/ImageView;

    invoke-virtual {p2, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 6
    :goto_0
    invoke-virtual {p1}, Lcom/qennnsad/aknkaksd/data/bean/gift/Gift;->getToy_bind()I

    move-result p2

    const/4 v2, 0x1

    if-ne p2, v2, :cond_1

    iget-object p2, p0, Lcom/qennnsad/aknkaksd/presentation/ui/widget/giftView/b$a;->g:Lcom/qennnsad/aknkaksd/presentation/ui/widget/giftView/b;

    invoke-static {p2}, Lcom/qennnsad/aknkaksd/presentation/ui/widget/giftView/b;->b(Lcom/qennnsad/aknkaksd/presentation/ui/widget/giftView/b;)Z

    move-result p2

    if-eqz p2, :cond_1

    .line 7
    iget-object p2, p0, Lcom/qennnsad/aknkaksd/presentation/ui/widget/giftView/b$a;->c:Landroid/widget/ImageView;

    invoke-virtual {p2, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 8
    :cond_1
    iget-object p2, p0, Lcom/qennnsad/aknkaksd/presentation/ui/widget/giftView/b$a;->d:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/qennnsad/aknkaksd/data/bean/gift/Gift;->getPrice()I

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 9
    invoke-virtual {p1}, Lcom/qennnsad/aknkaksd/data/bean/gift/Gift;->getDisplayName()Ljava/lang/String;

    move-result-object p2

    .line 10
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 11
    iget-object p2, p0, Lcom/qennnsad/aknkaksd/presentation/ui/widget/giftView/b$a;->e:Landroid/widget/TextView;

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_1

    .line 12
    :cond_2
    iget-object v0, p0, Lcom/qennnsad/aknkaksd/presentation/ui/widget/giftView/b$a;->e:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 13
    iget-object v0, p0, Lcom/qennnsad/aknkaksd/presentation/ui/widget/giftView/b$a;->e:Landroid/widget/TextView;

    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 14
    :goto_1
    invoke-virtual {p1}, Lcom/qennnsad/aknkaksd/data/bean/gift/Gift;->getImageUrl()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_3

    .line 15
    iget-object p2, p0, Lcom/qennnsad/aknkaksd/presentation/ui/widget/giftView/b$a;->g:Lcom/qennnsad/aknkaksd/presentation/ui/widget/giftView/b;

    invoke-static {p2}, Lcom/qennnsad/aknkaksd/presentation/ui/widget/giftView/b;->c(Lcom/qennnsad/aknkaksd/presentation/ui/widget/giftView/b;)Lcom/qennnsad/aknkaksd/data/repository/m;

    move-result-object p2

    invoke-virtual {p1}, Lcom/qennnsad/aknkaksd/data/bean/gift/Gift;->getImageUrl()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/qennnsad/aknkaksd/data/repository/m;->j(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    iget p2, p0, Lcom/qennnsad/aknkaksd/presentation/ui/widget/giftView/b$a;->f:I

    iget-object v0, p0, Lcom/qennnsad/aknkaksd/presentation/ui/widget/giftView/b$a;->a:Lcom/facebook/drawee/view/SimpleDraweeView;

    invoke-static {p1, p2, p2, v0}, Lcom/qennnsad/aknkaksd/util/fresco/c;->d(Landroid/net/Uri;IILcom/facebook/drawee/view/SimpleDraweeView;)V

    :cond_3
    return-void
.end method
