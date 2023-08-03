.class public final Lf4/l;
.super Ljava/lang/Object;
.source "FragmentChatListBinding.java"

# interfaces
.implements Landroidx/viewbinding/ViewBinding;


# instance fields
.field private final a:Landroidx/drawerlayout/widget/DrawerLayout;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final b:Lcom/im/freechat/ui/widget/ChatDetailsAudioPlayLayout;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final c:Lcom/bigkoo/convenientbanner/ConvenientBanner;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final d:Landroidx/recyclerview/widget/RecyclerView;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final e:Landroidx/drawerlayout/widget/DrawerLayout;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final f:Lcom/google/android/material/floatingactionbutton/FloatingActionButton;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final g:Lcom/google/android/material/navigation/NavigationView;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final h:Landroidx/core/widget/ContentLoadingProgressBar;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final i:Landroidx/appcompat/widget/SearchView;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final j:Landroid/widget/ProgressBar;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final k:Landroidx/appcompat/widget/Toolbar;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field


# direct methods
.method private constructor <init>(Landroidx/drawerlayout/widget/DrawerLayout;Lcom/im/freechat/ui/widget/ChatDetailsAudioPlayLayout;Lcom/bigkoo/convenientbanner/ConvenientBanner;Landroidx/recyclerview/widget/RecyclerView;Landroidx/drawerlayout/widget/DrawerLayout;Lcom/google/android/material/floatingactionbutton/FloatingActionButton;Lcom/google/android/material/navigation/NavigationView;Landroidx/core/widget/ContentLoadingProgressBar;Landroidx/appcompat/widget/SearchView;Landroid/widget/ProgressBar;Landroidx/appcompat/widget/Toolbar;)V
    .locals 0
    .param p1    # Landroidx/drawerlayout/widget/DrawerLayout;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/im/freechat/ui/widget/ChatDetailsAudioPlayLayout;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Lcom/bigkoo/convenientbanner/ConvenientBanner;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p4    # Landroidx/recyclerview/widget/RecyclerView;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p5    # Landroidx/drawerlayout/widget/DrawerLayout;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p6    # Lcom/google/android/material/floatingactionbutton/FloatingActionButton;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p7    # Lcom/google/android/material/navigation/NavigationView;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p8    # Landroidx/core/widget/ContentLoadingProgressBar;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p9    # Landroidx/appcompat/widget/SearchView;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p10    # Landroid/widget/ProgressBar;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p11    # Landroidx/appcompat/widget/Toolbar;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lf4/l;->a:Landroidx/drawerlayout/widget/DrawerLayout;

    .line 3
    iput-object p2, p0, Lf4/l;->b:Lcom/im/freechat/ui/widget/ChatDetailsAudioPlayLayout;

    .line 4
    iput-object p3, p0, Lf4/l;->c:Lcom/bigkoo/convenientbanner/ConvenientBanner;

    .line 5
    iput-object p4, p0, Lf4/l;->d:Landroidx/recyclerview/widget/RecyclerView;

    .line 6
    iput-object p5, p0, Lf4/l;->e:Landroidx/drawerlayout/widget/DrawerLayout;

    .line 7
    iput-object p6, p0, Lf4/l;->f:Lcom/google/android/material/floatingactionbutton/FloatingActionButton;

    .line 8
    iput-object p7, p0, Lf4/l;->g:Lcom/google/android/material/navigation/NavigationView;

    .line 9
    iput-object p8, p0, Lf4/l;->h:Landroidx/core/widget/ContentLoadingProgressBar;

    .line 10
    iput-object p9, p0, Lf4/l;->i:Landroidx/appcompat/widget/SearchView;

    .line 11
    iput-object p10, p0, Lf4/l;->j:Landroid/widget/ProgressBar;

    .line 12
    iput-object p11, p0, Lf4/l;->k:Landroidx/appcompat/widget/Toolbar;

    return-void
.end method

