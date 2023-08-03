.class public final Lcom/giphy/sdk/ui/universallist/e;
.super Landroidx/recyclerview/widget/ListAdapter;
.source "SmartGridAdapter.kt"

# interfaces
.implements Lcom/giphy/sdk/tracking/c;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/giphy/sdk/ui/universallist/e$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/recyclerview/widget/ListAdapter<",
        "Lcom/giphy/sdk/ui/universallist/g;",
        "Lcom/giphy/sdk/ui/universallist/j;",
        ">;",
        "Lcom/giphy/sdk/tracking/c;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {}
    d1 = {
        "\u0000\u0082\u0001\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0007\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0010\u0011\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u000e\n\u0002\u0018\u0002\n\u0002\u0008\u0007\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u000f\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u0018\u00002\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00030\u00012\u00020\u0004:\u0001\u0018B\u001d\u0012\u0006\u0010P\u001a\u00020M\u0012\u000c\u0010R\u001a\u0008\u0012\u0004\u0012\u00020\u00020Q\u00a2\u0006\u0004\u0008S\u0010TJ\u0010\u0010\u0008\u001a\u00020\u00072\u0006\u0010\u0006\u001a\u00020\u0005H\u0016J\u0018\u0010\r\u001a\u00020\u00032\u0006\u0010\n\u001a\u00020\t2\u0006\u0010\u000c\u001a\u00020\u000bH\u0016J\u0010\u0010\u000f\u001a\u00020\u000b2\u0006\u0010\u000e\u001a\u00020\u000bH\u0016J\u0018\u0010\u0011\u001a\u00020\u00072\u0006\u0010\u0010\u001a\u00020\u00032\u0006\u0010\u000e\u001a\u00020\u000bH\u0016J\u0010\u0010\u0012\u001a\u00020\u00072\u0006\u0010\u0010\u001a\u00020\u0003H\u0016J\u0012\u0010\u0014\u001a\u0004\u0018\u00010\u00132\u0006\u0010\u000e\u001a\u00020\u000bH\u0016J\u001e\u0010\u0018\u001a\u00020\u00172\u0006\u0010\u000e\u001a\u00020\u000b2\u000c\u0010\u0016\u001a\u0008\u0012\u0004\u0012\u00020\u00070\u0015H\u0016J\u000e\u0010\u0019\u001a\u00020\u000b2\u0006\u0010\u000e\u001a\u00020\u000bR\u001b\u0010\u001e\u001a\u00060\u001aR\u00020\u00008\u0006\u00a2\u0006\u000c\n\u0004\u0008\u0018\u0010\u001b\u001a\u0004\u0008\u001c\u0010\u001dR\u001a\u0010#\u001a\u0008\u0012\u0004\u0012\u00020 0\u001f8\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008!\u0010\"R\u0018\u0010\u0006\u001a\u0004\u0018\u00010\u00058\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008\u0014\u0010$R.\u0010,\u001a\u000e\u0012\u0004\u0012\u00020\u000b\u0012\u0004\u0012\u00020\u00070%8\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008&\u0010\'\u001a\u0004\u0008(\u0010)\"\u0004\u0008*\u0010+R(\u00103\u001a\u0008\u0012\u0004\u0012\u00020\u00070\u00158\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008-\u0010.\u001a\u0004\u0008/\u00100\"\u0004\u00081\u00102R\"\u0010;\u001a\u0002048\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u00085\u00106\u001a\u0004\u00087\u00108\"\u0004\u00089\u0010:RR\u0010E\u001a2\u0012\u0013\u0012\u00110\u0002\u00a2\u0006\u000c\u0008=\u0012\u0008\u0008>\u0012\u0004\u0008\u0008(?\u0012\u0013\u0012\u00110\u000b\u00a2\u0006\u000c\u0008=\u0012\u0008\u0008>\u0012\u0004\u0008\u0008(\u000e\u0012\u0004\u0012\u00020\u00070<8\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008\u001c\u0010@\u001a\u0004\u0008A\u0010B\"\u0004\u0008C\u0010DRR\u0010I\u001a2\u0012\u0013\u0012\u00110\u0002\u00a2\u0006\u000c\u0008=\u0012\u0008\u0008>\u0012\u0004\u0008\u0008(?\u0012\u0013\u0012\u00110\u000b\u00a2\u0006\u000c\u0008=\u0012\u0008\u0008>\u0012\u0004\u0008\u0008(\u000e\u0012\u0004\u0012\u00020\u00070<8\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008F\u0010@\u001a\u0004\u0008G\u0010B\"\u0004\u0008H\u0010DR=\u0010L\u001a\u001d\u0012\u0013\u0012\u00110\u0002\u00a2\u0006\u000c\u0008=\u0012\u0008\u0008>\u0012\u0004\u0008\u0008(?\u0012\u0004\u0012\u00020\u00070%8\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008G\u0010\'\u001a\u0004\u0008J\u0010)\"\u0004\u0008K\u0010+R\u0017\u0010P\u001a\u00020M8\u0006\u00a2\u0006\u000c\n\u0004\u0008A\u0010N\u001a\u0004\u0008F\u0010O\u00a8\u0006U"
    }
    d2 = {
        "Lcom/giphy/sdk/ui/universallist/e;",
        "Landroidx/recyclerview/widget/ListAdapter;",
        "Lcom/giphy/sdk/ui/universallist/g;",
        "Lcom/giphy/sdk/ui/universallist/j;",
        "Lcom/giphy/sdk/tracking/c;",
        "Landroidx/recyclerview/widget/RecyclerView;",
        "recyclerView",
        "",
        "onAttachedToRecyclerView",
        "Landroid/view/ViewGroup;",
        "parent",
        "",
        "viewType",
        "q",
        "position",
        "getItemViewType",
        "holder",
        "p",
        "r",
        "Lcom/giphy/sdk/core/models/Media;",
        "c",
        "Lkotlin/Function0;",
        "onLoad",
        "",
        "a",
        "m",
        "Lcom/giphy/sdk/ui/universallist/e$a;",
        "Lcom/giphy/sdk/ui/universallist/e$a;",
        "g",
        "()Lcom/giphy/sdk/ui/universallist/e$a;",
        "adapterHelper",
        "",
        "Lcom/giphy/sdk/ui/universallist/SmartItemType;",
        "b",
        "[Lcom/giphy/sdk/ui/universallist/SmartItemType;",
        "typeValues",
        "Landroidx/recyclerview/widget/RecyclerView;",
        "Lkotlin/Function1;",
        "d",
        "Lkotlin/jvm/functions/Function1;",
        "k",
        "()Lkotlin/jvm/functions/Function1;",
        "u",
        "(Lkotlin/jvm/functions/Function1;)V",
        "loadingTrigger",
        "e",
        "Lkotlin/jvm/functions/Function0;",
        "n",
        "()Lkotlin/jvm/functions/Function0;",
        "w",
        "(Lkotlin/jvm/functions/Function0;)V",
        "updateTracking",
        "Lcom/giphy/sdk/core/models/enums/MediaType;",
        "f",
        "Lcom/giphy/sdk/core/models/enums/MediaType;",
        "l",
        "()Lcom/giphy/sdk/core/models/enums/MediaType;",
        "v",
        "(Lcom/giphy/sdk/core/models/enums/MediaType;)V",
        "mediaType",
        "Lkotlin/Function2;",
        "Lkotlin/ParameterName;",
        "name",
        "item",
        "Lkotlin/jvm/functions/Function2;",
        "j",
        "()Lkotlin/jvm/functions/Function2;",
        "t",
        "(Lkotlin/jvm/functions/Function2;)V",
        "itemSelectedListener",
        "h",
        "i",
        "s",
        "itemLongPressListener",
        "o",
        "x",
        "userProfileInfoPressListener",
        "Landroid/content/Context;",
        "Landroid/content/Context;",
        "()Landroid/content/Context;",
        "context",
        "Landroidx/recyclerview/widget/DiffUtil$ItemCallback;",
        "diff",
        "<init>",
        "(Landroid/content/Context;Landroidx/recyclerview/widget/DiffUtil$ItemCallback;)V",
        "giphy-ui-2.1.9_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x4,
        0x1
    }
