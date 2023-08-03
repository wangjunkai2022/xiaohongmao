.class public final Lcom/im/freechat/ui/chat/history/k;
.super Landroidx/recyclerview/widget/ListAdapter;
.source "HistoryMediaAdapter.kt"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/recyclerview/widget/ListAdapter<",
        "Lcom/im/freechat/ui/chat/history/a;",
        "Lcom/im/freechat/ui/chat/history/g;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {}
    d1 = {
        "\u0000<\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0008\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0010\u0002\n\u0002\u0008\u000e\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0008\u0018\u00002\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00030\u0001B\u0007\u00a2\u0006\u0004\u0008(\u0010)J\u0010\u0010\u0006\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u0004H\u0016J\u0018\u0010\n\u001a\u00020\u00032\u0006\u0010\u0008\u001a\u00020\u00072\u0006\u0010\t\u001a\u00020\u0004H\u0016J\u0018\u0010\r\u001a\u00020\u000c2\u0006\u0010\u000b\u001a\u00020\u00032\u0006\u0010\u0005\u001a\u00020\u0004H\u0016R\u0014\u0010\u0010\u001a\u00020\u00048\u0002X\u0082D\u00a2\u0006\u0006\n\u0004\u0008\u000e\u0010\u000fR\u0014\u0010\u0012\u001a\u00020\u00048\u0002X\u0082D\u00a2\u0006\u0006\n\u0004\u0008\u0011\u0010\u000fR\u0014\u0010\u0014\u001a\u00020\u00048\u0002X\u0082D\u00a2\u0006\u0006\n\u0004\u0008\u0013\u0010\u000fR\u0014\u0010\u0016\u001a\u00020\u00048\u0002X\u0082D\u00a2\u0006\u0006\n\u0004\u0008\u0015\u0010\u000fR\u0014\u0010\u0018\u001a\u00020\u00048\u0002X\u0082D\u00a2\u0006\u0006\n\u0004\u0008\u0017\u0010\u000fR\u0014\u0010\u0019\u001a\u00020\u00048\u0002X\u0082D\u00a2\u0006\u0006\n\u0004\u0008\r\u0010\u000fR\u0014\u0010\u001a\u001a\u00020\u00048\u0002X\u0082D\u00a2\u0006\u0006\n\u0004\u0008\n\u0010\u000fR0\u0010 \u001a\u0010\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u000c\u0018\u00010\u001b8\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008\u001c\u0010\u001d\u001a\u0004\u0008\u0015\u0010\u001e\"\u0004\u0008\u001c\u0010\u001fR4\u0010\'\u001a\u0014\u0012\u0004\u0012\u00020\"\u0012\u0004\u0012\u00020\u0004\u0012\u0004\u0012\u00020\u000c0!8\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008#\u0010$\u001a\u0004\u0008\u0017\u0010%\"\u0004\u0008#\u0010&\u00a8\u0006*"
    }
    d2 = {
        "Lcom/im/freechat/ui/chat/history/k;",
        "Landroidx/recyclerview/widget/ListAdapter;",
        "Lcom/im/freechat/ui/chat/history/a;",
        "Lcom/im/freechat/ui/chat/history/g;",
        "",
        "position",
        "getItemViewType",
        "Landroid/view/ViewGroup;",
        "parent",
        "viewType",
        "g",
        "holder",
        "",
        "f",
        "a",
        "I",
        "ITEM_IMAGE",
        "b",
        "ITEM_VIDEO",
        "c",
        "ITEM_AUDIO",
        "d",
        "ITEM_FILE",
        "e",
        "ITEM_LINK",
        "ITEM_GIF",
        "ITEM_OTHER",
        "Lkotlin/Function1;",
        "h",
        "Lkotlin/jvm/functions/Function1;",
        "()Lkotlin/jvm/functions/Function1;",
        "(Lkotlin/jvm/functions/Function1;)V",
        "itemClickListener",
        "Lkotlin/Function2;",
        "Lcom/im/freechat/shared/entities/message/AudioAttachment;",
        "i",
        "Lkotlin/jvm/functions/Function2;",
        "()Lkotlin/jvm/functions/Function2;",
        "(Lkotlin/jvm/functions/Function2;)V",
        "onAudioSeek",
        "<init>",
        "()V",
        "app_prodRelease"
    }
    k = 0x1
    mv = {
        0x1,
        0x7,
        0x1
    }
