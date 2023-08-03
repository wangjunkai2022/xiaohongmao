.class final Lcom/im/freechat/ui/chat/chatdetails/ChatDetailsFragment$p;
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
    value = "SMAP\nChatDetailsFragment.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ChatDetailsFragment.kt\ncom/im/freechat/ui/chat/chatdetails/ChatDetailsFragment$init$15$1\n+ 2 ArraysJVM.kt\nkotlin/collections/ArraysKt__ArraysJVMKt\n+ 3 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,1609:1\n37#2:1610\n36#2,3:1611\n1549#3:1614\n1620#3,3:1615\n*S KotlinDebug\n*F\n+ 1 ChatDetailsFragment.kt\ncom/im/freechat/ui/chat/chatdetails/ChatDetailsFragment$init$15$1\n*L\n612#1:1610\n612#1:1611,3\n616#1:1614\n616#1:1615,3\n*E\n"
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

    iput-object p1, p0, Lcom/im/freechat/ui/chat/chatdetails/ChatDetailsFragment$p;->a:Lcom/im/freechat/ui/chat/chatdetails/ChatDetailsFragment;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method

.method public static synthetic a(Ljava/util/List;Lcom/im/freechat/ui/chat/chatdetails/ChatDetailsFragment;Lcom/im/freechat/ui/chat/chatdetails/messagelist/d;Landroid/content/DialogInterface;I)V
    .locals 0

    invoke-static {p0, p1, p2, p3, p4}, Lcom/im/freechat/ui/chat/chatdetails/ChatDetailsFragment$p;->c(Ljava/util/List;Lcom/im/freechat/ui/chat/chatdetails/ChatDetailsFragment;Lcom/im/freechat/ui/chat/chatdetails/messagelist/d;Landroid/content/DialogInterface;I)V

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
    sget p3, Lb4/b$s;->h0:I

    invoke-virtual {p1, p3}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object p3

    invoke-static {p0, p3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_1

    .line 3
    invoke-virtual {p1}, Lcom/im/freechat/ui/chat/chatdetails/ChatDetailsFragment;->m2()Lcom/im/freechat/ui/chat/chatdetails/ChatDetailsViewModel;

    move-result-object p0

    .line 4
    invoke-virtual {p2}, Lcom/im/freechat/ui/chat/chatdetails/messagelist/d;->i()Lcom/im/freechat/shared/entities/message/Message;

    move-result-object p1

    invoke-virtual {p1}, Lcom/im/freechat/shared/entities/message/Message;->getAttachments()Ljava/util/List;

    move-result-object p1

    .line 5
    new-instance p3, Ljava/util/ArrayList;

    const/16 p4, 0xa

    invoke-static {p1, p4}, Lkotlin/collections/CollectionsKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result p4

    invoke-direct {p3, p4}, Ljava/util/ArrayList;-><init>(I)V

    .line 6
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p4

    if-eqz p4, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p4

    .line 7
    check-cast p4, Lcom/im/freechat/shared/entities/message/Attachment;

    .line 8
    invoke-interface {p4}, Lcom/im/freechat/shared/entities/message/Attachment;->getMediaId()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p4

    invoke-interface {p3, p4}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 9
    :cond_0
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

    .line 10
    invoke-virtual {p0, p1}, Lcom/im/freechat/ui/chat/chatdetails/ChatDetailsViewModel;->m0(Ljava/util/List;)V

    goto :goto_1

    .line 11
    :cond_1
    sget p3, Lb4/b$s;->J8:I

    invoke-virtual {p1, p3}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object p3

    invoke-static {p0, p3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_2

    .line 12
    invoke-virtual {p1}, Lcom/im/freechat/ui/chat/chatdetails/ChatDetailsFragment;->m2()Lcom/im/freechat/ui/chat/chatdetails/ChatDetailsViewModel;

    move-result-object p0

    invoke-virtual {p2}, Lcom/im/freechat/ui/chat/chatdetails/messagelist/d;->i()Lcom/im/freechat/shared/entities/message/Message;

    move-result-object p1

    invoke-virtual {p1}, Lcom/im/freechat/shared/entities/message/Message;->getMessageId()J

    move-result-wide p1

    invoke-virtual {p0, p1, p2}, Lcom/im/freechat/ui/chat/chatdetails/ChatDetailsViewModel;->n1(J)Lkotlinx/coroutines/j2;

    :cond_2
    :goto_1
    return-void
.end method


# virtual methods
.method public final b(Lcom/im/freechat/ui/chat/chatdetails/messagelist/d;)V
    .locals 5
    .param p1    # Lcom/im/freechat/ui/chat/chatdetails/messagelist/d;
        .annotation build Lm8/g;
        .end annotation
    .end param

    const-string v0, "it"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    .line 1
    iget-object v1, p0, Lcom/im/freechat/ui/chat/chatdetails/ChatDetailsFragment$p;->a:Lcom/im/freechat/ui/chat/chatdetails/ChatDetailsFragment;

    sget v2, Lb4/b$s;->h0:I

    invoke-virtual {v1, v2}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    .line 2
    iget-object v1, p0, Lcom/im/freechat/ui/chat/chatdetails/ChatDetailsFragment$p;->a:Lcom/im/freechat/ui/chat/chatdetails/ChatDetailsFragment;

    sget v3, Lb4/b$s;->J8:I

    invoke-virtual {v1, v3}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v3, 0x1

    aput-object v1, v0, v3

    .line 3
    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->mutableListOf([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    .line 4
    new-instance v1, Landroidx/appcompat/app/AlertDialog$Builder;

    iget-object v3, p0, Lcom/im/freechat/ui/chat/chatdetails/ChatDetailsFragment$p;->a:Lcom/im/freechat/ui/chat/chatdetails/ChatDetailsFragment;

    invoke-virtual {v3}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v1, v3}, Landroidx/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    new-array v2, v2, [Ljava/lang/String;

    .line 5
    invoke-interface {v0, v2}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v2

    const-string v3, "null cannot be cast to non-null type kotlin.Array<T of kotlin.collections.ArraysKt__ArraysJVMKt.toTypedArray>"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v2, [Ljava/lang/CharSequence;

    .line 6
    iget-object v3, p0, Lcom/im/freechat/ui/chat/chatdetails/ChatDetailsFragment$p;->a:Lcom/im/freechat/ui/chat/chatdetails/ChatDetailsFragment;

    new-instance v4, Lcom/im/freechat/ui/chat/chatdetails/m1;

    invoke-direct {v4, v0, v3, p1}, Lcom/im/freechat/ui/chat/chatdetails/m1;-><init>(Ljava/util/List;Lcom/im/freechat/ui/chat/chatdetails/ChatDetailsFragment;Lcom/im/freechat/ui/chat/chatdetails/messagelist/d;)V

    invoke-virtual {v1, v2, v4}, Landroidx/appcompat/app/AlertDialog$Builder;->setItems([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object p1

    .line 7
    invoke-virtual {p1}, Landroidx/appcompat/app/AlertDialog$Builder;->show()Landroidx/appcompat/app/AlertDialog;

    return-void
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lcom/im/freechat/ui/chat/chatdetails/messagelist/d;

    invoke-virtual {p0, p1}, Lcom/im/freechat/ui/chat/chatdetails/ChatDetailsFragment$p;->b(Lcom/im/freechat/ui/chat/chatdetails/messagelist/d;)V

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method
