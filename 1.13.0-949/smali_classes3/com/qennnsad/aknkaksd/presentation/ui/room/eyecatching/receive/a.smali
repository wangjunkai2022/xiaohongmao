.class public final Lcom/qennnsad/aknkaksd/presentation/ui/room/eyecatching/receive/a;
.super Landroidx/recyclerview/widget/RecyclerView$Adapter;
.source "ReceivedPinMessageAdapter.kt"


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "NotifyDataSetChanged"
    }
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/qennnsad/aknkaksd/presentation/ui/room/eyecatching/receive/a$b;,
        Lcom/qennnsad/aknkaksd/presentation/ui/room/eyecatching/receive/a$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/recyclerview/widget/RecyclerView$Adapter<",
        "Lcom/qennnsad/aknkaksd/presentation/ui/room/eyecatching/receive/a$b;",
        ">;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nReceivedPinMessageAdapter.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ReceivedPinMessageAdapter.kt\ncom/qennnsad/aknkaksd/presentation/ui/room/eyecatching/receive/ReceivedPinMessageAdapter\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 3 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,207:1\n819#2:208\n847#2,2:209\n350#2,7:212\n1851#2,2:219\n1851#2,2:221\n1#3:211\n*S KotlinDebug\n*F\n+ 1 ReceivedPinMessageAdapter.kt\ncom/qennnsad/aknkaksd/presentation/ui/room/eyecatching/receive/ReceivedPinMessageAdapter\n*L\n34#1:208\n34#1:209,2\n36#1:212,7\n56#1:219,2\n59#1:221,2\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {}
    d1 = {
        "\u0000Z\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010!\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0010\u0000\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0017\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0006\u0008\u0007\u0018\u0000 <2\u000c\u0012\u0008\u0012\u00060\u0002R\u00020\u00000\u0001:\u0002=\u001aB/\u0012\u0006\u00109\u001a\u000208\u0012\u0006\u0010\u001c\u001a\u00020\u0019\u0012\u0016\u0008\u0002\u0010 \u001a\u0010\u0012\u0004\u0012\u00020\u0004\u0012\u0004\u0012\u00020\u0008\u0018\u00010\u001d\u00a2\u0006\u0004\u0008:\u0010;J\u0018\u0010\u0005\u001a\u0008\u0012\u0004\u0012\u00020\u00040\u0003*\u0008\u0012\u0004\u0012\u00020\u00040\u0003H\u0002J\u0010\u0010\t\u001a\u00020\u00082\u0006\u0010\u0007\u001a\u00020\u0006H\u0002J\u000e\u0010\u000c\u001a\u00020\u00082\u0006\u0010\u000b\u001a\u00020\nJ\u0008\u0010\r\u001a\u00020\u0006H\u0016J\u0010\u0010\u000f\u001a\u00020\u00062\u0006\u0010\u000e\u001a\u00020\u0006H\u0016J\u001c\u0010\u0013\u001a\u00060\u0002R\u00020\u00002\u0006\u0010\u0011\u001a\u00020\u00102\u0006\u0010\u0012\u001a\u00020\u0006H\u0016J*\u0010\u0017\u001a\u00020\u00082\n\u0010\u0014\u001a\u00060\u0002R\u00020\u00002\u0006\u0010\u000e\u001a\u00020\u00062\u000c\u0010\u0016\u001a\u0008\u0012\u0004\u0012\u00020\u00150\u0003H\u0016J\u001c\u0010\u0018\u001a\u00020\u00082\n\u0010\u0014\u001a\u00060\u0002R\u00020\u00002\u0006\u0010\u000e\u001a\u00020\u0006H\u0016R\u0014\u0010\u001c\u001a\u00020\u00198\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u001a\u0010\u001bR\"\u0010 \u001a\u0010\u0012\u0004\u0012\u00020\u0004\u0012\u0004\u0012\u00020\u0008\u0018\u00010\u001d8\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u001e\u0010\u001fR\u0016\u0010#\u001a\u00020\u00068\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008!\u0010\"R6\u0010+\u001a\u0008\u0012\u0004\u0012\u00020\u00040\u00032\u000c\u0010$\u001a\u0008\u0012\u0004\u0012\u00020\u00040\u00038\u0006@FX\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008%\u0010&\u001a\u0004\u0008\'\u0010(\"\u0004\u0008)\u0010*R*\u00102\u001a\u00020\n2\u0006\u0010$\u001a\u00020\n8\u0006@FX\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008,\u0010-\u001a\u0004\u0008.\u0010/\"\u0004\u00080\u00101R\u0016\u00104\u001a\u00020\n8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u00083\u0010-R\u001a\u00107\u001a\u0008\u0012\u0004\u0012\u0002050\u00038\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u00086\u0010&\u00a8\u0006>"
    }
    d2 = {
        "Lcom/qennnsad/aknkaksd/presentation/ui/room/eyecatching/receive/a;",
        "Landroidx/recyclerview/widget/RecyclerView$Adapter;",
        "Lcom/qennnsad/aknkaksd/presentation/ui/room/eyecatching/receive/a$b;",
        "",
        "Lcom/qennnsad/aknkaksd/data/bean/room/eyecatching/PinnedMessageBean;",
        "t",
        "",
        "pos",
        "",
        "q",
        "",
        "on",
        "p",
        "getItemCount",
        "position",
        "getItemViewType",
        "Landroid/view/ViewGroup;",
        "parent",
        "viewType",
        "o",
        "holder",
        "",
        "payloads",
        "n",
        "m",
        "Lcom/qennnsad/aknkaksd/data/repository/m;",
        "b",
        "Lcom/qennnsad/aknkaksd/data/repository/m;",
        "sourceFactory",
        "Lkotlin/Function1;",
        "c",
        "Lkotlin/jvm/functions/Function1;",
        "onComplaintClick",
        "d",
        "I",
        "expandedPos",
        "value",
        "e",
        "Ljava/util/List;",
        "l",
        "()Ljava/util/List;",
        "s",
        "(Ljava/util/List;)V",
        "itemsList",
        "f",
        "Z",
        "k",
        "()Z",
        "r",
        "(Z)V",
        "canSendComplaint",
        "g",
        "isPk",
        "Landroid/os/CountDownTimer;",
        "h",
        "timers",
        "Lg5/a;",
        "localDataManager",
        "<init>",
        "(Lg5/a;Lcom/qennnsad/aknkaksd/data/repository/m;Lkotlin/jvm/functions/Function1;)V",
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
.field public static final i:Lcom/qennnsad/aknkaksd/presentation/ui/room/eyecatching/receive/a$a;
    .annotation build Lm8/g;
    .end annotation
.end field

.field public static final j:I = 0x3

.field private static final k:I = -0x1

.field private static final l:I = -0x2


# instance fields
.field private final a:Lg5/a;
    .annotation build Lm8/g;
    .end annotation
.end field

.field private final b:Lcom/qennnsad/aknkaksd/data/repository/m;
    .annotation build Lm8/g;
    .end annotation
.end field

.field private final c:Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function1<",
            "Lcom/qennnsad/aknkaksd/data/bean/room/eyecatching/PinnedMessageBean;",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation

    .annotation build Lm8/h;
    .end annotation
.end field

.field private d:I

.field private e:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/qennnsad/aknkaksd/data/bean/room/eyecatching/PinnedMessageBean;",
            ">;"
        }
    .end annotation

    .annotation build Lm8/g;
    .end annotation
