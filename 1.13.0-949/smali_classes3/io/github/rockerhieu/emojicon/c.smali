.class public Lio/github/rockerhieu/emojicon/c;
.super Landroidx/fragment/app/Fragment;
.source "EmojiconGridFragment.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/github/rockerhieu/emojicon/c$a;
    }
.end annotation


# static fields
.field private static final f:Ljava/lang/String; = "useSystemDefaults"

.field private static final g:Ljava/lang/String; = "emojicons"

.field private static final h:Ljava/lang/String; = "emojiconType"


# instance fields
.field private a:Lio/github/rockerhieu/emojicon/c$a;

.field private b:Lio/github/rockerhieu/emojicon/d;

.field private c:[Lio/github/rockerhieu/emojicon/emoji/Emojicon;

.field private d:I

.field private e:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Landroidx/fragment/app/Fragment;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lio/github/rockerhieu/emojicon/c;->e:Z

    return-void
.end method

.method protected static U(ILio/github/rockerhieu/emojicon/d;Z)Lio/github/rockerhieu/emojicon/c;
    .locals 1

    const/4 v0, 0x0

    invoke-static {p0, v0, p1, p2}, Lio/github/rockerhieu/emojicon/c;->V(I[Lio/github/rockerhieu/emojicon/emoji/Emojicon;Lio/github/rockerhieu/emojicon/d;Z)Lio/github/rockerhieu/emojicon/c;

    move-result-object p0

    return-object p0
.end method

.method protected static V(I[Lio/github/rockerhieu/emojicon/emoji/Emojicon;Lio/github/rockerhieu/emojicon/d;Z)Lio/github/rockerhieu/emojicon/c;
    .locals 3

    .line 1
    new-instance v0, Lio/github/rockerhieu/emojicon/c;

    invoke-direct {v0}, Lio/github/rockerhieu/emojicon/c;-><init>()V

    .line 2
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string v2, "emojiconType"

    .line 3
    invoke-virtual {v1, v2, p0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string p0, "emojicons"

    .line 4
    invoke-virtual {v1, p0, p1}, Landroid/os/Bundle;->putParcelableArray(Ljava/lang/String;[Landroid/os/Parcelable;)V

    const-string p0, "useSystemDefaults"

    .line 5
    invoke-virtual {v1, p0, p3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 6
    invoke-virtual {v0, v1}, Landroidx/fragment/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    .line 7
    invoke-direct {v0, p2}, Lio/github/rockerhieu/emojicon/c;->X(Lio/github/rockerhieu/emojicon/d;)V

    return-object v0
.end method

.method protected static W([Lio/github/rockerhieu/emojicon/emoji/Emojicon;Lio/github/rockerhieu/emojicon/d;)Lio/github/rockerhieu/emojicon/c;
    .locals 1

    const/4 v0, 0x0

    invoke-static {v0, p0, p1, v0}, Lio/github/rockerhieu/emojicon/c;->V(I[Lio/github/rockerhieu/emojicon/emoji/Emojicon;Lio/github/rockerhieu/emojicon/d;Z)Lio/github/rockerhieu/emojicon/c;

    move-result-object p0

    return-object p0
.end method

.method private X(Lio/github/rockerhieu/emojicon/d;)V
    .locals 0

    iput-object p1, p0, Lio/github/rockerhieu/emojicon/c;->b:Lio/github/rockerhieu/emojicon/d;

    return-void
.end method


# virtual methods
.method public onAttach(Landroid/content/Context;)V
    .locals 2

    .line 1
    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onAttach(Landroid/content/Context;)V

    .line 2
    instance-of v0, p1, Lio/github/rockerhieu/emojicon/c$a;

    if-eqz v0, :cond_0

    .line 3
    check-cast p1, Lio/github/rockerhieu/emojicon/c$a;

    iput-object p1, p0, Lio/github/rockerhieu/emojicon/c;->a:Lio/github/rockerhieu/emojicon/c$a;

    goto :goto_0

    .line 4
    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getParentFragment()Landroidx/fragment/app/Fragment;

    move-result-object v0

    instance-of v0, v0, Lio/github/rockerhieu/emojicon/c$a;

    if-eqz v0, :cond_1

    .line 5
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getParentFragment()Landroidx/fragment/app/Fragment;

    move-result-object p1

    check-cast p1, Lio/github/rockerhieu/emojicon/c$a;

    iput-object p1, p0, Lio/github/rockerhieu/emojicon/c;->a:Lio/github/rockerhieu/emojicon/c$a;

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

    const-class p1, Lio/github/rockerhieu/emojicon/c$a;

    invoke-virtual {p1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1

    sget p3, Lio/github/rockerhieu/emojicon/g$m;->D:I

    const/4 v0, 0x0

    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method public onDetach()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    iput-object v0, p0, Lio/github/rockerhieu/emojicon/c;->a:Lio/github/rockerhieu/emojicon/c$a;

    .line 2
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onDetach()V

    return-void
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView<",
            "*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .line 1
    iget-object p4, p0, Lio/github/rockerhieu/emojicon/c;->a:Lio/github/rockerhieu/emojicon/c$a;

    if-eqz p4, :cond_0

    .line 2
    invoke-virtual {p1, p3}, Landroid/widget/AdapterView;->getItemAtPosition(I)Ljava/lang/Object;

    move-result-object p5

    check-cast p5, Lio/github/rockerhieu/emojicon/emoji/Emojicon;

    invoke-interface {p4, p5}, Lio/github/rockerhieu/emojicon/c$a;->i(Lio/github/rockerhieu/emojicon/emoji/Emojicon;)V

    .line 3
    :cond_0
    iget-object p4, p0, Lio/github/rockerhieu/emojicon/c;->b:Lio/github/rockerhieu/emojicon/d;

    if-eqz p4, :cond_1

    .line 4
    invoke-virtual {p2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-virtual {p1, p3}, Landroid/widget/AdapterView;->getItemAtPosition(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/github/rockerhieu/emojicon/emoji/Emojicon;

    invoke-interface {p4, p2, p1}, Lio/github/rockerhieu/emojicon/d;->s(Landroid/content/Context;Lio/github/rockerhieu/emojicon/emoji/Emojicon;)V

    :cond_1
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    .line 1
    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 2
    iget-object v0, p0, Lio/github/rockerhieu/emojicon/c;->c:[Lio/github/rockerhieu/emojicon/emoji/Emojicon;

    const-string v1, "emojicons"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putParcelableArray(Ljava/lang/String;[Landroid/os/Parcelable;)V

    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 5

    .line 1
    sget p2, Lio/github/rockerhieu/emojicon/g$j;->a:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/GridView;

    .line 2
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 3
    iput v1, p0, Lio/github/rockerhieu/emojicon/c;->d:I

    .line 4
    sget-object v0, Lio/github/rockerhieu/emojicon/emoji/c;->a:[Lio/github/rockerhieu/emojicon/emoji/Emojicon;

    iput-object v0, p0, Lio/github/rockerhieu/emojicon/c;->c:[Lio/github/rockerhieu/emojicon/emoji/Emojicon;

    .line 5
    iput-boolean v1, p0, Lio/github/rockerhieu/emojicon/c;->e:Z

    goto :goto_1

    :cond_0
    const-string v2, "emojiconType"

    .line 6
    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    iput v2, p0, Lio/github/rockerhieu/emojicon/c;->d:I

    if-nez v2, :cond_1

    const-string v2, "emojicons"

    .line 7
    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getParcelableArray(Ljava/lang/String;)[Landroid/os/Parcelable;

    move-result-object v2

    .line 8
    array-length v3, v2

    new-array v3, v3, [Lio/github/rockerhieu/emojicon/emoji/Emojicon;

    iput-object v3, p0, Lio/github/rockerhieu/emojicon/c;->c:[Lio/github/rockerhieu/emojicon/emoji/Emojicon;

    .line 9
    :goto_0
    array-length v3, v2

    if-ge v1, v3, :cond_2

    .line 10
    iget-object v3, p0, Lio/github/rockerhieu/emojicon/c;->c:[Lio/github/rockerhieu/emojicon/emoji/Emojicon;

    aget-object v4, v2, v1

    check-cast v4, Lio/github/rockerhieu/emojicon/emoji/Emojicon;

    aput-object v4, v3, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 11
    :cond_1
    invoke-static {v2}, Lio/github/rockerhieu/emojicon/emoji/Emojicon;->getEmojicons(I)[Lio/github/rockerhieu/emojicon/emoji/Emojicon;

    move-result-object v1

    iput-object v1, p0, Lio/github/rockerhieu/emojicon/c;->c:[Lio/github/rockerhieu/emojicon/emoji/Emojicon;

    :cond_2
    const-string v1, "useSystemDefaults"

    .line 12
    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lio/github/rockerhieu/emojicon/c;->e:Z

    .line 13
    :goto_1
    new-instance v0, Lio/github/rockerhieu/emojicon/b;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    iget-object v1, p0, Lio/github/rockerhieu/emojicon/c;->c:[Lio/github/rockerhieu/emojicon/emoji/Emojicon;

    iget-boolean v2, p0, Lio/github/rockerhieu/emojicon/c;->e:Z

    invoke-direct {v0, p1, v1, v2}, Lio/github/rockerhieu/emojicon/b;-><init>(Landroid/content/Context;[Lio/github/rockerhieu/emojicon/emoji/Emojicon;Z)V

    invoke-virtual {p2, v0}, Landroid/widget/GridView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 14
    invoke-virtual {p2, p0}, Landroid/widget/GridView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    return-void
.end method
