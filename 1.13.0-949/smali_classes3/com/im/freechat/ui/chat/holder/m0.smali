.class public Lcom/im/freechat/ui/chat/holder/m0;
.super Lcom/im/freechat/ui/chat/holder/l0;
.source "MediaGroupMessageHolder.kt"

# interfaces
.implements Lcom/im/freechat/ui/chat/holder/j0;


# annotations
.annotation runtime Lkotlin/Metadata;
    bv = {}
    d1 = {
        "\u0000H\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010\u0001\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0004\u0008\u0016\u0018\u00002\u00020\u00012\u00020\u0002B\u001f\u0012\u0006\u0010\"\u001a\u00020!\u0012\u0006\u0010$\u001a\u00020#\u0012\u0006\u0010&\u001a\u00020%\u00a2\u0006\u0004\u0008\'\u0010(R\u001a\u0010\u0008\u001a\u00020\u00038\u0016X\u0096\u0004\u00a2\u0006\u000c\n\u0004\u0008\u0004\u0010\u0005\u001a\u0004\u0008\u0006\u0010\u0007R\u001a\u0010\u000e\u001a\u00020\t8\u0014X\u0094\u0004\u00a2\u0006\u000c\n\u0004\u0008\n\u0010\u000b\u001a\u0004\u0008\u000c\u0010\rR\u001a\u0010\u0014\u001a\u00020\u000f8\u0016X\u0096\u0004\u00a2\u0006\u000c\n\u0004\u0008\u0010\u0010\u0011\u001a\u0004\u0008\u0012\u0010\u0013R\u001a\u0010\u001a\u001a\u00020\u00158\u0016X\u0096\u0004\u00a2\u0006\u000c\n\u0004\u0008\u0016\u0010\u0017\u001a\u0004\u0008\u0018\u0010\u0019R\u001c\u0010 \u001a\u0004\u0018\u00010\u001b8\u0016X\u0096\u0004\u00a2\u0006\u000c\n\u0004\u0008\u001c\u0010\u001d\u001a\u0004\u0008\u001e\u0010\u001f\u00a8\u0006)"
    }
    d2 = {
        "Lcom/im/freechat/ui/chat/holder/m0;",
        "Lcom/im/freechat/ui/chat/holder/l0;",
        "Lcom/im/freechat/ui/chat/holder/j0;",
        "Landroidx/cardview/widget/CardView;",
        "w",
        "Landroidx/cardview/widget/CardView;",
        "I0",
        "()Landroidx/cardview/widget/CardView;",
        "messageContent",
        "Landroidx/recyclerview/widget/RecyclerView;",
        "x",
        "Landroidx/recyclerview/widget/RecyclerView;",
        "B0",
        "()Landroidx/recyclerview/widget/RecyclerView;",
        "grid",
        "Lcom/im/freechat/ui/widget/TextMessageView;",
        "y",
        "Lcom/im/freechat/ui/widget/TextMessageView;",
        "J0",
        "()Lcom/im/freechat/ui/widget/TextMessageView;",
        "tvTextContent",
        "Landroid/widget/TextView;",
        "z",
        "Landroid/widget/TextView;",
        "X",
        "()Landroid/widget/TextView;",
        "tvEditTag",
        "",
        "A",
        "Ljava/lang/Void;",
        "H0",
        "()Ljava/lang/Void;",
        "ivPreview",
        "Lf4/o0;",
        "binding",
        "Lcom/im/freechat/ui/chat/chatdetails/messagelist/b;",
        "outerAdapter",
        "",
        "isGroup",
        "<init>",
        "(Lf4/o0;Lcom/im/freechat/ui/chat/chatdetails/messagelist/b;Z)V",
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
.field private final A:Ljava/lang/Void;
    .annotation build Lm8/h;
    .end annotation
.end field

.field private final w:Landroidx/cardview/widget/CardView;
    .annotation build Lm8/g;
    .end annotation
.end field

.field private final x:Landroidx/recyclerview/widget/RecyclerView;
    .annotation build Lm8/g;
    .end annotation
.end field

.field private final y:Lcom/im/freechat/ui/widget/TextMessageView;
    .annotation build Lm8/g;
    .end annotation
.end field

.field private final z:Landroid/widget/TextView;
    .annotation build Lm8/g;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lf4/o0;Lcom/im/freechat/ui/chat/chatdetails/messagelist/b;Z)V
    .locals 1
    .param p1    # Lf4/o0;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .param p2    # Lcom/im/freechat/ui/chat/chatdetails/messagelist/b;
        .annotation build Lm8/g;
        .end annotation
    .end param

    const-string v0, "binding"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "outerAdapter"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0, p1, p2, p3}, Lcom/im/freechat/ui/chat/holder/l0;-><init>(Landroidx/viewbinding/ViewBinding;Lcom/im/freechat/ui/chat/chatdetails/messagelist/b;Z)V

    .line 2
    iget-object p2, p1, Lf4/o0;->c:Landroidx/cardview/widget/CardView;

    const-string p3, "binding.messageContent"

    invoke-static {p2, p3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p2, p0, Lcom/im/freechat/ui/chat/holder/m0;->w:Landroidx/cardview/widget/CardView;

    .line 3
    iget-object p2, p1, Lf4/o0;->b:Landroidx/recyclerview/widget/RecyclerView;

    const-string p3, "binding.gridRecycler"

    invoke-static {p2, p3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p2, p0, Lcom/im/freechat/ui/chat/holder/m0;->x:Landroidx/recyclerview/widget/RecyclerView;

    .line 4
    iget-object p2, p1, Lf4/o0;->d:Lcom/im/freechat/ui/widget/TextMessageView;

    const-string p3, "binding.tvDesc"

    invoke-static {p2, p3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p2, p0, Lcom/im/freechat/ui/chat/holder/m0;->y:Lcom/im/freechat/ui/widget/TextMessageView;

    .line 5
    iget-object p1, p1, Lf4/o0;->e:Landroid/widget/TextView;

    const-string p2, "binding.tvEdited"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/im/freechat/ui/chat/holder/m0;->z:Landroid/widget/TextView;

    .line 6
    invoke-virtual {p0}, Lcom/im/freechat/ui/chat/holder/l0;->E0()V

    return-void
.end method


# virtual methods
.method protected B0()Landroidx/recyclerview/widget/RecyclerView;
    .locals 1
    .annotation build Lm8/g;
    .end annotation

    iget-object v0, p0, Lcom/im/freechat/ui/chat/holder/m0;->x:Landroidx/recyclerview/widget/RecyclerView;

    return-object v0
.end method

.method public H0()Ljava/lang/Void;
    .locals 1
    .annotation build Lm8/h;
    .end annotation

    iget-object v0, p0, Lcom/im/freechat/ui/chat/holder/m0;->A:Ljava/lang/Void;

    return-object v0
.end method

.method public I0()Landroidx/cardview/widget/CardView;
    .locals 1
    .annotation build Lm8/g;
    .end annotation

    iget-object v0, p0, Lcom/im/freechat/ui/chat/holder/m0;->w:Landroidx/cardview/widget/CardView;

    return-object v0
.end method

.method public J0()Lcom/im/freechat/ui/widget/TextMessageView;
    .locals 1
    .annotation build Lm8/g;
    .end annotation

    iget-object v0, p0, Lcom/im/freechat/ui/chat/holder/m0;->y:Lcom/im/freechat/ui/widget/TextMessageView;

    return-object v0
.end method

.method public bridge synthetic O()Landroid/widget/ImageView;
    .locals 1

    invoke-virtual {p0}, Lcom/im/freechat/ui/chat/holder/m0;->H0()Ljava/lang/Void;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    return-object v0
.end method

.method public bridge synthetic U()Landroid/view/View;
    .locals 1

    invoke-virtual {p0}, Lcom/im/freechat/ui/chat/holder/m0;->I0()Landroidx/cardview/widget/CardView;

    move-result-object v0

    return-object v0
.end method

.method public X()Landroid/widget/TextView;
    .locals 1
    .annotation build Lm8/g;
    .end annotation

    iget-object v0, p0, Lcom/im/freechat/ui/chat/holder/m0;->z:Landroid/widget/TextView;

    return-object v0
.end method

.method public bridge synthetic Y()Landroid/widget/TextView;
    .locals 1

    invoke-virtual {p0}, Lcom/im/freechat/ui/chat/holder/m0;->J0()Lcom/im/freechat/ui/widget/TextMessageView;

    move-result-object v0

    return-object v0
.end method
