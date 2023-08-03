.class public Lio/github/rockerhieu/emojicon/f;
.super Landroidx/fragment/app/Fragment;
.source "EmojiconsFragment.java"

# interfaces
.implements Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;
.implements Lio/github/rockerhieu/emojicon/d;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/github/rockerhieu/emojicon/f$d;,
        Lio/github/rockerhieu/emojicon/f$e;,
        Lio/github/rockerhieu/emojicon/f$c;
    }
.end annotation


# static fields
.field private static final h:Ljava/lang/String; = "useSystemDefaults"


# instance fields
.field private a:Lio/github/rockerhieu/emojicon/f$d;

.field private b:I

.field private c:[Landroid/view/View;

.field private d:Landroidx/viewpager/widget/ViewPager;

.field private e:Landroidx/viewpager/widget/PagerAdapter;

.field private f:Lio/github/rockerhieu/emojicon/EmojiconRecentsManager;

.field private g:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Landroidx/fragment/app/Fragment;-><init>()V

    const/4 v0, -0x1

    .line 2
    iput v0, p0, Lio/github/rockerhieu/emojicon/f;->b:I

    const/4 v0, 0x0

    .line 3
    iput-boolean v0, p0, Lio/github/rockerhieu/emojicon/f;->g:Z

    return-void
.end method

.method static synthetic U(Lio/github/rockerhieu/emojicon/f;)Landroidx/viewpager/widget/ViewPager;
    .locals 0

    iget-object p0, p0, Lio/github/rockerhieu/emojicon/f;->d:Landroidx/viewpager/widget/ViewPager;

    return-object p0
.end method

.method static synthetic V(Lio/github/rockerhieu/emojicon/f;)Lio/github/rockerhieu/emojicon/f$d;
    .locals 0

    iget-object p0, p0, Lio/github/rockerhieu/emojicon/f;->a:Lio/github/rockerhieu/emojicon/f$d;

    return-object p0
.end method

.method public static W(Landroid/widget/EditText;)V
    .locals 13

    .line 1
    new-instance v12, Landroid/view/KeyEvent;

    const-wide/16 v1, 0x0

    const-wide/16 v3, 0x0

    const/4 v5, 0x0

    const/16 v6, 0x43

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x6

    move-object v0, v12

    invoke-direct/range {v0 .. v11}, Landroid/view/KeyEvent;-><init>(JJIIIIIII)V

    .line 2
    invoke-virtual {p0, v12}, Landroid/widget/EditText;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    return-void
.end method

.method public static X(Landroid/widget/EditText;Lio/github/rockerhieu/emojicon/emoji/Emojicon;)V
    .locals 6

    if-eqz p0, :cond_2

    if-nez p1, :cond_0

    goto :goto_0

    .line 1
    :cond_0
    invoke-virtual {p0}, Landroid/widget/EditText;->getSelectionStart()I

    move-result v0

    .line 2
    invoke-virtual {p0}, Landroid/widget/EditText;->getSelectionEnd()I

    move-result v1

    if-gez v0, :cond_1

    .line 3
    invoke-virtual {p1}, Lio/github/rockerhieu/emojicon/emoji/Emojicon;->getEmoji()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/widget/EditText;->append(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 4
    :cond_1
    invoke-virtual {p0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p0

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v2

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v3

    invoke-virtual {p1}, Lio/github/rockerhieu/emojicon/emoji/Emojicon;->getEmoji()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {p1}, Lio/github/rockerhieu/emojicon/emoji/Emojicon;->getEmoji()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    move-object v0, p0

    move v1, v2

    move v2, v3

    move-object v3, v4

    move v4, v5

    move v5, p1

    invoke-interface/range {v0 .. v5}, Landroid/text/Editable;->replace(IILjava/lang/CharSequence;II)Landroid/text/Editable;

    :cond_2
    :goto_0
    return-void
.end method

.method public static Y(Z)Lio/github/rockerhieu/emojicon/f;
    .locals 3

    .line 1
    new-instance v0, Lio/github/rockerhieu/emojicon/f;

    invoke-direct {v0}, Lio/github/rockerhieu/emojicon/f;-><init>()V

    .line 2
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string v2, "useSystemDefaults"

    .line 3
    invoke-virtual {v1, v2, p0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 4
    invoke-virtual {v0, v1}, Landroidx/fragment/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    return-object v0
.end method


# virtual methods
.method public onAttach(Landroid/content/Context;)V
    .locals 2

    .line 1
    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onAttach(Landroid/content/Context;)V

    .line 2
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    instance-of v0, v0, Lio/github/rockerhieu/emojicon/f$d;

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    check-cast p1, Lio/github/rockerhieu/emojicon/f$d;

    iput-object p1, p0, Lio/github/rockerhieu/emojicon/f;->a:Lio/github/rockerhieu/emojicon/f$d;

    goto :goto_0

    .line 4
    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getParentFragment()Landroidx/fragment/app/Fragment;

    move-result-object v0

    instance-of v0, v0, Lio/github/rockerhieu/emojicon/f$d;

    if-eqz v0, :cond_1

    .line 5
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getParentFragment()Landroidx/fragment/app/Fragment;

    move-result-object p1

    check-cast p1, Lio/github/rockerhieu/emojicon/f$d;

    iput-object p1, p0, Lio/github/rockerhieu/emojicon/f;->a:Lio/github/rockerhieu/emojicon/f$d;

    :goto_0
    return-void

    .line 6
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " must implement interface "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-class p1, Lio/github/rockerhieu/emojicon/f$d;

    invoke-virtual {p1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1

    .line 1
    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    .line 2
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 3
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object p1

    const-string v0, "useSystemDefaults"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result p1

    iput-boolean p1, p0, Lio/github/rockerhieu/emojicon/f;->g:Z

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 4
    iput-boolean p1, p0, Lio/github/rockerhieu/emojicon/f;->g:Z

    :goto_0
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 9

    .line 1
    sget p3, Lio/github/rockerhieu/emojicon/g$m;->F:I

    const/4 v0, 0x0

    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 2
    sget p2, Lio/github/rockerhieu/emojicon/g$j;->x0:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroidx/viewpager/widget/ViewPager;

    iput-object p2, p0, Lio/github/rockerhieu/emojicon/f;->d:Landroidx/viewpager/widget/ViewPager;

    .line 3
    invoke-virtual {p2, p0}, Landroidx/viewpager/widget/ViewPager;->setOnPageChangeListener(Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;)V

    .line 4
    new-instance p2, Lio/github/rockerhieu/emojicon/f$c;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object p3

    const/4 v1, 0x6

    new-array v2, v1, [Lio/github/rockerhieu/emojicon/c;

    iget-boolean v3, p0, Lio/github/rockerhieu/emojicon/f;->g:Z

    .line 5
    invoke-static {v3}, Lio/github/rockerhieu/emojicon/e;->Z(Z)Lio/github/rockerhieu/emojicon/e;

    move-result-object v3

    aput-object v3, v2, v0

    iget-boolean v3, p0, Lio/github/rockerhieu/emojicon/f;->g:Z

    const/4 v4, 0x1

    .line 6
    invoke-static {v4, p0, v3}, Lio/github/rockerhieu/emojicon/c;->U(ILio/github/rockerhieu/emojicon/d;Z)Lio/github/rockerhieu/emojicon/c;

    move-result-object v3

    aput-object v3, v2, v4

    iget-boolean v3, p0, Lio/github/rockerhieu/emojicon/f;->g:Z

    const/4 v5, 0x2

    .line 7
    invoke-static {v5, p0, v3}, Lio/github/rockerhieu/emojicon/c;->U(ILio/github/rockerhieu/emojicon/d;Z)Lio/github/rockerhieu/emojicon/c;

    move-result-object v3

    aput-object v3, v2, v5

    iget-boolean v3, p0, Lio/github/rockerhieu/emojicon/f;->g:Z

    const/4 v6, 0x3

    .line 8
    invoke-static {v6, p0, v3}, Lio/github/rockerhieu/emojicon/c;->U(ILio/github/rockerhieu/emojicon/d;Z)Lio/github/rockerhieu/emojicon/c;

    move-result-object v3

    aput-object v3, v2, v6

    iget-boolean v3, p0, Lio/github/rockerhieu/emojicon/f;->g:Z

    const/4 v7, 0x4

    .line 9
    invoke-static {v7, p0, v3}, Lio/github/rockerhieu/emojicon/c;->U(ILio/github/rockerhieu/emojicon/d;Z)Lio/github/rockerhieu/emojicon/c;

    move-result-object v3

    aput-object v3, v2, v7

    iget-boolean v3, p0, Lio/github/rockerhieu/emojicon/f;->g:Z

    const/4 v8, 0x5

    .line 10
    invoke-static {v8, p0, v3}, Lio/github/rockerhieu/emojicon/c;->U(ILio/github/rockerhieu/emojicon/d;Z)Lio/github/rockerhieu/emojicon/c;

    move-result-object v3

    aput-object v3, v2, v8

    .line 11
    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-direct {p2, p3, v2}, Lio/github/rockerhieu/emojicon/f$c;-><init>(Landroidx/fragment/app/FragmentManager;Ljava/util/List;)V

    iput-object p2, p0, Lio/github/rockerhieu/emojicon/f;->e:Landroidx/viewpager/widget/PagerAdapter;

    .line 12
    iget-object p3, p0, Lio/github/rockerhieu/emojicon/f;->d:Landroidx/viewpager/widget/ViewPager;

    invoke-virtual {p3, p2}, Landroidx/viewpager/widget/ViewPager;->setAdapter(Landroidx/viewpager/widget/PagerAdapter;)V

    new-array p2, v1, [Landroid/view/View;

    .line 13
    iput-object p2, p0, Lio/github/rockerhieu/emojicon/f;->c:[Landroid/view/View;

    .line 14
    sget p3, Lio/github/rockerhieu/emojicon/g$j;->z0:I

    invoke-virtual {p1, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    aput-object p3, p2, v0

    .line 15
    iget-object p2, p0, Lio/github/rockerhieu/emojicon/f;->c:[Landroid/view/View;

    sget p3, Lio/github/rockerhieu/emojicon/g$j;->A0:I

    invoke-virtual {p1, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    aput-object p3, p2, v4

    .line 16
    iget-object p2, p0, Lio/github/rockerhieu/emojicon/f;->c:[Landroid/view/View;

    sget p3, Lio/github/rockerhieu/emojicon/g$j;->B0:I

    invoke-virtual {p1, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    aput-object p3, p2, v5

    .line 17
    iget-object p2, p0, Lio/github/rockerhieu/emojicon/f;->c:[Landroid/view/View;

    sget p3, Lio/github/rockerhieu/emojicon/g$j;->C0:I

    invoke-virtual {p1, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    aput-object p3, p2, v6

    .line 18
    iget-object p2, p0, Lio/github/rockerhieu/emojicon/f;->c:[Landroid/view/View;

    sget p3, Lio/github/rockerhieu/emojicon/g$j;->D0:I

    invoke-virtual {p1, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    aput-object p3, p2, v7

    .line 19
    iget-object p2, p0, Lio/github/rockerhieu/emojicon/f;->c:[Landroid/view/View;

    sget p3, Lio/github/rockerhieu/emojicon/g$j;->E0:I

    invoke-virtual {p1, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    aput-object p3, p2, v8

    const/4 p2, 0x0

    .line 20
    :goto_0
    iget-object p3, p0, Lio/github/rockerhieu/emojicon/f;->c:[Landroid/view/View;

    array-length v1, p3

    if-ge p2, v1, :cond_0

    .line 21
    aget-object p3, p3, p2

    new-instance v1, Lio/github/rockerhieu/emojicon/f$a;

    invoke-direct {v1, p0, p2}, Lio/github/rockerhieu/emojicon/f$a;-><init>(Lio/github/rockerhieu/emojicon/f;I)V

    invoke-virtual {p3, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    .line 22
    :cond_0
    sget p2, Lio/github/rockerhieu/emojicon/g$j;->w0:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    new-instance p3, Lio/github/rockerhieu/emojicon/f$e;

    const/16 v1, 0x3e8

    const/16 v2, 0x32

    new-instance v3, Lio/github/rockerhieu/emojicon/f$b;

    invoke-direct {v3, p0}, Lio/github/rockerhieu/emojicon/f$b;-><init>(Lio/github/rockerhieu/emojicon/f;)V

    invoke-direct {p3, v1, v2, v3}, Lio/github/rockerhieu/emojicon/f$e;-><init>(IILandroid/view/View$OnClickListener;)V

    invoke-virtual {p2, p3}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 23
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Lio/github/rockerhieu/emojicon/EmojiconRecentsManager;->getInstance(Landroid/content/Context;)Lio/github/rockerhieu/emojicon/EmojiconRecentsManager;

    move-result-object p2

    iput-object p2, p0, Lio/github/rockerhieu/emojicon/f;->f:Lio/github/rockerhieu/emojicon/EmojiconRecentsManager;

    .line 24
    invoke-virtual {p2}, Lio/github/rockerhieu/emojicon/EmojiconRecentsManager;->getRecentPage()I

    move-result p2

    if-nez p2, :cond_1

    .line 25
    iget-object p3, p0, Lio/github/rockerhieu/emojicon/f;->f:Lio/github/rockerhieu/emojicon/EmojiconRecentsManager;

    invoke-virtual {p3}, Ljava/util/ArrayList;->size()I

    move-result p3

    if-nez p3, :cond_1

    goto :goto_1

    :cond_1
    move v4, p2

    :goto_1
    if-nez v4, :cond_2

    .line 26
    invoke-virtual {p0, v4}, Lio/github/rockerhieu/emojicon/f;->onPageSelected(I)V

    goto :goto_2

    .line 27
    :cond_2
    iget-object p2, p0, Lio/github/rockerhieu/emojicon/f;->d:Landroidx/viewpager/widget/ViewPager;

    invoke-virtual {p2, v4, v0}, Landroidx/viewpager/widget/ViewPager;->setCurrentItem(IZ)V

    :goto_2
    return-object p1
.end method

.method public onDetach()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    iput-object v0, p0, Lio/github/rockerhieu/emojicon/f;->a:Lio/github/rockerhieu/emojicon/f$d;

    .line 2
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onDetach()V

    return-void
.end method

.method public onPageScrollStateChanged(I)V
    .locals 0

    return-void
.end method

.method public onPageScrolled(IFI)V
    .locals 0

    return-void
.end method

.method public onPageSelected(I)V
    .locals 4

    .line 1
    iget v0, p0, Lio/github/rockerhieu/emojicon/f;->b:I

    if-ne v0, p1, :cond_0

    return-void

    :cond_0
    const/4 v1, 0x1

    if-eqz p1, :cond_1

    if-eq p1, v1, :cond_1

    const/4 v2, 0x2

    if-eq p1, v2, :cond_1

    const/4 v2, 0x3

    if-eq p1, v2, :cond_1

    const/4 v2, 0x4

    if-eq p1, v2, :cond_1

    const/4 v2, 0x5

    if-eq p1, v2, :cond_1

    goto :goto_0

    :cond_1
    if-ltz v0, :cond_2

    .line 2
    iget-object v2, p0, Lio/github/rockerhieu/emojicon/f;->c:[Landroid/view/View;

    array-length v3, v2

    if-ge v0, v3, :cond_2

    .line 3
    aget-object v0, v2, v0

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/view/View;->setSelected(Z)V

    .line 4
    :cond_2
    iget-object v0, p0, Lio/github/rockerhieu/emojicon/f;->c:[Landroid/view/View;

    aget-object v0, v0, p1

    invoke-virtual {v0, v1}, Landroid/view/View;->setSelected(Z)V

    .line 5
    iput p1, p0, Lio/github/rockerhieu/emojicon/f;->b:I

    .line 6
    iget-object v0, p0, Lio/github/rockerhieu/emojicon/f;->f:Lio/github/rockerhieu/emojicon/EmojiconRecentsManager;

    invoke-virtual {v0, p1}, Lio/github/rockerhieu/emojicon/EmojiconRecentsManager;->setRecentPage(I)V

    :goto_0
    return-void
.end method

.method public s(Landroid/content/Context;Lio/github/rockerhieu/emojicon/emoji/Emojicon;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lio/github/rockerhieu/emojicon/f;->e:Landroidx/viewpager/widget/PagerAdapter;

    iget-object v1, p0, Lio/github/rockerhieu/emojicon/f;->d:Landroidx/viewpager/widget/ViewPager;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroidx/viewpager/widget/PagerAdapter;->instantiateItem(Landroid/view/ViewGroup;I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/github/rockerhieu/emojicon/e;

    .line 2
    invoke-virtual {v0, p1, p2}, Lio/github/rockerhieu/emojicon/e;->s(Landroid/content/Context;Lio/github/rockerhieu/emojicon/emoji/Emojicon;)V

    return-void
.end method
