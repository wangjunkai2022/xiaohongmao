.class final Lcom/im/freechat/ui/chat/chatdetails/ChatDetailsViewModel$x;
.super Lkotlin/jvm/internal/Lambda;
.source "ChatDetailsViewModel.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/im/freechat/ui/chat/chatdetails/ChatDetailsViewModel;-><init>(Lcom/im/freechat/domain/usecase/messages/k;Lcom/im/freechat/domain/usecase/chat/r;Lcom/im/freechat/domain/usecase/auth/e;Lcom/im/freechat/domain/usecase/chat/e;Lcom/im/freechat/domain/usecase/messages/j;Lcom/im/freechat/domain/usecase/messages/b;Lcom/im/freechat/domain/usecase/messages/n;Lcom/im/freechat/media/audio/c;Lcom/im/freechat/domain/usecase/chat/a;Lp4/e;Lcom/im/freechat/domain/usecase/members/h;Lcom/im/freechat/domain/usecase/contact/b;Lcom/im/freechat/domain/usecase/contact/f;Lcom/im/freechat/domain/usecase/contact/a;Lcom/im/freechat/domain/usecase/contact/j;Lcom/im/freechat/domain/h;Lcom/im/freechat/domain/usecase/messages/i;Lcom/im/freechat/domain/usecase/chat/q;Lcom/im/freechat/domain/usecase/chat/f;Lcom/im/freechat/domain/usecase/messages/c;Lcom/im/freechat/domain/usecase/messages/o;Lcom/im/freechat/domain/usecase/chat/j;Lcom/im/freechat/domain/usecase/messages/p;Lcom/im/freechat/domain/usecase/currentuser/h;Lcom/im/freechat/domain/usecase/currentuser/b;Lcom/im/freechat/utils/f;Lcom/im/freechat/domain/usecase/messages/a;Lcom/im/freechat/domain/usecase/messages/f;Lcom/im/freechat/domain/usecase/messages/e;Lcom/im/freechat/domain/usecase/messages/d;Lcom/im/freechat/domain/usecase/chat/s;Lcom/im/freechat/domain/usecase/messages/g;Lcom/im/freechat/domain/n;Landroid/content/res/Resources;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function2<",
        "Ljava/util/List<",
        "+",
        "Lcom/im/freechat/shared/entities/message/Message;",
        ">;",
        "Ljava/lang/String;",
        "Ljava/util/List<",
        "+",
        "Lcom/im/freechat/shared/entities/message/Message;",
        ">;>;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nChatDetailsViewModel.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ChatDetailsViewModel.kt\ncom/im/freechat/ui/chat/chatdetails/ChatDetailsViewModel$searchMessagesList$1\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,843:1\n766#2:844\n857#2:845\n800#2,11:846\n1743#2,3:857\n800#2,11:860\n1743#2,3:871\n858#2:874\n*S KotlinDebug\n*F\n+ 1 ChatDetailsViewModel.kt\ncom/im/freechat/ui/chat/chatdetails/ChatDetailsViewModel$searchMessagesList$1\n*L\n279#1:844\n279#1:845\n281#1:846,11\n282#1:857,3\n284#1:860,11\n285#1:871,3\n279#1:874\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {}
    d1 = {
        "\u0000\u0012\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0003\u0010\u0005\u001a\n\u0012\u0004\u0012\u00020\u0001\u0018\u00010\u00002\u000e\u0010\u0002\u001a\n\u0012\u0004\u0012\u00020\u0001\u0018\u00010\u00002\u0008\u0010\u0004\u001a\u0004\u0018\u00010\u0003H\n\u00a2\u0006\u0004\u0008\u0005\u0010\u0006"
    }
    d2 = {
        "",
        "Lcom/im/freechat/shared/entities/message/Message;",
        "messages",
        "",
        "query",
        "a",
        "(Ljava/util/List;Ljava/lang/String;)Ljava/util/List;"
    }
    k = 0x3
    mv = {
        0x1,
        0x7,
        0x1
    }
.end annotation


# static fields
.field public static final a:Lcom/im/freechat/ui/chat/chatdetails/ChatDetailsViewModel$x;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/im/freechat/ui/chat/chatdetails/ChatDetailsViewModel$x;

    invoke-direct {v0}, Lcom/im/freechat/ui/chat/chatdetails/ChatDetailsViewModel$x;-><init>()V

    sput-object v0, Lcom/im/freechat/ui/chat/chatdetails/ChatDetailsViewModel$x;->a:Lcom/im/freechat/ui/chat/chatdetails/ChatDetailsViewModel$x;

    return-void
.end method

