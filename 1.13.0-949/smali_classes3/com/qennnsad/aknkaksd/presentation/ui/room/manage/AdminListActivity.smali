.class public final Lcom/qennnsad/aknkaksd/presentation/ui/room/manage/AdminListActivity;
.super Lcom/qennnsad/aknkaksd/presentation/ui/room/manage/Hilt_AdminListActivity;
.source "AdminListActivity.kt"


# annotations
.annotation runtime Ldagger/hilt/android/b;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/qennnsad/aknkaksd/presentation/ui/room/manage/AdminListActivity$a;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nAdminListActivity.kt\nKotlin\n*S Kotlin\n*F\n+ 1 AdminListActivity.kt\ncom/qennnsad/aknkaksd/presentation/ui/room/manage/AdminListActivity\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 3 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 4 View.kt\nandroidx/core/view/ViewKt\n*L\n1#1,193:1\n766#2:194\n857#2,2:195\n766#2:200\n857#2,2:201\n1#3:197\n254#4,2:198\n254#4,2:203\n*S KotlinDebug\n*F\n+ 1 AdminListActivity.kt\ncom/qennnsad/aknkaksd/presentation/ui/room/manage/AdminListActivity\n*L\n83#1:194\n83#1:195,2\n114#1:200\n114#1:201,2\n109#1:198,2\n116#1:203,2\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {}
    d1 = {
        "\u0000F\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0007\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0008\u0008\u0007\u0018\u0000 %2\u00020\u0001:\u0001&B\u0007\u00a2\u0006\u0004\u0008#\u0010$J\u0008\u0010\u0003\u001a\u00020\u0002H\u0002J\u0010\u0010\u0006\u001a\u00020\u00022\u0006\u0010\u0005\u001a\u00020\u0004H\u0002J\u0012\u0010\t\u001a\u00020\u00022\u0008\u0010\u0008\u001a\u0004\u0018\u00010\u0007H\u0015J\u0008\u0010\n\u001a\u00020\u0002H\u0014R\"\u0010\u0012\u001a\u00020\u000b8\u0006@\u0006X\u0087.\u00a2\u0006\u0012\n\u0004\u0008\u000c\u0010\r\u001a\u0004\u0008\u000e\u0010\u000f\"\u0004\u0008\u0010\u0010\u0011R\u0016\u0010\u0016\u001a\u00020\u00138\u0002@\u0002X\u0082.\u00a2\u0006\u0006\n\u0004\u0008\u0014\u0010\u0015R\u0016\u0010\u001a\u001a\u00020\u00178\u0002@\u0002X\u0082.\u00a2\u0006\u0006\n\u0004\u0008\u0018\u0010\u0019R\u0018\u0010\u001e\u001a\u0004\u0018\u00010\u001b8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008\u001c\u0010\u001dR\u0014\u0010\"\u001a\u00020\u001f8\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008 \u0010!\u00a8\u0006\'"
    }
    d2 = {
        "Lcom/qennnsad/aknkaksd/presentation/ui/room/manage/AdminListActivity;",
        "Landroidx/appcompat/app/AppCompatActivity;",
        "",
        "U",
        "",
        "id",
        "W",
        "Landroid/os/Bundle;",
        "savedInstanceState",
        "onCreate",
        "onDestroy",
        "Lcom/qennnsad/aknkaksd/data/websocket/j;",
        "d",
        "Lcom/qennnsad/aknkaksd/data/websocket/j;",
        "S",
        "()Lcom/qennnsad/aknkaksd/data/websocket/j;",
        "Y",
        "(Lcom/qennnsad/aknkaksd/data/websocket/j;)V",
        "wsObjectPool",
        "Landroid/widget/TextView;",
        "e",
        "Landroid/widget/TextView;",
        "emptyListView",
        "Lcom/qennnsad/aknkaksd/presentation/ui/room/manage/f;",
        "f",
        "Lcom/qennnsad/aknkaksd/presentation/ui/room/manage/f;",
        "adapter",
        "Lcom/qennnsad/aknkaksd/data/websocket/WebSocketService;",
        "g",
        "Lcom/qennnsad/aknkaksd/data/websocket/WebSocketService;",
        "wsService",
        "Landroid/content/ServiceConnection;",
        "h",
        "Landroid/content/ServiceConnection;",
        "wsConnection",
        "<init>",
        "()V",
        "i",
        "a",
        "app_pron_playerRelease"
    }
    k = 0x1
    mv = {
        0x1,
        0x7,
        0x1
    }
.end annotation


# static fields
.field public static final i:Lcom/qennnsad/aknkaksd/presentation/ui/room/manage/AdminListActivity$a;
    .annotation build Lm8/g;
    .end annotation
.end field

.field private static final j:Ljava/lang/String; = "key_admins"
    .annotation build Lm8/g;
    .end annotation
