.class public final Lcom/im/freechat/extend/g;
.super Ljava/lang/Object;
.source "ChatExtentions.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nChatExtentions.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ChatExtentions.kt\ncom/im/freechat/extend/ChatExtentionsKt\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,18:1\n1011#2,2:19\n1011#2,2:21\n1011#2,2:23\n*S KotlinDebug\n*F\n+ 1 ChatExtentions.kt\ncom/im/freechat/extend/ChatExtentionsKt\n*L\n13#1:19,2\n14#1:21,2\n15#1:23,2\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {}
    d1 = {
        "\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0010\u000b\n\u0002\u0008\u0005\n\u0002\u0010 \n\u0002\u0010!\n\u0002\u0008\u0002\u001a\n\u0010\u0002\u001a\u00020\u0001*\u00020\u0000\u001a\n\u0010\u0003\u001a\u00020\u0001*\u00020\u0000\u001a\n\u0010\u0004\u001a\u00020\u0001*\u00020\u0000\u001a\n\u0010\u0005\u001a\u00020\u0001*\u00020\u0000\u001a\n\u0010\u0006\u001a\u00020\u0001*\u00020\u0000\u001a\u0016\u0010\t\u001a\u0008\u0012\u0004\u0012\u00020\u00000\u0008*\u0008\u0012\u0004\u0012\u00020\u00000\u0007\u00a8\u0006\n"
    }
    d2 = {
        "Lcom/im/freechat/shared/entities/chat/Chat;",
        "",
        "b",
        "e",
        "a",
        "d",
        "c",
        "",
        "",
        "f",
        "app_prodRelease"
    }
    k = 0x2
    mv = {
        0x1,
        0x7,
        0x1
    }
.end annotation


# direct methods
.method public static final a(Lcom/im/freechat/shared/entities/chat/Chat;)Z
    .locals 1
    .param p0    # Lcom/im/freechat/shared/entities/chat/Chat;
        .annotation build Lm8/g;
        .end annotation
    .end param

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/im/freechat/shared/entities/chat/Chat;->getType()Lcom/im/freechat/shared/entities/chat/Chat$Type;

    move-result-object p0

    sget-object v0, Lcom/im/freechat/shared/entities/chat/Chat$Type;->CHANNEL:Lcom/im/freechat/shared/entities/chat/Chat$Type;

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static final b(Lcom/im/freechat/shared/entities/chat/Chat;)Z
    .locals 1
    .param p0    # Lcom/im/freechat/shared/entities/chat/Chat;
        .annotation build Lm8/g;
        .end annotation
    .end param

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/im/freechat/shared/entities/chat/Chat;->getType()Lcom/im/freechat/shared/entities/chat/Chat$Type;

    move-result-object p0

    sget-object v0, Lcom/im/freechat/shared/entities/chat/Chat$Type;->FAVORITES:Lcom/im/freechat/shared/entities/chat/Chat$Type;

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static final c(Lcom/im/freechat/shared/entities/chat/Chat;)Z
    .locals 1
    .param p0    # Lcom/im/freechat/shared/entities/chat/Chat;
        .annotation build Lm8/g;
        .end annotation
    .end param

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p0}, Lcom/im/freechat/extend/g;->b(Lcom/im/freechat/shared/entities/chat/Chat;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {p0}, Lcom/im/freechat/extend/g;->e(Lcom/im/freechat/shared/entities/chat/Chat;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {p0}, Lcom/im/freechat/extend/g;->a(Lcom/im/freechat/shared/entities/chat/Chat;)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method public static final d(Lcom/im/freechat/shared/entities/chat/Chat;)Z
    .locals 1
    .param p0    # Lcom/im/freechat/shared/entities/chat/Chat;
        .annotation build Lm8/g;
        .end annotation
    .end param

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/im/freechat/shared/entities/chat/Chat;->getPinnedTime()Ljava/lang/Long;

    move-result-object p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static final e(Lcom/im/freechat/shared/entities/chat/Chat;)Z
    .locals 1
    .param p0    # Lcom/im/freechat/shared/entities/chat/Chat;
        .annotation build Lm8/g;
        .end annotation
    .end param

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/im/freechat/shared/entities/chat/Chat;->getType()Lcom/im/freechat/shared/entities/chat/Chat$Type;

    move-result-object p0

    sget-object v0, Lcom/im/freechat/shared/entities/chat/Chat$Type;->SERVICE:Lcom/im/freechat/shared/entities/chat/Chat$Type;

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static final f(Ljava/util/List;)Ljava/util/List;
    .locals 2
    .param p0    # Ljava/util/List;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/im/freechat/shared/entities/chat/Chat;",
            ">;)",
            "Ljava/util/List<",
            "Lcom/im/freechat/shared/entities/chat/Chat;",
            ">;"
        }
    .end annotation

    .annotation build Lm8/g;
    .end annotation

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-static {p0}, Lkotlin/collections/CollectionsKt;->toMutableList(Ljava/util/Collection;)Ljava/util/List;

    move-result-object p0

    .line 2
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_0

    new-instance v0, Lcom/im/freechat/extend/g$a;

    invoke-direct {v0}, Lcom/im/freechat/extend/g$a;-><init>()V

    invoke-static {p0, v0}, Lkotlin/collections/CollectionsKt;->sortWith(Ljava/util/List;Ljava/util/Comparator;)V

    .line 3
    :cond_0
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    if-le v0, v1, :cond_1

    new-instance v0, Lcom/im/freechat/extend/g$b;

    invoke-direct {v0}, Lcom/im/freechat/extend/g$b;-><init>()V

    invoke-static {p0, v0}, Lkotlin/collections/CollectionsKt;->sortWith(Ljava/util/List;Ljava/util/Comparator;)V

    .line 4
    :cond_1
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    if-le v0, v1, :cond_2

    new-instance v0, Lcom/im/freechat/extend/g$c;

    invoke-direct {v0}, Lcom/im/freechat/extend/g$c;-><init>()V

    invoke-static {p0, v0}, Lkotlin/collections/CollectionsKt;->sortWith(Ljava/util/List;Ljava/util/Comparator;)V

    :cond_2
    return-object p0
.end method
