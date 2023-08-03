.class public final Lcom/qennnsad/aknkaksd/presentation/ui/widget/banner/b$a;
.super Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
.source "BannerAdapter.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/qennnsad/aknkaksd/presentation/ui/widget/banner/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nBannerAdapter.kt\nKotlin\n*S Kotlin\n*F\n+ 1 BannerAdapter.kt\ncom/qennnsad/aknkaksd/presentation/ui/widget/banner/BannerAdapter$BannerViewHolder\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,71:1\n1#2:72\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {}
    d1 = {
        "\u0000\u001c\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0007\u0008\u0086\u0004\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0007\u001a\u00020\u0006\u00a2\u0006\u0004\u0008\u000b\u0010\u000cJ\u000e\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002R\u0017\u0010\u0007\u001a\u00020\u00068\u0006\u00a2\u0006\u000c\n\u0004\u0008\u0007\u0010\u0008\u001a\u0004\u0008\t\u0010\n\u00a8\u0006\r"
    }
    d2 = {
        "Lcom/qennnsad/aknkaksd/presentation/ui/widget/banner/b$a;",
        "Landroidx/recyclerview/widget/RecyclerView$ViewHolder;",
        "Lcom/qennnsad/aknkaksd/data/bean/BannerAdBean;",
        "item",
        "",
        "b",
        "Le5/d2;",
        "binding",
        "Le5/d2;",
        "c",
        "()Le5/d2;",
        "<init>",
        "(Lcom/qennnsad/aknkaksd/presentation/ui/widget/banner/b;Le5/d2;)V",
        "app_pron_playerRelease"
    }
    k = 0x1
    mv = {
        0x1,
        0x7,
        0x1
    }
.end annotation


# instance fields
.field private final a:Le5/d2;
    .annotation build Lm8/g;
    .end annotation
.end field

.field final synthetic b:Lcom/qennnsad/aknkaksd/presentation/ui/widget/banner/b;


# direct methods
.method public constructor <init>(Lcom/qennnsad/aknkaksd/presentation/ui/widget/banner/b;Le5/d2;)V
    .locals 1
    .param p1    # Lcom/qennnsad/aknkaksd/presentation/ui/widget/banner/b;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Le5/d2;",
            ")V"
        }
    .end annotation

    const-string v0, "binding"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iput-object p1, p0, Lcom/qennnsad/aknkaksd/presentation/ui/widget/banner/b$a;->b:Lcom/qennnsad/aknkaksd/presentation/ui/widget/banner/b;

    .line 2
    invoke-virtual {p2}, Le5/d2;->b()Landroid/widget/ImageView;

    move-result-object p1

    invoke-direct {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    .line 3
    iput-object p2, p0, Lcom/qennnsad/aknkaksd/presentation/ui/widget/banner/b$a;->a:Le5/d2;

    return-void
.end method


# virtual methods
.method public final b(Lcom/qennnsad/aknkaksd/data/bean/BannerAdBean;)V
    .locals 8
    .param p1    # Lcom/qennnsad/aknkaksd/data/bean/BannerAdBean;
        .annotation build Lm8/g;
        .end annotation
    .end param

    const-string v0, "item"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Lcom/qennnsad/aknkaksd/presentation/ui/widget/banner/b$a;->a:Le5/d2;

    iget-object v1, v0, Le5/d2;->b:Landroid/widget/ImageView;

    .line 2
    invoke-virtual {p1}, Lcom/qennnsad/aknkaksd/data/bean/BannerAdBean;->getImageUrl()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/qennnsad/aknkaksd/presentation/ui/widget/banner/b$a;->b:Lcom/qennnsad/aknkaksd/presentation/ui/widget/banner/b;

    invoke-virtual {v0}, Lcom/qennnsad/aknkaksd/presentation/ui/widget/banner/b;->f()Lcom/qennnsad/aknkaksd/data/repository/m;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/qennnsad/aknkaksd/data/repository/m;->j(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    move-object v2, p1

    const/4 v3, 0x0

    const v4, 0x7f080555

    const v5, 0x7f080555

    const/4 v6, 0x2

    const/4 v7, 0x0

    .line 3
    invoke-static/range {v1 .. v7}, Lcom/qennnsad/aknkaksd/util/img/e;->h(Landroid/widget/ImageView;Landroid/net/Uri;ZIIILjava/lang/Object;)V

    return-void
.end method

.method public final c()Le5/d2;
    .locals 1
    .annotation build Lm8/g;
    .end annotation

    iget-object v0, p0, Lcom/qennnsad/aknkaksd/presentation/ui/widget/banner/b$a;->a:Le5/d2;

    return-object v0
.end method