.end field


# instance fields
.field public d:Lcom/qennnsad/aknkaksd/data/websocket/j;
    .annotation runtime Lu7/a;
    .end annotation
.end field

.field private e:Landroid/widget/TextView;

.field private f:Lcom/qennnsad/aknkaksd/presentation/ui/room/manage/f;

.field private g:Lcom/qennnsad/aknkaksd/data/websocket/WebSocketService;
    .annotation build Lm8/h;
    .end annotation
.end field

.field private final h:Landroid/content/ServiceConnection;
    .annotation build Lm8/g;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/qennnsad/aknkaksd/presentation/ui/room/manage/AdminListActivity$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/qennnsad/aknkaksd/presentation/ui/room/manage/AdminListActivity$a;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/qennnsad/aknkaksd/presentation/ui/room/manage/AdminListActivity;->i:Lcom/qennnsad/aknkaksd/presentation/ui/room/manage/AdminListActivity$a;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/qennnsad/aknkaksd/presentation/ui/room/manage/Hilt_AdminListActivity;-><init>()V

    .line 2
    new-instance v0, Lcom/qennnsad/aknkaksd/presentation/ui/room/manage/AdminListActivity$d;

    invoke-direct {v0, p0}, Lcom/qennnsad/aknkaksd/presentation/ui/room/manage/AdminListActivity$d;-><init>(Lcom/qennnsad/aknkaksd/presentation/ui/room/manage/AdminListActivity;)V

    iput-object v0, p0, Lcom/qennnsad/aknkaksd/presentation/ui/room/manage/AdminListActivity;->h:Landroid/content/ServiceConnection;

    return-void
.end method

