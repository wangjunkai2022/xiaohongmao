.class public final Lcom/qennnsad/aknkaksd/presentation/ui/room/eyecatching/history/c$a;
.super Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
.source "HistoryItemAdapter.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/qennnsad/aknkaksd/presentation/ui/room/eyecatching/history/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nHistoryItemAdapter.kt\nKotlin\n*S Kotlin\n*F\n+ 1 HistoryItemAdapter.kt\ncom/qennnsad/aknkaksd/presentation/ui/room/eyecatching/history/HistoryItemAdapter$PIHolder\n+ 2 _Arrays.kt\nkotlin/collections/ArraysKt___ArraysKt\n*L\n1#1,94:1\n1109#2,2:95\n*S KotlinDebug\n*F\n+ 1 HistoryItemAdapter.kt\ncom/qennnsad/aknkaksd/presentation/ui/room/eyecatching/history/HistoryItemAdapter$PIHolder\n*L\n62#1:95,2\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {}
    d1 = {
        "\u00002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0008\u0008\u0086\u0004\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u000e\u001a\u00020\u0006\u00a2\u0006\u0004\u0008\u0019\u0010\u001aJ\u0016\u0010\u0007\u001a\u00020\u00062\u0006\u0010\u0003\u001a\u00020\u00022\u0006\u0010\u0005\u001a\u00020\u0004J\u0006\u0010\t\u001a\u00020\u0008R\u0017\u0010\u000e\u001a\u00020\u00068\u0006\u00a2\u0006\u000c\n\u0004\u0008\n\u0010\u000b\u001a\u0004\u0008\u000c\u0010\rR\u0014\u0010\u0012\u001a\u00020\u000f8\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u0010\u0010\u0011R\u0014\u0010\u0015\u001a\u00020\u00138\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u0007\u0010\u0014R\u0014\u0010\u0017\u001a\u00020\u00138\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u0016\u0010\u0014R\u0014\u0010\u0018\u001a\u00020\u00138\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u000c\u0010\u0014\u00a8\u0006\u001b"
    }
    d2 = {
        "Lcom/qennnsad/aknkaksd/presentation/ui/room/eyecatching/history/c$a;",
        "Landroidx/recyclerview/widget/RecyclerView$ViewHolder;",
        "Lcom/qennnsad/aknkaksd/data/bean/room/eyecatching/PinnedMessageBean;",
        "data",
        "",
        "pos",
        "Landroid/view/View;",
        "c",
        "",
        "f",
        "a",
        "Landroid/view/View;",
        "e",
        "()Landroid/view/View;",
        "itemView",
        "Lcom/facebook/drawee/view/SimpleDraweeView;",
        "b",
        "Lcom/facebook/drawee/view/SimpleDraweeView;",
        "ivAvatar",
        "Landroid/widget/TextView;",
        "Landroid/widget/TextView;",
        "tvPrice",
        "d",
        "tvName",
        "tvContent",
        "<init>",
        "(Lcom/qennnsad/aknkaksd/presentation/ui/room/eyecatching/history/c;Landroid/view/View;)V",
        "app_pron_playerRelease"
    }
    k = 0x1
    mv = {
        0x1,
        0x7,
        0x1
    }
.end annotation


# instance fields
.field private final a:Landroid/view/View;
    .annotation build Lm8/g;
    .end annotation
.end field

.field private final b:Lcom/facebook/drawee/view/SimpleDraweeView;
    .annotation build Lm8/g;
    .end annotation
.end field

.field private final c:Landroid/widget/TextView;
    .annotation build Lm8/g;
    .end annotation
.end field

.field private final d:Landroid/widget/TextView;
    .annotation build Lm8/g;
    .end annotation
.end field

.field private final e:Landroid/widget/TextView;
    .annotation build Lm8/g;
    .end annotation
.end field

.field final synthetic f:Lcom/qennnsad/aknkaksd/presentation/ui/room/eyecatching/history/c;


