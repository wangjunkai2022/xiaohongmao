.class public final Lcom/im/freechat/ui/chat/chatdetails/ChatDetailsFragment$j;
.super Ljava/lang/Object;
.source "ChatDetailsFragment.kt"

# interfaces
.implements Lcom/giphy/sdk/ui/views/GiphyDialogFragment$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/im/freechat/ui/chat/chatdetails/ChatDetailsFragment;->h2()Lcom/giphy/sdk/ui/views/GiphyDialogFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {}
    d1 = {
        "\u0000%\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0004*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001J\u0010\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002H\u0016J\u0010\u0010\u0008\u001a\u00020\u00042\u0006\u0010\u0007\u001a\u00020\u0006H\u0016J\"\u0010\u000c\u001a\u00020\u00042\u0006\u0010\n\u001a\u00020\t2\u0008\u0010\u000b\u001a\u0004\u0018\u00010\u00022\u0006\u0010\u0007\u001a\u00020\u0006H\u0016\u00a8\u0006\r"
    }
    d2 = {
        "com/im/freechat/ui/chat/chatdetails/ChatDetailsFragment$j",
        "Lcom/giphy/sdk/ui/views/GiphyDialogFragment$b;",
        "",
        "term",
        "",
        "c",
        "Lcom/giphy/sdk/ui/GPHContentType;",
        "selectedContentType",
        "a",
        "Lcom/giphy/sdk/core/models/Media;",
        "media",
        "searchTerm",
        "b",
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
.method constructor <init>(Lcom/im/freechat/ui/chat/chatdetails/ChatDetailsFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/im/freechat/ui/chat/chatdetails/ChatDetailsFragment$j;->a:Lcom/im/freechat/ui/chat/chatdetails/ChatDetailsFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/giphy/sdk/ui/GPHContentType;)V
    .locals 1
    .param p1    # Lcom/giphy/sdk/ui/GPHContentType;
        .annotation build Lm8/g;
        .end annotation
    .end param

    const-string v0, "selectedContentType"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/im/freechat/ui/chat/chatdetails/ChatDetailsFragment$j;->a:Lcom/im/freechat/ui/chat/chatdetails/ChatDetailsFragment;

    sget-object v0, Lcom/im/freechat/ui/chat/chatdetails/ChatDetailsFragment$BottomVisibilityState;->NONE:Lcom/im/freechat/ui/chat/chatdetails/ChatDetailsFragment$BottomVisibilityState;

    invoke-virtual {p1, v0}, Lcom/im/freechat/ui/chat/chatdetails/ChatDetailsFragment;->U3(Lcom/im/freechat/ui/chat/chatdetails/ChatDetailsFragment$BottomVisibilityState;)V

    return-void
.end method

.method public b(Lcom/giphy/sdk/core/models/Media;Ljava/lang/String;Lcom/giphy/sdk/ui/GPHContentType;)V
    .locals 2
    .param p1    # Lcom/giphy/sdk/core/models/Media;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Lm8/h;
        .end annotation
    .end param
    .param p3    # Lcom/giphy/sdk/ui/GPHContentType;
        .annotation build Lm8/g;
        .end annotation
    .end param

    const-string p2, "media"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p2, "selectedContentType"

    invoke-static {p3, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object p2, p0, Lcom/im/freechat/ui/chat/chatdetails/ChatDetailsFragment$j;->a:Lcom/im/freechat/ui/chat/chatdetails/ChatDetailsFragment;

    sget-object p3, Lcom/im/freechat/ui/chat/chatdetails/ChatDetailsFragment$BottomVisibilityState;->NONE:Lcom/im/freechat/ui/chat/chatdetails/ChatDetailsFragment$BottomVisibilityState;

    invoke-virtual {p2, p3}, Lcom/im/freechat/ui/chat/chatdetails/ChatDetailsFragment;->U3(Lcom/im/freechat/ui/chat/chatdetails/ChatDetailsFragment$BottomVisibilityState;)V

    .line 2
    invoke-virtual {p1}, Lcom/giphy/sdk/core/models/Media;->getImages()Lcom/giphy/sdk/core/models/Images;

    move-result-object p2

    invoke-virtual {p2}, Lcom/giphy/sdk/core/models/Images;->getOriginal()Lcom/giphy/sdk/core/models/Image;

    move-result-object p2

    if-eqz p2, :cond_0

    invoke-virtual {p2}, Lcom/giphy/sdk/core/models/Image;->getMediaId()Ljava/lang/String;

    move-result-object p2

    if-eqz p2, :cond_0

    iget-object p3, p0, Lcom/im/freechat/ui/chat/chatdetails/ChatDetailsFragment$j;->a:Lcom/im/freechat/ui/chat/chatdetails/ChatDetailsFragment;

    .line 3
    invoke-virtual {p3}, Lcom/im/freechat/ui/chat/chatdetails/ChatDetailsFragment;->m2()Lcom/im/freechat/ui/chat/chatdetails/ChatDetailsViewModel;

    move-result-object p3

    .line 4
    new-instance v0, Landroid/util/Size;

    invoke-virtual {p1}, Lcom/giphy/sdk/core/models/Media;->getImages()Lcom/giphy/sdk/core/models/Images;

    move-result-object v1

    invoke-virtual {v1}, Lcom/giphy/sdk/core/models/Images;->getOriginal()Lcom/giphy/sdk/core/models/Image;

    move-result-object v1

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v1}, Lcom/giphy/sdk/core/models/Image;->getWidth()I

    move-result v1

    invoke-virtual {p1}, Lcom/giphy/sdk/core/models/Media;->getImages()Lcom/giphy/sdk/core/models/Images;

    move-result-object p1

    invoke-virtual {p1}, Lcom/giphy/sdk/core/models/Images;->getOriginal()Lcom/giphy/sdk/core/models/Image;

    move-result-object p1

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {p1}, Lcom/giphy/sdk/core/models/Image;->getHeight()I

    move-result p1

    invoke-direct {v0, v1, p1}, Landroid/util/Size;-><init>(II)V

    .line 5
    invoke-virtual {p3, p2, v0}, Lcom/im/freechat/ui/chat/chatdetails/ChatDetailsViewModel;->x1(Ljava/lang/String;Landroid/util/Size;)Lkotlinx/coroutines/j2;

    :cond_0
    return-void
.end method

.method public c(Ljava/lang/String;)V
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Lm8/g;
        .end annotation
    .end param

    const-string v0, "term"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method
