.class public abstract Lcom/im/freechat/ui/chat/holder/l0;
.super Lcom/im/freechat/ui/chat/holder/BaseChatHolder;
.source "MediaGroupMessageHolder.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nMediaGroupMessageHolder.kt\nKotlin\n*S Kotlin\n*F\n+ 1 MediaGroupMessageHolder.kt\ncom/im/freechat/ui/chat/holder/MediaGroupMessageHolder\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,117:1\n1559#2:118\n1590#2,4:119\n*S KotlinDebug\n*F\n+ 1 MediaGroupMessageHolder.kt\ncom/im/freechat/ui/chat/holder/MediaGroupMessageHolder\n*L\n67#1:118\n67#1:119,4\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {}
    d1 = {
        "\u0000N\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\n\n\u0002\u0010 \n\u0002\u0008\u0007\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0005\u0008&\u0018\u00002\u00020\u0001B\u001f\u0012\u0006\u0010&\u001a\u00020%\u0012\u0006\u0010(\u001a\u00020\'\u0012\u0006\u0010)\u001a\u00020\n\u00a2\u0006\u0004\u0008*\u0010+J\u0006\u0010\u0003\u001a\u00020\u0002J*\u0010\u000c\u001a\u00020\u00022\u0006\u0010\u0005\u001a\u00020\u00042\u0008\u0010\u0007\u001a\u0004\u0018\u00010\u00062\u0006\u0010\t\u001a\u00020\u00082\u0006\u0010\u000b\u001a\u00020\nH\u0014J \u0010\r\u001a\u00020\u00022\u0006\u0010\u0005\u001a\u00020\u00042\u0006\u0010\t\u001a\u00020\u00082\u0006\u0010\u000b\u001a\u00020\nH\u0016R\"\u0010\u0014\u001a\u00020\n8\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008\u000e\u0010\u000f\u001a\u0004\u0008\u0010\u0010\u0011\"\u0004\u0008\u0012\u0010\u0013R(\u0010\u001c\u001a\u0008\u0012\u0004\u0012\u00020\u00040\u00158\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008\u0016\u0010\u0017\u001a\u0004\u0008\u0018\u0010\u0019\"\u0004\u0008\u001a\u0010\u001bR\u0014\u0010 \u001a\u00020\u001d8\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u001e\u0010\u001fR\u0014\u0010$\u001a\u00020!8$X\u00a4\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\"\u0010#\u00a8\u0006,"
    }
    d2 = {
        "Lcom/im/freechat/ui/chat/holder/l0;",
        "Lcom/im/freechat/ui/chat/holder/BaseChatHolder;",
        "",
        "E0",
        "Lcom/im/freechat/ui/chat/chatdetails/messagelist/d;",
        "messageWrapper",
        "Lcom/im/freechat/shared/entities/message/Message;",
        "prev",
        "",
        "position",
        "",
        "selectionMode",
        "F",
        "z0",
        "t",
        "Z",
        "D0",
        "()Z",
        "G0",
        "(Z)V",
        "previousSelectionMode",
        "",
        "u",
        "Ljava/util/List;",
        "C0",
        "()Ljava/util/List;",
        "F0",
        "(Ljava/util/List;)V",
        "messages",
        "Lcom/im/freechat/ui/chat/chatdetails/a2;",
        "v",
        "Lcom/im/freechat/ui/chat/chatdetails/a2;",
        "gridAdapter",
        "Landroidx/recyclerview/widget/RecyclerView;",
        "B0",
        "()Landroidx/recyclerview/widget/RecyclerView;",
        "grid",
        "Landroidx/viewbinding/ViewBinding;",
        "binding",
        "Lcom/im/freechat/ui/chat/chatdetails/messagelist/b;",
        "outerAdapter",
        "isGroup",
        "<init>",
        "(Landroidx/viewbinding/ViewBinding;Lcom/im/freechat/ui/chat/chatdetails/messagelist/b;Z)V",
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
.field private t:Z

.field private u:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/im/freechat/ui/chat/chatdetails/messagelist/d;",
            ">;"
        }
    .end annotation

    .annotation build Lm8/g;
    .end annotation
