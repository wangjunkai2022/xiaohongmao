.class public Lcom/giphy/sdk/tracking/d;
.super Ljava/lang/Object;
.source "GifTrackingManager.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/giphy/sdk/tracking/d$a;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nGifTrackingManager.kt\nKotlin\n*S Kotlin\n*F\n+ 1 GifTrackingManager.kt\ncom/giphy/sdk/tracking/GifTrackingManager\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,166:1\n1819#2,2:167\n1819#2,2:169\n*E\n*S KotlinDebug\n*F\n+ 1 GifTrackingManager.kt\ncom/giphy/sdk/tracking/GifTrackingManager\n*L\n110#1,2:167\n163#1,2:169\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {}
    d1 = {
        "\u0000}\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0007\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0010!\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0012\n\u0002\u0008\n*\u0001F\u0008\u0010\u0018\u0000 \r2\u00020\u0001:\u0001\"B\u0011\u0012\u0008\u0008\u0002\u0010M\u001a\u00020\u000c\u00a2\u0006\u0004\u0008N\u0010LJ\u0014\u0010\u0005\u001a\u0004\u0018\u00010\u00042\u0008\u0010\u0003\u001a\u0004\u0018\u00010\u0002H\u0002J\u0010\u0010\t\u001a\u00020\u00082\u0006\u0010\u0007\u001a\u00020\u0006H\u0002J\u000e\u0010\r\u001a\u00020\u000c2\u0006\u0010\u000b\u001a\u00020\nJ\u0016\u0010\u0013\u001a\u00020\u00122\u0006\u0010\u000f\u001a\u00020\u000e2\u0006\u0010\u0011\u001a\u00020\u0010J\u0006\u0010\u0014\u001a\u00020\u0012J\u0006\u0010\u0015\u001a\u00020\u0012J\u0006\u0010\u0016\u001a\u00020\u0012J\u000e\u0010\u0019\u001a\u00020\u00122\u0006\u0010\u0018\u001a\u00020\u0017J\u000e\u0010\u001a\u001a\u00020\u00122\u0006\u0010\u0018\u001a\u00020\u0017J\u0006\u0010\u001b\u001a\u00020\u0012J\u0018\u0010 \u001a\u00020\u00122\u0006\u0010\u001d\u001a\u00020\u001c2\u0006\u0010\u001f\u001a\u00020\u001eH\u0016J\u0006\u0010!\u001a\u00020\u0012R\u0018\u0010\u000f\u001a\u0004\u0018\u00010\u000e8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008\"\u0010#R\u0014\u0010\'\u001a\u00020$8\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008%\u0010&R\u0014\u0010)\u001a\u00020$8\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008(\u0010&R\u0018\u0010\u0011\u001a\u0004\u0018\u00010\u00108\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008\u0019\u0010*R\u001a\u0010-\u001a\u0008\u0012\u0004\u0012\u00020\u00170+8\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u0013\u0010,R\u0016\u00100\u001a\u00020.8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008\u0014\u0010/R\u0016\u00102\u001a\u00020\u000c8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008\u0015\u00101R\"\u00109\u001a\u0002038\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008\u0016\u00104\u001a\u0004\u00085\u00106\"\u0004\u00087\u00108R\"\u0010?\u001a\u00020\u00048\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008\t\u0010:\u001a\u0004\u0008;\u0010<\"\u0004\u0008=\u0010>R$\u0010B\u001a\u0004\u0018\u00010\u00048\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008@\u0010:\u001a\u0004\u0008@\u0010<\"\u0004\u0008A\u0010>R$\u0010E\u001a\u0004\u0018\u00010\u00048\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008\u0005\u0010:\u001a\u0004\u0008C\u0010<\"\u0004\u0008D\u0010>R\u0014\u0010H\u001a\u00020F8\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u00085\u0010GR\"\u0010M\u001a\u00020\u000c8\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008C\u00101\u001a\u0004\u0008I\u0010J\"\u0004\u0008K\u0010L\u00a8\u0006O"
    }
    d2 = {
        "Lcom/giphy/sdk/tracking/d;",
        "",
        "Landroidx/recyclerview/widget/RecyclerView$LayoutManager;",
        "layoutManager",
        "",
        "k",
        "Landroid/view/View;",
        "view",
        "",
        "i",
        "",
        "position",
        "",
        "p",
        "Landroidx/recyclerview/widget/RecyclerView;",
        "recyclerView",
        "Lcom/giphy/sdk/tracking/c;",
        "gifTrackingCallback",
        "",
        "e",
        "f",
        "g",
        "h",
        "Lcom/giphy/sdk/tracking/e;",
        "gifVisibilityListener",
        "d",
        "q",
        "y",
        "Lcom/giphy/sdk/core/models/Media;",
        "media",
        "Lcom/giphy/sdk/analytics/models/enums/ActionType;",
        "actionType",
        "x",
        "r",
        "a",
        "Landroidx/recyclerview/widget/RecyclerView;",
        "Landroid/graphics/Rect;",
        "b",
        "Landroid/graphics/Rect;",
        "globalRect",
        "c",
        "drawingRect",
        "Lcom/giphy/sdk/tracking/c;",
        "",
        "Ljava/util/List;",
        "gifVisibilityListeners",
        "Lcom/giphy/sdk/tracking/g;",
        "Lcom/giphy/sdk/tracking/g;",
        "pingbacksDeduplicator",
        "Z",
        "trackSessions",
        "Lcom/giphy/sdk/analytics/batching/b;",
        "Lcom/giphy/sdk/analytics/batching/b;",
        "l",
        "()Lcom/giphy/sdk/analytics/batching/b;",
        "t",
        "(Lcom/giphy/sdk/analytics/batching/b;)V",
        "pingbackCollector",
        "Ljava/lang/String;",
        "o",
        "()Ljava/lang/String;",
        "w",
        "(Ljava/lang/String;)V",
        "userId",
        "j",
        "s",
        "layoutType",
        "m",
        "u",
        "placement",
        "com/giphy/sdk/tracking/d$b",
        "Lcom/giphy/sdk/tracking/d$b;",
        "getRecyclerScrollListener",
        "n",
        "()Z",
        "v",
        "(Z)V",
        "trackPingbacks",
        "<init>",
        "giphy-ui-2.1.9_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x4,
        0x1
    }