.end field

.field private f:Z

.field private g:Z

.field private final h:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/os/CountDownTimer;",
            ">;"
        }
    .end annotation

    .annotation build Lm8/g;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/qennnsad/aknkaksd/presentation/ui/room/eyecatching/receive/a$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/qennnsad/aknkaksd/presentation/ui/room/eyecatching/receive/a$a;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/qennnsad/aknkaksd/presentation/ui/room/eyecatching/receive/a;->i:Lcom/qennnsad/aknkaksd/presentation/ui/room/eyecatching/receive/a$a;

    return-void
.end method

.method public constructor <init>(Lg5/a;Lcom/qennnsad/aknkaksd/data/repository/m;Lkotlin/jvm/functions/Function1;)V
    .locals 1
    .param p1    # Lg5/a;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .param p2    # Lcom/qennnsad/aknkaksd/data/repository/m;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .param p3    # Lkotlin/jvm/functions/Function1;
        .annotation build Lm8/h;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lg5/a;",
            "Lcom/qennnsad/aknkaksd/data/repository/m;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Lcom/qennnsad/aknkaksd/data/bean/room/eyecatching/PinnedMessageBean;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    const-string v0, "localDataManager"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "sourceFactory"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;-><init>()V

    .line 3
    iput-object p1, p0, Lcom/qennnsad/aknkaksd/presentation/ui/room/eyecatching/receive/a;->a:Lg5/a;

    .line 4
    iput-object p2, p0, Lcom/qennnsad/aknkaksd/presentation/ui/room/eyecatching/receive/a;->b:Lcom/qennnsad/aknkaksd/data/repository/m;

    .line 5
    iput-object p3, p0, Lcom/qennnsad/aknkaksd/presentation/ui/room/eyecatching/receive/a;->c:Lkotlin/jvm/functions/Function1;

    const/4 p1, -0x1

    .line 6
    iput p1, p0, Lcom/qennnsad/aknkaksd/presentation/ui/room/eyecatching/receive/a;->d:I

    .line 7
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/qennnsad/aknkaksd/presentation/ui/room/eyecatching/receive/a;->e:Ljava/util/List;

    .line 8
    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object p1

    invoke-static {p1}, Lkotlin/collections/CollectionsKt;->toMutableList(Ljava/util/Collection;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/qennnsad/aknkaksd/presentation/ui/room/eyecatching/receive/a;->h:Ljava/util/List;

    return-void
.end method

.method public synthetic constructor <init>(Lg5/a;Lcom/qennnsad/aknkaksd/data/repository/m;Lkotlin/jvm/functions/Function1;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_0

    const/4 p3, 0x0

    .line 1
    :cond_0
    invoke-direct {p0, p1, p2, p3}, Lcom/qennnsad/aknkaksd/presentation/ui/room/eyecatching/receive/a;-><init>(Lg5/a;Lcom/qennnsad/aknkaksd/data/repository/m;Lkotlin/jvm/functions/Function1;)V

    return-void
.end method

.method public static final synthetic d(Lcom/qennnsad/aknkaksd/presentation/ui/room/eyecatching/receive/a;)I
    .locals 0

    iget p0, p0, Lcom/qennnsad/aknkaksd/presentation/ui/room/eyecatching/receive/a;->d:I

    return p0
.end method

.method public static final synthetic e(Lcom/qennnsad/aknkaksd/presentation/ui/room/eyecatching/receive/a;)Lg5/a;
    .locals 0

    iget-object p0, p0, Lcom/qennnsad/aknkaksd/presentation/ui/room/eyecatching/receive/a;->a:Lg5/a;

    return-object p0
.end method

.method public static final synthetic f(Lcom/qennnsad/aknkaksd/presentation/ui/room/eyecatching/receive/a;)Lkotlin/jvm/functions/Function1;
    .locals 0

    iget-object p0, p0, Lcom/qennnsad/aknkaksd/presentation/ui/room/eyecatching/receive/a;->c:Lkotlin/jvm/functions/Function1;

    return-object p0
.end method

.method public static final synthetic g(Lcom/qennnsad/aknkaksd/presentation/ui/room/eyecatching/receive/a;)Lcom/qennnsad/aknkaksd/data/repository/m;
    .locals 0

    iget-object p0, p0, Lcom/qennnsad/aknkaksd/presentation/ui/room/eyecatching/receive/a;->b:Lcom/qennnsad/aknkaksd/data/repository/m;

    return-object p0
.end method

.method public static final synthetic h(Lcom/qennnsad/aknkaksd/presentation/ui/room/eyecatching/receive/a;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/qennnsad/aknkaksd/presentation/ui/room/eyecatching/receive/a;->g:Z

    return p0
.end method

.method public static final synthetic i(Lcom/qennnsad/aknkaksd/presentation/ui/room/eyecatching/receive/a;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/qennnsad/aknkaksd/presentation/ui/room/eyecatching/receive/a;->q(I)V

    return-void
.end method

.method public static final synthetic j(Lcom/qennnsad/aknkaksd/presentation/ui/room/eyecatching/receive/a;I)V
    .locals 0

    iput p1, p0, Lcom/qennnsad/aknkaksd/presentation/ui/room/eyecatching/receive/a;->d:I

    return-void
.end method

.method private final q(I)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/qennnsad/aknkaksd/presentation/ui/room/eyecatching/receive/a;->e:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    .line 2
    iget-object v1, p0, Lcom/qennnsad/aknkaksd/presentation/ui/room/eyecatching/receive/a;->e:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 3
    iget-object v1, p0, Lcom/qennnsad/aknkaksd/presentation/ui/room/eyecatching/receive/a;->e:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-eqz v1, :cond_0

    iget v1, p0, Lcom/qennnsad/aknkaksd/presentation/ui/room/eyecatching/receive/a;->d:I

    if-ne p1, v1, :cond_1

    :cond_0
    const/4 v1, -0x1

    iput v1, p0, Lcom/qennnsad/aknkaksd/presentation/ui/room/eyecatching/receive/a;->d:I

    :cond_1
    const/4 v1, 0x3

    if-le v0, v1, :cond_2

    .line 4
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    goto :goto_0

    .line 5
    :cond_2
    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemRemoved(I)V

    :goto_0
    return-void
.end method

.method private final t(Ljava/util/List;)Ljava/util/List;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/qennnsad/aknkaksd/data/bean/room/eyecatching/PinnedMessageBean;",
            ">;)",
            "Ljava/util/List<",
            "Lcom/qennnsad/aknkaksd/data/bean/room/eyecatching/PinnedMessageBean;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/qennnsad/aknkaksd/presentation/ui/room/eyecatching/receive/a;->h:Ljava/util/List;

    .line 2
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/CountDownTimer;

    .line 3
    invoke-virtual {v2}, Landroid/os/CountDownTimer;->cancel()V

    goto :goto_0

    .line 4
    :cond_0
    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 5
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v5, v1

    check-cast v5, Lcom/qennnsad/aknkaksd/data/bean/room/eyecatching/PinnedMessageBean;

    .line 6
    iget-object v1, p0, Lcom/qennnsad/aknkaksd/presentation/ui/room/eyecatching/receive/a;->h:Ljava/util/List;

    iget-object v2, p0, Lcom/qennnsad/aknkaksd/presentation/ui/room/eyecatching/receive/a;->a:Lg5/a;

    invoke-virtual {v2}, Lg5/a;->w()J

    move-result-wide v2

    invoke-virtual {v5, v2, v3}, Lcom/qennnsad/aknkaksd/data/bean/room/eyecatching/PinnedMessageBean;->remainedMillis(J)J

    move-result-wide v6

    new-instance v8, Lcom/qennnsad/aknkaksd/presentation/ui/room/eyecatching/receive/a$d;

    move-object v2, v8

    move-object v3, p1

    move-object v4, p0

    invoke-direct/range {v2 .. v7}, Lcom/qennnsad/aknkaksd/presentation/ui/room/eyecatching/receive/a$d;-><init>(Ljava/util/List;Lcom/qennnsad/aknkaksd/presentation/ui/room/eyecatching/receive/a;Lcom/qennnsad/aknkaksd/data/bean/room/eyecatching/PinnedMessageBean;J)V

    .line 7
    invoke-virtual {v8}, Landroid/os/CountDownTimer;->start()Landroid/os/CountDownTimer;

    move-result-object v2

    const-string v3, "private fun MutableList<\u2026        return this\n    }"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 8
    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_1
    return-object p1
.end method


# virtual methods
.method public getItemCount()I
    .locals 1

    iget-object v0, p0, Lcom/qennnsad/aknkaksd/presentation/ui/room/eyecatching/receive/a;->e:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getItemViewType(I)I
    .locals 1

    iget v0, p0, Lcom/qennnsad/aknkaksd/presentation/ui/room/eyecatching/receive/a;->d:I

    if-ne p1, v0, :cond_0

    const/4 p1, -0x2

    goto :goto_0

    :cond_0
    const/4 p1, -0x1

    :goto_0
    return p1
.end method

.method public final k()Z
    .locals 1

    iget-boolean v0, p0, Lcom/qennnsad/aknkaksd/presentation/ui/room/eyecatching/receive/a;->f:Z

    return v0
.end method

.method public final l()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/qennnsad/aknkaksd/data/bean/room/eyecatching/PinnedMessageBean;",
            ">;"
        }
    .end annotation

    .annotation build Lm8/g;
    .end annotation

    iget-object v0, p0, Lcom/qennnsad/aknkaksd/presentation/ui/room/eyecatching/receive/a;->e:Ljava/util/List;

    return-object v0
.end method

.method public m(Lcom/qennnsad/aknkaksd/presentation/ui/room/eyecatching/receive/a$b;I)V
    .locals 1
    .param p1    # Lcom/qennnsad/aknkaksd/presentation/ui/room/eyecatching/receive/a$b;
        .annotation build Lm8/g;
        .end annotation
    .end param

    const-string v0, "holder"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Lcom/qennnsad/aknkaksd/presentation/ui/room/eyecatching/receive/a;->e:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/qennnsad/aknkaksd/data/bean/room/eyecatching/PinnedMessageBean;

    .line 2
    new-instance v0, Lcom/qennnsad/aknkaksd/presentation/ui/room/eyecatching/receive/a$c;

    invoke-direct {v0, p0}, Lcom/qennnsad/aknkaksd/presentation/ui/room/eyecatching/receive/a$c;-><init>(Lcom/qennnsad/aknkaksd/presentation/ui/room/eyecatching/receive/a;)V

    invoke-virtual {p1, p2, v0}, Lcom/qennnsad/aknkaksd/presentation/ui/room/eyecatching/receive/a$b;->d(Lcom/qennnsad/aknkaksd/data/bean/room/eyecatching/PinnedMessageBean;Lkotlin/jvm/functions/Function1;)Landroid/view/View;

    return-void
.end method

.method public n(Lcom/qennnsad/aknkaksd/presentation/ui/room/eyecatching/receive/a$b;ILjava/util/List;)V
    .locals 1
    .param p1    # Lcom/qennnsad/aknkaksd/presentation/ui/room/eyecatching/receive/a$b;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .param p3    # Ljava/util/List;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/qennnsad/aknkaksd/presentation/ui/room/eyecatching/receive/a$b;",
            "I",
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    const-string v0, "holder"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "payloads"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-interface {p3}, Ljava/util/Collection;->isEmpty()Z

    move-result p3

    if-eqz p3, :cond_0

    .line 2
    invoke-virtual {p0, p1, p2}, Lcom/qennnsad/aknkaksd/presentation/ui/room/eyecatching/receive/a;->m(Lcom/qennnsad/aknkaksd/presentation/ui/room/eyecatching/receive/a$b;I)V

    return-void

    .line 3
    :cond_0
    iget-object p3, p0, Lcom/qennnsad/aknkaksd/presentation/ui/room/eyecatching/receive/a;->e:Ljava/util/List;

    invoke-interface {p3, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/qennnsad/aknkaksd/data/bean/room/eyecatching/PinnedMessageBean;

    invoke-virtual {p1, p2}, Lcom/qennnsad/aknkaksd/presentation/ui/room/eyecatching/receive/a$b;->k(Lcom/qennnsad/aknkaksd/data/bean/room/eyecatching/PinnedMessageBean;)V

    return-void
.end method

.method public o(Landroid/view/ViewGroup;I)Lcom/qennnsad/aknkaksd/presentation/ui/room/eyecatching/receive/a$b;
    .locals 4
    .param p1    # Landroid/view/ViewGroup;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .annotation build Lm8/g;
    .end annotation

    const-string v0, "parent"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, -0x2

    const/4 v1, 0x0

    if-eq p2, v0, :cond_1

    const/4 v2, -0x1

    if-eq p2, v2, :cond_0

    const/4 v2, 0x0

    goto :goto_0

    :cond_0
    const v2, 0x7f0d0178

    goto :goto_0

    :cond_1
    const v2, 0x7f0d017a

    .line 1
    :goto_0
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v3

    .line 2
    invoke-virtual {v3, v2, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    const-string v2, "from(parent.context)\n   \u2026te(layout, parent, false)"

    invoke-static {p1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    new-instance v2, Lcom/qennnsad/aknkaksd/presentation/ui/room/eyecatching/receive/a$b;

    if-ne p2, v0, :cond_2

    const/4 v1, 0x1

    :cond_2
    invoke-direct {v2, p0, p1, v1}, Lcom/qennnsad/aknkaksd/presentation/ui/room/eyecatching/receive/a$b;-><init>(Lcom/qennnsad/aknkaksd/presentation/ui/room/eyecatching/receive/a;Landroid/view/View;Z)V

    return-object v2
.end method

.method public bridge synthetic onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 0

    .line 1
    check-cast p1, Lcom/qennnsad/aknkaksd/presentation/ui/room/eyecatching/receive/a$b;

    invoke-virtual {p0, p1, p2}, Lcom/qennnsad/aknkaksd/presentation/ui/room/eyecatching/receive/a;->m(Lcom/qennnsad/aknkaksd/presentation/ui/room/eyecatching/receive/a$b;I)V

    return-void
.end method

.method public bridge synthetic onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;ILjava/util/List;)V
    .locals 0

    .line 2
    check-cast p1, Lcom/qennnsad/aknkaksd/presentation/ui/room/eyecatching/receive/a$b;

    invoke-virtual {p0, p1, p2, p3}, Lcom/qennnsad/aknkaksd/presentation/ui/room/eyecatching/receive/a;->n(Lcom/qennnsad/aknkaksd/presentation/ui/room/eyecatching/receive/a$b;ILjava/util/List;)V

    return-void
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 0

    invoke-virtual {p0, p1, p2}, Lcom/qennnsad/aknkaksd/presentation/ui/room/eyecatching/receive/a;->o(Landroid/view/ViewGroup;I)Lcom/qennnsad/aknkaksd/presentation/ui/room/eyecatching/receive/a$b;

    move-result-object p1

    return-object p1
.end method

.method public final p(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/qennnsad/aknkaksd/presentation/ui/room/eyecatching/receive/a;->g:Z

    .line 2
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    return-void
.end method

.method public final r(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/qennnsad/aknkaksd/presentation/ui/room/eyecatching/receive/a;->f:Z

    if-eqz p1, :cond_0

    .line 2
    iget p1, p0, Lcom/qennnsad/aknkaksd/presentation/ui/room/eyecatching/receive/a;->d:I

    if-ltz p1, :cond_0

    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemChanged(I)V

    :cond_0
    return-void
.end method

.method public final s(Ljava/util/List;)V
    .locals 6
    .param p1    # Ljava/util/List;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/qennnsad/aknkaksd/data/bean/room/eyecatching/PinnedMessageBean;",
            ">;)V"
        }
    .end annotation

    const-string v0, "value"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Lcom/qennnsad/aknkaksd/presentation/ui/room/eyecatching/receive/a;->e:Ljava/util/List;

    iget v1, p0, Lcom/qennnsad/aknkaksd/presentation/ui/room/eyecatching/receive/a;->d:I

    invoke-static {v0, v1}, Lkotlin/collections/CollectionsKt;->getOrNull(Ljava/util/List;I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/qennnsad/aknkaksd/data/bean/room/eyecatching/PinnedMessageBean;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/qennnsad/aknkaksd/data/bean/room/eyecatching/PinnedMessageBean;->getId()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 2
    :goto_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 3
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_1
    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    move-object v3, v2

    check-cast v3, Lcom/qennnsad/aknkaksd/data/bean/room/eyecatching/PinnedMessageBean;

    .line 4
    iget-object v4, p0, Lcom/qennnsad/aknkaksd/presentation/ui/room/eyecatching/receive/a;->a:Lg5/a;

    invoke-virtual {v4}, Lg5/a;->w()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Lcom/qennnsad/aknkaksd/data/bean/room/eyecatching/PinnedMessageBean;->isExpired(J)Z

    move-result v3

    if-nez v3, :cond_1

    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 5
    :cond_2
    invoke-static {v1}, Lkotlin/collections/CollectionsKt;->toMutableList(Ljava/util/Collection;)Ljava/util/List;

    move-result-object p1

    const/4 v1, 0x0

    .line 6
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    .line 7
    check-cast v3, Lcom/qennnsad/aknkaksd/data/bean/room/eyecatching/PinnedMessageBean;

    .line 8
    invoke-virtual {v3}, Lcom/qennnsad/aknkaksd/data/bean/room/eyecatching/PinnedMessageBean;->getId()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    goto :goto_3

    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_4
    const/4 v1, -0x1

    :goto_3
    iput v1, p0, Lcom/qennnsad/aknkaksd/presentation/ui/room/eyecatching/receive/a;->d:I

    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 9
    invoke-direct {p0, p1}, Lcom/qennnsad/aknkaksd/presentation/ui/room/eyecatching/receive/a;->t(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    .line 10
    iput-object p1, p0, Lcom/qennnsad/aknkaksd/presentation/ui/room/eyecatching/receive/a;->e:Ljava/util/List;

    .line 11
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    return-void
.end method
