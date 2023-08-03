.class final Lcom/im/freechat/ui/chat/chatdetails/ChatDetailsFragment$q;
.super Lkotlin/jvm/internal/Lambda;
.source "ChatDetailsFragment.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/im/freechat/ui/chat/chatdetails/ChatDetailsFragment;->Z()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function1<",
        "Lcom/im/freechat/ui/chat/chatdetails/messagelist/d;",
        "Lkotlin/Unit;",
        ">;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nChatDetailsFragment.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ChatDetailsFragment.kt\ncom/im/freechat/ui/chat/chatdetails/ChatDetailsFragment$init$15$2\n+ 2 ArraysJVM.kt\nkotlin/collections/ArraysKt__ArraysJVMKt\n+ 3 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,1609:1\n37#2:1610\n36#2,3:1611\n1549#3:1614\n1620#3,3:1615\n1549#3:1618\n1620#3,3:1619\n1549#3:1622\n1620#3,3:1623\n*S KotlinDebug\n*F\n+ 1 ChatDetailsFragment.kt\ncom/im/freechat/ui/chat/chatdetails/ChatDetailsFragment$init$15$2\n*L\n648#1:1610\n648#1:1611,3\n658#1:1614\n658#1:1615,3\n671#1:1618\n671#1:1619,3\n677#1:1622\n677#1:1623,3\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {}
    d1 = {
        "\u0000\u000e\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0002\u0010\u0003\u001a\u00020\u00022\u0006\u0010\u0001\u001a\u00020\u0000H\n\u00a2\u0006\u0004\u0008\u0003\u0010\u0004"
    }
    d2 = {
        "Lcom/im/freechat/ui/chat/chatdetails/messagelist/d;",
        "it",
        "",
        "b",
        "(Lcom/im/freechat/ui/chat/chatdetails/messagelist/d;)V"
    }
    k = 0x3
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

    iput-object p1, p0, Lcom/im/freechat/ui/chat/chatdetails/ChatDetailsFragment$q;->a:Lcom/im/freechat/ui/chat/chatdetails/ChatDetailsFragment;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method

.method public static synthetic a(Ljava/util/List;Lcom/im/freechat/ui/chat/chatdetails/ChatDetailsFragment;Lcom/im/freechat/ui/chat/chatdetails/messagelist/d;Landroid/content/DialogInterface;I)V
    .locals 0

    invoke-static {p0, p1, p2, p3, p4}, Lcom/im/freechat/ui/chat/chatdetails/ChatDetailsFragment$q;->c(Ljava/util/List;Lcom/im/freechat/ui/chat/chatdetails/ChatDetailsFragment;Lcom/im/freechat/ui/chat/chatdetails/messagelist/d;Landroid/content/DialogInterface;I)V

    return-void
.end method