.end annotation


# instance fields
.field private final a:I

.field private final b:I

.field private final c:I

.field private final d:I

.field private final e:I

.field private final f:I

.field private final g:I

.field private h:Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Lcom/im/freechat/ui/chat/history/a;",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation

    .annotation build Lm8/h;
    .end annotation
.end field

.field private i:Lkotlin/jvm/functions/Function2;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function2<",
            "-",
            "Lcom/im/freechat/shared/entities/message/AudioAttachment;",
            "-",
            "Ljava/lang/Integer;",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation

    .annotation build Lm8/g;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-static {}, Lcom/im/freechat/ui/chat/history/l;->a()Lcom/im/freechat/ui/chat/history/l$a;

    move-result-object v0

    invoke-direct {p0, v0}, Landroidx/recyclerview/widget/ListAdapter;-><init>(Landroidx/recyclerview/widget/DiffUtil$ItemCallback;)V

    const/4 v0, 0x1

    .line 2
    iput v0, p0, Lcom/im/freechat/ui/chat/history/k;->b:I

    const/4 v0, 0x2

    .line 3
    iput v0, p0, Lcom/im/freechat/ui/chat/history/k;->c:I

    const/4 v0, 0x3

    .line 4
    iput v0, p0, Lcom/im/freechat/ui/chat/history/k;->d:I

    const/4 v0, 0x4

    .line 5
    iput v0, p0, Lcom/im/freechat/ui/chat/history/k;->e:I

    const/4 v0, 0x5

    .line 6
    iput v0, p0, Lcom/im/freechat/ui/chat/history/k;->f:I

    const/4 v0, 0x6

    .line 7
    iput v0, p0, Lcom/im/freechat/ui/chat/history/k;->g:I

    .line 8
    sget-object v0, Lcom/im/freechat/ui/chat/history/k$a;->a:Lcom/im/freechat/ui/chat/history/k$a;

    iput-object v0, p0, Lcom/im/freechat/ui/chat/history/k;->i:Lkotlin/jvm/functions/Function2;

    return-void
.end method


# virtual methods
.method public final d()Lkotlin/jvm/functions/Function1;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlin/jvm/functions/Function1<",
            "Lcom/im/freechat/ui/chat/history/a;",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation

    .annotation build Lm8/h;
    .end annotation

    iget-object v0, p0, Lcom/im/freechat/ui/chat/history/k;->h:Lkotlin/jvm/functions/Function1;

    return-object v0
.end method

.method public final e()Lkotlin/jvm/functions/Function2;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlin/jvm/functions/Function2<",
            "Lcom/im/freechat/shared/entities/message/AudioAttachment;",
            "Ljava/lang/Integer;",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation

    .annotation build Lm8/g;
    .end annotation

    iget-object v0, p0, Lcom/im/freechat/ui/chat/history/k;->i:Lkotlin/jvm/functions/Function2;

    return-object v0
.end method

.method public f(Lcom/im/freechat/ui/chat/history/g;I)V
    .locals 1
    .param p1    # Lcom/im/freechat/ui/chat/history/g;
        .annotation build Lm8/g;
        .end annotation
    .end param

    const-string v0, "holder"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p0, p2}, Landroidx/recyclerview/widget/ListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object p2

    const-string v0, "getItem(position)"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p2, Lcom/im/freechat/ui/chat/history/a;

    invoke-virtual {p1, p2}, Lcom/im/freechat/ui/chat/history/g;->b(Lcom/im/freechat/ui/chat/history/a;)V

    .line 2
    new-instance p2, Lcom/im/freechat/ui/chat/history/k$b;

    invoke-direct {p2, p0}, Lcom/im/freechat/ui/chat/history/k$b;-><init>(Lcom/im/freechat/ui/chat/history/k;)V

    invoke-virtual {p1, p2}, Lcom/im/freechat/ui/chat/history/g;->e(Lkotlin/jvm/functions/Function1;)V

    return-void
