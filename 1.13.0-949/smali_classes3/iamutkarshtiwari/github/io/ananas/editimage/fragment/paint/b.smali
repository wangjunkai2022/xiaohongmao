.class public Liamutkarshtiwari/github/io/ananas/editimage/fragment/paint/b;
.super Lcom/google/android/material/bottomsheet/BottomSheetDialogFragment;
.source "BrushConfigDialog.java"

# interfaces
.implements Landroid/widget/SeekBar$OnSeekBarChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Liamutkarshtiwari/github/io/ananas/editimage/fragment/paint/b$a;
    }
.end annotation


# instance fields
.field private a:Liamutkarshtiwari/github/io/ananas/editimage/fragment/paint/b$a;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/material/bottomsheet/BottomSheetDialogFragment;-><init>()V

    return-void
.end method

.method public static synthetic U(Liamutkarshtiwari/github/io/ananas/editimage/fragment/paint/b;I)V
    .locals 0

    invoke-direct {p0, p1}, Liamutkarshtiwari/github/io/ananas/editimage/fragment/paint/b;->V(I)V

    return-void
.end method

.method private synthetic V(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Liamutkarshtiwari/github/io/ananas/editimage/fragment/paint/b;->a:Liamutkarshtiwari/github/io/ananas/editimage/fragment/paint/b$a;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {p0}, Lcom/google/android/material/bottomsheet/BottomSheetDialogFragment;->dismiss()V

    .line 3
    iget-object v0, p0, Liamutkarshtiwari/github/io/ananas/editimage/fragment/paint/b;->a:Liamutkarshtiwari/github/io/ananas/editimage/fragment/paint/b$a;

    invoke-interface {v0, p1}, Liamutkarshtiwari/github/io/ananas/editimage/fragment/paint/b$a;->t(I)V

    :cond_0
    return-void
.end method


# virtual methods
.method W(Liamutkarshtiwari/github/io/ananas/editimage/fragment/paint/b$a;)V
    .locals 0

    iput-object p1, p0, Liamutkarshtiwari/github/io/ananas/editimage/fragment/paint/b;->a:Liamutkarshtiwari/github/io/ananas/editimage/fragment/paint/b$a;

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 0

    invoke-super {p0, p1}, Landroidx/fragment/app/DialogFragment;->onCreate(Landroid/os/Bundle;)V

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1

    sget p3, Lf7/b$l;->a0:I

    const/4 v0, 0x0

    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method public onProgressChanged(Landroid/widget/SeekBar;IZ)V
    .locals 0

    .line 1
    invoke-virtual {p1}, Landroid/widget/SeekBar;->getId()I

    move-result p1

    .line 2
    sget p3, Lf7/b$i;->H6:I

    if-ne p1, p3, :cond_0

    .line 3
    iget-object p1, p0, Liamutkarshtiwari/github/io/ananas/editimage/fragment/paint/b;->a:Liamutkarshtiwari/github/io/ananas/editimage/fragment/paint/b$a;

    if-eqz p1, :cond_1

    .line 4
    invoke-interface {p1, p2}, Liamutkarshtiwari/github/io/ananas/editimage/fragment/paint/b$a;->I(I)V

    goto :goto_0

    .line 5
    :cond_0
    sget p3, Lf7/b$i;->I6:I

    if-ne p1, p3, :cond_1

    .line 6
    iget-object p1, p0, Liamutkarshtiwari/github/io/ananas/editimage/fragment/paint/b;->a:Liamutkarshtiwari/github/io/ananas/editimage/fragment/paint/b$a;

    if-eqz p1, :cond_1

    .line 7
    invoke-interface {p1, p2}, Liamutkarshtiwari/github/io/ananas/editimage/fragment/paint/b$a;->d(I)V

    :cond_1
    :goto_0
    return-void
.end method

.method public onStartTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 0

    return-void
.end method

.method public onStopTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 0

    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 2
    .param p1    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/os/Bundle;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    invoke-super {p0, p1, p2}, Landroidx/fragment/app/Fragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 2
    sget p2, Lf7/b$i;->C6:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroidx/recyclerview/widget/RecyclerView;

    .line 3
    sget v0, Lf7/b$i;->H6:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/SeekBar;

    .line 4
    sget v1, Lf7/b$i;->I6:I

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/SeekBar;

    .line 5
    invoke-virtual {v0, p0}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    .line 6
    invoke-virtual {p1, p0}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    .line 7
    new-instance p1, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    const/4 v1, 0x0

    invoke-direct {p1, v0, v1, v1}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;IZ)V

    .line 8
    invoke-virtual {p2, p1}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    const/4 p1, 0x1

    .line 9
    invoke-virtual {p2, p1}, Landroidx/recyclerview/widget/RecyclerView;->setHasFixedSize(Z)V

    .line 10
    new-instance p1, Liamutkarshtiwari/github/io/ananas/editimage/adapter/a;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-direct {p1, v0}, Liamutkarshtiwari/github/io/ananas/editimage/adapter/a;-><init>(Landroid/content/Context;)V

    .line 11
    new-instance v0, Liamutkarshtiwari/github/io/ananas/editimage/fragment/paint/a;

    invoke-direct {v0, p0}, Liamutkarshtiwari/github/io/ananas/editimage/fragment/paint/a;-><init>(Liamutkarshtiwari/github/io/ananas/editimage/fragment/paint/b;)V

    invoke-virtual {p1, v0}, Liamutkarshtiwari/github/io/ananas/editimage/adapter/a;->i(Liamutkarshtiwari/github/io/ananas/editimage/adapter/a$a;)V

    .line 12
    invoke-virtual {p2, p1}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    return-void
.end method
