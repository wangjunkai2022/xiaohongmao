.class public final Lcom/qennnsad/aknkaksd/presentation/ui/main/setting/g;
.super Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
.source "BlacklistAdapter.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    bv = {}
    d1 = {
        "\u00000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0007\n\u0002\u0018\u0002\n\u0002\u0008\u0007\u0018\u00002\u00020\u0001B\u0017\u0012\u0006\u0010\u000f\u001a\u00020\n\u0012\u0006\u0010\u0013\u001a\u00020\u0012\u00a2\u0006\u0004\u0008\u0017\u0010\u0018J\u001a\u0010\u0006\u001a\u00020\u00042\u0012\u0010\u0005\u001a\u000e\u0012\u0004\u0012\u00020\u0003\u0012\u0004\u0012\u00020\u00040\u0002J\u000e\u0010\t\u001a\u00020\u00042\u0006\u0010\u0008\u001a\u00020\u0007R\u0017\u0010\u000f\u001a\u00020\n8\u0006\u00a2\u0006\u000c\n\u0004\u0008\u000b\u0010\u000c\u001a\u0004\u0008\r\u0010\u000eR$\u0010\u0011\u001a\u0010\u0012\u0004\u0012\u00020\u0003\u0012\u0004\u0012\u00020\u0004\u0018\u00010\u00028\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008\t\u0010\u0010R\u0017\u0010\u0013\u001a\u00020\u00128\u0006\u00a2\u0006\u000c\n\u0004\u0008\u0013\u0010\u0014\u001a\u0004\u0008\u0015\u0010\u0016\u00a8\u0006\u0019"
    }
    d2 = {
        "Lcom/qennnsad/aknkaksd/presentation/ui/main/setting/g;",
        "Landroidx/recyclerview/widget/RecyclerView$ViewHolder;",
        "Lkotlin/Function1;",
        "",
        "",
        "callback",
        "g",
        "Lcom/qennnsad/aknkaksd/data/bean/room/BlacklistedUserBean;",
        "user",
        "c",
        "Lcom/qennnsad/aknkaksd/data/repository/m;",
        "a",
        "Lcom/qennnsad/aknkaksd/data/repository/m;",
        "f",
        "()Lcom/qennnsad/aknkaksd/data/repository/m;",
        "sourceFactory",
        "Lkotlin/jvm/functions/Function1;",
        "itemClickCallback",
        "Le5/f2;",
        "binding",
        "Le5/f2;",
        "e",
        "()Le5/f2;",
        "<init>",
        "(Lcom/qennnsad/aknkaksd/data/repository/m;Le5/f2;)V",
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
.field private final a:Lcom/qennnsad/aknkaksd/data/repository/m;
    .annotation build Lm8/g;
    .end annotation
.end field

.field private final b:Le5/f2;
    .annotation build Lm8/g;
    .end annotation
.end field

.field private c:Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Ljava/lang/String;",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation

    .annotation build Lm8/h;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/qennnsad/aknkaksd/data/repository/m;Le5/f2;)V
    .locals 1
    .param p1    # Lcom/qennnsad/aknkaksd/data/repository/m;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .param p2    # Le5/f2;
        .annotation build Lm8/g;
        .end annotation
    .end param

    const-string v0, "sourceFactory"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "binding"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p2}, Le5/f2;->b()Landroidx/constraintlayout/widget/ConstraintLayout;

    move-result-object v0

    invoke-direct {p0, v0}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    .line 2
    iput-object p1, p0, Lcom/qennnsad/aknkaksd/presentation/ui/main/setting/g;->a:Lcom/qennnsad/aknkaksd/data/repository/m;

    .line 3
    iput-object p2, p0, Lcom/qennnsad/aknkaksd/presentation/ui/main/setting/g;->b:Le5/f2;

    return-void
.end method