.end annotation


# static fields
.field private static final n:Ljava/lang/String;

.field private static o:Ljava/lang/String;
    .annotation build Lm8/g;
    .end annotation
.end field

.field public static final p:Lcom/giphy/sdk/tracking/d$a;
    .annotation build Lm8/g;
    .end annotation
.end field


# instance fields
.field private a:Landroidx/recyclerview/widget/RecyclerView;

.field private final b:Landroid/graphics/Rect;

.field private final c:Landroid/graphics/Rect;

.field private d:Lcom/giphy/sdk/tracking/c;

.field private final e:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/giphy/sdk/tracking/e;",
            ">;"
        }
    .end annotation
.end field

.field private f:Lcom/giphy/sdk/tracking/g;

.field private g:Z

.field private h:Lcom/giphy/sdk/analytics/batching/b;
    .annotation build Lm8/g;
    .end annotation
.end field

.field private i:Ljava/lang/String;
    .annotation build Lm8/g;
    .end annotation
.end field

.field private j:Ljava/lang/String;
    .annotation build Lm8/h;
    .end annotation
.end field

.field private k:Ljava/lang/String;
    .annotation build Lm8/h;
    .end annotation
.end field

.field private final l:Lcom/giphy/sdk/tracking/d$b;

.field private m:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/giphy/sdk/tracking/d$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/giphy/sdk/tracking/d$a;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/giphy/sdk/tracking/d;->p:Lcom/giphy/sdk/tracking/d$a;

    .line 1
    const-class v0, Lcom/giphy/sdk/tracking/d;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/giphy/sdk/tracking/d;->n:Ljava/lang/String;

    const-string v0, "n/a"

    .line 2
    sput-object v0, Lcom/giphy/sdk/tracking/d;->o:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    const/4 v0, 0x0

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-direct {p0, v0, v1, v2}, Lcom/giphy/sdk/tracking/d;-><init>(ZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Z)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p1, p0, Lcom/giphy/sdk/tracking/d;->m:Z

    .line 2
    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    iput-object p1, p0, Lcom/giphy/sdk/tracking/d;->b:Landroid/graphics/Rect;

    .line 3
    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    iput-object p1, p0, Lcom/giphy/sdk/tracking/d;->c:Landroid/graphics/Rect;

    .line 4
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/giphy/sdk/tracking/d;->e:Ljava/util/List;

    .line 5
    new-instance p1, Lcom/giphy/sdk/tracking/g;

    invoke-direct {p1}, Lcom/giphy/sdk/tracking/g;-><init>()V

    iput-object p1, p0, Lcom/giphy/sdk/tracking/d;->f:Lcom/giphy/sdk/tracking/g;

    const/4 p1, 0x1

    .line 6
    iput-boolean p1, p0, Lcom/giphy/sdk/tracking/d;->g:Z

    .line 7
    sget-object p1, Le2/a;->j:Le2/a;

    invoke-virtual {p1}, Le2/a;->i()Lcom/giphy/sdk/analytics/batching/b;

    move-result-object p1

    iput-object p1, p0, Lcom/giphy/sdk/tracking/d;->h:Lcom/giphy/sdk/analytics/batching/b;

    const-string p1, ""

    .line 8
    iput-object p1, p0, Lcom/giphy/sdk/tracking/d;->i:Ljava/lang/String;

    .line 9
    new-instance p1, Lcom/giphy/sdk/tracking/d$b;

    invoke-direct {p1, p0}, Lcom/giphy/sdk/tracking/d$b;-><init>(Lcom/giphy/sdk/tracking/d;)V

    iput-object p1, p0, Lcom/giphy/sdk/tracking/d;->l:Lcom/giphy/sdk/tracking/d$b;

    return-void
