.class public final Lcom/qennnsad/aknkaksd/presentation/ui/room/b$a;
.super Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
.source "AudienceAdapter.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/qennnsad/aknkaksd/presentation/ui/room/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "a"
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {}
    d1 = {
        "\u0000\u001c\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0007\u0008\u0086\u0004\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0007\u001a\u00020\u0006\u00a2\u0006\u0004\u0008\u000b\u0010\u000cJ\u000e\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002R\u0017\u0010\u0007\u001a\u00020\u00068\u0006\u00a2\u0006\u000c\n\u0004\u0008\u0007\u0010\u0008\u001a\u0004\u0008\t\u0010\n\u00a8\u0006\r"
    }
    d2 = {
        "Lcom/qennnsad/aknkaksd/presentation/ui/room/b$a;",
        "Landroidx/recyclerview/widget/RecyclerView$ViewHolder;",
        "Lcom/qennnsad/aknkaksd/data/bean/websocket/AudienceInfo;",
        "data",
        "",
        "b",
        "Le5/v2;",
        "binding",
        "Le5/v2;",
        "c",
        "()Le5/v2;",
        "<init>",
        "(Lcom/qennnsad/aknkaksd/presentation/ui/room/b;Le5/v2;)V",
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
.field private final a:Le5/v2;
    .annotation build Lm8/g;
    .end annotation
.end field

.field final synthetic b:Lcom/qennnsad/aknkaksd/presentation/ui/room/b;


# direct methods
.method public constructor <init>(Lcom/qennnsad/aknkaksd/presentation/ui/room/b;Le5/v2;)V
    .locals 1
    .param p1    # Lcom/qennnsad/aknkaksd/presentation/ui/room/b;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Le5/v2;",
            ")V"
        }
    .end annotation

    const-string v0, "binding"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iput-object p1, p0, Lcom/qennnsad/aknkaksd/presentation/ui/room/b$a;->b:Lcom/qennnsad/aknkaksd/presentation/ui/room/b;

    .line 2
    invoke-virtual {p2}, Le5/v2;->b()Landroid/widget/RelativeLayout;

    move-result-object p1

    invoke-direct {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    .line 3
    iput-object p2, p0, Lcom/qennnsad/aknkaksd/presentation/ui/room/b$a;->a:Le5/v2;

    return-void
.end method


# virtual methods
.method public final b(Lcom/qennnsad/aknkaksd/data/bean/websocket/AudienceInfo;)V
    .locals 3
    .param p1    # Lcom/qennnsad/aknkaksd/data/bean/websocket/AudienceInfo;
        .annotation build Lm8/g;
        .end annotation
    .end param

    const-string v0, "data"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Lcom/qennnsad/aknkaksd/presentation/ui/room/b$a;->a:Le5/v2;

    iget-object v0, v0, Le5/v2;->b:Landroid/widget/ImageView;

    .line 2
    iget-object v1, p0, Lcom/qennnsad/aknkaksd/presentation/ui/room/b$a;->b:Lcom/qennnsad/aknkaksd/presentation/ui/room/b;

    invoke-virtual {v1}, Lcom/qennnsad/aknkaksd/presentation/ui/room/b;->f()Lcom/qennnsad/aknkaksd/data/repository/m;

    move-result-object v1

    invoke-virtual {p1}, Lcom/qennnsad/aknkaksd/data/bean/websocket/AudienceInfo;->getAvatar()Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_0

    const-string p1, ""

    :cond_0
    invoke-virtual {v1, p1}, Lcom/qennnsad/aknkaksd/data/repository/m;->j(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    const/4 v1, 0x1

    const v2, 0x7f0803e2

    .line 3
    invoke-static {v0, p1, v1, v2, v2}, Lcom/qennnsad/aknkaksd/util/img/e;->g(Landroid/widget/ImageView;Landroid/net/Uri;ZII)V

    return-void
.end method

.method public final c()Le5/v2;
    .locals 1
    .annotation build Lm8/g;
    .end annotation

    iget-object v0, p0, Lcom/qennnsad/aknkaksd/presentation/ui/room/b$a;->a:Le5/v2;

    return-object v0
.end method