.method public static a(Landroid/view/View;)Lf4/l;
    .locals 14
    .param p0    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    sget v0, Lb4/b$j;->p1:I

    .line 2
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v4, v1

    check-cast v4, Lcom/im/freechat/ui/widget/ChatDetailsAudioPlayLayout;

    if-eqz v4, :cond_0

    .line 3
    sget v0, Lb4/b$j;->D1:I

    .line 4
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v5, v1

    check-cast v5, Lcom/bigkoo/convenientbanner/ConvenientBanner;

    if-eqz v5, :cond_0

    .line 5
    sget v0, Lb4/b$j;->Z2:I

    .line 6
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v6, v1

    check-cast v6, Landroidx/recyclerview/widget/RecyclerView;

    if-eqz v6, :cond_0

    .line 7
    move-object v7, p0

    check-cast v7, Landroidx/drawerlayout/widget/DrawerLayout;

    .line 8
    sget v0, Lb4/b$j;->homeFab:I

    .line 9
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v8, v1

    check-cast v8, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;

    if-eqz v8, :cond_0

    .line 10
    sget v0, Lb4/b$j;->navigationView:I

    .line 11
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v9, v1

    check-cast v9, Lcom/google/android/material/navigation/NavigationView;

    if-eqz v9, :cond_0

    .line 12
    sget v0, Lb4/b$j;->progressSmall:I

    .line 13
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v10, v1

    check-cast v10, Landroidx/core/widget/ContentLoadingProgressBar;

    if-eqz v10, :cond_0

    .line 14
    sget v0, Lb4/b$j;->searchView:I

    .line 15
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v11, v1

    check-cast v11, Landroidx/appcompat/widget/SearchView;

    if-eqz v11, :cond_0

    .line 16
    sget v0, Lb4/b$j;->syncProgress:I

    .line 17
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v12, v1

    check-cast v12, Landroid/widget/ProgressBar;

    if-eqz v12, :cond_0

    .line 18
    sget v0, Lb4/b$j;->Hf:I

    .line 19
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v13, v1

    check-cast v13, Landroidx/appcompat/widget/Toolbar;

    if-eqz v13, :cond_0

    .line 20
    new-instance p0, Lf4/l;

    move-object v2, p0

    move-object v3, v7

    invoke-direct/range {v2 .. v13}, Lf4/l;-><init>(Landroidx/drawerlayout/widget/DrawerLayout;Lcom/im/freechat/ui/widget/ChatDetailsAudioPlayLayout;Lcom/bigkoo/convenientbanner/ConvenientBanner;Landroidx/recyclerview/widget/RecyclerView;Landroidx/drawerlayout/widget/DrawerLayout;Lcom/google/android/material/floatingactionbutton/FloatingActionButton;Lcom/google/android/material/navigation/NavigationView;Landroidx/core/widget/ContentLoadingProgressBar;Landroidx/appcompat/widget/SearchView;Landroid/widget/ProgressBar;Landroidx/appcompat/widget/Toolbar;)V

    return-object p0

    .line 21
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    move-result-object p0

    .line 22
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Missing required view with ID: "

    invoke-virtual {v1, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static c(Landroid/view/LayoutInflater;)Lf4/l;
    .locals 2
    .param p0    # Landroid/view/LayoutInflater;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lf4/l;->d(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lf4/l;

    move-result-object p0

    return-object p0
.end method

.method public static d(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lf4/l;
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

    .line 1
    sget v0, Lb4/b$m;->B0:I

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p0

    if-eqz p2, :cond_0

    .line 2
    invoke-virtual {p1, p0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 3
    :cond_0
    invoke-static {p0}, Lf4/l;->a(Landroid/view/View;)Lf4/l;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public b()Landroidx/drawerlayout/widget/DrawerLayout;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    iget-object v0, p0, Lf4/l;->a:Landroidx/drawerlayout/widget/DrawerLayout;

    return-object v0
.end method

.method public bridge synthetic getRoot()Landroid/view/View;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    invoke-virtual {p0}, Lf4/l;->b()Landroidx/drawerlayout/widget/DrawerLayout;

    move-result-object v0

    return-object v0
.end method