.end field

.field private final v:Lcom/im/freechat/ui/chat/chatdetails/a2;
    .annotation build Lm8/g;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroidx/viewbinding/ViewBinding;Lcom/im/freechat/ui/chat/chatdetails/messagelist/b;Z)V
    .locals 1
    .param p1    # Landroidx/viewbinding/ViewBinding;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .param p2    # Lcom/im/freechat/ui/chat/chatdetails/messagelist/b;
        .annotation build Lm8/g;
        .end annotation
    .end param

    const-string v0, "binding"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "outerAdapter"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-interface {p1}, Landroidx/viewbinding/ViewBinding;->getRoot()Landroid/view/View;

    move-result-object p1

    const-string v0, "binding.root"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1, p3}, Lcom/im/freechat/ui/chat/holder/BaseChatHolder;-><init>(Landroid/view/View;Z)V

    .line 2
    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/im/freechat/ui/chat/holder/l0;->u:Ljava/util/List;

    .line 3
    new-instance p1, Lcom/im/freechat/ui/chat/chatdetails/a2;

    invoke-direct {p1}, Lcom/im/freechat/ui/chat/chatdetails/a2;-><init>()V

    .line 4
    invoke-virtual {p1, p2}, Lcom/im/freechat/ui/chat/chatdetails/a2;->M(Lcom/im/freechat/ui/chat/chatdetails/messagelist/b;)V

    .line 5
    invoke-virtual {p2}, Lcom/im/freechat/ui/chat/chatdetails/messagelist/b;->g()Lkotlin/jvm/functions/Function1;

    move-result-object p3

    invoke-virtual {p1, p3}, Lcom/im/freechat/ui/chat/chatdetails/messagelist/b;->y(Lkotlin/jvm/functions/Function1;)V

    .line 6
    invoke-virtual {p2}, Lcom/im/freechat/ui/chat/chatdetails/messagelist/b;->m()Lkotlin/jvm/functions/Function2;

    move-result-object p3

    invoke-virtual {p1, p3}, Lcom/im/freechat/ui/chat/chatdetails/messagelist/b;->G(Lkotlin/jvm/functions/Function2;)V

    .line 7
    invoke-virtual {p2}, Lcom/im/freechat/ui/chat/chatdetails/messagelist/b;->j()Lkotlin/jvm/functions/Function1;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/im/freechat/ui/chat/chatdetails/messagelist/b;->D(Lkotlin/jvm/functions/Function1;)V

    .line 8
    iput-object p1, p0, Lcom/im/freechat/ui/chat/holder/l0;->v:Lcom/im/freechat/ui/chat/chatdetails/a2;

    return-void
.end method

.method private static final A0(Lcom/im/freechat/ui/chat/holder/l0;Z)V
    .locals 1

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-boolean v0, p0, Lcom/im/freechat/ui/chat/holder/l0;->t:Z

    if-eq v0, p1, :cond_0

    .line 2
    iput-boolean p1, p0, Lcom/im/freechat/ui/chat/holder/l0;->t:Z

    .line 3
    iget-object p0, p0, Lcom/im/freechat/ui/chat/holder/l0;->v:Lcom/im/freechat/ui/chat/chatdetails/a2;

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    :cond_0
    return-void
.end method

.method public static synthetic y0(Lcom/im/freechat/ui/chat/holder/l0;Z)V
    .locals 0

    invoke-static {p0, p1}, Lcom/im/freechat/ui/chat/holder/l0;->A0(Lcom/im/freechat/ui/chat/holder/l0;Z)V

    return-void
.end method


# virtual methods
.method protected abstract B0()Landroidx/recyclerview/widget/RecyclerView;
    .annotation build Lm8/g;
    .end annotation
.end method

.method public final C0()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/im/freechat/ui/chat/chatdetails/messagelist/d;",
            ">;"
        }
    .end annotation

    .annotation build Lm8/g;
    .end annotation

    iget-object v0, p0, Lcom/im/freechat/ui/chat/holder/l0;->u:Ljava/util/List;

    return-object v0
.end method

