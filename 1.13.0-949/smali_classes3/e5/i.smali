.class public final Le5/i;
.super Ljava/lang/Object;
.source "ActivityPlayerBinding.java"

# interfaces
.implements Landroidx/viewbinding/ViewBinding;


# instance fields
.field private final a:Landroid/widget/RelativeLayout;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final b:Lmaster/flame/danmaku/ui/widget/DanmakuView;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final c:Lmaster/flame/danmaku/ui/widget/DanmakuView;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final d:Landroid/view/View;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final e:Le5/f3;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final f:Landroid/widget/RelativeLayout;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final g:Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/view/MySwipeView;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final h:Landroid/view/View;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final i:Lcom/qennnsad/aknkaksd/util/ScrollableLayout;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final j:Landroid/widget/ImageView;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field


# direct methods
.method private constructor <init>(Landroid/widget/RelativeLayout;Lmaster/flame/danmaku/ui/widget/DanmakuView;Lmaster/flame/danmaku/ui/widget/DanmakuView;Landroid/view/View;Le5/f3;Landroid/widget/RelativeLayout;Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/view/MySwipeView;Landroid/view/View;Lcom/qennnsad/aknkaksd/util/ScrollableLayout;Landroid/widget/ImageView;)V
    .locals 0
    .param p1    # Landroid/widget/RelativeLayout;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lmaster/flame/danmaku/ui/widget/DanmakuView;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Lmaster/flame/danmaku/ui/widget/DanmakuView;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p4    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p5    # Le5/f3;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p6    # Landroid/widget/RelativeLayout;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p7    # Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/view/MySwipeView;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p8    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p9    # Lcom/qennnsad/aknkaksd/util/ScrollableLayout;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p10    # Landroid/widget/ImageView;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Le5/i;->a:Landroid/widget/RelativeLayout;

    .line 3
    iput-object p2, p0, Le5/i;->b:Lmaster/flame/danmaku/ui/widget/DanmakuView;

    .line 4
    iput-object p3, p0, Le5/i;->c:Lmaster/flame/danmaku/ui/widget/DanmakuView;

    .line 5
    iput-object p4, p0, Le5/i;->d:Landroid/view/View;

    .line 6
    iput-object p5, p0, Le5/i;->e:Le5/f3;

    .line 7
    iput-object p6, p0, Le5/i;->f:Landroid/widget/RelativeLayout;

    .line 8
    iput-object p7, p0, Le5/i;->g:Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/view/MySwipeView;

    .line 9
    iput-object p8, p0, Le5/i;->h:Landroid/view/View;

    .line 10
    iput-object p9, p0, Le5/i;->i:Lcom/qennnsad/aknkaksd/util/ScrollableLayout;

    .line 11
    iput-object p10, p0, Le5/i;->j:Landroid/widget/ImageView;

    return-void
.end method

.method public static a(Landroid/view/View;)Le5/i;
    .locals 13
    .param p0    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    const v0, 0x7f0a049b

    .line 1
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v4, v1

    check-cast v4, Lmaster/flame/danmaku/ui/widget/DanmakuView;

    if-eqz v4, :cond_0

    const v0, 0x7f0a049d

    .line 2
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v5, v1

    check-cast v5, Lmaster/flame/danmaku/ui/widget/DanmakuView;

    if-eqz v5, :cond_0

    const v0, 0x7f0a04c9

    .line 3
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v6

    if-eqz v6, :cond_0

    const v0, 0x7f0a050c

    .line 4
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 5
    invoke-static {v1}, Le5/f3;->a(Landroid/view/View;)Le5/f3;

    move-result-object v7

    .line 6
    move-object v8, p0

    check-cast v8, Landroid/widget/RelativeLayout;

    const v0, 0x7f0a0510

    .line 7
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v9, v1

    check-cast v9, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/view/MySwipeView;

    if-eqz v9, :cond_0

    const v0, 0x7f0a051c

    .line 8
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v10

    if-eqz v10, :cond_0

    const v0, 0x7f0a05f3

    .line 9
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v11, v1

    check-cast v11, Lcom/qennnsad/aknkaksd/util/ScrollableLayout;

    if-eqz v11, :cond_0

    const v0, 0x7f0a0683

    .line 10
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v12, v1

    check-cast v12, Landroid/widget/ImageView;

    if-eqz v12, :cond_0

    .line 11
    new-instance p0, Le5/i;

    move-object v2, p0

    move-object v3, v8

    invoke-direct/range {v2 .. v12}, Le5/i;-><init>(Landroid/widget/RelativeLayout;Lmaster/flame/danmaku/ui/widget/DanmakuView;Lmaster/flame/danmaku/ui/widget/DanmakuView;Landroid/view/View;Le5/f3;Landroid/widget/RelativeLayout;Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/view/MySwipeView;Landroid/view/View;Lcom/qennnsad/aknkaksd/util/ScrollableLayout;Landroid/widget/ImageView;)V

    return-object p0

    .line 12
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    move-result-object p0

    .line 13
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Missing required view with ID: "

    invoke-virtual {v1, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static c(Landroid/view/LayoutInflater;)Le5/i;
    .locals 2
    .param p0    # Landroid/view/LayoutInflater;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Le5/i;->d(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Le5/i;

    move-result-object p0

    return-object p0
.end method

.method public static d(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Le5/i;
    .locals 2
    .param p0    # Landroid/view/LayoutInflater;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p1    # Landroid/view/ViewGroup;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    const v0, 0x7f0d002d

    const/4 v1, 0x0

    .line 1
    invoke-virtual {p0, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p0

    if-eqz p2, :cond_0

    .line 2
    invoke-virtual {p1, p0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 3
    :cond_0
    invoke-static {p0}, Le5/i;->a(Landroid/view/View;)Le5/i;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public b()Landroid/widget/RelativeLayout;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    iget-object v0, p0, Le5/i;->a:Landroid/widget/RelativeLayout;

    return-object v0
.end method

.method public bridge synthetic getRoot()Landroid/view/View;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    invoke-virtual {p0}, Le5/i;->b()Landroid/widget/RelativeLayout;

    move-result-object v0

    return-object v0
.end method
