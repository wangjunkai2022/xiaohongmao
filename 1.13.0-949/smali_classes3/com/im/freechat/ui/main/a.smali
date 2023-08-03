.class public final Lcom/im/freechat/ui/main/a;
.super Lcom/bigkoo/convenientbanner/holder/Holder;
.source "BannerHolder.kt"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/bigkoo/convenientbanner/holder/Holder<",
        "Lcom/im/freechat/shared/entities/banner/Banner;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {}
    d1 = {
        "\u0000\"\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0005\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00020\u0001B\u0011\u0012\u0008\u0010\u0004\u001a\u0004\u0018\u00010\u0003\u00a2\u0006\u0004\u0008\u000c\u0010\rJ\u0012\u0010\u0006\u001a\u00020\u00052\u0008\u0010\u0004\u001a\u0004\u0018\u00010\u0003H\u0014J\u0012\u0010\u0008\u001a\u00020\u00052\u0008\u0010\u0007\u001a\u0004\u0018\u00010\u0002H\u0016R\u0018\u0010\u000b\u001a\u0004\u0018\u00010\t8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008\u0006\u0010\n\u00a8\u0006\u000e"
    }
    d2 = {
        "Lcom/im/freechat/ui/main/a;",
        "Lcom/bigkoo/convenientbanner/holder/Holder;",
        "Lcom/im/freechat/shared/entities/banner/Banner;",
        "Landroid/view/View;",
        "itemView",
        "",
        "a",
        "data",
        "b",
        "Landroid/widget/ImageView;",
        "Landroid/widget/ImageView;",
        "image",
        "<init>",
        "(Landroid/view/View;)V",
        "app_prodRelease"
    }
    k = 0x1
    mv = {
        0x1,
        0x7,
        0x1
    }
.end annotation


# instance fields
.field private a:Landroid/widget/ImageView;
    .annotation build Lm8/h;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 0
    .param p1    # Landroid/view/View;
        .annotation build Lm8/h;
        .end annotation
    .end param

    invoke-direct {p0, p1}, Lcom/bigkoo/convenientbanner/holder/Holder;-><init>(Landroid/view/View;)V

    return-void
.end method


# virtual methods
.method protected a(Landroid/view/View;)V
    .locals 1
    .param p1    # Landroid/view/View;
        .annotation build Lm8/h;
        .end annotation
    .end param

    if-eqz p1, :cond_0

    sget v0, Lb4/b$j;->ivBanner:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    iput-object p1, p0, Lcom/im/freechat/ui/main/a;->a:Landroid/widget/ImageView;

    return-void
.end method

.method public b(Lcom/im/freechat/shared/entities/banner/Banner;)V
    .locals 7
    .param p1    # Lcom/im/freechat/shared/entities/banner/Banner;
        .annotation build Lm8/h;
        .end annotation
    .end param

    iget-object v0, p0, Lcom/im/freechat/ui/main/a;->a:Landroid/widget/ImageView;

    if-eqz v0, :cond_1

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/im/freechat/shared/entities/banner/Banner;->getPathSmall()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    move-object v1, p1

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/16 v5, 0xe

    const/4 v6, 0x0

    invoke-static/range {v0 .. v6}, Lcom/im/freechat/extend/m;->s(Landroid/widget/ImageView;Ljava/lang/Object;FZIILjava/lang/Object;)V

    :cond_1
    return-void
.end method

.method public bridge synthetic c(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lcom/im/freechat/shared/entities/banner/Banner;

    invoke-virtual {p0, p1}, Lcom/im/freechat/ui/main/a;->b(Lcom/im/freechat/shared/entities/banner/Banner;)V

    return-void
.end method