.end annotation


# instance fields
.field private final a:Lcom/giphy/sdk/ui/universallist/e$a;
    .annotation build Lm8/g;
    .end annotation
.end field

.field private final b:[Lcom/giphy/sdk/ui/universallist/SmartItemType;

.field private c:Landroidx/recyclerview/widget/RecyclerView;

.field private d:Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Ljava/lang/Integer;",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation

    .annotation build Lm8/g;
    .end annotation
.end field

.field private e:Lkotlin/jvm/functions/Function0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation

    .annotation build Lm8/g;
    .end annotation
.end field

.field private f:Lcom/giphy/sdk/core/models/enums/MediaType;
    .annotation build Lm8/g;
    .end annotation
.end field

.field private g:Lkotlin/jvm/functions/Function2;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function2<",
            "-",
            "Lcom/giphy/sdk/ui/universallist/g;",
            "-",
            "Ljava/lang/Integer;",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation

    .annotation build Lm8/g;
    .end annotation
.end field

.field private h:Lkotlin/jvm/functions/Function2;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function2<",
            "-",
            "Lcom/giphy/sdk/ui/universallist/g;",
            "-",
            "Ljava/lang/Integer;",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation

    .annotation build Lm8/g;
    .end annotation
.end field

.field private i:Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Lcom/giphy/sdk/ui/universallist/g;",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation

    .annotation build Lm8/g;
    .end annotation
.end field

.field private final j:Landroid/content/Context;
    .annotation build Lm8/g;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroidx/recyclerview/widget/DiffUtil$ItemCallback;)V
    .locals 1
    .param p1    # Landroid/content/Context;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .param p2    # Landroidx/recyclerview/widget/DiffUtil$ItemCallback;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Landroidx/recyclerview/widget/DiffUtil$ItemCallback<",
            "Lcom/giphy/sdk/ui/universallist/g;",
            ">;)V"
        }
    .end annotation

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "diff"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0, p2}, Landroidx/recyclerview/widget/ListAdapter;-><init>(Landroidx/recyclerview/widget/DiffUtil$ItemCallback;)V

    iput-object p1, p0, Lcom/giphy/sdk/ui/universallist/e;->j:Landroid/content/Context;

    .line 2
    new-instance p1, Lcom/giphy/sdk/ui/universallist/e$a;

    invoke-direct {p1, p0}, Lcom/giphy/sdk/ui/universallist/e$a;-><init>(Lcom/giphy/sdk/ui/universallist/e;)V

    iput-object p1, p0, Lcom/giphy/sdk/ui/universallist/e;->a:Lcom/giphy/sdk/ui/universallist/e$a;

    .line 3
    invoke-static {}, Lcom/giphy/sdk/ui/universallist/SmartItemType;->values()[Lcom/giphy/sdk/ui/universallist/SmartItemType;

    move-result-object p1

    iput-object p1, p0, Lcom/giphy/sdk/ui/universallist/e;->b:[Lcom/giphy/sdk/ui/universallist/SmartItemType;

    .line 4
    sget-object p1, Lcom/giphy/sdk/ui/universallist/e$d;->a:Lcom/giphy/sdk/ui/universallist/e$d;

    iput-object p1, p0, Lcom/giphy/sdk/ui/universallist/e;->d:Lkotlin/jvm/functions/Function1;

    .line 5
    sget-object p1, Lcom/giphy/sdk/ui/universallist/e$i;->a:Lcom/giphy/sdk/ui/universallist/e$i;

    iput-object p1, p0, Lcom/giphy/sdk/ui/universallist/e;->e:Lkotlin/jvm/functions/Function0;

    .line 6
    sget-object p1, Lcom/giphy/sdk/core/models/enums/MediaType;->gif:Lcom/giphy/sdk/core/models/enums/MediaType;

    iput-object p1, p0, Lcom/giphy/sdk/ui/universallist/e;->f:Lcom/giphy/sdk/core/models/enums/MediaType;

    .line 7
    sget-object p1, Lcom/giphy/sdk/ui/universallist/e$c;->a:Lcom/giphy/sdk/ui/universallist/e$c;

    iput-object p1, p0, Lcom/giphy/sdk/ui/universallist/e;->g:Lkotlin/jvm/functions/Function2;

    .line 8
    sget-object p1, Lcom/giphy/sdk/ui/universallist/e$b;->a:Lcom/giphy/sdk/ui/universallist/e$b;

    iput-object p1, p0, Lcom/giphy/sdk/ui/universallist/e;->h:Lkotlin/jvm/functions/Function2;

    .line 9
    sget-object p1, Lcom/giphy/sdk/ui/universallist/e$j;->a:Lcom/giphy/sdk/ui/universallist/e$j;

    iput-object p1, p0, Lcom/giphy/sdk/ui/universallist/e;->i:Lkotlin/jvm/functions/Function1;

    return-void
.end method

.method public static final synthetic d(Lcom/giphy/sdk/ui/universallist/e;I)Lcom/giphy/sdk/ui/universallist/g;
    .locals 0

    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/ListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/giphy/sdk/ui/universallist/g;

    return-object p0
.end method

.method public static final synthetic e(Lcom/giphy/sdk/ui/universallist/e;)Landroidx/recyclerview/widget/RecyclerView;
    .locals 0

    iget-object p0, p0, Lcom/giphy/sdk/ui/universallist/e;->c:Landroidx/recyclerview/widget/RecyclerView;

    return-object p0
.end method

.method public static final synthetic f(Lcom/giphy/sdk/ui/universallist/e;Landroidx/recyclerview/widget/RecyclerView;)V
    .locals 0

    iput-object p1, p0, Lcom/giphy/sdk/ui/universallist/e;->c:Landroidx/recyclerview/widget/RecyclerView;

    return-void
.end method


# virtual methods
.method public a(ILkotlin/jvm/functions/Function0;)Z
    .locals 2
    .param p2    # Lkotlin/jvm/functions/Function0;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;)Z"
        }
    .end annotation

    const-string v0, "onLoad"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Lcom/giphy/sdk/ui/universallist/e;->c:Landroidx/recyclerview/widget/RecyclerView;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Landroidx/recyclerview/widget/RecyclerView;->findViewHolderForAdapterPosition(I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    move-result-object p1

    goto :goto_0

    :cond_0
    move-object p1, v1

    :goto_0
    instance-of v0, p1, Lcom/giphy/sdk/ui/universallist/j;

    if-nez v0, :cond_1

    goto :goto_1

    :cond_1
    move-object v1, p1

    :goto_1
    check-cast v1, Lcom/giphy/sdk/ui/universallist/j;

    if-eqz v1, :cond_2

    .line 2
    invoke-virtual {v1, p2}, Lcom/giphy/sdk/ui/universallist/j;->c(Lkotlin/jvm/functions/Function0;)Z

    move-result p1

    goto :goto_2

    :cond_2
    const/4 p1, 0x0

    :goto_2
    return p1
.end method

.method public c(I)Lcom/giphy/sdk/core/models/Media;
    .locals 0
    .annotation build Lm8/h;
    .end annotation

    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/ListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/giphy/sdk/ui/universallist/g;

    invoke-virtual {p1}, Lcom/giphy/sdk/ui/universallist/g;->b()Lcom/giphy/sdk/core/models/Media;

    move-result-object p1

    return-object p1
.end method

.method public final g()Lcom/giphy/sdk/ui/universallist/e$a;
    .locals 1
    .annotation build Lm8/g;
    .end annotation

    iget-object v0, p0, Lcom/giphy/sdk/ui/universallist/e;->a:Lcom/giphy/sdk/ui/universallist/e$a;

    return-object v0
.end method

.method public getItemViewType(I)I
    .locals 0

    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/ListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/giphy/sdk/ui/universallist/g;

    invoke-virtual {p1}, Lcom/giphy/sdk/ui/universallist/g;->d()Lcom/giphy/sdk/ui/universallist/SmartItemType;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    return p1
.end method

.method public final h()Landroid/content/Context;
    .locals 1
    .annotation build Lm8/g;
    .end annotation

    iget-object v0, p0, Lcom/giphy/sdk/ui/universallist/e;->j:Landroid/content/Context;

    return-object v0
.end method

.method public final i()Lkotlin/jvm/functions/Function2;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlin/jvm/functions/Function2<",
            "Lcom/giphy/sdk/ui/universallist/g;",
            "Ljava/lang/Integer;",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation

    .annotation build Lm8/g;
    .end annotation

    iget-object v0, p0, Lcom/giphy/sdk/ui/universallist/e;->h:Lkotlin/jvm/functions/Function2;

    return-object v0
.end method

.method public final j()Lkotlin/jvm/functions/Function2;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlin/jvm/functions/Function2<",
            "Lcom/giphy/sdk/ui/universallist/g;",
            "Ljava/lang/Integer;",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation

    .annotation build Lm8/g;
    .end annotation

    iget-object v0, p0, Lcom/giphy/sdk/ui/universallist/e;->g:Lkotlin/jvm/functions/Function2;

    return-object v0
.end method

.method public final k()Lkotlin/jvm/functions/Function1;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlin/jvm/functions/Function1<",
            "Ljava/lang/Integer;",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation

    .annotation build Lm8/g;
    .end annotation

    iget-object v0, p0, Lcom/giphy/sdk/ui/universallist/e;->d:Lkotlin/jvm/functions/Function1;

    return-object v0
.end method

.method public final l()Lcom/giphy/sdk/core/models/enums/MediaType;
    .locals 1
    .annotation build Lm8/g;
    .end annotation

    iget-object v0, p0, Lcom/giphy/sdk/ui/universallist/e;->f:Lcom/giphy/sdk/core/models/enums/MediaType;

    return-object v0
.end method

.method public final m(I)I
    .locals 0

    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/ListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/giphy/sdk/ui/universallist/g;

    invoke-virtual {p1}, Lcom/giphy/sdk/ui/universallist/g;->c()I

    move-result p1

    return p1
.end method

.method public final n()Lkotlin/jvm/functions/Function0;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation

    .annotation build Lm8/g;
    .end annotation

    iget-object v0, p0, Lcom/giphy/sdk/ui/universallist/e;->e:Lkotlin/jvm/functions/Function0;

    return-object v0
.end method

.method public final o()Lkotlin/jvm/functions/Function1;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlin/jvm/functions/Function1<",
            "Lcom/giphy/sdk/ui/universallist/g;",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation

    .annotation build Lm8/g;
    .end annotation

    iget-object v0, p0, Lcom/giphy/sdk/ui/universallist/e;->i:Lkotlin/jvm/functions/Function1;

    return-object v0
.end method

.method public onAttachedToRecyclerView(Landroidx/recyclerview/widget/RecyclerView;)V
    .locals 1
    .param p1    # Landroidx/recyclerview/widget/RecyclerView;
        .annotation build Lm8/g;
        .end annotation
    .end param

    const-string v0, "recyclerView"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/giphy/sdk/ui/universallist/e;->c:Landroidx/recyclerview/widget/RecyclerView;

    return-void
.end method

.method public bridge synthetic onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 0

    check-cast p1, Lcom/giphy/sdk/ui/universallist/j;

    invoke-virtual {p0, p1, p2}, Lcom/giphy/sdk/ui/universallist/e;->p(Lcom/giphy/sdk/ui/universallist/j;I)V

    return-void
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 0

    invoke-virtual {p0, p1, p2}, Lcom/giphy/sdk/ui/universallist/e;->q(Landroid/view/ViewGroup;I)Lcom/giphy/sdk/ui/universallist/j;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic onViewRecycled(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V
    .locals 0

    check-cast p1, Lcom/giphy/sdk/ui/universallist/j;

    invoke-virtual {p0, p1}, Lcom/giphy/sdk/ui/universallist/e;->r(Lcom/giphy/sdk/ui/universallist/j;)V

    return-void
.end method

.method public p(Lcom/giphy/sdk/ui/universallist/j;I)V
    .locals 6
    .param p1    # Lcom/giphy/sdk/ui/universallist/j;
        .annotation build Lm8/g;
        .end annotation
    .end param

    const-string v0, "holder"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p0}, Landroidx/recyclerview/widget/ListAdapter;->getItemCount()I

    move-result v0

    add-int/lit8 v0, v0, -0xc

    if-le p2, v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/giphy/sdk/ui/universallist/e;->d:Lkotlin/jvm/functions/Function1;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/giphy/sdk/ui/universallist/e;->a:Lcom/giphy/sdk/ui/universallist/e$a;

    invoke-virtual {p0}, Landroidx/recyclerview/widget/ListAdapter;->getItemCount()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/giphy/sdk/ui/universallist/e$a;->p(I)V

    .line 4
    invoke-virtual {p0, p2}, Landroidx/recyclerview/widget/ListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/giphy/sdk/ui/universallist/g;

    invoke-virtual {p2}, Lcom/giphy/sdk/ui/universallist/g;->a()Ljava/lang/Object;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/giphy/sdk/ui/universallist/j;->b(Ljava/lang/Object;)V

    .line 5
    sget-object v0, Lkotlinx/coroutines/a2;->a:Lkotlinx/coroutines/a2;

    invoke-static {}, Lkotlinx/coroutines/i1;->e()Lkotlinx/coroutines/u2;

    move-result-object v1

    const/4 v2, 0x0

    new-instance v3, Lcom/giphy/sdk/ui/universallist/e$e;

    const/4 p1, 0x0

    invoke-direct {v3, p0, p1}, Lcom/giphy/sdk/ui/universallist/e$e;-><init>(Lcom/giphy/sdk/ui/universallist/e;Lkotlin/coroutines/Continuation;)V

    const/4 v4, 0x2

    const/4 v5, 0x0

    invoke-static/range {v0 .. v5}, Lkotlinx/coroutines/j;->e(Lkotlinx/coroutines/s0;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/j2;

    return-void
.end method

.method public q(Landroid/view/ViewGroup;I)Lcom/giphy/sdk/ui/universallist/j;
    .locals 5
    .param p1    # Landroid/view/ViewGroup;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .annotation build Lm8/g;
    .end annotation

    const-string v0, "parent"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Lcom/giphy/sdk/ui/universallist/e;->b:[Lcom/giphy/sdk/ui/universallist/SmartItemType;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_2

    aget-object v3, v0, v2

    .line 2
    invoke-virtual {v3}, Ljava/lang/Enum;->ordinal()I

    move-result v4

    if-ne v4, p2, :cond_1

    .line 3
    invoke-virtual {v3}, Lcom/giphy/sdk/ui/universallist/SmartItemType;->getCreateViewHolder()Lkotlin/jvm/functions/Function2;

    move-result-object v0

    iget-object v1, p0, Lcom/giphy/sdk/ui/universallist/e;->a:Lcom/giphy/sdk/ui/universallist/e$a;

    invoke-interface {v0, p1, v1}, Lkotlin/jvm/functions/Function2;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/giphy/sdk/ui/universallist/j;

    .line 4
    sget-object v0, Lcom/giphy/sdk/ui/universallist/SmartItemType;->UserProfile:Lcom/giphy/sdk/ui/universallist/SmartItemType;

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    if-eq p2, v0, :cond_0

    .line 5
    iget-object p2, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    new-instance v0, Lcom/giphy/sdk/ui/universallist/e$g;

    invoke-direct {v0, p0, p1}, Lcom/giphy/sdk/ui/universallist/e$g;-><init>(Lcom/giphy/sdk/ui/universallist/e;Lcom/giphy/sdk/ui/universallist/j;)V

    invoke-virtual {p2, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 6
    iget-object p2, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    new-instance v0, Lcom/giphy/sdk/ui/universallist/e$h;

    invoke-direct {v0, p0, p1}, Lcom/giphy/sdk/ui/universallist/e$h;-><init>(Lcom/giphy/sdk/ui/universallist/e;Lcom/giphy/sdk/ui/universallist/j;)V

    invoke-virtual {p2, v0}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    goto :goto_1

    .line 7
    :cond_0
    iget-object p2, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-static {p2}, Lh2/p;->a(Landroid/view/View;)Lh2/p;

    move-result-object p2

    .line 8
    iget-object v0, p2, Lh2/p;->i:Landroid/widget/ImageButton;

    new-instance v1, Lcom/giphy/sdk/ui/universallist/e$f;

    invoke-direct {v1, p0, p1}, Lcom/giphy/sdk/ui/universallist/e$f;-><init>(Lcom/giphy/sdk/ui/universallist/e;Lcom/giphy/sdk/ui/universallist/j;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const-string v0, "GphUserProfileItemBindin\u2026  }\n                    }"

    .line 9
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    :goto_1
    return-object p1

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 10
    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "onCreateViewHolder: Invalid item type"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public r(Lcom/giphy/sdk/ui/universallist/j;)V
    .locals 1
    .param p1    # Lcom/giphy/sdk/ui/universallist/j;
        .annotation build Lm8/g;
        .end annotation
    .end param

    const-string v0, "holder"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p1}, Lcom/giphy/sdk/ui/universallist/j;->d()V

    .line 2
    invoke-super {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->onViewRecycled(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V

    return-void
.end method

.method public final s(Lkotlin/jvm/functions/Function2;)V
    .locals 1
    .param p1    # Lkotlin/jvm/functions/Function2;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function2<",
            "-",
            "Lcom/giphy/sdk/ui/universallist/g;",
            "-",
            "Ljava/lang/Integer;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/giphy/sdk/ui/universallist/e;->h:Lkotlin/jvm/functions/Function2;

    return-void
.end method

.method public final t(Lkotlin/jvm/functions/Function2;)V
    .locals 1
    .param p1    # Lkotlin/jvm/functions/Function2;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function2<",
            "-",
            "Lcom/giphy/sdk/ui/universallist/g;",
            "-",
            "Ljava/lang/Integer;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/giphy/sdk/ui/universallist/e;->g:Lkotlin/jvm/functions/Function2;

    return-void
.end method

.method public final u(Lkotlin/jvm/functions/Function1;)V
    .locals 1
    .param p1    # Lkotlin/jvm/functions/Function1;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Ljava/lang/Integer;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/giphy/sdk/ui/universallist/e;->d:Lkotlin/jvm/functions/Function1;

    return-void
.end method

.method public final v(Lcom/giphy/sdk/core/models/enums/MediaType;)V
    .locals 1
    .param p1    # Lcom/giphy/sdk/core/models/enums/MediaType;
        .annotation build Lm8/g;
        .end annotation
    .end param

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/giphy/sdk/ui/universallist/e;->f:Lcom/giphy/sdk/core/models/enums/MediaType;

    return-void
.end method

.method public final w(Lkotlin/jvm/functions/Function0;)V
    .locals 1
    .param p1    # Lkotlin/jvm/functions/Function0;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/giphy/sdk/ui/universallist/e;->e:Lkotlin/jvm/functions/Function0;

    return-void
.end method

.method public final x(Lkotlin/jvm/functions/Function1;)V
    .locals 1
    .param p1    # Lkotlin/jvm/functions/Function1;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Lcom/giphy/sdk/ui/universallist/g;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/giphy/sdk/ui/universallist/e;->i:Lkotlin/jvm/functions/Function1;

    return-void
.end method
