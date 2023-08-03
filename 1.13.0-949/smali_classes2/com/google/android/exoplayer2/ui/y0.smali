.class public final Lcom/google/android/exoplayer2/ui/y0;
.super Ljava/lang/Object;
.source "TrackSelectionDialogBuilder.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/exoplayer2/ui/y0$a;
    }
.end annotation


# instance fields
.field private final a:Landroid/content/Context;

.field private b:I
    .annotation build Landroidx/annotation/StyleRes;
    .end annotation
.end field

.field private final c:Ljava/lang/CharSequence;

.field private final d:Lcom/google/android/exoplayer2/trackselection/i$a;

.field private final e:I

.field private final f:Lcom/google/android/exoplayer2/ui/y0$a;

.field private g:Z

.field private h:Z

.field private i:Z

.field private j:Lcom/google/android/exoplayer2/ui/v0;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private k:Z

.field private l:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$SelectionOverride;",
            ">;"
        }
    .end annotation
.end field

.field private m:Ljava/util/Comparator;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator<",
            "Lcom/google/android/exoplayer2/Format;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/CharSequence;Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector;I)V
    .locals 1

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 9
    iput-object p1, p0, Lcom/google/android/exoplayer2/ui/y0;->a:Landroid/content/Context;

    .line 10
    iput-object p2, p0, Lcom/google/android/exoplayer2/ui/y0;->c:Ljava/lang/CharSequence;

    .line 11
    invoke-virtual {p3}, Lcom/google/android/exoplayer2/trackselection/i;->g()Lcom/google/android/exoplayer2/trackselection/i$a;

    move-result-object p1

    invoke-static {p1}, Lcom/google/android/exoplayer2/util/a;->g(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/exoplayer2/trackselection/i$a;

    iput-object p1, p0, Lcom/google/android/exoplayer2/ui/y0;->d:Lcom/google/android/exoplayer2/trackselection/i$a;

    .line 12
    iput p4, p0, Lcom/google/android/exoplayer2/ui/y0;->e:I

    .line 13
    invoke-virtual {p1, p4}, Lcom/google/android/exoplayer2/trackselection/i$a;->g(I)Lcom/google/android/exoplayer2/source/TrackGroupArray;

    move-result-object p1

    .line 14
    invoke-virtual {p3}, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector;->v()Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$Parameters;

    move-result-object p2

    .line 15
    invoke-virtual {p2, p4}, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$Parameters;->getRendererDisabled(I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/android/exoplayer2/ui/y0;->k:Z

    .line 16
    invoke-virtual {p2, p4, p1}, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$Parameters;->getSelectionOverride(ILcom/google/android/exoplayer2/source/TrackGroupArray;)Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$SelectionOverride;

    move-result-object v0

    if-nez v0, :cond_0

    .line 17
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    goto :goto_0

    :cond_0
    invoke-static {v0}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    :goto_0
    iput-object v0, p0, Lcom/google/android/exoplayer2/ui/y0;->l:Ljava/util/List;

    .line 18
    new-instance v0, Lcom/google/android/exoplayer2/ui/x0;

    invoke-direct {v0, p3, p2, p4, p1}, Lcom/google/android/exoplayer2/ui/x0;-><init>(Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector;Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$Parameters;ILcom/google/android/exoplayer2/source/TrackGroupArray;)V

    iput-object v0, p0, Lcom/google/android/exoplayer2/ui/y0;->f:Lcom/google/android/exoplayer2/ui/y0$a;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/CharSequence;Lcom/google/android/exoplayer2/trackselection/i$a;ILcom/google/android/exoplayer2/ui/y0$a;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/google/android/exoplayer2/ui/y0;->a:Landroid/content/Context;

    .line 3
    iput-object p2, p0, Lcom/google/android/exoplayer2/ui/y0;->c:Ljava/lang/CharSequence;

    .line 4
    iput-object p3, p0, Lcom/google/android/exoplayer2/ui/y0;->d:Lcom/google/android/exoplayer2/trackselection/i$a;

    .line 5
    iput p4, p0, Lcom/google/android/exoplayer2/ui/y0;->e:I

    .line 6
    iput-object p5, p0, Lcom/google/android/exoplayer2/ui/y0;->f:Lcom/google/android/exoplayer2/ui/y0$a;

    .line 7
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/exoplayer2/ui/y0;->l:Ljava/util/List;

    return-void
.end method

.method public static synthetic a(Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector;Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$Parameters;ILcom/google/android/exoplayer2/source/TrackGroupArray;ZLjava/util/List;)V
    .locals 0

    invoke-static/range {p0 .. p5}, Lcom/google/android/exoplayer2/ui/y0;->f(Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector;Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$Parameters;ILcom/google/android/exoplayer2/source/TrackGroupArray;ZLjava/util/List;)V

    return-void
.end method

.method public static synthetic b(Lcom/google/android/exoplayer2/ui/y0;Lcom/google/android/exoplayer2/ui/TrackSelectionView;Landroid/content/DialogInterface;I)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/google/android/exoplayer2/ui/y0;->g(Lcom/google/android/exoplayer2/ui/TrackSelectionView;Landroid/content/DialogInterface;I)V

    return-void
.end method

.method private d()Landroid/app/Dialog;
    .locals 12
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    const/4 v0, 0x0

    .line 1
    :try_start_0
    const-class v1, Landroidx/appcompat/app/AlertDialog$Builder;

    const/4 v2, 0x2

    new-array v3, v2, [Ljava/lang/Class;

    .line 2
    const-class v4, Landroid/content/Context;

    const/4 v5, 0x0

    aput-object v4, v3, v5

    sget-object v4, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/4 v6, 0x1

    aput-object v4, v3, v6

    invoke-virtual {v1, v3}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v3

    new-array v7, v2, [Ljava/lang/Object;

    .line 3
    iget-object v8, p0, Lcom/google/android/exoplayer2/ui/y0;->a:Landroid/content/Context;

    aput-object v8, v7, v5

    iget v8, p0, Lcom/google/android/exoplayer2/ui/y0;->b:I

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v7, v6

    invoke-virtual {v3, v7}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    const-string v7, "getContext"

    new-array v8, v5, [Ljava/lang/Class;

    .line 4
    invoke-virtual {v1, v7, v8}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v7

    new-array v8, v5, [Ljava/lang/Object;

    invoke-virtual {v7, v3, v8}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/content/Context;

    .line 5
    invoke-static {v7}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v7

    .line 6
    sget v8, Lcom/google/android/exoplayer2/ui/q$i;->l:I

    .line 7
    invoke-virtual {v7, v8, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v7

    .line 8
    invoke-direct {p0, v7}, Lcom/google/android/exoplayer2/ui/y0;->q(Landroid/view/View;)Landroid/content/DialogInterface$OnClickListener;

    move-result-object v8

    const-string v9, "setTitle"

    new-array v10, v6, [Ljava/lang/Class;

    .line 9
    const-class v11, Ljava/lang/CharSequence;

    aput-object v11, v10, v5

    invoke-virtual {v1, v9, v10}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v9

    new-array v10, v6, [Ljava/lang/Object;

    iget-object v11, p0, Lcom/google/android/exoplayer2/ui/y0;->c:Ljava/lang/CharSequence;

    aput-object v11, v10, v5

    invoke-virtual {v9, v3, v10}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    const-string v9, "setView"

    new-array v10, v6, [Ljava/lang/Class;

    .line 10
    const-class v11, Landroid/view/View;

    aput-object v11, v10, v5

    invoke-virtual {v1, v9, v10}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v9

    new-array v10, v6, [Ljava/lang/Object;

    aput-object v7, v10, v5

    invoke-virtual {v9, v3, v10}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    const-string v7, "setPositiveButton"

    new-array v9, v2, [Ljava/lang/Class;

    aput-object v4, v9, v5

    .line 11
    const-class v10, Landroid/content/DialogInterface$OnClickListener;

    aput-object v10, v9, v6

    .line 12
    invoke-virtual {v1, v7, v9}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v7

    new-array v9, v2, [Ljava/lang/Object;

    const v10, 0x104000a

    .line 13
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v9, v5

    aput-object v8, v9, v6

    invoke-virtual {v7, v3, v9}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    const-string v7, "setNegativeButton"

    new-array v8, v2, [Ljava/lang/Class;

    aput-object v4, v8, v5

    .line 14
    const-class v4, Landroid/content/DialogInterface$OnClickListener;

    aput-object v4, v8, v6

    .line 15
    invoke-virtual {v1, v7, v8}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v4

    new-array v2, v2, [Ljava/lang/Object;

    const/high16 v7, 0x1040000

    .line 16
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v2, v5

    aput-object v0, v2, v6

    invoke-virtual {v4, v3, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "create"

    new-array v4, v5, [Ljava/lang/Class;

    .line 17
    invoke-virtual {v1, v2, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    new-array v2, v5, [Ljava/lang/Object;

    invoke-virtual {v1, v3, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/Dialog;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    :catch_0
    move-exception v0

    .line 18
    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    :catch_1
    return-object v0
.end method

.method private e()Landroid/app/Dialog;
    .locals 5

    .line 1
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/google/android/exoplayer2/ui/y0;->a:Landroid/content/Context;

    iget v2, p0, Lcom/google/android/exoplayer2/ui/y0;->b:I

    invoke-direct {v0, v1, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;I)V

    .line 2
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    .line 3
    sget v2, Lcom/google/android/exoplayer2/ui/q$i;->l:I

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 4
    invoke-direct {p0, v1}, Lcom/google/android/exoplayer2/ui/y0;->q(Landroid/view/View;)Landroid/content/DialogInterface$OnClickListener;

    move-result-object v2

    .line 5
    iget-object v4, p0, Lcom/google/android/exoplayer2/ui/y0;->c:Ljava/lang/CharSequence;

    .line 6
    invoke-virtual {v0, v4}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 7
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x104000a

    .line 8
    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const/high16 v1, 0x1040000

    .line 9
    invoke-virtual {v0, v1, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 10
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    return-object v0
.end method

.method private static synthetic f(Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector;Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$Parameters;ILcom/google/android/exoplayer2/source/TrackGroupArray;ZLjava/util/List;)V
    .locals 1

    .line 1
    invoke-interface {p5}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p5, 0x0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    invoke-interface {p5, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p5

    check-cast p5, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$SelectionOverride;

    .line 2
    :goto_0
    invoke-static {p1, p2, p3, p4, p5}, Lcom/google/android/exoplayer2/trackselection/n;->c(Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$Parameters;ILcom/google/android/exoplayer2/source/TrackGroupArray;ZLcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$SelectionOverride;)Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$Parameters;

    move-result-object p1

    .line 3
    invoke-virtual {p0, p1}, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector;->M(Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$Parameters;)V

    return-void
.end method

.method private synthetic g(Lcom/google/android/exoplayer2/ui/TrackSelectionView;Landroid/content/DialogInterface;I)V
    .locals 0

    iget-object p2, p0, Lcom/google/android/exoplayer2/ui/y0;->f:Lcom/google/android/exoplayer2/ui/y0$a;

    invoke-virtual {p1}, Lcom/google/android/exoplayer2/ui/TrackSelectionView;->getIsDisabled()Z

    move-result p3

    invoke-virtual {p1}, Lcom/google/android/exoplayer2/ui/TrackSelectionView;->getOverrides()Ljava/util/List;

    move-result-object p1

    invoke-interface {p2, p3, p1}, Lcom/google/android/exoplayer2/ui/y0$a;->a(ZLjava/util/List;)V

    return-void
.end method

.method private q(Landroid/view/View;)Landroid/content/DialogInterface$OnClickListener;
    .locals 7

    .line 1
    sget v0, Lcom/google/android/exoplayer2/ui/q$g;->R0:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/google/android/exoplayer2/ui/TrackSelectionView;

    .line 2
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/ui/y0;->h:Z

    invoke-virtual {p1, v0}, Lcom/google/android/exoplayer2/ui/TrackSelectionView;->setAllowMultipleOverrides(Z)V

    .line 3
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/ui/y0;->g:Z

    invoke-virtual {p1, v0}, Lcom/google/android/exoplayer2/ui/TrackSelectionView;->setAllowAdaptiveSelections(Z)V

    .line 4
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/ui/y0;->i:Z

    invoke-virtual {p1, v0}, Lcom/google/android/exoplayer2/ui/TrackSelectionView;->setShowDisableOption(Z)V

    .line 5
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/y0;->j:Lcom/google/android/exoplayer2/ui/v0;

    if-eqz v0, :cond_0

    .line 6
    invoke-virtual {p1, v0}, Lcom/google/android/exoplayer2/ui/TrackSelectionView;->setTrackNameProvider(Lcom/google/android/exoplayer2/ui/v0;)V

    .line 7
    :cond_0
    iget-object v1, p0, Lcom/google/android/exoplayer2/ui/y0;->d:Lcom/google/android/exoplayer2/trackselection/i$a;

    iget v2, p0, Lcom/google/android/exoplayer2/ui/y0;->e:I

    iget-boolean v3, p0, Lcom/google/android/exoplayer2/ui/y0;->k:Z

    iget-object v4, p0, Lcom/google/android/exoplayer2/ui/y0;->l:Ljava/util/List;

    iget-object v5, p0, Lcom/google/android/exoplayer2/ui/y0;->m:Ljava/util/Comparator;

    const/4 v6, 0x0

    move-object v0, p1

    invoke-virtual/range {v0 .. v6}, Lcom/google/android/exoplayer2/ui/TrackSelectionView;->e(Lcom/google/android/exoplayer2/trackselection/i$a;IZLjava/util/List;Ljava/util/Comparator;Lcom/google/android/exoplayer2/ui/TrackSelectionView$d;)V

    .line 8
    new-instance v0, Lcom/google/android/exoplayer2/ui/w0;

    invoke-direct {v0, p0, p1}, Lcom/google/android/exoplayer2/ui/w0;-><init>(Lcom/google/android/exoplayer2/ui/y0;Lcom/google/android/exoplayer2/ui/TrackSelectionView;)V

    return-object v0
.end method


# virtual methods
.method public c()Landroid/app/Dialog;
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/google/android/exoplayer2/ui/y0;->d()Landroid/app/Dialog;

    move-result-object v0

    if-nez v0, :cond_0

    .line 2
    invoke-direct {p0}, Lcom/google/android/exoplayer2/ui/y0;->e()Landroid/app/Dialog;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public h(Z)Lcom/google/android/exoplayer2/ui/y0;
    .locals 0

    iput-boolean p1, p0, Lcom/google/android/exoplayer2/ui/y0;->g:Z

    return-object p0
.end method

.method public i(Z)Lcom/google/android/exoplayer2/ui/y0;
    .locals 0

    iput-boolean p1, p0, Lcom/google/android/exoplayer2/ui/y0;->h:Z

    return-object p0
.end method

.method public j(Z)Lcom/google/android/exoplayer2/ui/y0;
    .locals 0

    iput-boolean p1, p0, Lcom/google/android/exoplayer2/ui/y0;->k:Z

    return-object p0
.end method

.method public k(Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$SelectionOverride;)Lcom/google/android/exoplayer2/ui/y0;
    .locals 0
    .param p1    # Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$SelectionOverride;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    if-nez p1, :cond_0

    .line 1
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p1

    goto :goto_0

    :cond_0
    invoke-static {p1}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    .line 2
    :goto_0
    invoke-virtual {p0, p1}, Lcom/google/android/exoplayer2/ui/y0;->l(Ljava/util/List;)Lcom/google/android/exoplayer2/ui/y0;

    move-result-object p1

    return-object p1
.end method

.method public l(Ljava/util/List;)Lcom/google/android/exoplayer2/ui/y0;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$SelectionOverride;",
            ">;)",
            "Lcom/google/android/exoplayer2/ui/y0;"
        }
    .end annotation

    iput-object p1, p0, Lcom/google/android/exoplayer2/ui/y0;->l:Ljava/util/List;

    return-object p0
.end method

.method public m(Z)Lcom/google/android/exoplayer2/ui/y0;
    .locals 0

    iput-boolean p1, p0, Lcom/google/android/exoplayer2/ui/y0;->i:Z

    return-object p0
.end method

.method public n(I)Lcom/google/android/exoplayer2/ui/y0;
    .locals 0
    .param p1    # I
        .annotation build Landroidx/annotation/StyleRes;
        .end annotation
    .end param

    iput p1, p0, Lcom/google/android/exoplayer2/ui/y0;->b:I

    return-object p0
.end method

.method public o(Ljava/util/Comparator;)V
    .locals 0
    .param p1    # Ljava/util/Comparator;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Comparator<",
            "Lcom/google/android/exoplayer2/Format;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/google/android/exoplayer2/ui/y0;->m:Ljava/util/Comparator;

    return-void
.end method

.method public p(Lcom/google/android/exoplayer2/ui/v0;)Lcom/google/android/exoplayer2/ui/y0;
    .locals 0
    .param p1    # Lcom/google/android/exoplayer2/ui/v0;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/google/android/exoplayer2/ui/y0;->j:Lcom/google/android/exoplayer2/ui/v0;

    return-object p0
.end method
