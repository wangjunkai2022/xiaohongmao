.class public final Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/privatedialog/PrivateRoomFragment$a;
.super Landroid/text/style/ClickableSpan;
.source "PrivateRoomFragment.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/privatedialog/PrivateRoomFragment;->Z(Z)Landroid/text/SpannableString;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {}
    d1 = {
        "\u0000\u001d\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001J\u0010\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002H\u0016J\u0010\u0010\u0008\u001a\u00020\u00042\u0006\u0010\u0007\u001a\u00020\u0006H\u0016\u00a8\u0006\t"
    }
    d2 = {
        "com/qennnsad/aknkaksd/presentation/ui/room/player/player/privatedialog/PrivateRoomFragment$a",
        "Landroid/text/style/ClickableSpan;",
        "Landroid/view/View;",
        "textView",
        "",
        "onClick",
        "Landroid/text/TextPaint;",
        "ds",
        "updateDrawState",
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
.field final synthetic a:Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/privatedialog/PrivateRoomFragment;

.field final synthetic b:I

.field final synthetic c:Z


# direct methods
.method constructor <init>(Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/privatedialog/PrivateRoomFragment;IZ)V
    .locals 0

    iput-object p1, p0, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/privatedialog/PrivateRoomFragment$a;->a:Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/privatedialog/PrivateRoomFragment;

    iput p2, p0, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/privatedialog/PrivateRoomFragment$a;->b:I

    iput-boolean p3, p0, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/privatedialog/PrivateRoomFragment$a;->c:Z

    invoke-direct {p0}, Landroid/text/style/ClickableSpan;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1    # Landroid/view/View;
        .annotation build Lm8/g;
        .end annotation
    .end param

    const-string v0, "textView"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/privatedialog/PrivateRoomFragment$a;->a:Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/privatedialog/PrivateRoomFragment;

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    const-string v0, "requireActivity()"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/privatedialog/PrivateRoomFragment$a;->a:Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/privatedialog/PrivateRoomFragment;

    invoke-virtual {v0}, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/privatedialog/PrivateRoomFragment;->d0()Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/PlayerViewModel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/PlayerViewModel;->b0()Lg5/a;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/qennnsad/aknkaksd/util/l;->o0(Landroid/app/Activity;Lg5/a;)V

    return-void
.end method

.method public updateDrawState(Landroid/text/TextPaint;)V
    .locals 2
    .param p1    # Landroid/text/TextPaint;
        .annotation build Lm8/g;
        .end annotation
    .end param

    const-string v0, "ds"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-super {p0, p1}, Landroid/text/style/ClickableSpan;->updateDrawState(Landroid/text/TextPaint;)V

    .line 2
    iget-object v0, p0, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/privatedialog/PrivateRoomFragment$a;->a:Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/privatedialog/PrivateRoomFragment;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    iget v1, p0, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/privatedialog/PrivateRoomFragment$a;->b:I

    invoke-static {v0, v1}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/text/TextPaint;->setColor(I)V

    .line 3
    iget-boolean v0, p0, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/privatedialog/PrivateRoomFragment$a;->c:Z

    xor-int/lit8 v0, v0, 0x1

    invoke-virtual {p1, v0}, Landroid/text/TextPaint;->setUnderlineText(Z)V

    return-void
.end method