.method public final D0()Z
    .locals 1

    iget-boolean v0, p0, Lcom/im/freechat/ui/chat/holder/l0;->t:Z

    return v0
.end method

.method public final E0()V
    .locals 5

    .line 1
    invoke-virtual {p0}, Lcom/im/freechat/ui/chat/holder/l0;->B0()Landroidx/recyclerview/widget/RecyclerView;

    move-result-object v0

    .line 2
    new-instance v1, Lcom/google/android/flexbox/FlexboxLayoutManager;

    invoke-virtual {p0}, Lcom/im/freechat/ui/chat/holder/l0;->B0()Landroidx/recyclerview/widget/RecyclerView;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/google/android/flexbox/FlexboxLayoutManager;-><init>(Landroid/content/Context;)V

    const/4 v2, 0x0

    .line 3
    invoke-virtual {v1, v2}, Lcom/google/android/flexbox/FlexboxLayoutManager;->setFlexDirection(I)V

    const/4 v3, 0x1

    .line 4
    invoke-virtual {v1, v3}, Lcom/google/android/flexbox/FlexboxLayoutManager;->setFlexWrap(I)V

    const/4 v4, 0x4

    .line 5
    invoke-virtual {v1, v4}, Lcom/google/android/flexbox/FlexboxLayoutManager;->setAlignItems(I)V

    const/4 v4, 0x5

    .line 6
    invoke-virtual {v1, v4}, Lcom/google/android/flexbox/FlexboxLayoutManager;->setJustifyContent(I)V

    .line 7
    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 8
    iget-object v1, p0, Lcom/im/freechat/ui/chat/holder/l0;->v:Lcom/im/freechat/ui/chat/chatdetails/a2;

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 9
    invoke-virtual {v0, v3}, Landroidx/recyclerview/widget/RecyclerView;->setClipToPadding(Z)V

    .line 10
    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->getItemAnimator()Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;

    move-result-object v0

    const-string v1, "null cannot be cast to non-null type androidx.recyclerview.widget.SimpleItemAnimator"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Landroidx/recyclerview/widget/SimpleItemAnimator;

    invoke-virtual {v0, v2}, Landroidx/recyclerview/widget/SimpleItemAnimator;->setSupportsChangeAnimations(Z)V

    return-void
.end method

.method protected F(Lcom/im/freechat/ui/chat/chatdetails/messagelist/d;Lcom/im/freechat/shared/entities/message/Message;IZ)V
    .locals 1
    .param p1    # Lcom/im/freechat/ui/chat/chatdetails/messagelist/d;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .param p2    # Lcom/im/freechat/shared/entities/message/Message;
        .annotation build Lm8/h;
        .end annotation
    .end param

    const-string v0, "messageWrapper"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-super {p0, p1, p2, p3, p4}, Lcom/im/freechat/ui/chat/holder/BaseChatHolder;->F(Lcom/im/freechat/ui/chat/chatdetails/messagelist/d;Lcom/im/freechat/shared/entities/message/Message;IZ)V

    .line 2
    invoke-virtual {p0, p1, p3, p4}, Lcom/im/freechat/ui/chat/holder/l0;->z0(Lcom/im/freechat/ui/chat/chatdetails/messagelist/d;IZ)V

    return-void
.end method

.method public final F0(Ljava/util/List;)V
    .locals 1
    .param p1    # Ljava/util/List;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/im/freechat/ui/chat/chatdetails/messagelist/d;",
            ">;)V"
        }
    .end annotation

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/im/freechat/ui/chat/holder/l0;->u:Ljava/util/List;

    return-void
.end method