.method private static final c(Ljava/util/List;Lcom/im/freechat/ui/chat/chatdetails/ChatDetailsFragment;Lcom/im/freechat/ui/chat/chatdetails/messagelist/d;Landroid/content/DialogInterface;I)V
    .locals 2

    const-string p3, "$items"

    invoke-static {p0, p3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p3, "this$0"

    invoke-static {p1, p3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p3, "$it"

    invoke-static {p2, p3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-interface {p0, p4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    .line 2
    sget p3, Lb4/b$s;->f0:I

    invoke-virtual {p1, p3}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object p3

    invoke-static {p0, p3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_0

    .line 3
    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p0

    const-string p1, "requireActivity()"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p2}, Lcom/im/freechat/ui/chat/chatdetails/messagelist/d;->i()Lcom/im/freechat/shared/entities/message/Message;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/im/freechat/extend/m;->b(Landroid/app/Activity;Lcom/im/freechat/shared/entities/message/Message;)V

    goto/16 :goto_3

    .line 4
    :cond_0
    sget p3, Lb4/b$s;->M0:I

    invoke-virtual {p1, p3}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object p3

    invoke-static {p0, p3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_1

    .line 5
    invoke-virtual {p2}, Lcom/im/freechat/ui/chat/chatdetails/messagelist/d;->i()Lcom/im/freechat/shared/entities/message/Message;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/im/freechat/ui/chat/chatdetails/ChatDetailsFragment;->N1(Lcom/im/freechat/ui/chat/chatdetails/ChatDetailsFragment;Lcom/im/freechat/shared/entities/message/Message;)V

    goto/16 :goto_3

    .line 6
    :cond_1
    sget p3, Lb4/b$s;->p0:I

    invoke-virtual {p1, p3}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object p3

    invoke-static {p0, p3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p3

    const/16 p4, 0xa

    if-eqz p3, :cond_4

    .line 7
    invoke-virtual {p2}, Lcom/im/freechat/ui/chat/chatdetails/messagelist/d;->i()Lcom/im/freechat/shared/entities/message/Message;

    move-result-object p0

    invoke-static {p0}, Lcom/im/freechat/extend/p;->y(Lcom/im/freechat/shared/entities/message/Message;)Z

    move-result p0

    if-eqz p0, :cond_3

    .line 8
    invoke-virtual {p2}, Lcom/im/freechat/ui/chat/chatdetails/messagelist/d;->i()Lcom/im/freechat/shared/entities/message/Message;

    move-result-object p0

    invoke-virtual {p0}, Lcom/im/freechat/shared/entities/message/Message;->getAttachments()Ljava/util/List;

    move-result-object p0

    .line 9
    new-instance p2, Ljava/util/ArrayList;

    invoke-static {p0, p4}, Lkotlin/collections/CollectionsKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result p3

    invoke-direct {p2, p3}, Ljava/util/ArrayList;-><init>(I)V

    .line 10
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    if-eqz p3, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p3

    .line 11
    check-cast p3, Lcom/im/freechat/shared/entities/message/Attachment;

    .line 12
    invoke-interface {p3}, Lcom/im/freechat/shared/entities/message/Attachment;->getMediaId()J

    move-result-wide p3

    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p3

    invoke-interface {p2, p3}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    invoke-static {p1, p2}, Lcom/im/freechat/ui/chat/chatdetails/ChatDetailsFragment;->x1(Lcom/im/freechat/ui/chat/chatdetails/ChatDetailsFragment;Ljava/util/List;)V

    goto/16 :goto_3

    .line 13
    :cond_3
    invoke-virtual {p2}, Lcom/im/freechat/ui/chat/chatdetails/messagelist/d;->i()Lcom/im/freechat/shared/entities/message/Message;

    move-result-object p0

    invoke-virtual {p0}, Lcom/im/freechat/shared/entities/message/Message;->getMessageId()J

    move-result-wide p2

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    invoke-static {p0}, Lkotlin/collections/CollectionsKt;->listOf(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/im/freechat/ui/chat/chatdetails/ChatDetailsFragment;->x1(Lcom/im/freechat/ui/chat/chatdetails/ChatDetailsFragment;Ljava/util/List;)V

    goto/16 :goto_3

    .line 14
    :cond_4
    sget p3, Lb4/b$s;->V1:I

    invoke-virtual {p1, p3}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object p3

    invoke-static {p0, p3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_5

    .line 15
    invoke-static {p1, p2}, Lcom/im/freechat/ui/chat/chatdetails/ChatDetailsFragment;->L1(Lcom/im/freechat/ui/chat/chatdetails/ChatDetailsFragment;Lcom/im/freechat/ui/chat/chatdetails/messagelist/d;)V

    goto/16 :goto_3

    .line 16
    :cond_5
    sget p3, Lb4/b$s;->X1:I

    invoke-virtual {p1, p3}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object p3

    invoke-static {p0, p3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_6

    .line 17
    invoke-static {p1}, Lcom/im/freechat/ui/chat/chatdetails/ChatDetailsFragment;->Q1(Lcom/im/freechat/ui/chat/chatdetails/ChatDetailsFragment;)V

    goto/16 :goto_3

    .line 18
    :cond_6
    sget p3, Lb4/b$s;->j0:I

    invoke-virtual {p1, p3}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object p3

    invoke-static {p0, p3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_8

    .line 19
    invoke-virtual {p1}, Lcom/im/freechat/ui/chat/chatdetails/ChatDetailsFragment;->m2()Lcom/im/freechat/ui/chat/chatdetails/ChatDetailsViewModel;

    move-result-object p0

    .line 20
    invoke-virtual {p2}, Lcom/im/freechat/ui/chat/chatdetails/messagelist/d;->i()Lcom/im/freechat/shared/entities/message/Message;

    move-result-object p1

    invoke-virtual {p1}, Lcom/im/freechat/shared/entities/message/Message;->getAttachments()Ljava/util/List;

    move-result-object p1

    .line 21
    new-instance p3, Ljava/util/ArrayList;

    invoke-static {p1, p4}, Lkotlin/collections/CollectionsKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result p4

    invoke-direct {p3, p4}, Ljava/util/ArrayList;-><init>(I)V

    .line 22
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p4

    if-eqz p4, :cond_7

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p4

    .line 23
    check-cast p4, Lcom/im/freechat/shared/entities/message/Attachment;

    .line 24
    invoke-interface {p4}, Lcom/im/freechat/shared/entities/message/Attachment;->getMediaId()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p4

    invoke-interface {p3, p4}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 25
    :cond_7
    invoke-virtual {p2}, Lcom/im/freechat/ui/chat/chatdetails/messagelist/d;->i()Lcom/im/freechat/shared/entities/message/Message;

    move-result-object p1

    invoke-virtual {p1}, Lcom/im/freechat/shared/entities/message/Message;->getMessageId()J

    move-result-wide p1

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-static {p3, p1}, Lkotlin/collections/CollectionsKt;->plus(Ljava/util/Collection;Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    invoke-static {p1}, Lkotlin/collections/CollectionsKt;->distinct(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object p1

    .line 26
    invoke-virtual {p0, p1}, Lcom/im/freechat/ui/chat/chatdetails/ChatDetailsViewModel;->m0(Ljava/util/List;)V

    goto/16 :goto_3

    .line 27
    :cond_8
    sget p3, Lb4/b$s;->i0:I

    invoke-virtual {p1, p3}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object p3

    invoke-static {p0, p3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_a

    .line 28
    invoke-virtual {p1}, Lcom/im/freechat/ui/chat/chatdetails/ChatDetailsFragment;->m2()Lcom/im/freechat/ui/chat/chatdetails/ChatDetailsViewModel;

    move-result-object p0

    .line 29
    invoke-virtual {p2}, Lcom/im/freechat/ui/chat/chatdetails/messagelist/d;->i()Lcom/im/freechat/shared/entities/message/Message;

    move-result-object p1

    invoke-virtual {p1}, Lcom/im/freechat/shared/entities/message/Message;->getAttachments()Ljava/util/List;

    move-result-object p1

    .line 30
    new-instance p3, Ljava/util/ArrayList;

    invoke-static {p1, p4}, Lkotlin/collections/CollectionsKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result p4

    invoke-direct {p3, p4}, Ljava/util/ArrayList;-><init>(I)V

    .line 31
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_2
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p4

    if-eqz p4, :cond_9

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p4

    .line 32
    check-cast p4, Lcom/im/freechat/shared/entities/message/Attachment;

    .line 33
    invoke-interface {p4}, Lcom/im/freechat/shared/entities/message/Attachment;->getMediaId()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p4

    invoke-interface {p3, p4}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 34
    :cond_9
    invoke-virtual {p2}, Lcom/im/freechat/ui/chat/chatdetails/messagelist/d;->i()Lcom/im/freechat/shared/entities/message/Message;

    move-result-object p1

    invoke-virtual {p1}, Lcom/im/freechat/shared/entities/message/Message;->getMessageId()J

    move-result-wide p1

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-static {p3, p1}, Lkotlin/collections/CollectionsKt;->plus(Ljava/util/Collection;Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    invoke-static {p1}, Lkotlin/collections/CollectionsKt;->distinct(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object p1

    .line 35
    invoke-virtual {p0, p1}, Lcom/im/freechat/ui/chat/chatdetails/ChatDetailsViewModel;->l0(Ljava/util/List;)V

    goto :goto_3

    .line 36
    :cond_a
    sget p3, Lb4/b$s;->l0:I

    invoke-virtual {p1, p3}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object p3

    invoke-static {p0, p3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_b

    .line 37
    invoke-virtual {p2}, Lcom/im/freechat/ui/chat/chatdetails/messagelist/d;->i()Lcom/im/freechat/shared/entities/message/Message;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/im/freechat/ui/chat/chatdetails/ChatDetailsFragment;->P1(Lcom/im/freechat/ui/chat/chatdetails/ChatDetailsFragment;Lcom/im/freechat/shared/entities/message/Message;)V

    goto :goto_3

    .line 38
    :cond_b
    sget p3, Lb4/b$s;->N0:I

    invoke-virtual {p1, p3}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object p3

    invoke-static {p0, p3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_c

    .line 39
    invoke-virtual {p1}, Lcom/im/freechat/ui/chat/chatdetails/ChatDetailsFragment;->m2()Lcom/im/freechat/ui/chat/chatdetails/ChatDetailsViewModel;

    move-result-object p0

    invoke-virtual {p2}, Lcom/im/freechat/ui/chat/chatdetails/messagelist/d;->i()Lcom/im/freechat/shared/entities/message/Message;

    move-result-object p1

    invoke-static {p1}, Lkotlin/collections/CollectionsKt;->listOf(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/im/freechat/ui/chat/chatdetails/ChatDetailsViewModel;->p1(Ljava/util/List;)Lkotlinx/coroutines/j2;

    goto :goto_3

    .line 40
    :cond_c
    sget p3, Lb4/b$s;->O0:I

    invoke-virtual {p1, p3}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object p3

    invoke-static {p0, p3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_d

    .line 41
    invoke-virtual {p1}, Lcom/im/freechat/ui/chat/chatdetails/ChatDetailsFragment;->m2()Lcom/im/freechat/ui/chat/chatdetails/ChatDetailsViewModel;

    move-result-object p0

    invoke-virtual {p2}, Lcom/im/freechat/ui/chat/chatdetails/messagelist/d;->i()Lcom/im/freechat/shared/entities/message/Message;

    move-result-object p1

    invoke-virtual {p1}, Lcom/im/freechat/shared/entities/message/Message;->getAttachments()Ljava/util/List;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/im/freechat/ui/chat/chatdetails/ChatDetailsViewModel;->o1(Ljava/util/List;)V

    :cond_d
    :goto_3
    return-void
.end method


# virtual methods
.method public final b(Lcom/im/freechat/ui/chat/chatdetails/messagelist/d;)V
    .locals 9
    .param p1    # Lcom/im/freechat/ui/chat/chatdetails/messagelist/d;
        .annotation build Lm8/g;
        .end annotation
    .end param

    const-string v0, "it"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Lcom/im/freechat/ui/chat/chatdetails/ChatDetailsFragment$q;->a:Lcom/im/freechat/ui/chat/chatdetails/ChatDetailsFragment;

    invoke-static {v0}, Lcom/im/freechat/ui/chat/chatdetails/ChatDetailsFragment;->C1(Lcom/im/freechat/ui/chat/chatdetails/ChatDetailsFragment;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-virtual {p1}, Lcom/im/freechat/ui/chat/chatdetails/messagelist/d;->i()Lcom/im/freechat/shared/entities/message/Message;

    move-result-object v0

    invoke-virtual {v0}, Lcom/im/freechat/shared/entities/message/Message;->getSender()Lcom/im/freechat/shared/entities/contact/Sender;

    move-result-object v0

    invoke-virtual {v0}, Lcom/im/freechat/shared/entities/contact/Sender;->isCurrentUser()Z

    move-result v0

    .line 3
    iget-object v1, p0, Lcom/im/freechat/ui/chat/chatdetails/ChatDetailsFragment$q;->a:Lcom/im/freechat/ui/chat/chatdetails/ChatDetailsFragment;

    invoke-virtual {v1}, Lcom/im/freechat/ui/chat/chatdetails/ChatDetailsFragment;->m2()Lcom/im/freechat/ui/chat/chatdetails/ChatDetailsViewModel;

    move-result-object v1

    invoke-virtual {v1}, Lcom/im/freechat/ui/chat/chatdetails/ChatDetailsViewModel;->s0()Lcom/im/freechat/shared/entities/chat/Chat;

    move-result-object v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_1

    invoke-static {v1}, Lcom/im/freechat/extend/g;->a(Lcom/im/freechat/shared/entities/chat/Chat;)Z

    move-result v1

    if-ne v1, v2, :cond_1

    const/4 v1, 0x1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    .line 4
    :goto_0
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 5
    iget-object v5, p0, Lcom/im/freechat/ui/chat/chatdetails/ChatDetailsFragment$q;->a:Lcom/im/freechat/ui/chat/chatdetails/ChatDetailsFragment;

    sget v6, Lb4/b$s;->j0:I

    invoke-virtual {v5, v6}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v5

    const-string v6, "getString(R.string.activ\u2026etails_delete_for_myself)"

    invoke-static {v5, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 6
    invoke-virtual {p1}, Lcom/im/freechat/ui/chat/chatdetails/messagelist/d;->i()Lcom/im/freechat/shared/entities/message/Message;

    move-result-object v5

    invoke-static {v5}, Lcom/im/freechat/extend/p;->o(Lcom/im/freechat/shared/entities/message/Message;)Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-virtual {p1}, Lcom/im/freechat/ui/chat/chatdetails/messagelist/d;->i()Lcom/im/freechat/shared/entities/message/Message;

    move-result-object v5

    invoke-static {v5}, Lcom/im/freechat/extend/p;->x(Lcom/im/freechat/shared/entities/message/Message;)Z

    move-result v5

    if-nez v5, :cond_2

    if-eqz v0, :cond_2

    .line 7
    iget-object v0, p0, Lcom/im/freechat/ui/chat/chatdetails/ChatDetailsFragment$q;->a:Lcom/im/freechat/ui/chat/chatdetails/ChatDetailsFragment;

    sget v5, Lb4/b$s;->l0:I

    invoke-virtual {v0, v5}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    const-string v5, "getString(R.string.activity_chat_details_edit)"

    invoke-static {v0, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 8
    iget-object v0, p0, Lcom/im/freechat/ui/chat/chatdetails/ChatDetailsFragment$q;->a:Lcom/im/freechat/ui/chat/chatdetails/ChatDetailsFragment;

    sget v5, Lb4/b$s;->f0:I

    invoke-virtual {v0, v5}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    const-string v5, "getString(R.string.activity_chat_details_copy)"

    invoke-static {v0, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_2
    if-nez v1, :cond_3

    .line 9
    iget-object v0, p0, Lcom/im/freechat/ui/chat/chatdetails/ChatDetailsFragment$q;->a:Lcom/im/freechat/ui/chat/chatdetails/ChatDetailsFragment;

    sget v5, Lb4/b$s;->M0:I

    invoke-virtual {v0, v5}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    const-string v5, "getString(R.string.activity_chat_details_reply)"

    invoke-static {v0, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 10
    :cond_3
    iget-object v0, p0, Lcom/im/freechat/ui/chat/chatdetails/ChatDetailsFragment$q;->a:Lcom/im/freechat/ui/chat/chatdetails/ChatDetailsFragment;

    sget v5, Lb4/b$s;->p0:I

    invoke-virtual {v0, v5}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    const-string v5, "getString(R.string.activity_chat_details_forward)"

    invoke-static {v0, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    if-nez v1, :cond_7

    .line 11
    iget-object v0, p0, Lcom/im/freechat/ui/chat/chatdetails/ChatDetailsFragment$q;->a:Lcom/im/freechat/ui/chat/chatdetails/ChatDetailsFragment;

    invoke-virtual {v0}, Lcom/im/freechat/ui/chat/chatdetails/ChatDetailsFragment;->m2()Lcom/im/freechat/ui/chat/chatdetails/ChatDetailsViewModel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/im/freechat/ui/chat/chatdetails/ChatDetailsViewModel;->V0()Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/im/freechat/ui/chat/chatdetails/ChatDetailsFragment$q;->a:Lcom/im/freechat/ui/chat/chatdetails/ChatDetailsFragment;

    invoke-virtual {v0}, Lcom/im/freechat/ui/chat/chatdetails/ChatDetailsFragment;->m2()Lcom/im/freechat/ui/chat/chatdetails/ChatDetailsViewModel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/im/freechat/ui/chat/chatdetails/ChatDetailsViewModel;->S0()Z

    move-result v0

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/im/freechat/ui/chat/chatdetails/ChatDetailsFragment$q;->a:Lcom/im/freechat/ui/chat/chatdetails/ChatDetailsFragment;

    invoke-virtual {v0}, Lcom/im/freechat/ui/chat/chatdetails/ChatDetailsFragment;->m2()Lcom/im/freechat/ui/chat/chatdetails/ChatDetailsViewModel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/im/freechat/ui/chat/chatdetails/ChatDetailsViewModel;->W0()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 12
    :cond_4
    iget-object v0, p0, Lcom/im/freechat/ui/chat/chatdetails/ChatDetailsFragment$q;->a:Lcom/im/freechat/ui/chat/chatdetails/ChatDetailsFragment;

    invoke-virtual {v0}, Lcom/im/freechat/ui/chat/chatdetails/ChatDetailsFragment;->m2()Lcom/im/freechat/ui/chat/chatdetails/ChatDetailsViewModel;

    move-result-object v1

    invoke-virtual {v1}, Lcom/im/freechat/ui/chat/chatdetails/ChatDetailsViewModel;->F0()Landroidx/lifecycle/MutableLiveData;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/im/freechat/shared/entities/message/Message;

    if-eqz v1, :cond_5

    invoke-virtual {p1}, Lcom/im/freechat/ui/chat/chatdetails/messagelist/d;->i()Lcom/im/freechat/shared/entities/message/Message;

    move-result-object v5

    invoke-virtual {v5}, Lcom/im/freechat/shared/entities/message/Message;->getMessageId()J

    move-result-wide v5

    invoke-virtual {v1}, Lcom/im/freechat/shared/entities/message/Message;->getMessageId()J

    move-result-wide v7

    cmp-long v1, v5, v7

    if-nez v1, :cond_5

    const/4 v1, 0x1

    goto :goto_1

    :cond_5
    const/4 v1, 0x0

    :goto_1
    if-eqz v1, :cond_6

    sget v1, Lb4/b$s;->X1:I

    goto :goto_2

    :cond_6
    sget v1, Lb4/b$s;->V1:I

    :goto_2
    invoke-virtual {v0, v1}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "getString(if (it.message\u2026g.activity_main_chat_pin)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 13
    :cond_7
    iget-object v0, p0, Lcom/im/freechat/ui/chat/chatdetails/ChatDetailsFragment$q;->a:Lcom/im/freechat/ui/chat/chatdetails/ChatDetailsFragment;

    invoke-virtual {v0}, Lcom/im/freechat/ui/chat/chatdetails/ChatDetailsFragment;->m2()Lcom/im/freechat/ui/chat/chatdetails/ChatDetailsViewModel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/im/freechat/ui/chat/chatdetails/ChatDetailsViewModel;->s0()Lcom/im/freechat/shared/entities/chat/Chat;

    move-result-object v0

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-static {v0}, Lcom/im/freechat/extend/g;->b(Lcom/im/freechat/shared/entities/chat/Chat;)Z

    move-result v0

    if-nez v0, :cond_8

    iget-object v0, p0, Lcom/im/freechat/ui/chat/chatdetails/ChatDetailsFragment$q;->a:Lcom/im/freechat/ui/chat/chatdetails/ChatDetailsFragment;

    sget v1, Lb4/b$s;->N0:I

    invoke-virtual {v0, v1}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "getString(R.string.activity_chat_details_save)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 14
    :cond_8
    invoke-virtual {p1}, Lcom/im/freechat/ui/chat/chatdetails/messagelist/d;->i()Lcom/im/freechat/shared/entities/message/Message;

    move-result-object v0

    invoke-virtual {v0}, Lcom/im/freechat/shared/entities/message/Message;->getAttachments()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    xor-int/2addr v0, v2

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/im/freechat/ui/chat/chatdetails/ChatDetailsFragment$q;->a:Lcom/im/freechat/ui/chat/chatdetails/ChatDetailsFragment;

    sget v1, Lb4/b$s;->O0:I

    invoke-virtual {v0, v1}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "getString(R.string.activ\u2026y_chat_details_save_file)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 15
    :cond_9
    new-instance v0, Landroidx/appcompat/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/im/freechat/ui/chat/chatdetails/ChatDetailsFragment$q;->a:Lcom/im/freechat/ui/chat/chatdetails/ChatDetailsFragment;

    invoke-virtual {v1}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroidx/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    new-array v1, v3, [Ljava/lang/String;

    .line 16
    invoke-interface {v4, v1}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    const-string v2, "null cannot be cast to non-null type kotlin.Array<T of kotlin.collections.ArraysKt__ArraysJVMKt.toTypedArray>"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v1, [Ljava/lang/CharSequence;

    .line 17
    iget-object v2, p0, Lcom/im/freechat/ui/chat/chatdetails/ChatDetailsFragment$q;->a:Lcom/im/freechat/ui/chat/chatdetails/ChatDetailsFragment;

    new-instance v3, Lcom/im/freechat/ui/chat/chatdetails/n1;

    invoke-direct {v3, v4, v2, p1}, Lcom/im/freechat/ui/chat/chatdetails/n1;-><init>(Ljava/util/List;Lcom/im/freechat/ui/chat/chatdetails/ChatDetailsFragment;Lcom/im/freechat/ui/chat/chatdetails/messagelist/d;)V

    invoke-virtual {v0, v1, v3}, Landroidx/appcompat/app/AlertDialog$Builder;->setItems([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object p1

    .line 18
    invoke-virtual {p1}, Landroidx/appcompat/app/AlertDialog$Builder;->show()Landroidx/appcompat/app/AlertDialog;

    return-void
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lcom/im/freechat/ui/chat/chatdetails/messagelist/d;

    invoke-virtual {p0, p1}, Lcom/im/freechat/ui/chat/chatdetails/ChatDetailsFragment$q;->b(Lcom/im/freechat/ui/chat/chatdetails/messagelist/d;)V

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method
