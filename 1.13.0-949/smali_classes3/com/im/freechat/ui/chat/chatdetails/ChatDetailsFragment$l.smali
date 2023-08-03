.class public final Lcom/im/freechat/ui/chat/chatdetails/ChatDetailsFragment$l;
.super Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;
.source "ChatDetailsFragment.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/im/freechat/ui/chat/chatdetails/ChatDetailsFragment;->Z()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nChatDetailsFragment.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ChatDetailsFragment.kt\ncom/im/freechat/ui/chat/chatdetails/ChatDetailsFragment$init$13$2\n+ 2 View.kt\nandroidx/core/view/ViewKt\n*L\n1#1,1609:1\n254#2,2:1610\n254#2,2:1612\n254#2,2:1614\n*S KotlinDebug\n*F\n+ 1 ChatDetailsFragment.kt\ncom/im/freechat/ui/chat/chatdetails/ChatDetailsFragment$init$13$2\n*L\n575#1:1610,2\n583#1:1612,2\n594#1:1614,2\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {}
    d1 = {
        "\u0000\u001f\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0002\u0008\u0004*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001J \u0010\u0008\u001a\u00020\u00072\u0006\u0010\u0003\u001a\u00020\u00022\u0006\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0006\u001a\u00020\u0004H\u0016J\u0018\u0010\n\u001a\u00020\u00072\u0006\u0010\u0003\u001a\u00020\u00022\u0006\u0010\t\u001a\u00020\u0004H\u0016\u00a8\u0006\u000b"
    }
    d2 = {
        "com/im/freechat/ui/chat/chatdetails/ChatDetailsFragment$l",
        "Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;",
        "Landroidx/recyclerview/widget/RecyclerView;",
        "recyclerView",
        "",
        "dx",
        "dy",
        "",
        "onScrolled",
        "newState",
        "onScrollStateChanged",
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

.field final synthetic b:Landroidx/recyclerview/widget/RecyclerView;


# direct methods
.method constructor <init>(Lcom/im/freechat/ui/chat/chatdetails/ChatDetailsFragment;Landroidx/recyclerview/widget/RecyclerView;)V
    .locals 0

    iput-object p1, p0, Lcom/im/freechat/ui/chat/chatdetails/ChatDetailsFragment$l;->a:Lcom/im/freechat/ui/chat/chatdetails/ChatDetailsFragment;

    iput-object p2, p0, Lcom/im/freechat/ui/chat/chatdetails/ChatDetailsFragment$l;->b:Landroidx/recyclerview/widget/RecyclerView;

    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;-><init>()V

    return-void
.end method

.method public static synthetic a(Lcom/im/freechat/ui/chat/chatdetails/ChatDetailsFragment;)V
    .locals 0

    invoke-static {p0}, Lcom/im/freechat/ui/chat/chatdetails/ChatDetailsFragment$l;->b(Lcom/im/freechat/ui/chat/chatdetails/ChatDetailsFragment;)V

    return-void
.end method

.method private static final b(Lcom/im/freechat/ui/chat/chatdetails/ChatDetailsFragment;)V
    .locals 1

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-static {p0}, Lcom/im/freechat/ui/chat/chatdetails/ChatDetailsFragment;->D1(Lcom/im/freechat/ui/chat/chatdetails/ChatDetailsFragment;)Lf4/i;

    move-result-object p0

    if-eqz p0, :cond_0

    iget-object p0, p0, Lf4/i;->B:Landroid/widget/TextView;

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    if-nez p0, :cond_1

    goto :goto_1

    :cond_1
    const/16 v0, 0x8

    .line 2
    invoke-virtual {p0, v0}, Landroid/view/View;->setVisibility(I)V

    :goto_1
    return-void
.end method


# virtual methods
.method public onScrollStateChanged(Landroidx/recyclerview/widget/RecyclerView;I)V
    .locals 3
    .param p1    # Landroidx/recyclerview/widget/RecyclerView;
        .annotation build Lm8/g;
        .end annotation
    .end param

    const-string v0, "recyclerView"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-super {p0, p1, p2}, Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;->onScrollStateChanged(Landroidx/recyclerview/widget/RecyclerView;I)V

    if-nez p2, :cond_0

    .line 2
    iget-object p1, p0, Lcom/im/freechat/ui/chat/chatdetails/ChatDetailsFragment$l;->b:Landroidx/recyclerview/widget/RecyclerView;

    iget-object p2, p0, Lcom/im/freechat/ui/chat/chatdetails/ChatDetailsFragment$l;->a:Lcom/im/freechat/ui/chat/chatdetails/ChatDetailsFragment;

    new-instance v0, Lcom/im/freechat/ui/chat/chatdetails/l1;

    invoke-direct {v0, p2}, Lcom/im/freechat/ui/chat/chatdetails/l1;-><init>(Lcom/im/freechat/ui/chat/chatdetails/ChatDetailsFragment;)V

    const-wide/16 v1, 0x5dc

    invoke-virtual {p1, v0, v1, v2}, Landroid/view/ViewGroup;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_0
    return-void
.end method

.method public onScrolled(Landroidx/recyclerview/widget/RecyclerView;II)V
    .locals 3
    .param p1    # Landroidx/recyclerview/widget/RecyclerView;
        .annotation build Lm8/g;
        .end annotation
    .end param

    const-string v0, "recyclerView"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-super {p0, p1, p2, p3}, Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;->onScrolled(Landroidx/recyclerview/widget/RecyclerView;II)V

    .line 2
    iget-object p2, p0, Lcom/im/freechat/ui/chat/chatdetails/ChatDetailsFragment$l;->a:Lcom/im/freechat/ui/chat/chatdetails/ChatDetailsFragment;

    invoke-static {p2}, Lcom/im/freechat/ui/chat/chatdetails/ChatDetailsFragment;->y1(Lcom/im/freechat/ui/chat/chatdetails/ChatDetailsFragment;)Lf4/i;

    move-result-object p2

    iget-object p2, p2, Lf4/i;->u:Lcom/im/freechat/ui/widget/ChatDetailsDownLayout;

    const-string v0, "binding.layoutDown"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    iget-object v0, p0, Lcom/im/freechat/ui/chat/chatdetails/ChatDetailsFragment$l;->a:Lcom/im/freechat/ui/chat/chatdetails/ChatDetailsFragment;

    invoke-virtual {v0}, Lcom/im/freechat/ui/chat/chatdetails/ChatDetailsFragment;->m2()Lcom/im/freechat/ui/chat/chatdetails/ChatDetailsViewModel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/im/freechat/ui/chat/chatdetails/ChatDetailsViewModel;->I0()Landroidx/lifecycle/MutableLiveData;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    if-eqz v0, :cond_5

    if-ltz p3, :cond_2

    .line 4
    invoke-virtual {p1, v2}, Landroid/view/ViewGroup;->canScrollVertically(I)Z

    move-result p3

    if-nez p3, :cond_4

    :cond_2
    iget-object p3, p0, Lcom/im/freechat/ui/chat/chatdetails/ChatDetailsFragment$l;->a:Lcom/im/freechat/ui/chat/chatdetails/ChatDetailsFragment;

    invoke-virtual {p3}, Lcom/im/freechat/ui/chat/chatdetails/ChatDetailsFragment;->m2()Lcom/im/freechat/ui/chat/chatdetails/ChatDetailsViewModel;

    move-result-object p3

    invoke-virtual {p3}, Lcom/im/freechat/ui/chat/chatdetails/ChatDetailsViewModel;->R0()Landroidx/lifecycle/LiveData;

    move-result-object p3

    invoke-virtual {p3}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/Integer;

    if-nez p3, :cond_3

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    :cond_3
    invoke-virtual {p3}, Ljava/lang/Number;->intValue()I

    move-result p3

    if-lez p3, :cond_5

    :cond_4
    iget-object p3, p0, Lcom/im/freechat/ui/chat/chatdetails/ChatDetailsFragment$l;->a:Lcom/im/freechat/ui/chat/chatdetails/ChatDetailsFragment;

    invoke-static {p3}, Lcom/im/freechat/ui/chat/chatdetails/ChatDetailsFragment;->H1(Lcom/im/freechat/ui/chat/chatdetails/ChatDetailsFragment;)Z

    move-result p3

    if-nez p3, :cond_5

    const/4 p3, 0x1

    goto :goto_2

    :cond_5
    const/4 p3, 0x0

    :goto_2
    if-eqz p3, :cond_6

    const/4 p3, 0x0

    goto :goto_3

    :cond_6
    const/16 p3, 0x8

    .line 5
    :goto_3
    invoke-virtual {p2, p3}, Landroid/view/View;->setVisibility(I)V

    .line 6
    iget-object p2, p0, Lcom/im/freechat/ui/chat/chatdetails/ChatDetailsFragment$l;->a:Lcom/im/freechat/ui/chat/chatdetails/ChatDetailsFragment;

    .line 7
    invoke-virtual {p1, v2}, Landroid/view/ViewGroup;->canScrollVertically(I)Z

    move-result p3

    if-eqz p3, :cond_8

    iget-object p3, p0, Lcom/im/freechat/ui/chat/chatdetails/ChatDetailsFragment$l;->a:Lcom/im/freechat/ui/chat/chatdetails/ChatDetailsFragment;

    invoke-static {p3}, Lcom/im/freechat/ui/chat/chatdetails/ChatDetailsFragment;->H1(Lcom/im/freechat/ui/chat/chatdetails/ChatDetailsFragment;)Z

    move-result p3

    if-eqz p3, :cond_7

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->getScrollState()I

    move-result p3

    if-nez p3, :cond_7

    goto :goto_4

    :cond_7
    const/4 p3, 0x0

    goto :goto_5

    :cond_8
    :goto_4
    const/4 p3, 0x1

    .line 8
    :goto_5
    invoke-static {p2, p3}, Lcom/im/freechat/ui/chat/chatdetails/ChatDetailsFragment;->O1(Lcom/im/freechat/ui/chat/chatdetails/ChatDetailsFragment;Z)V

    .line 9
    iget-object p2, p0, Lcom/im/freechat/ui/chat/chatdetails/ChatDetailsFragment$l;->a:Lcom/im/freechat/ui/chat/chatdetails/ChatDetailsFragment;

    invoke-static {p2}, Lcom/im/freechat/ui/chat/chatdetails/ChatDetailsFragment;->v1(Lcom/im/freechat/ui/chat/chatdetails/ChatDetailsFragment;)V

    .line 10
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->getScrollState()I

    move-result p1

    if-ne p1, v2, :cond_9

    .line 11
    iget-object p1, p0, Lcom/im/freechat/ui/chat/chatdetails/ChatDetailsFragment$l;->a:Lcom/im/freechat/ui/chat/chatdetails/ChatDetailsFragment;

    invoke-static {p1}, Lcom/im/freechat/ui/chat/chatdetails/ChatDetailsFragment;->y1(Lcom/im/freechat/ui/chat/chatdetails/ChatDetailsFragment;)Lf4/i;

    move-result-object p1

    iget-object p1, p1, Lf4/i;->B:Landroid/widget/TextView;

    iget-object p2, p0, Lcom/im/freechat/ui/chat/chatdetails/ChatDetailsFragment$l;->a:Lcom/im/freechat/ui/chat/chatdetails/ChatDetailsFragment;

    iget-object p3, p0, Lcom/im/freechat/ui/chat/chatdetails/ChatDetailsFragment$l;->b:Landroidx/recyclerview/widget/RecyclerView;

    const-string v0, ""

    .line 12
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 13
    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    .line 14
    invoke-virtual {p2}, Lcom/im/freechat/ui/chat/chatdetails/ChatDetailsFragment;->m2()Lcom/im/freechat/ui/chat/chatdetails/ChatDetailsViewModel;

    move-result-object p2

    invoke-virtual {p2}, Lcom/im/freechat/ui/chat/chatdetails/ChatDetailsViewModel;->x0()Landroidx/lifecycle/LiveData;

    move-result-object p2

    invoke-virtual {p2}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    move-result-object p2

    invoke-static {p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    check-cast p2, Ljava/util/List;

    invoke-virtual {p3}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    move-result-object p3

    const-string v0, "null cannot be cast to non-null type androidx.recyclerview.widget.LinearLayoutManager"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p3, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {p3}, Landroidx/recyclerview/widget/LinearLayoutManager;->findLastVisibleItemPosition()I

    move-result p3

    invoke-interface {p2, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/im/freechat/ui/chat/chatdetails/messagelist/d;

    .line 15
    invoke-virtual {p2}, Lcom/im/freechat/ui/chat/chatdetails/messagelist/d;->i()Lcom/im/freechat/shared/entities/message/Message;

    move-result-object p2

    invoke-virtual {p2}, Lcom/im/freechat/shared/entities/message/Message;->getSendTime()J

    move-result-wide p2

    invoke-static {p2, p3}, Lcom/im/freechat/extend/m;->g(J)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_9
    return-void
.end method