.method public final G0(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/im/freechat/ui/chat/holder/l0;->t:Z

    return-void
.end method

.method public z0(Lcom/im/freechat/ui/chat/chatdetails/messagelist/d;IZ)V
    .locals 36
    .param p1    # Lcom/im/freechat/ui/chat/chatdetails/messagelist/d;
        .annotation build Lm8/g;
        .end annotation
    .end param

    move-object/from16 v0, p0

    const-string v1, "messageWrapper"

    move-object/from16 v2, p1

    invoke-static {v2, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual/range {p1 .. p1}, Lcom/im/freechat/ui/chat/chatdetails/messagelist/d;->i()Lcom/im/freechat/shared/entities/message/Message;

    move-result-object v1

    .line 2
    invoke-virtual {v1}, Lcom/im/freechat/shared/entities/message/Message;->getAttachments()Ljava/util/List;

    move-result-object v3

    .line 3
    new-instance v15, Ljava/util/ArrayList;

    const/16 v4, 0xa

    invoke-static {v3, v4}, Lkotlin/collections/CollectionsKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v4

    invoke-direct {v15, v4}, Ljava/util/ArrayList;-><init>(I)V

    .line 4
    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v24

    const/4 v3, 0x0

    const/16 v25, 0x0

    :goto_0
    invoke-interface/range {v24 .. v24}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface/range {v24 .. v24}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    add-int/lit8 v26, v25, 0x1

    if-gez v25, :cond_0

    .line 5
    invoke-static {}, Lkotlin/collections/CollectionsKt;->throwIndexOverflow()V

    :cond_0
    check-cast v3, Lcom/im/freechat/shared/entities/message/Attachment;

    .line 6
    invoke-interface {v3}, Lcom/im/freechat/shared/entities/message/Attachment;->getMediaId()J

    move-result-wide v4

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const-wide/16 v9, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/16 v16, 0x0

    move-object/from16 v27, v15

    move-object/from16 v15, v16

    invoke-static {v3}, Lkotlin/collections/CollectionsKt;->listOf(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v17

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    const v22, 0xf7fe

    const/16 v23, 0x0

    move-object v3, v1

    invoke-static/range {v3 .. v23}, Lcom/im/freechat/shared/entities/message/Message;->copy$default(Lcom/im/freechat/shared/entities/message/Message;JILcom/im/freechat/shared/entities/contact/Sender;Ljava/lang/String;JLcom/im/freechat/shared/entities/message/Message$MessageStatus;Lcom/im/freechat/shared/entities/message/Message;Ljava/lang/Long;Lcom/im/freechat/shared/entities/contact/Sender;Ljava/lang/Integer;Ljava/lang/Long;Ljava/util/List;Ljava/util/Map;ZLjava/util/List;ZILjava/lang/Object;)Lcom/im/freechat/shared/entities/message/Message;

    move-result-object v29

    .line 7
    new-instance v3, Lcom/im/freechat/ui/chat/chatdetails/messagelist/d;

    .line 8
    invoke-virtual/range {p1 .. p1}, Lcom/im/freechat/ui/chat/chatdetails/messagelist/d;->h()[Ljava/lang/Boolean;

    move-result-object v4

    aget-object v4, v4, v25

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v30

    .line 9
    invoke-virtual/range {p1 .. p1}, Lcom/im/freechat/ui/chat/chatdetails/messagelist/d;->l()Z

    move-result v31

    const/16 v32, 0x0

    const/16 v33, 0x1

    const/16 v34, 0x8

    const/16 v35, 0x0

    move-object/from16 v28, v3

    .line 10
    invoke-direct/range {v28 .. v35}, Lcom/im/freechat/ui/chat/chatdetails/messagelist/d;-><init>(Lcom/im/freechat/shared/entities/message/Message;ZZ[Ljava/lang/Boolean;ZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    move-object/from16 v4, v27

    invoke-interface {v4, v3}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    move-object v15, v4

    move/from16 v25, v26

    goto :goto_0

    :cond_1
    move-object v4, v15

    .line 11
    iget-object v1, v0, Lcom/im/freechat/ui/chat/holder/l0;->v:Lcom/im/freechat/ui/chat/chatdetails/a2;

    new-instance v2, Lcom/im/freechat/ui/chat/holder/k0;

    move/from16 v3, p3

    invoke-direct {v2, v0, v3}, Lcom/im/freechat/ui/chat/holder/k0;-><init>(Lcom/im/freechat/ui/chat/holder/l0;Z)V

    invoke-virtual {v1, v4, v2}, Landroidx/recyclerview/widget/ListAdapter;->submitList(Ljava/util/List;Ljava/lang/Runnable;)V

    return-void
.end method