# direct methods
.method public constructor <init>(Lcom/qennnsad/aknkaksd/presentation/ui/room/eyecatching/history/c;Landroid/view/View;)V
    .locals 1
    .param p1    # Lcom/qennnsad/aknkaksd/presentation/ui/room/eyecatching/history/c;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            ")V"
        }
    .end annotation

    const-string v0, "itemView"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iput-object p1, p0, Lcom/qennnsad/aknkaksd/presentation/ui/room/eyecatching/history/c$a;->f:Lcom/qennnsad/aknkaksd/presentation/ui/room/eyecatching/history/c;

    .line 2
    invoke-direct {p0, p2}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    .line 3
    iput-object p2, p0, Lcom/qennnsad/aknkaksd/presentation/ui/room/eyecatching/history/c$a;->a:Landroid/view/View;

    const p1, 0x7f0a03a2

    .line 4
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    const-string v0, "itemView.findViewById(R.id.ivAvatar)"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Lcom/facebook/drawee/view/SimpleDraweeView;

    iput-object p1, p0, Lcom/qennnsad/aknkaksd/presentation/ui/room/eyecatching/history/c$a;->b:Lcom/facebook/drawee/view/SimpleDraweeView;

    const p1, 0x7f0a06f6

    .line 5
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    const-string v0, "itemView.findViewById(R.id.tvPrice)"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/qennnsad/aknkaksd/presentation/ui/room/eyecatching/history/c$a;->c:Landroid/widget/TextView;

    const p1, 0x7f0a06ee

    .line 6
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    const-string v0, "itemView.findViewById(R.id.tvName)"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/qennnsad/aknkaksd/presentation/ui/room/eyecatching/history/c$a;->d:Landroid/widget/TextView;

    const p1, 0x7f0a06d7

    .line 7
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    const-string p2, "itemView.findViewById(R.id.tvContent)"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/qennnsad/aknkaksd/presentation/ui/room/eyecatching/history/c$a;->e:Landroid/widget/TextView;

    return-void
.end method