.end method

.method public g(Landroid/view/ViewGroup;I)Lcom/im/freechat/ui/chat/history/g;
    .locals 3
    .param p1    # Landroid/view/ViewGroup;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .annotation build Lm8/g;
    .end annotation

    const-string v0, "parent"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget v0, p0, Lcom/im/freechat/ui/chat/history/k;->a:I

    const-string v1, "inflate(LayoutInflater.f\u2026.context), parent, false)"

    const/4 v2, 0x0

    if-ne p2, v0, :cond_0

    new-instance p2, Lcom/im/freechat/ui/chat/history/i;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    invoke-static {v0, p1, v2}, Lf4/k1;->d(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lf4/k1;

    move-result-object p1

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p2, p1}, Lcom/im/freechat/ui/chat/history/i;-><init>(Lf4/k1;)V

    goto/16 :goto_0

    .line 2
    :cond_0
    iget v0, p0, Lcom/im/freechat/ui/chat/history/k;->f:I

    if-ne p2, v0, :cond_1

    new-instance p2, Lcom/im/freechat/ui/chat/history/f;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    invoke-static {v0, p1, v2}, Lf4/k1;->d(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lf4/k1;

    move-result-object p1

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p2, p1}, Lcom/im/freechat/ui/chat/history/f;-><init>(Lf4/k1;)V

    goto :goto_0

    .line 3
    :cond_1
    iget v0, p0, Lcom/im/freechat/ui/chat/history/k;->b:I

    if-ne p2, v0, :cond_2

    new-instance p2, Lcom/im/freechat/ui/chat/history/HistoryVideoHolder;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    invoke-static {v0, p1, v2}, Lf4/m1;->d(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lf4/m1;

    move-result-object p1

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p2, p1}, Lcom/im/freechat/ui/chat/history/HistoryVideoHolder;-><init>(Lf4/m1;)V

    goto :goto_0

    .line 4
    :cond_2
    iget v0, p0, Lcom/im/freechat/ui/chat/history/k;->c:I

    if-ne p2, v0, :cond_3

    new-instance p2, Lcom/im/freechat/ui/chat/history/c;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    invoke-static {v0, p1, v2}, Lf4/i1;->d(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lf4/i1;

    move-result-object p1

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/im/freechat/ui/chat/history/k;->i:Lkotlin/jvm/functions/Function2;

    invoke-direct {p2, p1, v0}, Lcom/im/freechat/ui/chat/history/c;-><init>(Lf4/i1;Lkotlin/jvm/functions/Function2;)V

    goto :goto_0

    .line 5
    :cond_3
    iget v0, p0, Lcom/im/freechat/ui/chat/history/k;->d:I

    if-ne p2, v0, :cond_4

    new-instance p2, Lcom/im/freechat/ui/chat/history/HistoryFileHolder;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    invoke-static {v0, p1, v2}, Lf4/j1;->d(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lf4/j1;

    move-result-object p1

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p2, p1}, Lcom/im/freechat/ui/chat/history/HistoryFileHolder;-><init>(Lf4/j1;)V

    goto :goto_0

    .line 6
    :cond_4
    iget v0, p0, Lcom/im/freechat/ui/chat/history/k;->e:I

    if-ne p2, v0, :cond_5

    new-instance p2, Lcom/im/freechat/ui/chat/history/j;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    invoke-static {v0, p1, v2}, Lf4/l1;->d(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lf4/l1;

    move-result-object p1

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p2, p1}, Lcom/im/freechat/ui/chat/history/j;-><init>(Lf4/l1;)V

    :goto_0
    return-object p2

    :cond_5
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "Illegal view type"

    .line 7
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public getItemViewType(I)I
    .locals 1

    .line 1
    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/ListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/im/freechat/ui/chat/history/a;

    .line 2
    invoke-virtual {p1}, Lcom/im/freechat/ui/chat/history/a;->h()Lcom/im/freechat/shared/entities/message/Attachment;

    move-result-object v0

    instance-of v0, v0, Lcom/im/freechat/shared/entities/message/ImageAttachment;

    if-eqz v0, :cond_0

    iget p1, p0, Lcom/im/freechat/ui/chat/history/k;->a:I

    goto :goto_0

    .line 3
    :cond_0
    invoke-virtual {p1}, Lcom/im/freechat/ui/chat/history/a;->h()Lcom/im/freechat/shared/entities/message/Attachment;

    move-result-object v0

    instance-of v0, v0, Lcom/im/freechat/shared/entities/message/GifAttachment;

    if-eqz v0, :cond_1

    iget p1, p0, Lcom/im/freechat/ui/chat/history/k;->f:I

    goto :goto_0

    .line 4
    :cond_1
    invoke-virtual {p1}, Lcom/im/freechat/ui/chat/history/a;->h()Lcom/im/freechat/shared/entities/message/Attachment;

    move-result-object v0

    instance-of v0, v0, Lcom/im/freechat/shared/entities/message/VideoAttachment;

    if-eqz v0, :cond_2

    iget p1, p0, Lcom/im/freechat/ui/chat/history/k;->b:I

    goto :goto_0

    .line 5
    :cond_2
    invoke-virtual {p1}, Lcom/im/freechat/ui/chat/history/a;->h()Lcom/im/freechat/shared/entities/message/Attachment;

    move-result-object v0

    instance-of v0, v0, Lcom/im/freechat/shared/entities/message/AudioAttachment;

    if-eqz v0, :cond_3

    iget p1, p0, Lcom/im/freechat/ui/chat/history/k;->c:I

    goto :goto_0

    .line 6
    :cond_3
    invoke-virtual {p1}, Lcom/im/freechat/ui/chat/history/a;->h()Lcom/im/freechat/shared/entities/message/Attachment;

    move-result-object v0

    instance-of v0, v0, Lcom/im/freechat/shared/entities/message/FileAttachment;

    if-eqz v0, :cond_4

    iget p1, p0, Lcom/im/freechat/ui/chat/history/k;->d:I

    goto :goto_0

    .line 7
    :cond_4
    invoke-virtual {p1}, Lcom/im/freechat/ui/chat/history/a;->j()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_5

    iget p1, p0, Lcom/im/freechat/ui/chat/history/k;->e:I

    goto :goto_0

    .line 8
    :cond_5
    iget p1, p0, Lcom/im/freechat/ui/chat/history/k;->g:I

    :goto_0
    return p1
.end method

.method public final h(Lkotlin/jvm/functions/Function1;)V
    .locals 0
    .param p1    # Lkotlin/jvm/functions/Function1;
        .annotation build Lm8/h;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Lcom/im/freechat/ui/chat/history/a;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/im/freechat/ui/chat/history/k;->h:Lkotlin/jvm/functions/Function1;

    return-void
.end method

.method public final i(Lkotlin/jvm/functions/Function2;)V
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
            "Lcom/im/freechat/shared/entities/message/AudioAttachment;",
            "-",
            "Ljava/lang/Integer;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/im/freechat/ui/chat/history/k;->i:Lkotlin/jvm/functions/Function2;

    return-void
.end method

.method public bridge synthetic onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 0

    check-cast p1, Lcom/im/freechat/ui/chat/history/g;

    invoke-virtual {p0, p1, p2}, Lcom/im/freechat/ui/chat/history/k;->f(Lcom/im/freechat/ui/chat/history/g;I)V

    return-void
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 0

    invoke-virtual {p0, p1, p2}, Lcom/im/freechat/ui/chat/history/k;->g(Landroid/view/ViewGroup;I)Lcom/im/freechat/ui/chat/history/g;

    move-result-object p1

    return-object p1
.end method