.method constructor <init>()V
    .locals 1

    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final a(Ljava/util/List;Ljava/lang/String;)Ljava/util/List;
    .locals 10
    .param p1    # Ljava/util/List;
        .annotation build Lm8/h;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Lm8/h;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/im/freechat/shared/entities/message/Message;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lcom/im/freechat/shared/entities/message/Message;",
            ">;"
        }
    .end annotation

    .annotation build Lm8/h;
    .end annotation

    const/4 v0, 0x0

    if-nez p2, :cond_0

    return-object v0

    .line 1
    :cond_0
    invoke-static {p2}, Lkotlin/text/StringsKt;->isBlank(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object p1

    return-object p1

    :cond_1
    if-eqz p1, :cond_15

    .line 2
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 3
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_2
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_14

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    move-object v3, v2

    check-cast v3, Lcom/im/freechat/shared/entities/message/Message;

    .line 4
    invoke-virtual {v3}, Lcom/im/freechat/shared/entities/message/Message;->getContent()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x1

    const/4 v6, 0x0

    if-eqz v4, :cond_3

    invoke-static {v4, p2, v5}, Lkotlin/text/StringsKt;->contains(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Z

    move-result v4

    if-ne v4, v5, :cond_3

    const/4 v4, 0x1

    goto :goto_1

    :cond_3
    const/4 v4, 0x0

    :goto_1
    if-nez v4, :cond_13

    .line 5
    invoke-virtual {v3}, Lcom/im/freechat/shared/entities/message/Message;->getAttachments()Ljava/util/List;

    move-result-object v4

    .line 6
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 7
    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_4
    :goto_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_5

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    instance-of v9, v8, Lcom/im/freechat/shared/entities/message/FileAttachment;

    if-eqz v9, :cond_4

    invoke-interface {v7, v8}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 8
    :cond_5
    invoke-interface {v7}, Ljava/util/Collection;->isEmpty()Z

    move-result v4

    const/4 v8, 0x2

    if-eqz v4, :cond_7

    :cond_6
    const/4 v4, 0x0

    goto :goto_4

    .line 9
    :cond_7
    invoke-interface {v7}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_8
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_6

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/im/freechat/shared/entities/message/FileAttachment;

    .line 10
    invoke-virtual {v7}, Lcom/im/freechat/shared/entities/message/FileAttachment;->getFileName()Ljava/lang/String;

    move-result-object v7

    if-eqz v7, :cond_9

    invoke-static {v7, p2, v6, v8, v0}, Lkotlin/text/StringsKt;->contains$default(Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZILjava/lang/Object;)Z

    move-result v7

    if-ne v7, v5, :cond_9

    const/4 v7, 0x1

    goto :goto_3

    :cond_9
    const/4 v7, 0x0

    :goto_3
    if-eqz v7, :cond_8

    const/4 v4, 0x1

    :goto_4
    if-nez v4, :cond_13

    .line 11
    invoke-virtual {v3}, Lcom/im/freechat/shared/entities/message/Message;->getRepliedMessage()Lcom/im/freechat/shared/entities/message/Message;

    move-result-object v4

    if-eqz v4, :cond_a

    invoke-virtual {v4}, Lcom/im/freechat/shared/entities/message/Message;->getContent()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_a

    invoke-static {v4, p2, v5}, Lkotlin/text/StringsKt;->contains(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Z

    move-result v4

    if-ne v4, v5, :cond_a

    const/4 v4, 0x1

    goto :goto_5

    :cond_a
    const/4 v4, 0x0

    :goto_5
    if-nez v4, :cond_13

    .line 12
    invoke-virtual {v3}, Lcom/im/freechat/shared/entities/message/Message;->getRepliedMessage()Lcom/im/freechat/shared/entities/message/Message;

    move-result-object v3

    if-eqz v3, :cond_11

    invoke-virtual {v3}, Lcom/im/freechat/shared/entities/message/Message;->getAttachments()Ljava/util/List;

    move-result-object v3

    if-eqz v3, :cond_11

    .line 13
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 14
    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_b
    :goto_6
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_c

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    instance-of v9, v7, Lcom/im/freechat/shared/entities/message/FileAttachment;

    if-eqz v9, :cond_b

    invoke-interface {v4, v7}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_6

    .line 15
    :cond_c
    invoke-interface {v4}, Ljava/util/Collection;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_e

    :cond_d
    const/4 v3, 0x0

    goto :goto_8

    .line 16
    :cond_e
    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_f
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_d

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/im/freechat/shared/entities/message/FileAttachment;

    .line 17
    invoke-virtual {v4}, Lcom/im/freechat/shared/entities/message/FileAttachment;->getFileName()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_10

    invoke-static {v4, p2, v6, v8, v0}, Lkotlin/text/StringsKt;->contains$default(Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZILjava/lang/Object;)Z

    move-result v4

    if-ne v4, v5, :cond_10

    const/4 v4, 0x1

    goto :goto_7

    :cond_10
    const/4 v4, 0x0

    :goto_7
    if-eqz v4, :cond_f

    const/4 v3, 0x1

    :goto_8
    if-ne v3, v5, :cond_11

    const/4 v3, 0x1

    goto :goto_9

    :cond_11
    const/4 v3, 0x0

    :goto_9
    if-eqz v3, :cond_12

    goto :goto_a

    :cond_12
    const/4 v5, 0x0

    :cond_13
    :goto_a
    if-eqz v5, :cond_2

    .line 18
    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    :cond_14
    move-object v0, v1

    :cond_15
    return-object v0
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Ljava/util/List;

    check-cast p2, Ljava/lang/String;

    invoke-virtual {p0, p1, p2}, Lcom/im/freechat/ui/chat/chatdetails/ChatDetailsViewModel$x;->a(Ljava/util/List;Ljava/lang/String;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method
