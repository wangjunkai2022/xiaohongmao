.class final Lcom/im/freechat/ui/chat/chatdetails/ChatDetailsViewModel$n;
.super Lkotlin/jvm/internal/Lambda;
.source "ChatDetailsViewModel.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function4;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/im/freechat/ui/chat/chatdetails/ChatDetailsViewModel;->T0(ILjava/util/List;J)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function4<",
        "Ljava/lang/Boolean;",
        "Ljava/lang/Integer;",
        "Ljava/io/File;",
        "Ljava/lang/Integer;",
        "Lkotlin/Unit;",
        ">;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nChatDetailsViewModel.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ChatDetailsViewModel.kt\ncom/im/freechat/ui/chat/chatdetails/ChatDetailsViewModel$init$2\n+ 2 Uri.kt\nandroidx/core/net/UriKt\n*L\n1#1,843:1\n36#2:844\n*S KotlinDebug\n*F\n+ 1 ChatDetailsViewModel.kt\ncom/im/freechat/ui/chat/chatdetails/ChatDetailsViewModel$init$2\n*L\n350#1:844\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {}
    d1 = {
        "\u0000\u001c\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0002\u0008\u0002\u0010\u0008\u001a\u00020\u00072\u0006\u0010\u0001\u001a\u00020\u00002\u0006\u0010\u0003\u001a\u00020\u00022\u0008\u0010\u0005\u001a\u0004\u0018\u00010\u00042\u0006\u0010\u0006\u001a\u00020\u0002H\n\u00a2\u0006\u0004\u0008\u0008\u0010\t"
    }
    d2 = {
        "",
        "<anonymous parameter 0>",
        "",
        "code",
        "Ljava/io/File;",
        "file",
        "seconds",
        "",
        "a",
        "(ZILjava/io/File;I)V"
    }
    k = 0x3
    mv = {
        0x1,
        0x7,
        0x1
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/im/freechat/ui/chat/chatdetails/ChatDetailsViewModel;


# direct methods
.method constructor <init>(Lcom/im/freechat/ui/chat/chatdetails/ChatDetailsViewModel;)V
    .locals 0

    iput-object p1, p0, Lcom/im/freechat/ui/chat/chatdetails/ChatDetailsViewModel$n;->a:Lcom/im/freechat/ui/chat/chatdetails/ChatDetailsViewModel;

    const/4 p1, 0x4

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final a(ZILjava/io/File;I)V
    .locals 1
    .param p3    # Ljava/io/File;
        .annotation build Lm8/h;
        .end annotation
    .end param

    if-eqz p2, :cond_2

    const/4 p1, 0x0

    const/4 p3, 0x1

    if-eq p2, p3, :cond_1

    const/4 p3, 0x2

    if-eq p2, p3, :cond_0

    goto :goto_0

    .line 1
    :cond_0
    iget-object p2, p0, Lcom/im/freechat/ui/chat/chatdetails/ChatDetailsViewModel$n;->a:Lcom/im/freechat/ui/chat/chatdetails/ChatDetailsViewModel;

    sget p3, Lb4/b$s;->e0:I

    new-array p1, p1, [Ljava/lang/Object;

    invoke-virtual {p2, p3, p1}, Lcom/im/freechat/base/a;->h(I[Ljava/lang/Object;)V

    goto :goto_0

    .line 2
    :cond_1
    iget-object p2, p0, Lcom/im/freechat/ui/chat/chatdetails/ChatDetailsViewModel$n;->a:Lcom/im/freechat/ui/chat/chatdetails/ChatDetailsViewModel;

    .line 3
    sget p4, Lb4/b$s;->L0:I

    new-array p3, p3, [Ljava/lang/Object;

    .line 4
    invoke-static {p2}, Lcom/im/freechat/ui/chat/chatdetails/ChatDetailsViewModel;->s(Lcom/im/freechat/ui/chat/chatdetails/ChatDetailsViewModel;)Lcom/im/freechat/media/audio/c;

    move-result-object v0

    invoke-interface {v0}, Lcom/im/freechat/media/audio/c;->c()I

    move-result v0

    div-int/lit16 v0, v0, 0x3e8

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, p3, p1

    .line 5
    invoke-virtual {p2, p4, p3}, Lcom/im/freechat/base/a;->h(I[Ljava/lang/Object;)V

    goto :goto_0

    :cond_2
    if-eqz p3, :cond_3

    .line 6
    iget-object p1, p0, Lcom/im/freechat/ui/chat/chatdetails/ChatDetailsViewModel$n;->a:Lcom/im/freechat/ui/chat/chatdetails/ChatDetailsViewModel;

    .line 7
    invoke-static {p3}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object p2

    const-string p3, "fromFile(this)"

    invoke-static {p2, p3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 8
    invoke-virtual {p1, p2}, Lcom/im/freechat/ui/chat/chatdetails/ChatDetailsViewModel;->y1(Landroid/net/Uri;)V

    :cond_3
    :goto_0
    return-void
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    check-cast p2, Ljava/lang/Number;

    invoke-virtual {p2}, Ljava/lang/Number;->intValue()I

    move-result p2

    check-cast p3, Ljava/io/File;

    check-cast p4, Ljava/lang/Number;

    invoke-virtual {p4}, Ljava/lang/Number;->intValue()I

    move-result p4

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/im/freechat/ui/chat/chatdetails/ChatDetailsViewModel$n;->a(ZILjava/io/File;I)V

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method
