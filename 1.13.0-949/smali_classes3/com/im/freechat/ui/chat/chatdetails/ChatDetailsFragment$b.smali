.class public final Lcom/im/freechat/ui/chat/chatdetails/ChatDetailsFragment$b;
.super Landroidx/core/view/WindowInsetsAnimationCompat$Callback;
.source "ChatDetailsFragment.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/im/freechat/ui/chat/chatdetails/ChatDetailsFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nChatDetailsFragment.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ChatDetailsFragment.kt\ncom/im/freechat/ui/chat/chatdetails/ChatDetailsFragment$TranslateDeferringInsetsAnimationCallback\n+ 2 View.kt\nandroidx/core/view/ViewKt\n*L\n1#1,1609:1\n252#2:1610\n*S KotlinDebug\n*F\n+ 1 ChatDetailsFragment.kt\ncom/im/freechat/ui/chat/chatdetails/ChatDetailsFragment$TranslateDeferringInsetsAnimationCallback\n*L\n1565#1:1610\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {}
    d1 = {
        "\u0000\"\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0002\n\u0002\u0008\u0004\u0008\u0086\u0004\u0018\u00002\u00020\u0001B\u0007\u00a2\u0006\u0004\u0008\u000b\u0010\u000cJ\u001e\u0010\u0007\u001a\u00020\u00022\u0006\u0010\u0003\u001a\u00020\u00022\u000c\u0010\u0006\u001a\u0008\u0012\u0004\u0012\u00020\u00050\u0004H\u0016J\u0010\u0010\n\u001a\u00020\t2\u0006\u0010\u0008\u001a\u00020\u0005H\u0016\u00a8\u0006\r"
    }
    d2 = {
        "Lcom/im/freechat/ui/chat/chatdetails/ChatDetailsFragment$b;",
        "Landroidx/core/view/WindowInsetsAnimationCompat$Callback;",
        "Landroidx/core/view/WindowInsetsCompat;",
        "insets",
        "",
        "Landroidx/core/view/WindowInsetsAnimationCompat;",
        "runningAnimations",
        "onProgress",
        "animation",
        "",
        "onEnd",
        "<init>",
        "(Lcom/im/freechat/ui/chat/chatdetails/ChatDetailsFragment;)V",
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
.field final synthetic a:Lcom/im/freechat/ui/chat/chatdetails/ChatDetailsFragment;


# direct methods
.method public constructor <init>(Lcom/im/freechat/ui/chat/chatdetails/ChatDetailsFragment;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/im/freechat/ui/chat/chatdetails/ChatDetailsFragment$b;->a:Lcom/im/freechat/ui/chat/chatdetails/ChatDetailsFragment;

    const/4 p1, 0x0

    .line 2
    invoke-direct {p0, p1}, Landroidx/core/view/WindowInsetsAnimationCompat$Callback;-><init>(I)V

    return-void
.end method


# virtual methods
.method public onEnd(Landroidx/core/view/WindowInsetsAnimationCompat;)V
    .locals 1
    .param p1    # Landroidx/core/view/WindowInsetsAnimationCompat;
        .annotation build Lm8/g;
        .end annotation
    .end param

    const-string v0, "animation"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object p1, p0, Lcom/im/freechat/ui/chat/chatdetails/ChatDetailsFragment$b;->a:Lcom/im/freechat/ui/chat/chatdetails/ChatDetailsFragment;

    invoke-static {p1}, Lcom/im/freechat/ui/chat/chatdetails/ChatDetailsFragment;->y1(Lcom/im/freechat/ui/chat/chatdetails/ChatDetailsFragment;)Lf4/i;

    move-result-object p1

    invoke-virtual {p1}, Lf4/i;->b()Landroidx/constraintlayout/widget/ConstraintLayout;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0, v0, v0, v0}, Landroid/view/ViewGroup;->setPadding(IIII)V

    .line 2
    iget-object p1, p0, Lcom/im/freechat/ui/chat/chatdetails/ChatDetailsFragment$b;->a:Lcom/im/freechat/ui/chat/chatdetails/ChatDetailsFragment;

    invoke-static {p1}, Lcom/im/freechat/ui/chat/chatdetails/ChatDetailsFragment;->B1(Lcom/im/freechat/ui/chat/chatdetails/ChatDetailsFragment;)Lcom/im/freechat/ui/chat/chatdetails/ChatDetailsFragment$BottomVisibilityState;

    move-result-object p1

    sget-object v0, Lcom/im/freechat/ui/chat/chatdetails/ChatDetailsFragment$BottomVisibilityState;->KEYBOARD_REQUEST:Lcom/im/freechat/ui/chat/chatdetails/ChatDetailsFragment$BottomVisibilityState;

    if-ne p1, v0, :cond_0

    iget-object p1, p0, Lcom/im/freechat/ui/chat/chatdetails/ChatDetailsFragment$b;->a:Lcom/im/freechat/ui/chat/chatdetails/ChatDetailsFragment;

    .line 3
    sget-object v0, Lcom/im/freechat/ui/chat/chatdetails/ChatDetailsFragment$BottomVisibilityState;->KEYBOARD_SHOWING:Lcom/im/freechat/ui/chat/chatdetails/ChatDetailsFragment$BottomVisibilityState;

    .line 4
    invoke-virtual {p1, v0}, Lcom/im/freechat/ui/chat/chatdetails/ChatDetailsFragment;->U3(Lcom/im/freechat/ui/chat/chatdetails/ChatDetailsFragment$BottomVisibilityState;)V

    :cond_0
    return-void
.end method

.method public onProgress(Landroidx/core/view/WindowInsetsCompat;Ljava/util/List;)Landroidx/core/view/WindowInsetsCompat;
    .locals 3
    .param p1    # Landroidx/core/view/WindowInsetsCompat;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .param p2    # Ljava/util/List;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/core/view/WindowInsetsCompat;",
            "Ljava/util/List<",
            "Landroidx/core/view/WindowInsetsAnimationCompat;",
            ">;)",
            "Landroidx/core/view/WindowInsetsCompat;"
        }
    .end annotation

    .annotation build Lm8/g;
    .end annotation

    const-string v0, "insets"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "runningAnimations"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object p2, p0, Lcom/im/freechat/ui/chat/chatdetails/ChatDetailsFragment$b;->a:Lcom/im/freechat/ui/chat/chatdetails/ChatDetailsFragment;

    invoke-static {p2}, Lcom/im/freechat/ui/chat/chatdetails/ChatDetailsFragment;->y1(Lcom/im/freechat/ui/chat/chatdetails/ChatDetailsFragment;)Lf4/i;

    move-result-object p2

    iget-object p2, p2, Lf4/i;->o:Landroid/widget/FrameLayout;

    const-string v0, "binding.flEmojiAndMore"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    invoke-virtual {p2}, Landroid/view/View;->getVisibility()I

    move-result p2

    const/4 v0, 0x0

    if-nez p2, :cond_0

    const/4 p2, 0x1

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    :goto_0
    if-nez p2, :cond_2

    .line 3
    iget-object p2, p0, Lcom/im/freechat/ui/chat/chatdetails/ChatDetailsFragment$b;->a:Lcom/im/freechat/ui/chat/chatdetails/ChatDetailsFragment;

    invoke-static {p2}, Lcom/im/freechat/ui/chat/chatdetails/ChatDetailsFragment;->C1(Lcom/im/freechat/ui/chat/chatdetails/ChatDetailsFragment;)Z

    move-result p2

    if-eqz p2, :cond_1

    goto :goto_1

    .line 4
    :cond_1
    invoke-static {}, Landroidx/core/view/WindowInsetsCompat$Type;->ime()I

    move-result p2

    invoke-virtual {p1, p2}, Landroidx/core/view/WindowInsetsCompat;->getInsets(I)Landroidx/core/graphics/Insets;

    move-result-object p2

    const-string v1, "insets.getInsets(WindowInsetsCompat.Type.ime())"

    invoke-static {p2, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 5
    invoke-static {}, Landroidx/core/view/WindowInsetsCompat$Type;->systemBars()I

    move-result v1

    invoke-virtual {p1, v1}, Landroidx/core/view/WindowInsetsCompat;->getInsets(I)Landroidx/core/graphics/Insets;

    move-result-object v1

    const-string v2, "insets.getInsets(WindowI\u2026Compat.Type.systemBars())"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    invoke-static {p2, v1}, Landroidx/core/graphics/Insets;->subtract(Landroidx/core/graphics/Insets;Landroidx/core/graphics/Insets;)Landroidx/core/graphics/Insets;

    move-result-object p2

    .line 7
    sget-object v1, Landroidx/core/graphics/Insets;->NONE:Landroidx/core/graphics/Insets;

    invoke-static {p2, v1}, Landroidx/core/graphics/Insets;->max(Landroidx/core/graphics/Insets;Landroidx/core/graphics/Insets;)Landroidx/core/graphics/Insets;

    move-result-object p2

    const-string v1, "subtract(typesInset, oth\u2026nsets.NONE)\n            }"

    .line 8
    invoke-static {p2, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    iget-object v1, p0, Lcom/im/freechat/ui/chat/chatdetails/ChatDetailsFragment$b;->a:Lcom/im/freechat/ui/chat/chatdetails/ChatDetailsFragment;

    invoke-static {v1}, Lcom/im/freechat/ui/chat/chatdetails/ChatDetailsFragment;->y1(Lcom/im/freechat/ui/chat/chatdetails/ChatDetailsFragment;)Lf4/i;

    move-result-object v1

    invoke-virtual {v1}, Lf4/i;->b()Landroidx/constraintlayout/widget/ConstraintLayout;

    move-result-object v1

    iget v2, p2, Landroidx/core/graphics/Insets;->bottom:I

    iget p2, p2, Landroidx/core/graphics/Insets;->top:I

    sub-int/2addr v2, p2

    invoke-virtual {v1, v0, v0, v0, v2}, Landroid/view/ViewGroup;->setPadding(IIII)V

    :cond_2
    :goto_1
    return-object p1
.end method
