.class public final Le5/q4;
.super Ljava/lang/Object;
.source "RoomLiveLocalGiftListBinding.java"

# interfaces
.implements Landroidx/viewbinding/ViewBinding;


# instance fields
.field private final a:Landroid/widget/LinearLayout;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final b:Lcom/qennnsad/aknkaksd/presentation/ui/room/gift/LocalAnimPlayerView;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final c:Lcom/qennnsad/aknkaksd/presentation/ui/room/gift/LocalAnimPlayerView;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final d:Landroid/widget/LinearLayout;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field


# direct methods
.method private constructor <init>(Landroid/widget/LinearLayout;Lcom/qennnsad/aknkaksd/presentation/ui/room/gift/LocalAnimPlayerView;Lcom/qennnsad/aknkaksd/presentation/ui/room/gift/LocalAnimPlayerView;Landroid/widget/LinearLayout;)V
    .locals 0
    .param p1    # Landroid/widget/LinearLayout;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/qennnsad/aknkaksd/presentation/ui/room/gift/LocalAnimPlayerView;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Lcom/qennnsad/aknkaksd/presentation/ui/room/gift/LocalAnimPlayerView;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p4    # Landroid/widget/LinearLayout;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Le5/q4;->a:Landroid/widget/LinearLayout;

    .line 3
    iput-object p2, p0, Le5/q4;->b:Lcom/qennnsad/aknkaksd/presentation/ui/room/gift/LocalAnimPlayerView;

    .line 4
    iput-object p3, p0, Le5/q4;->c:Lcom/qennnsad/aknkaksd/presentation/ui/room/gift/LocalAnimPlayerView;

    .line 5
    iput-object p4, p0, Le5/q4;->d:Landroid/widget/LinearLayout;

    return-void
.end method

.method public static a(Landroid/view/View;)Le5/q4;
    .locals 3
    .param p0    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    const v0, 0x7f0a043e

    .line 1
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/qennnsad/aknkaksd/presentation/ui/room/gift/LocalAnimPlayerView;

    if-eqz v1, :cond_0

    const v0, 0x7f0a043f

    .line 2
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/qennnsad/aknkaksd/presentation/ui/room/gift/LocalAnimPlayerView;

    if-eqz v2, :cond_0

    .line 3
    check-cast p0, Landroid/widget/LinearLayout;

    .line 4
    new-instance v0, Le5/q4;

    invoke-direct {v0, p0, v1, v2, p0}, Le5/q4;-><init>(Landroid/widget/LinearLayout;Lcom/qennnsad/aknkaksd/presentation/ui/room/gift/LocalAnimPlayerView;Lcom/qennnsad/aknkaksd/presentation/ui/room/gift/LocalAnimPlayerView;Landroid/widget/LinearLayout;)V

    return-object v0

    .line 5
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    move-result-object p0

    .line 6
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Missing required view with ID: "

    invoke-virtual {v1, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static c(Landroid/view/LayoutInflater;)Le5/q4;
    .locals 2
    .param p0    # Landroid/view/LayoutInflater;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Le5/q4;->d(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Le5/q4;

    move-result-object p0

    return-object p0
.end method

.method public static d(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Le5/q4;
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

    const v0, 0x7f0d018e

    const/4 v1, 0x0

    .line 1
    invoke-virtual {p0, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p0

    if-eqz p2, :cond_0

    .line 2
    invoke-virtual {p1, p0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 3
    :cond_0
    invoke-static {p0}, Le5/q4;->a(Landroid/view/View;)Le5/q4;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public b()Landroid/widget/LinearLayout;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    iget-object v0, p0, Le5/q4;->a:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method public bridge synthetic getRoot()Landroid/view/View;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    invoke-virtual {p0}, Le5/q4;->b()Landroid/widget/LinearLayout;

    move-result-object v0

    return-object v0
.end method
