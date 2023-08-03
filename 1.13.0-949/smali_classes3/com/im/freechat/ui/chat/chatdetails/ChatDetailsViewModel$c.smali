.class final Lcom/im/freechat/ui/chat/chatdetails/ChatDetailsViewModel$c;
.super Lkotlin/jvm/internal/Lambda;
.source "ChatDetailsViewModel.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function4;


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
        "Lkotlin/jvm/functions/Function4<",
        "Ljava/util/List<",
        "+",
        "Ljava/lang/Integer;",
        ">;",
        "Ljava/lang/Integer;",
        "Lcom/im/freechat/shared/entities/chat/Chat;",
        "Lcom/im/freechat/ui/chat/chatdetails/ChatDetailsViewModel$NetworkState;",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nChatDetailsViewModel.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ChatDetailsViewModel.kt\ncom/im/freechat/ui/chat/chatdetails/ChatDetailsViewModel$chatStatus$1\n+ 2 Koin.kt\norg/koin/core/Koin\n+ 3 Scope.kt\norg/koin/core/scope/Scope\n*L\n1#1,843:1\n100#2,4:844\n131#3:848\n*S KotlinDebug\n*F\n+ 1 ChatDetailsViewModel.kt\ncom/im/freechat/ui/chat/chatdetails/ChatDetailsViewModel$chatStatus$1\n*L\n228#1:844,4\n228#1:848\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {}
    d1 = {
        "\u0000 \n\u0002\u0010 \n\u0002\u0010\u0008\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0002\u0010\t\u001a\u0004\u0018\u00010\u00082\u000e\u0010\u0002\u001a\n\u0012\u0004\u0012\u00020\u0001\u0018\u00010\u00002\u0008\u0010\u0003\u001a\u0004\u0018\u00010\u00012\u0008\u0010\u0005\u001a\u0004\u0018\u00010\u00042\u0008\u0010\u0007\u001a\u0004\u0018\u00010\u0006H\n\u00a2\u0006\u0004\u0008\t\u0010\n"
    }
    d2 = {
        "",
        "",
        "typingSet",
        "onlineCount",
        "Lcom/im/freechat/shared/entities/chat/Chat;",
        "chatLiveData",
        "Lcom/im/freechat/ui/chat/chatdetails/ChatDetailsViewModel$NetworkState;",
        "networkState",
        "",
        "a",
        "(Ljava/util/List;Ljava/lang/Integer;Lcom/im/freechat/shared/entities/chat/Chat;Lcom/im/freechat/ui/chat/chatdetails/ChatDetailsViewModel$NetworkState;)Ljava/lang/String;"
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

    iput-object p1, p0, Lcom/im/freechat/ui/chat/chatdetails/ChatDetailsViewModel$c;->a:Lcom/im/freechat/ui/chat/chatdetails/ChatDetailsViewModel;

    const/4 p1, 0x4

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final a(Ljava/util/List;Ljava/lang/Integer;Lcom/im/freechat/shared/entities/chat/Chat;Lcom/im/freechat/ui/chat/chatdetails/ChatDetailsViewModel$NetworkState;)Ljava/lang/String;
    .locals 10
    .param p1    # Ljava/util/List;
        .annotation build Lm8/h;
        .end annotation
    .end param
    .param p2    # Ljava/lang/Integer;
        .annotation build Lm8/h;
        .end annotation
    .end param
    .param p3    # Lcom/im/freechat/shared/entities/chat/Chat;
        .annotation build Lm8/h;
        .end annotation
    .end param
    .param p4    # Lcom/im/freechat/ui/chat/chatdetails/ChatDetailsViewModel$NetworkState;
        .annotation build Lm8/h;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;",
            "Ljava/lang/Integer;",
            "Lcom/im/freechat/shared/entities/chat/Chat;",
            "Lcom/im/freechat/ui/chat/chatdetails/ChatDetailsViewModel$NetworkState;",
            ")",
            "Ljava/lang/String;"
        }
    .end annotation

    .annotation build Lm8/h;
    .end annotation

    const-string v0, ""

    if-nez p3, :cond_0

    return-object v0

    .line 1
    :cond_0
    sget-object v1, Lcom/im/freechat/ui/chat/chatdetails/ChatDetailsViewModel$NetworkState;->RECONNECTING:Lcom/im/freechat/ui/chat/chatdetails/ChatDetailsViewModel$NetworkState;

    const/4 v2, 0x0

    if-ne p4, v1, :cond_1

    iget-object p1, p0, Lcom/im/freechat/ui/chat/chatdetails/ChatDetailsViewModel$c;->a:Lcom/im/freechat/ui/chat/chatdetails/ChatDetailsViewModel;

    invoke-static {p1}, Lcom/im/freechat/ui/chat/chatdetails/ChatDetailsViewModel;->N(Lcom/im/freechat/ui/chat/chatdetails/ChatDetailsViewModel;)Landroid/content/res/Resources;

    move-result-object p1

    sget p2, Lb4/b$s;->K0:I

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_5

    .line 2
    :cond_1
    sget-object v1, Lcom/im/freechat/ui/chat/chatdetails/ChatDetailsViewModel$NetworkState;->SYNCHRONIZING:Lcom/im/freechat/ui/chat/chatdetails/ChatDetailsViewModel$NetworkState;

    if-ne p4, v1, :cond_2

    iget-object p1, p0, Lcom/im/freechat/ui/chat/chatdetails/ChatDetailsViewModel$c;->a:Lcom/im/freechat/ui/chat/chatdetails/ChatDetailsViewModel;

    invoke-static {p1}, Lcom/im/freechat/ui/chat/chatdetails/ChatDetailsViewModel;->N(Lcom/im/freechat/ui/chat/chatdetails/ChatDetailsViewModel;)Landroid/content/res/Resources;

    move-result-object p1

    sget p2, Lb4/b$s;->P0:I

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_5

    :cond_2
    const/4 p4, 0x1

    const/4 v1, 0x0

    if-eqz p1, :cond_4

    .line 3
    invoke-interface {p1}, Ljava/util/Collection;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_3

    goto :goto_0

    :cond_3
    const/4 v3, 0x0

    goto :goto_1

    :cond_4
    :goto_0
    const/4 v3, 0x1

    :goto_1
    if-nez v3, :cond_7

    .line 4
    invoke-virtual {p3}, Lcom/im/freechat/shared/entities/chat/Chat;->getType()Lcom/im/freechat/shared/entities/chat/Chat$Type;

    move-result-object p2

    sget-object p3, Lcom/im/freechat/shared/entities/chat/Chat$Type;->SINGLE:Lcom/im/freechat/shared/entities/chat/Chat$Type;

    if-ne p2, p3, :cond_6

    iget-object p2, p0, Lcom/im/freechat/ui/chat/chatdetails/ChatDetailsViewModel$c;->a:Lcom/im/freechat/ui/chat/chatdetails/ChatDetailsViewModel;

    invoke-virtual {p2}, Lcom/im/freechat/ui/chat/chatdetails/ChatDetailsViewModel;->w0()Landroidx/lifecycle/LiveData;

    move-result-object p2

    invoke-virtual {p2}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/im/freechat/shared/entities/chat/ChatMember;

    if-eqz p2, :cond_5

    invoke-virtual {p2}, Lcom/im/freechat/shared/entities/chat/ChatMember;->getContact()Lcom/im/freechat/shared/entities/contact/UserModel;

    move-result-object p2

    if-eqz p2, :cond_5

    invoke-static {p1}, Lkotlin/collections/CollectionsKt;->first(Ljava/util/List;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/Number;

    invoke-virtual {p3}, Ljava/lang/Number;->intValue()I

    move-result p3

    invoke-virtual {p2}, Lcom/im/freechat/shared/entities/contact/UserModel;->getUserId()I

    move-result p2

    if-ne p3, p2, :cond_5

    goto :goto_2

    :cond_5
    const/4 p4, 0x0

    :goto_2
    if-nez p4, :cond_6

    .line 5
    iget-object p1, p0, Lcom/im/freechat/ui/chat/chatdetails/ChatDetailsViewModel$c;->a:Lcom/im/freechat/ui/chat/chatdetails/ChatDetailsViewModel;

    invoke-static {p1}, Lcom/im/freechat/ui/chat/chatdetails/ChatDetailsViewModel;->N(Lcom/im/freechat/ui/chat/chatdetails/ChatDetailsViewModel;)Landroid/content/res/Resources;

    move-result-object p1

    sget p2, Lb4/b$s;->U0:I

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_5

    :cond_6
    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    .line 6
    new-instance v7, Lcom/im/freechat/ui/chat/chatdetails/ChatDetailsViewModel$c$a;

    iget-object p2, p0, Lcom/im/freechat/ui/chat/chatdetails/ChatDetailsViewModel$c;->a:Lcom/im/freechat/ui/chat/chatdetails/ChatDetailsViewModel;

    invoke-direct {v7, p2}, Lcom/im/freechat/ui/chat/chatdetails/ChatDetailsViewModel$c$a;-><init>(Lcom/im/freechat/ui/chat/chatdetails/ChatDetailsViewModel;)V

    const/16 v8, 0x1e

    const/4 v9, 0x0

    const-string v2, ", "

    move-object v1, p1

    invoke-static/range {v1 .. v9}, Lkotlin/collections/CollectionsKt;->joinToString$default(Ljava/lang/Iterable;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ILjava/lang/CharSequence;Lkotlin/jvm/functions/Function1;ILjava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_5

    .line 7
    :cond_7
    invoke-static {p3}, Lcom/im/freechat/extend/g;->c(Lcom/im/freechat/shared/entities/chat/Chat;)Z

    move-result p1

    if-eqz p1, :cond_8

    goto :goto_5

    .line 8
    :cond_8
    invoke-virtual {p3}, Lcom/im/freechat/shared/entities/chat/Chat;->getType()Lcom/im/freechat/shared/entities/chat/Chat$Type;

    move-result-object p1

    sget-object v0, Lcom/im/freechat/shared/entities/chat/Chat$Type;->SINGLE:Lcom/im/freechat/shared/entities/chat/Chat$Type;

    if-ne p1, v0, :cond_a

    if-eqz p2, :cond_9

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p1

    goto :goto_3

    :cond_9
    const/4 p1, 0x0

    :goto_3
    if-le p1, p4, :cond_a

    iget-object p1, p0, Lcom/im/freechat/ui/chat/chatdetails/ChatDetailsViewModel$c;->a:Lcom/im/freechat/ui/chat/chatdetails/ChatDetailsViewModel;

    invoke-static {p1}, Lcom/im/freechat/ui/chat/chatdetails/ChatDetailsViewModel;->N(Lcom/im/freechat/ui/chat/chatdetails/ChatDetailsViewModel;)Landroid/content/res/Resources;

    move-result-object p1

    .line 9
    sget p2, Lb4/b$s;->m8:I

    .line 10
    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_5

    .line 11
    :cond_a
    invoke-virtual {p3}, Lcom/im/freechat/shared/entities/chat/Chat;->getType()Lcom/im/freechat/shared/entities/chat/Chat$Type;

    move-result-object p1

    if-ne p1, v0, :cond_c

    .line 12
    iget-object p1, p0, Lcom/im/freechat/ui/chat/chatdetails/ChatDetailsViewModel$c;->a:Lcom/im/freechat/ui/chat/chatdetails/ChatDetailsViewModel;

    invoke-virtual {p1}, Lcom/im/freechat/ui/chat/chatdetails/ChatDetailsViewModel;->K0()Lcom/im/freechat/shared/entities/contact/UserModel;

    move-result-object p1

    if-eqz p1, :cond_b

    invoke-static {}, Lorg/koin/java/a;->e()Lorg/koin/core/Koin;

    move-result-object p2

    .line 13
    invoke-virtual {p2}, Lorg/koin/core/Koin;->I()Lorg/koin/core/registry/c;

    move-result-object p2

    invoke-virtual {p2}, Lorg/koin/core/registry/c;->h()Lorg/koin/core/scope/Scope;

    move-result-object p2

    .line 14
    const-class p3, Landroid/content/Context;

    invoke-static {p3}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object p3

    invoke-virtual {p2, p3, v2, v2}, Lorg/koin/core/scope/Scope;->p(Lkotlin/reflect/KClass;Lz8/a;Lkotlin/jvm/functions/Function0;)Ljava/lang/Object;

    move-result-object p2

    .line 15
    check-cast p2, Landroid/content/Context;

    .line 16
    invoke-static {p1, p2}, Lcom/im/freechat/extend/m;->l(Lcom/im/freechat/shared/entities/contact/UserModel;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    goto :goto_5

    :cond_b
    move-object v0, v2

    goto :goto_5

    .line 17
    :cond_c
    iget-object p1, p0, Lcom/im/freechat/ui/chat/chatdetails/ChatDetailsViewModel$c;->a:Lcom/im/freechat/ui/chat/chatdetails/ChatDetailsViewModel;

    invoke-static {p1}, Lcom/im/freechat/ui/chat/chatdetails/ChatDetailsViewModel;->N(Lcom/im/freechat/ui/chat/chatdetails/ChatDetailsViewModel;)Landroid/content/res/Resources;

    move-result-object p1

    sget p3, Lb4/b$s;->n8:I

    new-array p4, p4, [Ljava/lang/Object;

    if-eqz p2, :cond_d

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    goto :goto_4

    :cond_d
    const/4 p2, 0x0

    :goto_4
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    aput-object p2, p4, v1

    invoke-virtual {p1, p3, p4}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    :goto_5
    return-object v0
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Ljava/util/List;

    check-cast p2, Ljava/lang/Integer;

    check-cast p3, Lcom/im/freechat/shared/entities/chat/Chat;

    check-cast p4, Lcom/im/freechat/ui/chat/chatdetails/ChatDetailsViewModel$NetworkState;

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/im/freechat/ui/chat/chatdetails/ChatDetailsViewModel$c;->a(Ljava/util/List;Ljava/lang/Integer;Lcom/im/freechat/shared/entities/chat/Chat;Lcom/im/freechat/ui/chat/chatdetails/ChatDetailsViewModel$NetworkState;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method