.method public static synthetic b(Lcom/qennnsad/aknkaksd/presentation/ui/main/setting/g;Lcom/qennnsad/aknkaksd/data/bean/room/BlacklistedUserBean;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/qennnsad/aknkaksd/presentation/ui/main/setting/g;->d(Lcom/qennnsad/aknkaksd/presentation/ui/main/setting/g;Lcom/qennnsad/aknkaksd/data/bean/room/BlacklistedUserBean;Landroid/view/View;)V

    return-void
.end method

.method private static final d(Lcom/qennnsad/aknkaksd/presentation/ui/main/setting/g;Lcom/qennnsad/aknkaksd/data/bean/room/BlacklistedUserBean;Landroid/view/View;)V
    .locals 0

    const-string p2, "this$0"

    invoke-static {p0, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p2, "$user"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/qennnsad/aknkaksd/presentation/ui/main/setting/g;->c:Lkotlin/jvm/functions/Function1;

    if-eqz p0, :cond_0

    invoke-virtual {p1}, Lcom/qennnsad/aknkaksd/data/bean/room/BlacklistedUserBean;->getId()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p0, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-void
.end method


# virtual methods
.method public final c(Lcom/qennnsad/aknkaksd/data/bean/room/BlacklistedUserBean;)V
    .locals 5
    .param p1    # Lcom/qennnsad/aknkaksd/data/bean/room/BlacklistedUserBean;
        .annotation build Lm8/g;
        .end annotation
    .end param

    const-string v0, "user"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Lcom/qennnsad/aknkaksd/presentation/ui/main/setting/g;->b:Le5/f2;

    .line 2
    invoke-virtual {p1}, Lcom/qennnsad/aknkaksd/data/bean/room/BlacklistedUserBean;->getAvatar()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 3
    iget-object v2, v0, Le5/f2;->c:Lcom/facebook/drawee/view/SimpleDraweeView;

    .line 4
    iget-object v3, p0, Lcom/qennnsad/aknkaksd/presentation/ui/main/setting/g;->a:Lcom/qennnsad/aknkaksd/data/repository/m;

    invoke-virtual {v3, v1}, Lcom/qennnsad/aknkaksd/data/repository/m;->j(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const/4 v3, 0x1

    const v4, 0x7f0803e2

    .line 5
    invoke-static {v2, v1, v3, v4, v4}, Lcom/qennnsad/aknkaksd/util/img/e;->g(Landroid/widget/ImageView;Landroid/net/Uri;ZII)V

    .line 6
    :cond_0
    iget-object v1, v0, Le5/f2;->d:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/qennnsad/aknkaksd/data/bean/room/BlacklistedUserBean;->getNickname()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_1

    goto :goto_0

    :cond_1
    const-string v2, ""

    :goto_0
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 7
    iget-object v0, v0, Le5/f2;->b:Landroid/widget/Button;

    new-instance v1, Lcom/qennnsad/aknkaksd/presentation/ui/main/setting/f;

    invoke-direct {v1, p0, p1}, Lcom/qennnsad/aknkaksd/presentation/ui/main/setting/f;-><init>(Lcom/qennnsad/aknkaksd/presentation/ui/main/setting/g;Lcom/qennnsad/aknkaksd/data/bean/room/BlacklistedUserBean;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public final e()Le5/f2;
    .locals 1
    .annotation build Lm8/g;
    .end annotation

    iget-object v0, p0, Lcom/qennnsad/aknkaksd/presentation/ui/main/setting/g;->b:Le5/f2;

    return-object v0
.end method

.method public final f()Lcom/qennnsad/aknkaksd/data/repository/m;
    .locals 1
    .annotation build Lm8/g;
    .end annotation

    iget-object v0, p0, Lcom/qennnsad/aknkaksd/presentation/ui/main/setting/g;->a:Lcom/qennnsad/aknkaksd/data/repository/m;

    return-object v0
.end method

.method public final g(Lkotlin/jvm/functions/Function1;)V
    .locals 1
    .param p1    # Lkotlin/jvm/functions/Function1;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Ljava/lang/String;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    const-string v0, "callback"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/qennnsad/aknkaksd/presentation/ui/main/setting/g;->c:Lkotlin/jvm/functions/Function1;

    return-void
.end method