.end method

.method public synthetic constructor <init>(ZILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    const/4 p3, 0x1

    and-int/2addr p2, p3

    if-eqz p2, :cond_0

    const/4 p1, 0x1

    .line 10
    :cond_0
    invoke-direct {p0, p1}, Lcom/giphy/sdk/tracking/d;-><init>(Z)V

    return-void
.end method

.method public static final synthetic a()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/giphy/sdk/tracking/d;->n:Ljava/lang/String;

    return-object v0
.end method

.method public static final synthetic b()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/giphy/sdk/tracking/d;->o:Ljava/lang/String;

    return-object v0
.end method

.method public static final synthetic c(Ljava/lang/String;)V
    .locals 0

    sput-object p0, Lcom/giphy/sdk/tracking/d;->o:Ljava/lang/String;

    return-void
.end method

.method private final i(Landroid/view/View;)F
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/giphy/sdk/tracking/d;->b:Landroid/graphics/Rect;

    invoke-virtual {p1, v0}, Landroid/view/View;->getGlobalVisibleRect(Landroid/graphics/Rect;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/giphy/sdk/tracking/d;->c:Landroid/graphics/Rect;

    invoke-virtual {p1, v0}, Landroid/view/View;->getHitRect(Landroid/graphics/Rect;)V

    .line 3
    iget-object p1, p0, Lcom/giphy/sdk/tracking/d;->b:Landroid/graphics/Rect;

    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result p1

    iget-object v0, p0, Lcom/giphy/sdk/tracking/d;->b:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v0

    mul-int p1, p1, v0

    .line 4
    iget-object v0, p0, Lcom/giphy/sdk/tracking/d;->c:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v0

    iget-object v2, p0, Lcom/giphy/sdk/tracking/d;->c:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    move-result v2

    mul-int v0, v0, v2

    int-to-float p1, p1

    int-to-float v2, v0

    div-float/2addr p1, v2

    if-gtz v0, :cond_1

    goto :goto_0

    :cond_1
    const/high16 v0, 0x3f800000    # 1.0f

    .line 5
    invoke-static {p1, v0}, Ljava/lang/Math;->min(FF)F

    move-result v1

    :goto_0
    return v1
.end method

.method private final k(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)Ljava/lang/String;
    .locals 1

    .line 1
    instance-of v0, p1, Landroidx/recyclerview/widget/LinearLayoutManager;

    if-eqz v0, :cond_0

    sget-object p1, Lcom/giphy/sdk/analytics/models/Attribute;->Companion:Lcom/giphy/sdk/analytics/models/Attribute$Companion;

    invoke-virtual {p1}, Lcom/giphy/sdk/analytics/models/Attribute$Companion;->getLAYOUT_TYPE_CAROUSEL()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    .line 2
    :cond_0
    instance-of v0, p1, Landroidx/recyclerview/widget/GridLayoutManager;

    if-eqz v0, :cond_1

    sget-object p1, Lcom/giphy/sdk/analytics/models/Attribute;->Companion:Lcom/giphy/sdk/analytics/models/Attribute$Companion;

    invoke-virtual {p1}, Lcom/giphy/sdk/analytics/models/Attribute$Companion;->getLAYOUT_TYPE_GRID()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    .line 3
    :cond_1
    instance-of p1, p1, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;

    if-eqz p1, :cond_2

    sget-object p1, Lcom/giphy/sdk/analytics/models/Attribute;->Companion:Lcom/giphy/sdk/analytics/models/Attribute$Companion;

    invoke-virtual {p1}, Lcom/giphy/sdk/analytics/models/Attribute$Companion;->getLAYOUT_TYPE_GRID()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_2
    const/4 p1, 0x0

    :goto_0
    return-object p1
.end method


# virtual methods
.method public final d(Lcom/giphy/sdk/tracking/e;)V
    .locals 1
    .param p1    # Lcom/giphy/sdk/tracking/e;
        .annotation build Lm8/g;
        .end annotation
    .end param

    const-string v0, "gifVisibilityListener"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/giphy/sdk/tracking/d;->e:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public final e(Landroidx/recyclerview/widget/RecyclerView;Lcom/giphy/sdk/tracking/c;)V
    .locals 1
    .param p1    # Landroidx/recyclerview/widget/RecyclerView;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .param p2    # Lcom/giphy/sdk/tracking/c;
        .annotation build Lm8/g;
        .end annotation
    .end param

    const-string v0, "recyclerView"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "gifTrackingCallback"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iput-object p1, p0, Lcom/giphy/sdk/tracking/d;->a:Landroidx/recyclerview/widget/RecyclerView;

    .line 2
    iput-object p2, p0, Lcom/giphy/sdk/tracking/d;->d:Lcom/giphy/sdk/tracking/c;

    .line 3
    iget-object p2, p0, Lcom/giphy/sdk/tracking/d;->l:Lcom/giphy/sdk/tracking/d$b;

    invoke-virtual {p1, p2}, Landroidx/recyclerview/widget/RecyclerView;->addOnScrollListener(Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;)V

    .line 4
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/giphy/sdk/tracking/d;->k(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/giphy/sdk/tracking/d;->j:Ljava/lang/String;

    return-void
.end method

.method public final f()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/giphy/sdk/tracking/d;->a:Landroidx/recyclerview/widget/RecyclerView;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/giphy/sdk/tracking/d;->l:Lcom/giphy/sdk/tracking/d$b;

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->removeOnScrollListener(Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;)V

    :cond_0
    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lcom/giphy/sdk/tracking/d;->a:Landroidx/recyclerview/widget/RecyclerView;

    .line 3
    iput-object v0, p0, Lcom/giphy/sdk/tracking/d;->j:Ljava/lang/String;

    return-void
.end method

.method public final g()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/giphy/sdk/tracking/d;->g:Z

    return-void
.end method

.method public final h()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/giphy/sdk/tracking/d;->g:Z

    return-void
.end method

.method public final j()Ljava/lang/String;
    .locals 1
    .annotation build Lm8/h;
    .end annotation

    iget-object v0, p0, Lcom/giphy/sdk/tracking/d;->j:Ljava/lang/String;

    return-object v0
.end method

.method public final l()Lcom/giphy/sdk/analytics/batching/b;
    .locals 1
    .annotation build Lm8/g;
    .end annotation

    iget-object v0, p0, Lcom/giphy/sdk/tracking/d;->h:Lcom/giphy/sdk/analytics/batching/b;

    return-object v0
.end method

.method public final m()Ljava/lang/String;
    .locals 1
    .annotation build Lm8/h;
    .end annotation

    iget-object v0, p0, Lcom/giphy/sdk/tracking/d;->k:Ljava/lang/String;

    return-object v0
.end method

.method public final n()Z
    .locals 1

    iget-boolean v0, p0, Lcom/giphy/sdk/tracking/d;->m:Z

    return v0
.end method

.method public final o()Ljava/lang/String;
    .locals 1
    .annotation build Lm8/g;
    .end annotation

    iget-object v0, p0, Lcom/giphy/sdk/tracking/d;->i:Ljava/lang/String;

    return-object v0
.end method

.method public final p(I)Z
    .locals 3

    iget-object v0, p0, Lcom/giphy/sdk/tracking/d;->d:Lcom/giphy/sdk/tracking/c;

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    new-instance v2, Lcom/giphy/sdk/tracking/d$c;

    invoke-direct {v2, p0}, Lcom/giphy/sdk/tracking/d$c;-><init>(Lcom/giphy/sdk/tracking/d;)V

    invoke-interface {v0, p1, v2}, Lcom/giphy/sdk/tracking/c;->a(ILkotlin/jvm/functions/Function0;)Z

    move-result p1

    if-ne p1, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public final q(Lcom/giphy/sdk/tracking/e;)V
    .locals 1
    .param p1    # Lcom/giphy/sdk/tracking/e;
        .annotation build Lm8/g;
        .end annotation
    .end param

    const-string v0, "gifVisibilityListener"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/giphy/sdk/tracking/d;->e:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public final r()V
    .locals 2

    .line 1
    iget-boolean v0, p0, Lcom/giphy/sdk/tracking/d;->g:Z

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/giphy/sdk/tracking/d;->f:Lcom/giphy/sdk/tracking/g;

    invoke-virtual {v0}, Lcom/giphy/sdk/tracking/g;->a()V

    .line 3
    iget-object v0, p0, Lcom/giphy/sdk/tracking/d;->e:Ljava/util/List;

    .line 4
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/giphy/sdk/tracking/e;

    .line 5
    invoke-interface {v1}, Lcom/giphy/sdk/tracking/e;->reset()V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public final s(Ljava/lang/String;)V
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Lm8/h;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/giphy/sdk/tracking/d;->j:Ljava/lang/String;

    return-void
.end method

.method public final t(Lcom/giphy/sdk/analytics/batching/b;)V
    .locals 1
    .param p1    # Lcom/giphy/sdk/analytics/batching/b;
        .annotation build Lm8/g;
        .end annotation
    .end param

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/giphy/sdk/tracking/d;->h:Lcom/giphy/sdk/analytics/batching/b;

    return-void
.end method

.method public final u(Ljava/lang/String;)V
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Lm8/h;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/giphy/sdk/tracking/d;->k:Ljava/lang/String;

    return-void
.end method

.method public final v(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/giphy/sdk/tracking/d;->m:Z

    return-void
.end method

.method public final w(Ljava/lang/String;)V
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Lm8/g;
        .end annotation
    .end param

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/giphy/sdk/tracking/d;->i:Ljava/lang/String;

    return-void
.end method

.method public x(Lcom/giphy/sdk/core/models/Media;Lcom/giphy/sdk/analytics/models/enums/ActionType;)V
    .locals 13
    .param p1    # Lcom/giphy/sdk/core/models/Media;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .param p2    # Lcom/giphy/sdk/analytics/models/enums/ActionType;
        .annotation build Lm8/g;
        .end annotation
    .end param

    const-string v0, "media"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "actionType"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p1}, Lcom/giphy/sdk/core/models/Media;->getAnalyticsResponsePayload()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    if-eqz v0, :cond_2

    return-void

    .line 2
    :cond_2
    sget-object v0, Lcom/giphy/sdk/analytics/models/enums/ActionType;->SEEN:Lcom/giphy/sdk/analytics/models/enums/ActionType;

    if-ne p2, v0, :cond_4

    iget-object v0, p0, Lcom/giphy/sdk/tracking/d;->f:Lcom/giphy/sdk/tracking/g;

    invoke-virtual {p1}, Lcom/giphy/sdk/core/models/Media;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1}, Lcom/giphy/sdk/tracking/f;->c(Lcom/giphy/sdk/core/models/Media;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_3

    goto :goto_2

    :cond_3
    const-string v2, ""

    :goto_2
    invoke-virtual {v0, v1, v2}, Lcom/giphy/sdk/tracking/g;->b(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 3
    :cond_4
    iget-object v1, p0, Lcom/giphy/sdk/tracking/d;->h:Lcom/giphy/sdk/analytics/batching/b;

    .line 4
    iget-object v2, p0, Lcom/giphy/sdk/tracking/d;->i:Ljava/lang/String;

    .line 5
    invoke-virtual {p1}, Lcom/giphy/sdk/core/models/Media;->getAnalyticsResponsePayload()Ljava/lang/String;

    move-result-object v3

    .line 6
    invoke-virtual {p1}, Lcom/giphy/sdk/core/models/Media;->getId()Ljava/lang/String;

    move-result-object v6

    .line 7
    invoke-static {p1}, Lcom/giphy/sdk/tracking/f;->a(Lcom/giphy/sdk/core/models/Media;)Lcom/giphy/sdk/analytics/models/enums/EventType;

    move-result-object v5

    .line 8
    invoke-virtual {p1}, Lcom/giphy/sdk/core/models/Media;->getTid()Ljava/lang/String;

    move-result-object v7

    const/4 v4, 0x0

    const/4 v9, 0x0

    .line 9
    iget-object v10, p0, Lcom/giphy/sdk/tracking/d;->j:Ljava/lang/String;

    .line 10
    invoke-static {p1}, Lcom/giphy/sdk/tracking/f;->b(Lcom/giphy/sdk/core/models/Media;)Ljava/lang/Integer;

    move-result-object p1

    if-eqz p1, :cond_5

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    move v11, p1

    goto :goto_3

    :cond_5
    const/4 p1, -0x1

    const/4 v11, -0x1

    .line 11
    :goto_3
    iget-object v12, p0, Lcom/giphy/sdk/tracking/d;->k:Ljava/lang/String;

    move-object v8, p2

    .line 12
    invoke-virtual/range {v1 .. v12}, Lcom/giphy/sdk/analytics/batching/b;->k(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/giphy/sdk/analytics/models/enums/EventType;Ljava/lang/String;Ljava/lang/String;Lcom/giphy/sdk/analytics/models/enums/ActionType;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    :cond_6
    return-void
.end method

.method public final y()V
    .locals 9

    .line 1
    iget-boolean v0, p0, Lcom/giphy/sdk/tracking/d;->g:Z

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    sget-object v0, Lcom/giphy/sdk/tracking/d;->n:Ljava/lang/String;

    const-string v1, "updateTracking"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3
    iget-object v0, p0, Lcom/giphy/sdk/tracking/d;->a:Landroidx/recyclerview/widget/RecyclerView;

    if-eqz v0, :cond_4

    const/4 v1, 0x0

    .line 4
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    :goto_0
    if-ge v1, v2, :cond_4

    .line 5
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 6
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroidx/recyclerview/widget/RecyclerView;->getChildAdapterPosition(Landroid/view/View;)I

    move-result v4

    const/4 v5, -0x1

    if-eq v4, v5, :cond_3

    .line 7
    invoke-virtual {p0, v4}, Lcom/giphy/sdk/tracking/d;->p(I)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 8
    iget-object v5, p0, Lcom/giphy/sdk/tracking/d;->d:Lcom/giphy/sdk/tracking/c;

    if-eqz v5, :cond_1

    invoke-interface {v5, v4}, Lcom/giphy/sdk/tracking/c;->c(I)Lcom/giphy/sdk/core/models/Media;

    move-result-object v5

    goto :goto_1

    :cond_1
    const/4 v5, 0x0

    :goto_1
    if-eqz v5, :cond_3

    const-string v6, "view"

    .line 9
    invoke-static {v3, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, v3}, Lcom/giphy/sdk/tracking/d;->i(Landroid/view/View;)F

    move-result v6

    .line 10
    iget-boolean v7, p0, Lcom/giphy/sdk/tracking/d;->m:Z

    if-eqz v7, :cond_2

    const/high16 v7, 0x3f800000    # 1.0f

    cmpg-float v7, v6, v7

    if-nez v7, :cond_2

    .line 11
    sget-object v7, Lcom/giphy/sdk/analytics/models/enums/ActionType;->SEEN:Lcom/giphy/sdk/analytics/models/enums/ActionType;

    invoke-virtual {p0, v5, v7}, Lcom/giphy/sdk/tracking/d;->x(Lcom/giphy/sdk/core/models/Media;Lcom/giphy/sdk/analytics/models/enums/ActionType;)V

    .line 12
    :cond_2
    iget-object v7, p0, Lcom/giphy/sdk/tracking/d;->e:Ljava/util/List;

    .line 13
    invoke-interface {v7}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_2
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_3

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/giphy/sdk/tracking/e;

    .line 14
    invoke-interface {v8, v4, v5, v3, v6}, Lcom/giphy/sdk/tracking/e;->a(ILcom/giphy/sdk/core/models/Media;Landroid/view/View;F)V

    goto :goto_2

    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_4
    return-void
.end method