.method public static synthetic M(Lcom/qennnsad/aknkaksd/presentation/ui/room/manage/AdminListActivity;Lcom/qennnsad/aknkaksd/data/bean/websocket/RemoveAdminerBean;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/qennnsad/aknkaksd/presentation/ui/room/manage/AdminListActivity;->V(Lcom/qennnsad/aknkaksd/presentation/ui/room/manage/AdminListActivity;Lcom/qennnsad/aknkaksd/data/bean/websocket/RemoveAdminerBean;)V

    return-void
.end method

.method public static synthetic N(Lcom/qennnsad/aknkaksd/presentation/ui/room/manage/AdminListActivity;Lkotlin/Unit;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/qennnsad/aknkaksd/presentation/ui/room/manage/AdminListActivity;->X(Lcom/qennnsad/aknkaksd/presentation/ui/room/manage/AdminListActivity;Lkotlin/Unit;)V

    return-void
.end method

.method public static final synthetic O(Lcom/qennnsad/aknkaksd/presentation/ui/room/manage/AdminListActivity;)Lcom/qennnsad/aknkaksd/data/websocket/WebSocketService;
    .locals 0

    iget-object p0, p0, Lcom/qennnsad/aknkaksd/presentation/ui/room/manage/AdminListActivity;->g:Lcom/qennnsad/aknkaksd/data/websocket/WebSocketService;

    return-object p0
.end method

.method public static final synthetic P(Lcom/qennnsad/aknkaksd/presentation/ui/room/manage/AdminListActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/qennnsad/aknkaksd/presentation/ui/room/manage/AdminListActivity;->U()V

    return-void
.end method

.method public static final synthetic R(Lcom/qennnsad/aknkaksd/presentation/ui/room/manage/AdminListActivity;Lcom/qennnsad/aknkaksd/data/websocket/WebSocketService;)V
    .locals 0

    iput-object p1, p0, Lcom/qennnsad/aknkaksd/presentation/ui/room/manage/AdminListActivity;->g:Lcom/qennnsad/aknkaksd/data/websocket/WebSocketService;

    return-void
.end method

.method private final U()V
    .locals 3

    .line 1
    new-instance v0, Lcom/qennnsad/aknkaksd/presentation/ui/room/manage/a;

    invoke-direct {v0, p0}, Lcom/qennnsad/aknkaksd/presentation/ui/room/manage/a;-><init>(Lcom/qennnsad/aknkaksd/presentation/ui/room/manage/AdminListActivity;)V

    .line 2
    iget-object v1, p0, Lcom/qennnsad/aknkaksd/presentation/ui/room/manage/AdminListActivity;->g:Lcom/qennnsad/aknkaksd/data/websocket/WebSocketService;

    if-eqz v1, :cond_0

    const-string v2, "right.removeAdminer"

    invoke-virtual {v1, v2, v0}, Lcom/qennnsad/aknkaksd/data/websocket/WebSocketService;->F(Ljava/lang/String;Lcom/qennnsad/aknkaksd/data/websocket/i;)V

    :cond_0
    return-void
.end method

.method private static final V(Lcom/qennnsad/aknkaksd/presentation/ui/room/manage/AdminListActivity;Lcom/qennnsad/aknkaksd/data/bean/websocket/RemoveAdminerBean;)V
    .locals 1

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/qennnsad/aknkaksd/data/bean/websocket/RemoveAdminerBean;->getUser_id()Ljava/lang/String;

    move-result-object p1

    const-string v0, "removeAdminerBean.user_id"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lcom/qennnsad/aknkaksd/presentation/ui/room/manage/AdminListActivity;->W(Ljava/lang/String;)V

    return-void
.end method

.method private final W(Ljava/lang/String;)V
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/qennnsad/aknkaksd/presentation/ui/room/manage/AdminListActivity;->f:Lcom/qennnsad/aknkaksd/presentation/ui/room/manage/f;

    const-string v1, "adapter"

    const/4 v2, 0x0

    if-nez v0, :cond_0

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v0, v2

    :cond_0
    invoke-virtual {v0}, Landroidx/recyclerview/widget/ListAdapter;->getCurrentList()Ljava/util/List;

    move-result-object v0

    const-string v3, "adapter.currentList"

    invoke-static {v0, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->toMutableList(Ljava/util/Collection;)Ljava/util/List;

    move-result-object v0

    .line 2
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 3
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    move-object v5, v4

    check-cast v5, Lcom/qennnsad/aknkaksd/data/bean/room/RoomAdminInfo;

    .line 4
    invoke-virtual {v5}, Lcom/qennnsad/aknkaksd/data/bean/room/RoomAdminInfo;->getId()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    xor-int/lit8 v5, v5, 0x1

    if-eqz v5, :cond_1

    invoke-interface {v3, v4}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 5
    :cond_2
    iget-object p1, p0, Lcom/qennnsad/aknkaksd/presentation/ui/room/manage/AdminListActivity;->f:Lcom/qennnsad/aknkaksd/presentation/ui/room/manage/f;

    if-nez p1, :cond_3

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object p1, v2

    :cond_3
    invoke-virtual {p1, v3}, Landroidx/recyclerview/widget/ListAdapter;->submitList(Ljava/util/List;)V

    .line 6
    iget-object p1, p0, Lcom/qennnsad/aknkaksd/presentation/ui/room/manage/AdminListActivity;->e:Landroid/widget/TextView;

    if-nez p1, :cond_4

    const-string p1, "emptyListView"

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    goto :goto_1

    :cond_4
    move-object v2, p1

    :goto_1
    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_5

    const/4 p1, 0x0

    goto :goto_2

    :cond_5
    const/16 p1, 0x8

    .line 7
    :goto_2
    invoke-virtual {v2, p1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method private static final X(Lcom/qennnsad/aknkaksd/presentation/ui/room/manage/AdminListActivity;Lkotlin/Unit;)V
    .locals 0

    const-string p1, "this$0"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Landroidx/activity/ComponentActivity;->onBackPressed()V

    return-void
.end method


# virtual methods
.method public final S()Lcom/qennnsad/aknkaksd/data/websocket/j;
    .locals 1
    .annotation build Lm8/g;
    .end annotation

    iget-object v0, p0, Lcom/qennnsad/aknkaksd/presentation/ui/room/manage/AdminListActivity;->d:Lcom/qennnsad/aknkaksd/data/websocket/j;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    const-string v0, "wsObjectPool"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v0, 0x0

    return-object v0
.end method

.method public final Y(Lcom/qennnsad/aknkaksd/data/websocket/j;)V
    .locals 1
    .param p1    # Lcom/qennnsad/aknkaksd/data/websocket/j;
        .annotation build Lm8/g;
        .end annotation
    .end param

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/qennnsad/aknkaksd/presentation/ui/room/manage/AdminListActivity;->d:Lcom/qennnsad/aknkaksd/data/websocket/j;

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4
    .param p1    # Landroid/os/Bundle;
        .annotation build Lm8/h;
        .end annotation
    .end param
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "CheckResult"
        }
    .end annotation

    .line 1
    invoke-super {p0, p1}, Landroidx/fragment/app/FragmentActivity;->onCreate(Landroid/os/Bundle;)V

    const p1, 0x7f0d001c

    .line 2
    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->setContentView(I)V

    .line 3
    invoke-static {p0}, Lcom/qennnsad/aknkaksd/data/websocket/WebSocketService;->q(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object p1

    iget-object v0, p0, Lcom/qennnsad/aknkaksd/presentation/ui/room/manage/AdminListActivity;->h:Landroid/content/ServiceConnection;

    const/4 v1, 0x1

    invoke-virtual {p0, p1, v0, v1}, Landroid/app/Activity;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    const p1, 0x7f0a036f

    .line 4
    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    const-string v0, "findViewById(R.id.imgbtn_toolbar_back)"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1}, Lcom/qennnsad/aknkaksd/util/f1;->b(Landroid/view/View;)Lio/reactivex/rxjava3/core/g0;

    move-result-object p1

    .line 5
    sget-object v0, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v2, 0x32

    invoke-virtual {p1, v2, v3, v0}, Lio/reactivex/rxjava3/core/g0;->M6(JLjava/util/concurrent/TimeUnit;)Lio/reactivex/rxjava3/core/g0;

    move-result-object p1

    .line 6
    new-instance v0, Lcom/qennnsad/aknkaksd/presentation/ui/room/manage/b;

    invoke-direct {v0, p0}, Lcom/qennnsad/aknkaksd/presentation/ui/room/manage/b;-><init>(Lcom/qennnsad/aknkaksd/presentation/ui/room/manage/AdminListActivity;)V

    invoke-virtual {p1, v0}, Lio/reactivex/rxjava3/core/g0;->a6(Lq7/g;)Lio/reactivex/rxjava3/disposables/f;

    .line 7
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const-string v0, "key_admins"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getParcelableArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 8
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 9
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    move-object v3, v2

    check-cast v3, Lcom/qennnsad/aknkaksd/data/bean/room/RoomAdminInfo;

    .line 10
    invoke-virtual {v3}, Lcom/qennnsad/aknkaksd/data/bean/room/RoomAdminInfo;->getShowAdmin()Z

    move-result v3

    xor-int/2addr v3, v1

    if-eqz v3, :cond_0

    invoke-interface {v0, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :cond_2
    const p1, 0x7f0a0575

    .line 11
    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroidx/recyclerview/widget/RecyclerView;

    .line 12
    new-instance v2, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-direct {v2, p0}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    invoke-virtual {p1, v2}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 13
    new-instance v2, Lcom/qennnsad/aknkaksd/presentation/ui/room/manage/f;

    invoke-direct {v2}, Lcom/qennnsad/aknkaksd/presentation/ui/room/manage/f;-><init>()V

    .line 14
    new-instance v3, Lcom/qennnsad/aknkaksd/presentation/ui/room/manage/AdminListActivity$b;

    invoke-direct {v3, p0}, Lcom/qennnsad/aknkaksd/presentation/ui/room/manage/AdminListActivity$b;-><init>(Lcom/qennnsad/aknkaksd/presentation/ui/room/manage/AdminListActivity;)V

    invoke-virtual {v2, v3}, Lcom/qennnsad/aknkaksd/presentation/ui/room/manage/f;->h(Lkotlin/jvm/functions/Function1;)V

    .line 15
    new-instance v3, Lcom/qennnsad/aknkaksd/presentation/ui/room/manage/AdminListActivity$c;

    invoke-direct {v3, p0}, Lcom/qennnsad/aknkaksd/presentation/ui/room/manage/AdminListActivity$c;-><init>(Lcom/qennnsad/aknkaksd/presentation/ui/room/manage/AdminListActivity;)V

    invoke-virtual {v2, v3}, Lcom/qennnsad/aknkaksd/presentation/ui/room/manage/f;->i(Lkotlin/jvm/functions/Function1;)V

    .line 16
    invoke-virtual {v2, v0}, Landroidx/recyclerview/widget/ListAdapter;->submitList(Ljava/util/List;)V

    .line 17
    iput-object v2, p0, Lcom/qennnsad/aknkaksd/presentation/ui/room/manage/AdminListActivity;->f:Lcom/qennnsad/aknkaksd/presentation/ui/room/manage/f;

    .line 18
    invoke-virtual {p1, v2}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    const p1, 0x7f0a0732

    .line 19
    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    move-object v2, p1

    check-cast v2, Landroid/widget/TextView;

    const-string v3, ""

    .line 20
    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v3, 0x0

    if-eqz v0, :cond_4

    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_3

    goto :goto_1

    :cond_3
    const/4 v1, 0x0

    :cond_4
    :goto_1
    if-eqz v1, :cond_5

    goto :goto_2

    :cond_5
    const/16 v3, 0x8

    .line 21
    :goto_2
    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    const-string v0, "findViewById<TextView?>(\u2026isNullOrEmpty()\n        }"

    .line 22
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v2, p0, Lcom/qennnsad/aknkaksd/presentation/ui/room/manage/AdminListActivity;->e:Landroid/widget/TextView;

    return-void
.end method

.method protected onDestroy()V
    .locals 1

    .line 1
    invoke-super {p0}, Landroidx/appcompat/app/AppCompatActivity;->onDestroy()V

    .line 2
    iget-object v0, p0, Lcom/qennnsad/aknkaksd/presentation/ui/room/manage/AdminListActivity;->h:Landroid/content/ServiceConnection;

    invoke-virtual {p0, v0}, Landroid/app/Activity;->unbindService(Landroid/content/ServiceConnection;)V

    return-void
.end method