.method public static synthetic b(Lcom/qennnsad/aknkaksd/presentation/ui/room/eyecatching/history/c;ILandroid/view/View;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/qennnsad/aknkaksd/presentation/ui/room/eyecatching/history/c$a;->d(Lcom/qennnsad/aknkaksd/presentation/ui/room/eyecatching/history/c;ILandroid/view/View;)V

    return-void
.end method

.method private static final d(Lcom/qennnsad/aknkaksd/presentation/ui/room/eyecatching/history/c;ILandroid/view/View;)V
    .locals 0

    const-string p2, "this$0"

    invoke-static {p0, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p2, "payload"

    invoke-virtual {p0, p1, p2}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemChanged(ILjava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public final c(Lcom/qennnsad/aknkaksd/data/bean/room/eyecatching/PinnedMessageBean;I)Landroid/view/View;
    .locals 8
    .param p1    # Lcom/qennnsad/aknkaksd/data/bean/room/eyecatching/PinnedMessageBean;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .annotation build Lm8/g;
    .end annotation

    const-string v0, "data"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-static {}, Lcom/qennnsad/aknkaksd/presentation/ui/room/eyecatching/item/ItemTypeAttrs;->values()[Lcom/qennnsad/aknkaksd/presentation/ui/room/eyecatching/item/ItemTypeAttrs;

    move-result-object v0

    .line 2
    array-length v1, v0

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v1, :cond_2

    aget-object v4, v0, v3

    .line 3
    invoke-virtual {v4}, Lcom/qennnsad/aknkaksd/presentation/ui/room/eyecatching/item/ItemTypeAttrs;->getType()I

    move-result v5

    invoke-virtual {p1}, Lcom/qennnsad/aknkaksd/data/bean/room/eyecatching/PinnedMessageBean;->getType()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    const/4 v7, 0x1

    if-ne v5, v6, :cond_0

    const/4 v5, 0x1

    goto :goto_1

    :cond_0
    const/4 v5, 0x0

    :goto_1
    if-eqz v5, :cond_1

    .line 4
    iget-object v0, p0, Lcom/qennnsad/aknkaksd/presentation/ui/room/eyecatching/history/c$a;->a:Landroid/view/View;

    iget-object v1, p0, Lcom/qennnsad/aknkaksd/presentation/ui/room/eyecatching/history/c$a;->f:Lcom/qennnsad/aknkaksd/presentation/ui/room/eyecatching/history/c;

    .line 5
    invoke-virtual {v4}, Lcom/qennnsad/aknkaksd/presentation/ui/room/eyecatching/item/ItemTypeAttrs;->getBgExpandResId()I

    move-result v3

    invoke-virtual {v0, v3}, Landroid/view/View;->setBackgroundResource(I)V

    .line 6
    new-instance v3, Lcom/qennnsad/aknkaksd/presentation/ui/room/eyecatching/history/b;

    invoke-direct {v3, v1, p2}, Lcom/qennnsad/aknkaksd/presentation/ui/room/eyecatching/history/b;-><init>(Lcom/qennnsad/aknkaksd/presentation/ui/room/eyecatching/history/c;I)V

    invoke-virtual {v0, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 7
    iget-object p2, p0, Lcom/qennnsad/aknkaksd/presentation/ui/room/eyecatching/history/c$a;->f:Lcom/qennnsad/aknkaksd/presentation/ui/room/eyecatching/history/c;

    invoke-virtual {p2}, Lcom/qennnsad/aknkaksd/presentation/ui/room/eyecatching/history/c;->e()Lcom/qennnsad/aknkaksd/data/repository/m;

    move-result-object p2

    invoke-virtual {p1}, Lcom/qennnsad/aknkaksd/data/bean/room/eyecatching/PinnedMessageBean;->getAvatar()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/qennnsad/aknkaksd/data/repository/m;->j(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p2

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    .line 8
    iget-object v0, p0, Lcom/qennnsad/aknkaksd/presentation/ui/room/eyecatching/history/c$a;->b:Lcom/facebook/drawee/view/SimpleDraweeView;

    invoke-virtual {v0, p2}, Lcom/facebook/drawee/view/SimpleDraweeView;->setImageURI(Ljava/lang/String;)V

    .line 9
    iget-object p2, p0, Lcom/qennnsad/aknkaksd/presentation/ui/room/eyecatching/history/c$a;->c:Landroid/widget/TextView;

    const/4 v0, 0x2

    new-array v1, v0, [Ljava/lang/CharSequence;

    .line 10
    invoke-virtual {v4}, Lcom/qennnsad/aknkaksd/presentation/ui/room/eyecatching/item/ItemTypeAttrs;->getPrice()I

    move-result v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    .line 11
    iget-object v3, p0, Lcom/qennnsad/aknkaksd/presentation/ui/room/eyecatching/history/c$a;->c:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v3

    const v4, 0x7f13032d

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v7

    .line 12
    invoke-static {v1}, Landroid/text/TextUtils;->concat([Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {p2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 13
    iget-object p2, p0, Lcom/qennnsad/aknkaksd/presentation/ui/room/eyecatching/history/c$a;->d:Landroid/widget/TextView;

    new-array v0, v0, [Ljava/lang/CharSequence;

    invoke-virtual {p1}, Lcom/qennnsad/aknkaksd/data/bean/room/eyecatching/PinnedMessageBean;->getNickname()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v2

    const-string v1, ":"

    aput-object v1, v0, v7

    invoke-static {v0}, Landroid/text/TextUtils;->concat([Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 14
    iget-object p2, p0, Lcom/qennnsad/aknkaksd/presentation/ui/room/eyecatching/history/c$a;->e:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/qennnsad/aknkaksd/data/bean/room/eyecatching/PinnedMessageBean;->getContent()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 15
    iget-object p1, p0, Lcom/qennnsad/aknkaksd/presentation/ui/room/eyecatching/history/c$a;->a:Landroid/view/View;

    const-string p2, "itemView"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_0

    .line 16
    :cond_2
    new-instance p1, Ljava/util/NoSuchElementException;

    const-string p2, "Array contains no element matching the predicate."

    invoke-direct {p1, p2}, Ljava/util/NoSuchElementException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final e()Landroid/view/View;
    .locals 1
    .annotation build Lm8/g;
    .end annotation

    iget-object v0, p0, Lcom/qennnsad/aknkaksd/presentation/ui/room/eyecatching/history/c$a;->a:Landroid/view/View;

    return-object v0
.end method

.method public final f()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/qennnsad/aknkaksd/presentation/ui/room/eyecatching/history/c$a;->e:Landroid/widget/TextView;

    .line 2
    invoke-virtual {v0}, Landroid/widget/TextView;->getMaxLines()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    const/16 v1, 0x32

    .line 3
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setMaxLines(I)V

    goto :goto_0

    .line 4
    :cond_0
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setMaxLines(I)V

    :goto_0
    return-void
.end method
